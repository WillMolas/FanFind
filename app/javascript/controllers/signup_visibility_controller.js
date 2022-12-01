import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="signup-visibility"
export default class extends Controller {
  static targets = ["credentials", "avatar", "team"]
  displayAvatar() {
    this.credentialsTarget.classList.add("d-none")
    this.avatarTarget.classList.remove("d-none")
  }
  displayTeam() {
    this.avatarTarget.classList.add("d-none")
    this.teamTarget.classList.remove("d-none")
  }
}
