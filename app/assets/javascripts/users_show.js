// $(document).on('turbolinks:load', () => {
//   showRatings()
//   showActivities()
//   showCreateActivityForm()
//   showCreateRentalForm()
// })
//
// const showRatings = function() {
//   let ratings = document.querySelector(".users-ratings-container")
//   let activities = document.querySelector(".users-activities-container")
//   let form = document.querySelector(".display-it-none")
//   let rentalForm = document.querySelector(".display-it-none-rental")
//   document.querySelector(".right-toggle").addEventListener("click", (e) => {
//     console.log(ratings.style.display);
//     ratings.style.display = "flex"
//     activities.style.display = "none"
//     form.style.display = "none"
//     rentalForm.style.display = "none"
//   })
// }
//
// const showActivities = function() {
//   let ratings = document.querySelector(".users-ratings-container")
//   let activities = document.querySelector(".users-activities-container")
//   let form = document.querySelector(".display-it-none")
//   let rentalForm = document.querySelector(".display-it-none-rental")
//   document.querySelector(".left-toggle").addEventListener("click", (e) => {
//     activities.style.display = "flex"
//     form.style.display = "none"
//     ratings.style.display = "none"
//     rentalForm.style.display = "none"
//   })
// }
//
// const showCreateActivityForm = function() {
//   let ratings = document.querySelector(".users-ratings-container")
//   let activities = document.querySelector(".users-activities-container")
//   let form = document.querySelector(".display-it-none")
//   let rentalForm = document.querySelector(".display-it-none-rental")
//   let toggleCreate = document.querySelector(".create-activity-toggle")
//   let toggleRental = document.querySelector(".create-rental-toggle")
//   if(toggleCreate && toggleRental) {
//     toggleCreate.addEventListener("click", (e) => {
//       ratings.style.display = "none"
//       activities.style.display = "none"
//       form.style.display = "flex"
//       rentalForm.style.display = "none"
//     })
//   }
// }
//
// const showCreateRentalForm = function() {
//   let ratings = document.querySelector(".users-ratings-container")
//   let activities = document.querySelector(".users-activities-container")
//   let form = document.querySelector(".display-it-none")
//   let rentalForm = document.querySelector(".display-it-none-rental")
//   let toggleCreate = document.querySelector(".create-activity-toggle")
//   let toggleRental = document.querySelector(".create-rental-toggle")
//   if(toggleCreate && toggleRental) {
//     toggleRental.addEventListener("click", (e) => {
//       ratings.style.display = "none"
//       activities.style.display = "none"
//       console.log(rentalForm);
//       form.style.display = "none"
//       rentalForm.style.display = "flex"
//     })
//   }
// }
