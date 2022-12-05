import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="post-comment"
export default class extends Controller {
  static targets = ["comments"]

  connect() {
    console.log("Check")
    this.#scrollDown()
  }

  #scrollDown() {
    window.scrollTo( {top: document.body.scrollHeight, behavior: "instant" } )
  }

  submitForm(event) {
    event.preventDefault()
    console.log(event.target)
    event.target.submit()
  }
}
