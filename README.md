# Nordstjernen Homebrew tap

[Homebrew](https://brew.sh) cask for [Nordstjernen](https://github.com/nordstjernen-web/nordstjernen-sol-browser),
an independent web browser written from scratch in C.

```sh
brew install --cask nordstjernen-web/tap/nordstjernen
```

The cask installs the signed and notarised `Nordstjernen.app` from the
project's GitHub releases (Apple Silicon, macOS 11 or newer). Upgrade with
`brew upgrade --cask nordstjernen`; `brew uninstall --zap --cask nordstjernen`
also removes the browser's profile.

`Casks/nordstjernen.rb` is updated by the main repository's release workflow
each time a release is published.
