console.log("hi")

const btn = document.getElementById('genreDropdownJs')
const genres = document.querySelector('.genre-dropdown')
const icon = btn.querySelector('i')

btn.addEventListener("click", (event) => {
  genres.classList.toggle("hidden")
  if (icon.classList.contains('fa-minus')) {
    icon.classList.remove("fa-minus");
    icon.classList.add("fa-plus");
  } else {
    icon.classList.remove("fa-plus");
    icon.classList.add("fa-minus");
  }

});
