import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="disable-button"
export default class extends Controller {
  connect() {
    setTimeout(() => {
      this.element.click()
    }, 3000)
  }
}
