//= require popper
//= require bootstrap-sprockets
//= require_tree .


document.addEventListener('turbolinks:load', function () {
  $('#user_password_confirmation').on('keyup', function () {
    let passwordField = document.querySelector('#user_password')
    let messageBox    = document.querySelector('p.confirmation-message')

    if (this.value == '') {
      messageBox.innerText = ''
      messageBox.classList.remove('red')
      messageBox.classList.remove('green')
      return
    } 
    if (this.value == passwordField.value) {
      messageBox.innerText = 'Passwords are equal'
      messageBox.classList.remove('red')
      messageBox.classList.add('green')
    } else {
      messageBox.innerText = 'Passwords are not equal'
      messageBox.classList.remove('green')
      messageBox.classList.add('red')
    }
  })
})

