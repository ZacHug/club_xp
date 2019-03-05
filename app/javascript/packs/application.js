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

// var show = function(elem) {
//   var getHeight = function() {
//     elem.style.display = 'block';
//     var height = '240px'; //elem.scrollHeight + 'px';
//     elem.style.display = '';
//     return height;
//   }
//   var height = getHeight();
//   elem.classList.add('visible');
//   elem.style.height = height;
//   window.setTimeout(function() {
//     elem.style.height= '';
//   }, 350);
// };

// var hide = function(elem) {
//   elem.style.height = elem.scrollHeight + 'px';
//   window.setTimeout(function() {
//     elem.style.height= '0';
//   }, 1);
//   window.setTimeout(function() {
//     elem.classList.remove('visible');
//   }, 350);
// }

// var toggle = function(elem, timing) {
//   if (elem.classList.contains('visible')) {
//     hide(elem);
//     return;
//   }
//   show(elem);
// };

// open_map.addEventListener("click", (event) => {
//     event.preventDefault();
//     toggle(document.querySelector('#map'));
// }, false);
