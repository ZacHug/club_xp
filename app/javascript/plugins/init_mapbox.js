import mapboxgl from 'mapbox-gl';

const mapElement = document.getElementById('map');

const buildMap = () => {
  mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
  return new mapboxgl.Map({
    container: 'map',
    style: 'mapbox://styles/mapbox/streets-v9'
  });
};

const initMapbox = () => {
  if (mapElement) {
    const map = buildMap();

    const marker = JSON.parse(mapElement.dataset.markers);

    addMarkerToMap(map, marker);
    fitMapToMarker(map, marker);
  }
};

const addMarkerToMap = (map, marker) => {
  new mapboxgl.Marker()
    .setLngLat([ marker.lng, marker.lat ])
    .addTo(map);
};

const fitMapToMarker = (map, marker) => {
  const bounds = new mapboxgl.LngLatBounds();
  bounds.extend([ marker.lng, marker.lat ]);
  map.fitBounds(bounds, { padding: 0, maxZoom: 17 });
};


export { initMapbox };
