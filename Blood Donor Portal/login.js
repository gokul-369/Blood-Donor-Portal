const inputs = document.querySelectorAll(".input");
const password = document.querySelector("#pwd");

const eye = document.querySelector("#eye");

var state = false;

function toggle_eye() {
  if (state) {
    password.setAttribute("type", "password");
    eye.style.color = "#bebebe";
    state = false;
  } else {
    password.setAttribute("type", "text");
      eye.style.color = "#EC6161";
    state = true;
  }
}

function focusfunc() {
  let parent = this.parentNode.parentNode;
  parent.classList.add("focus");
}
function blurfunc() {
  let parent = this.parentNode.parentNode;
  if (this.value == "") {
    parent.classList.remove("focus");
  }
}
inputs.forEach((input) => {
  input.addEventListener("focus", focusfunc);
  input.addEventListener("blur", blurfunc);
});
