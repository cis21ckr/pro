/**
 * 2017.10.10 [개발팀] 지도 이벤트 동기화 소스 추가
 */
(function () {
    var NO_ANIMATION = {
        animate: false,
        reset: true,
        disableViewprereset: false
    };

    sop.Sync = function () {};

    sop.Sync.offsetHelper = function (ratioRef, ratioTarget) {
        var or = sop.Util.isArray(ratioRef) ? ratioRef : [0.5, 0.5];
        var ot = sop.Util.isArray(ratioTarget) ? ratioTarget : [0.5, 0.5];
        return function (center, zoom, refMap, targetMap) {
            var rs = refMap.getSize();
            var ts = targetMap.getSize();
            var pt = refMap.project(center, zoom)
                           .subtract([(0.5 - or[0]) * rs.x, (0.5 - or[1]) * rs.y])
                           .add([(0.5 - ot[0]) * ts.x, (0.5 - ot[1]) * ts.y]);
            return refMap.unproject(pt, zoom);
        };
    };


    sop.Map.include({
        sync: function (map, options) {
            this._initSync();
            options = sop.extend({
                noInitialSync: false,
                syncCursor: false,
                syncCursorMarkerOptions: {
                    radius: 10,
                    fillOpacity: 0.3,
                    color: '#da291c',
                    fillColor: '#fff'
                },
                offsetFn: function (center, zoom, refMap, targetMap) {
                    return center;
                }
            }, options);

            if (this._syncMaps.indexOf(map) === -1) {
                this._syncMaps.push(map);
                this._syncOffsetFns[sop.Util.stamp(map)] = options.offsetFn;
            }

            if (!options.noInitialSync) {
                map.setView(
                    options.offsetFn(this.getCenter(), this.getZoom(), this, map),
                    this.getZoom(), NO_ANIMATION);
            }
            if (options.syncCursor) {
                if (typeof map.cursor === 'undefined') {
                    map.cursor = sop.circleMarker([0, 0], options.syncCursorMarkerOptions).addTo(map);
                }

                this._cursors.push(map.cursor);

                this.on('mousemove', this._cursorSyncMove, this);
                this.on('mouseout', this._cursorSyncOut, this);
            }

           // this.on('resize zoomend', this._selfSetView);
            this.on('moveend', this._syncOnMoveend);
            this.on('dragend', this._syncOnDragend);
            return this;
        },

        unsync: function (map) {
            var self = this;

            if (this._cursors) {
                this._cursors.forEach(function (cursor, indx, _cursors) {
                    if (cursor === map.cursor) {
                        _cursors.splice(indx, 1);
                    }
                });
            }

            if (map.cursor) {
                map.cursor.setLatLng([0, 0]);
            }

            if (this._syncMaps) {
                this._syncMaps.forEach(function (synced, id) {
                    if (map === synced) {
                        delete self._syncOffsetFns[sop.Util.stamp(map)];
                        self._syncMaps.splice(id, 1);
                    }
                });
            }

            if (!this._syncMaps || this._syncMaps.length == 0) {
                //this.off('resize zoomend', this._selfSetView);
                this.off('moveend', this._syncOnMoveend);
                this.off('dragend', this._syncOnDragend);
            }

            return this;
        },

        isSynced: function (otherMap) {
            var has = (this.hasOwnProperty('_syncMaps') && Object.keys(this._syncMaps).length > 0);
            if (has && otherMap) {
                has = false;
                this._syncMaps.forEach(function (synced) {
                    if (otherMap == synced) { has = true; }
                });
            }
            return has;
        },

        _cursorSyncMove: function (e) {
            this._cursors.forEach(function (cursor) {
                cursor._utmk = e.utmk;
            });
        },

        _cursorSyncOut: function (e) {
            this._cursors.forEach(function (cursor) {
                cursor._utmk = [0, 0];
            });
        },

        _selfSetView: function (e) {
            this.setView(this.getCenter(), this.getZoom(), NO_ANIMATION);
        },

        _syncOnMoveend: function (e) {
            if (this._syncDragend) {
                this._syncDragend = false;
                //this._selfSetView(e);
                this._syncMaps.forEach(function (toSync) {
                    toSync.fire('moveend');
                });
            }
        },

        _syncOnDragend: function (e) {
            this._syncDragend = true;
        },

        _initSync: function () {
            if (this._syncMaps) {
                return;
            }
            var originalMap = this;

            this._syncMaps = [];
            this._cursors = [];
            this._syncOffsetFns = {};

            sop.extend(originalMap, {
                setView: function (center, zoom, options, sync) {
                    function sandwich (obj, fn) {
                        var viewpreresets = [];
                        if (options && options.disableViewprereset) {
                            viewpreresets = obj._events.viewprereset;
                            obj._events.viewprereset = [];
                        }
                        var ret = fn(obj);
                        if (options && options.disableViewprereset) {
                            obj._events.viewprereset = viewpreresets;
                        }
                        return ret;
                    }

                    var ret = sandwich(this, function (obj) {
                        return sop.Map.prototype.setView.call(obj, center, zoom, options);
                    });

                    if (!sync) {
                        originalMap._syncMaps.forEach(function (toSync) {
                            sandwich(toSync, function (obj) {
                                return toSync.setView(
                                    originalMap._syncOffsetFns[sop.Util.stamp(toSync)](center, zoom, originalMap, toSync),
                                    zoom, options, true);
                            });
                        });
                    }

                    return ret;
                },

                panBy: function (offset, options, sync) {
                    if (!sync) {
                        originalMap._syncMaps.forEach(function (toSync) {
                            toSync.panBy(offset, options, true);
                        });
                    }
                    return sop.Map.prototype.panBy.call(this, offset, options);
                },

                _onResize: function (event, sync) {
                    if (!sync) {
                        originalMap._syncMaps.forEach(function (toSync) {
                            toSync._onResize(event, true);
                        });
                    }
                    return sop.Map.prototype._onResize.call(this, event);
                },

                _stop: function (sync) {
                    sop.Map.prototype._stop.call(this);
                    if (!sync) {
                        originalMap._syncMaps.forEach(function (toSync) {
                            toSync._stop(true);
                        });
                    }
                }
            });

            originalMap.dragging._draggable._updatePosition = function () {
                sop.Draggable.prototype._updatePosition.call(this);
                var self = this;
                originalMap._syncMaps.forEach(function (toSync) {
                    sop.DomUtil.setPosition(toSync.dragging._draggable._element, self._newPos);
                    toSync.eachLayer(function (layer) {
                        if (layer._google !== undefined) {
                            var offsetFn = originalMap._syncOffsetFns[sop.Util.stamp(toSync)];
                            var center = offsetFn(originalMap.getCenter(), originalMap.getZoom(), originalMap, toSync);
                            layer._google.setCenter(center);
                        }
                    });
                    toSync.fire('move');
                });
            };
        }
    });
})();
