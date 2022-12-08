import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="signup-visibility"
export default class extends Controller {
  static targets = ["credentials", "avatar", "team", "photo", "disabled", "button", "skip", "upload", "disabledSubmit", "submit", "input"]

  displayAvatar() {
    this.credentialsTarget.classList.add("d-none")
    this.avatarTarget.classList.remove("d-none")
  }
  displayTeam() {
    this.avatarTarget.classList.add("d-none")
    this.teamTarget.classList.remove("d-none")
  }
  displayPhoto(event) {
    const reader = new FileReader();
    reader.onload = () => {
      this.photoTarget.innerHTML = `<img src='${reader.result}'>`
    }
    reader.readAsDataURL(event.target.files[0]);
  }

  returnCredentials() {
    this.avatarTarget.classList.add("d-none")
    this.credentialsTarget.classList.remove("d-none")
  }

  returnAvatar() {
    this.teamTarget.classList.add("d-none")
    this.avatarTarget.classList.remove("d-none")
  }

  activateButton() {
    const checkInput = this.inputTargets.every((element) => {
      return element.value != ''
    })

    if (checkInput) {
      this.disabledTarget.classList.add("d-none")
      this.buttonTarget.classList.remove("d-none")
    } else {
      this.disabledTarget.classList.remove("d-none")
      this.buttonTarget.classList.add("d-none")
    }
  }

  revealButton () {
    this.skipTarget.classList.add("d-none")
    this.uploadTarget.classList.remove("d-none")
  }

  submitButton () {
    this.disabledSubmitTarget.classList.add("d-none")
    this.submitTarget.classList.remove("d-none")
  }
}
