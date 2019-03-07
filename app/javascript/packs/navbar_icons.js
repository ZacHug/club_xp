// Add remove gold colour

const dropbtn = document.getElementById("drop-dwn-btn");

if (dropbtn) {
  const removeTextGold = () => {
    dropbtn.classList.remove("text-gold");
  }

  dropbtn.addEventListener("click", (event) => {
    if (!dropbtn.classList.contains("text-gold")) {
      dropbtn.classList.add("text-gold");
      $('#dropDownFilters').slideDown(400);

    } else {
      $('#dropDownFilters').slideUp();
      dropbtn.classList.remove("text-gold");


    }
  });
}

// Sort by distance link

const distanceLink = document.querySelector("#sort-by-distance");

if (distanceLink) {
  navigator.geolocation.getCurrentPosition((position) => {
    distanceLink.href = `/clubs?lat=${position.coords.latitude}&lng=${position.coords.longitude}`
  });
}
