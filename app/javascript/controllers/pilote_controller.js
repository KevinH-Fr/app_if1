import { Controller } from "@hotwired/stimulus"
import { get } from "@rails/request.js"

export default class extends Controller {

  change(event) {

   // document.getElementById("ecurie").textContent =  event.target.selectedOptions[0].value
  
   console.log(event.target.selectedOptions[0].value) 
   console.log(event.target.selectedOptions[0].text) 

   document.getElementById("resultat_ecurie").value =  event.target.selectedOptions[0].value

   document.getElementById("q").value =  event.target.selectedOptions[0].value




  }
}
