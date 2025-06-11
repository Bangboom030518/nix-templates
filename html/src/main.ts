import { customElement, state } from "lit/decorators.js";
import { html, LitElement } from "lit";

export class LitElementNoShadow extends LitElement {
  createRenderRoot() {
    return this;
  }
}

@customElement("x-app")
export class App extends LitElementNoShadow {
  @state()
  count: number = 0;

  render() {
    return html`<div
      class="w-full h-full grid place-items-center place-content-center gap-8"
    >
      <div class="grid place-items-center">
        <span class="text-6xl font-bold">Hello World!</span>
        <img src="/src/heart.svg" class="w-32 aspect-square" />
      </div>
      <div class="flex gap-4">
        <button
          class="border-2 border-slate-300 rounded-[1em] px-4 w-full transition-colors hover:bg-slate-300 hover:text-slate-900 disabled:opacity-70"
          @click=${() => this.count > 0 && this.count--}
          .disabled=${this.count <= 0}
        >
          -
        </button>
        ${this.count}
        <button
          class="border-2 border-slate-300 rounded-[1em] px-4 w-full transition-colors hover:bg-slate-300 hover:text-slate-900 disabled:opacity-70"
          @click=${() => this.count < 10 && this.count++}
          .disabled=${this.count >= 10}
        >
          +
        </button>
      </div>
    </div>`;
  }
}
