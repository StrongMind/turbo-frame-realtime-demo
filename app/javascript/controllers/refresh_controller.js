import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
    static targets = ["frame"]
    connect() {
        console.log("refresh controller")
    }

    refresh() {
        self.reload();
    }
}
