import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["productForm", "productGroup", "productFormToggle"];

  toggleProductForm() {
    this.productFormTarget.classList.toggle("hidden");
    this.productGroupTarget.classList.toggle("hidden");
    this.productFormToggleTarget.textContent = this.productFormTarget.classList.contains("hidden") ? "Add product" : "Cerrar";
    console.log("desde el controlador de list");
  }
}
