let bounds = [
	[
		43.81347656249999,
		24.487148563173424
	],
	[
		65.0390625,
		41.83682786072714
	]
];

// noinspection SpellCheckingInspection
mapboxgl.accessToken = 'pk.eyJ1IjoiY2xvY2t3b3JrNTMiLCJhIjoiY2s4NXF2ZWtvMDhlczNvbzdmNG5vZnQ1ZCJ9.AGea0ZvLEB29C_qIPLpT5Q';
mapboxgl.setRTLTextPlugin(
	'https://api.mapbox.com/mapbox-gl-js/plugins/mapbox-gl-rtl-text/v0.2.3/mapbox-gl-rtl-text.js',
	null,
	true // Lazy load the plugin
);

let map = new mapboxgl.Map({
	container: 'map',
	style: 'mapbox://styles/mapbox/streets-v11',
	center: [53.7231, 32.8795],
	zoom: 5.2,
	maxBounds: bounds
});
map.addControl(new mapboxgl.NavigationControl());
map.addControl(new MapboxDirections({
		accessToken: mapboxgl.accessToken
	}), 'top-right'
);
map.on('load', () => {
	map.addControl(new MapboxTraffic());
});


fetch("index.php?page=weather_api.GetCityWeather")
	.then((resp) => resp.json())
	.then(function (data) {
		data.features.forEach(function (marker) {
			// create a DOM element for the marker
				let city_id = marker.properties.id;
				let weather_icon = marker.properties.icon;
				let temprature = marker.properties.temp;

				if (weather_icon === null || temprature === null) {
					return;
				}
				let el = document.createElement('div');
				el.className = 'marker';
				el.style.backgroundImage =
					'url(http://openweathermap.org/img/w/' +
					weather_icon +
					'.png)';
				el.style.width = '40px';//marker.properties.iconSize[0] + 'px';
				el.style.height = '40px';//marker.properties.iconSize[1] + 'px';

				el.addEventListener('click', function () {
					window.alert(temprature);
				});

				// add marker to map
				new mapboxgl.Marker(el)
					.setLngLat(marker.geometry.coordinates)
					.addTo(map);
})});

let layerList = document.getElementById('menu');
let inputs = layerList.getElementsByTagName('input');

function switchLayer(layer) {
	let layerId = layer.target.id;
	map.setStyle('mapbox://styles/mapbox/' + layerId);
}

for (let i = 0; i < inputs.length; i++) {
	inputs[i].onclick = switchLayer;
}