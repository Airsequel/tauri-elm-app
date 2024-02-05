# ![Icon](src-tauri/icons/32x32.png) Tauri Elm App

Use [Tauri](https://tauri.app)
to build desktop apps with [Elm](https://elm-lang.org/)
and [Tailwind CSS](https://tailwindcss.com/)!

Uses [elm-watch](https://lydell.github.io/elm-watch/)
for hot reloading and bundling.

![Screenshot](screenshot.png)


## Local Development

Prerequisites:

- [Install Bun](https://bun.sh/docs/installation)
- [Install Rust](https://www.rust-lang.org/learn/get-started#installing-rust)

You can then use following command
to start up the elm-watch and the Tauri dev-server:

```sh
make dev
```

Check out the [Makefile](makefile) for all available commands.


## Related

- [@elm-land/tauri] - Template for using Elm Land
    to build desktop apps with Tauri.
- [Conduct] - Haskell package that provides an Elm like UI library for Tauri.
- [ElmTauriGUI] - Connect to the file system via `lobanov/elm-taskport`.
- [tauri-elm-counter] - Tauri + Elm based counter example
    using Tauri's Rust backend.

[@elm-land/tauri]: https://github.com/elm-land/tauri
[Conduct]: https://github.com/matthunz/conduct
[ElmTauriGUI]: https://github.com/Andrew-Clow/ElmTauriGUI
[tauri-elm-counter]: https://github.com/eaon/tauri-elm-counter
