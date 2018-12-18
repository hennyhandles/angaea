$(document).on('turbolinks:load', () => {
  showRatings()
  showActivities()
  showCreateActivityForm()
})

const showRatings = function() {
  let ratings = document.querySelector(".users-ratings-container")
  let activities = document.querySelector(".users-activities-container")
  let form = document.querySelector(".create-activity-form")
  document.querySelector(".right-toggle").addEventListener("click", (e) => {
    console.log(ratings.style.display);
    ratings.style.display = "flex"
    activities.style.display = "none"
    form.style.display = "none"
  })
}

const showActivities = function() {
  let ratings = document.querySelector(".users-ratings-container")
  let activities = document.querySelector(".users-activities-container")
  let form = document.querySelector(".create-activity-form")
  document.querySelector(".left-toggle").addEventListener("click", (e) => {
    activities.style.display = "flex"
    form.style.display = "none"
    ratings.style.display = "none"
  })
}

const showCreateActivityForm = function() {
  let ratings = document.querySelector(".users-ratings-container")
  let activities = document.querySelector(".users-activities-container")
  let form = document.querySelector(".create-activity-form")
  let toggleCreate = document.querySelector(".create-activity-toggle")
  if(toggleCreate) {
    toggleCreate.addEventListener("click", (e) => {
      ratings.style.display = "none"
      activities.style.display = "none"
      form.style.display = "block"
    })
  }

}
