import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="search-posts"
export default class extends Controller {
  static targets = ["posts", "search", "index", "teamPost", "myPost"]
  static values = {
    content: String,
    user: String,
    team: String
  }

  connect() {

  }

  update() {
    const url = `${this.postsTarget.action}?query=${this.searchTarget.value}`
    fetch(url, {headers: {"Accept": "text/plain"}})
      .then(response => response.text())
      .then((data) => {
        this.indexTarget.outerHTML = data
      })
  }

  teamFilter() {
    console.log(this.teamValue)
    console.log(this.userValue)
    const url = `/posts?query=${this.teamValue}`
    fetch(url, {headers: {"Accept": "text/plain"}})
    .then(response => response.text())
    .then((data) => {
      this.indexTarget.outerHTML = data
    })
  }

  myFilter() {
    console.log(this.userValue)
      const url = `/posts?user=${this.userValue}`
      fetch(url, {headers: {"Accept": "text/plain"}})
      .then(response => response.text())
      .then((data) => {
        this.indexTarget.outerHTML = data
      })
      }

    allFilter() {
      const url = `/posts`
      fetch(url, {headers: {"Accept": "text/plain"}})
      .then(response => response.text())
      .then((data) => {
        this.indexTarget.outerHTML = data
      })
    }
}
