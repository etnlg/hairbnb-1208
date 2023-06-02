import { Controller } from "@hotwired/stimulus"
import MapboxGeocoder from '@mapbox/mapbox-gl-geocoder';

// Connects to data-controller="address-autocomplete"
export default class extends Controller {

  static values = { apiKey: String }

  static targets = ["location"]

  connect() {
    this.geocoder = new MapboxGeocoder({
      accessToken: this.apiKeyValue,
      types: "country,region,place,postcode,locality,neighborhood,address",
      placeholder: "Where?",
      limit: 3,
    })
    this.geocoder.addTo(this.element)
    this.geocoder.on("result", event => this.#setInputValue(event))
    this.geocoder.on("clear", (event) => this.#clearInputValue(event))
  }

  disconnect() {
    this.geocoder.onRemove()
  }

  #setInputValue(event) {
    this.locationTarget.value = event.result["place_name"]
  }

  #clearInputValue(event) {
    this.locationTarget.value = ""
  }


}
