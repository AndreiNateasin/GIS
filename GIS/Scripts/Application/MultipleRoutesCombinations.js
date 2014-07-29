
function calcRoute(batches, directionsService, map, colourArray) {

    var combinedResults;
    var unsortedResults = [{}]; // to hold the counter and the results themselves as they come back, to later sort
    var directionsResultsReturned = 0;

    for (var k = 0; k < batches.length; k++) {
        var lastIndex = batches[k].length - 1;
        var start = batches[k][0].location;
        var end = batches[k][lastIndex].location;

        // trim first and last entry from array
        var waypts = [];
        waypts = batches[k];
        waypts.splice(0, 1);
        waypts.splice(waypts.length - 1, 1);

        var request = {
            origin: start,
            destination: end,
            waypoints: waypts,
            travelMode: window.google.maps.TravelMode.WALKING
        };

        (function (k) {
            directionsService.route(request, function (result, status) {
                if (status == window.google.maps.DirectionsStatus.OK) {

                    var unsortedResult = {
                        order: k,
                        result: result
                    };
                    unsortedResults.push(unsortedResult);

                    directionsResultsReturned++;

                    if (directionsResultsReturned == batches.length) // we've received all the results. put to map
                    {
                        // sort the returned values into their correct order
                        unsortedResults.sort(function (a, b) {
                            return parseFloat(a.order) - parseFloat(b.order);
                        });
                        var count = 0;
                        for (var key in unsortedResults) {
                            if (unsortedResults[key].result != null) {
                                if (unsortedResults.hasOwnProperty(key)) {
                                    if (count == 0) // first results. new up the combinedResults object
                                        combinedResults = unsortedResults[key].result;
                                    else {
                                        // only building up legs, overview_path, and bounds in my consolidated object. This is not a complete
                                        // directionResults object, but enough to draw a path on the map, which is all I need
                                        combinedResults.routes[0].legs = combinedResults.routes[0].legs.concat(unsortedResults[key].result.routes[0].legs);
                                        combinedResults.routes[0].overview_path = combinedResults.routes[0].overview_path.concat(unsortedResults[key].result.routes[0].overview_path);

                                        combinedResults.routes[0].bounds = combinedResults.routes[0].bounds.extend(unsortedResults[key].result.routes[0].bounds.getNorthEast());
                                        combinedResults.routes[0].bounds = combinedResults.routes[0].bounds.extend(unsortedResults[key].result.routes[0].bounds.getSouthWest());
                                    }
                                    count++;
                                }
                            }
                        }

                        // Create a unique DirectionsRenderer
                        var batchRenderer = new google.maps.DirectionsRenderer();
                        batchRenderer.setMap(map);

                        batchRenderer.setOptions({
                            preserveViewport: true,
                            suppressInfoWindows: true,
                            polylineOptions: {
                                strokeWeight: 4,
                                strokeOpacity: 0.8,
                                strokeColor: colourArray[k]
                            },
                            markerOptions: {
                                icon: {
                                    path: google.maps.SymbolPath.BACKWARD_CLOSED_ARROW,
                                    scale: 3,
                                    strokeColor: colourArray[k]
                                }
                            }
                        });

                        batchRenderer.setDirections(combinedResults);
                    }
                }
            });
        })(k);
    }
}

function prepareBatch(stops) {
    var batches = [];
    var itemsPerBatch = 7; // google API max - 1 start, 1 stop, and 8 waypoints
    var itemsCounter = 0;
    var wayptsExist = stops.length > 0;

    while (wayptsExist) {
        var subBatch = [];
        var subitemsCounter = 0;

        for (var j = itemsCounter; j < stops.length; j++) {
            subitemsCounter++;
            subBatch.push({
                location: new google.maps.LatLng(stops[j].lat, stops[j].lng),
                stopover: true
            });
            if (subitemsCounter == itemsPerBatch)
                break;
        }

        itemsCounter += subitemsCounter;
        batches.push(subBatch);
        wayptsExist = itemsCounter < stops.length;
        // If it runs again there are still points. Minus 1 before continuing to
        // start up with end of previous tour leg
        itemsCounter--;
    }

    return batches;
}