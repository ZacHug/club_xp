// Add remove gold colour

const dropbtn = document.getElementById("drop-dwn-btn");

if (dropbtn) {
  const removeTextGold = () => {
    dropbtn.classList.remove("text-gold");
  }

  dropbtn.addEventListener("click", (event) => {
    if (!dropbtn.classList.contains("text-gold")) {
      dropbtn.classList.add("text-gold");

      setTimeout(() => {
        document.querySelector(".dropdown-backdrop").addEventListener("click", removeTextGold);
      });
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
