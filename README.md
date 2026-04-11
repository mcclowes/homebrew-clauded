# homebrew-clauded

Homebrew tap for [Clauded](https://github.com/mcclowes/clauded) — native macOS menu bar app for managing Claude Code instances.

## Install

```bash
brew install --cask mcclowes/clauded/clauded
```

## How updates work

This tap is updated automatically by the [release workflow](https://github.com/mcclowes/clauded/actions/workflows/release.yml) in the main Clauded repo whenever a new version tag is pushed. The generated cask lives at [`Casks/clauded.rb`](./Casks/clauded.rb).
