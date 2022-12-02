import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="check-radio-buttons"
export default class extends Controller {
  static targets = ["radioButton"]
  connect() {
  }
  select() {
    if (document.querySelector('.team-choice-box.active')) {
      document.querySelector('.team-choice-box.active').classList.remove("active")
    }
    this.radioButtonTarget.checked = true
    this.element.classList.add("active")
  }
}
