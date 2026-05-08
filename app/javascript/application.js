import "@hotwired/turbo-rails"
import "controllers"

import jQuery from "jquery"
window.jQuery = jQuery
window.$ = jQuery

import "select2"
import moment from "moment"
window.moment = moment

console.log("IAMA Application loaded with Importmaps!")
