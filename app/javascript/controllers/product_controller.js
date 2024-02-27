import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
    markAsPurchased(event) {
      event.preventDefault();
      const productCard = this.element.closest('.product-card');
      productCard.style.display = 'none';
    }
}