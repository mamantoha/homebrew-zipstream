# Homebrew Tap for zipstream

[![Homebrew](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/mamantoha/homebrew-zipstream/main/badge.json)](https://github.com/mamantoha/homebrew-zipstream)

This is the official [Homebrew](https://brew.sh) tap for installing [`zipstream`](https://github.com/mamantoha/zipstream).

## Installation

You can install `zipstream` via Homebrew with:

```sh
brew install mamantoha/zipstream/zipstream
```

If you haven’t tapped this repository yet:

```sh
brew tap mamantoha/zipstream
brew install zipstream
```

## Upgrade

To get the latest version:

```sh
brew upgrade zipstream
```

## Uninstall

```sh
brew uninstall zipstream
```

## Test the Installation

```sh
zipstream --help
```

## About zipstream

For documentation, source code, and usage examples, visit the main project:

[github.com/mamantoha/zipstream](https://github.com/mamantoha/zipstream)

---

Licensed under the [MIT License](https://opensource.org/licenses/MIT).

## Development: How to Update the Formula

To release a new version of `zipstream`:

1. **Tag a new version** in the [main repository](https://github.com/mamantoha/zipstream):

   ```sh
   git tag vX.Y.Z
   git push origin vX.Y.Z
   ```

2. **Update the formula** in this tap repository:

   Open `Formula/zipstream.rb` and update:

   - The `url` line:
     ```ruby
     url "https://github.com/mamantoha/zipstream/archive/refs/tags/vX.Y.Z.tar.gz"
     ```
   - The `sha256` line:
     Compute the checksum:
     ```sh
     curl -L -o zipstream.tar.gz https://github.com/mamantoha/zipstream/archive/refs/tags/vX.Y.Z.tar.gz
     shasum -a 256 zipstream.tar.gz
     ```
     Then copy the hash into the `sha256` line.

3. **Commit and push the changes**:

   ```sh
   git commit -am "Update zipstream to vX.Y.Z"
   git push origin main
   ```

4. **GitHub Action will auto-update `badge.json`** to reflect the new version.
