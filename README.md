# Demo for the swash crate

See the swash [repo](https://github.com/dfrg/swash) or [crate](https://crates.io/crates/swash) for the actual project.

This is a chunk of _very_ rough code. It's essentially a packed up version of my
own personal playground I've been using for testing swash throughout development.
You will break it. It will crash. You are likely to be eaten by a grue.

It was tested most recently (as in, just before release) on a Mac. So you'll have the
best luck there. It will probably work on Windows. I have no idea if it still works
on Linux, but if not, feel free to file issues and I'll take a look. Linux hasn't received
much focus as of yet, but I do consider it a priority platform for the project. (Note that 
swash itself has zero platform specific dependencies and works perfectly well on Linux or
any other OS)

If you don't feel up to running it, or (more likely) it won't run, check out the
swash_and_textedit.png screenshot in the repo root.

This currently requires OpenGL 4.1.

> Note about this fork: I modified a few things here and there, I notably tweaked font
> fallback on Linux and MacOS to get better results for CJK characters, added some
> paragraphs for a better demo, and implemented basic IME events to test input methods.

![Demo (MacOS)](/demo.png)

# Usage

```
cargo run --release
```

Keys:

- F1: toggle dark and light modes
- F2: left align
- F3: center align
- F4: right align

If you're brave and really want to break it, basic editing does "work". Arrow keys, selection, cut, copy, paste, etc.
