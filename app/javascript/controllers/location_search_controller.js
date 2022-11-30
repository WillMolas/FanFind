import { Controller } from "@hotwired/stimulus"
import $ from 'jquery'
import Select2 from "select2"

// Connects to data-controller="event-search"
export default class extends Controller {
  static targets = ["dropdown"]
  connect() {
    $('#drop').select2();
  }

  dropdown() {

  }
}
