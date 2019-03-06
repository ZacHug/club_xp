import "bootstrap";
// import "footer_icons";
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!

import { initMapbox } from '../plugins/init_mapbox';

initMapbox();


const open_map = document.querySelector("#open-map");
const close_map = document.querySelector("#close-map");
const map = document.querySelector("#map");
const markers = document.querySelectorAll('.mapboxgl-marker');
// map.classList.add("hide");
if (open_map && close_map) {
  open_map.addEventListener("click", (event) => {
    // map.classList.toggle("hide");
    close_map.classList.toggle("hide");
    open_map.classList.toggle("hide");
    map.style.position = 'relative';
    $("#map").slideDown(400)
  });

  close_map.addEventListener("click", (event) => {
    close_map.classList.toggle("hide");
    open_map.classList.toggle("hide");
    $("#map").slideUp(400)
  });
}
