import { Application } from "@hotwired/stimulus"
import 'bootstrap/dist/css/bootstrap.min.css';
import 'bootstrap/dist/js/bootstrap.bundle.min.js';
// app/javascript/packs/application.js
import 'bootstrap/dist/css/bootstrap.min.css';
import 'bootstrap';

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }
// app/assets/javascripts/application.js
//= require jquery
//= require bootstrap
//= require_tree .
