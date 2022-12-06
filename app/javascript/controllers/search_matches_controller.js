import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="search-matches"
export default class extends Controller {
  static targets = ["form", "input", "list", "teamFilter"]
  static values = {
    team: String
  }

  connect() {
    // console.log(this.element);
    // console.log(this.formTarget);
    // console.log(this.inputTarget);
    // console.log(this.listTarget);
  }

  update() {
    const url = `${this.formTarget.action}?query=${this.inputTarget.value}`
    fetch(url, {headers: {"Accept": "text/plain"}})
      .then(response => response.text())
      .then((data) => {
        this.listTarget.outerHTML = data
      })
  }

// If search bar contains team, button="View all teams", click makes search bar empty
// if search bar empty, button="My Team", click puts team into search bar

  filter() {
    let url = ""
    // console.log(this.teamValue)
    if (this.teamFilterTarget.classList.contains("active-filter")) {
      this.teamFilterTarget.classList.remove("active-filter")
      url = `/matches`
      this.teamFilterTarget.innerHTML = "My Team"
    } else {
      this.teamFilterTarget.classList.add("active-filter")
      url = `/matches?query=${this.teamValue}`
      this.teamFilterTarget.innerHTML = "All Teams"
    }
    fetch(url, {headers: {"Accept": "text/plain"}})
    .then(response => response.text())
    .then((data) => {
      this.listTarget.outerHTML = data
    })
    }
  }
