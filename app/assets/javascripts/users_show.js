document.addEventListener("DOMContentLoaded", () => {
  showRatings()
  showActivities()
})

const showRatings = function() {
  let activities = document.querySelector(".users-activities-container")
  document.querySelector(".right-toggle").addEventListener("click", (e) => {
    activities.style.display = "none"
  })
}

const showActivities = function() {
  let activities = document.querySelector(".users-activities-container")
  document.querySelector(".left-toggle").addEventListener("click", (e) => {
    activities.style.display = ""
  })
}
