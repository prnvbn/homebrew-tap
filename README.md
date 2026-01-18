# prnvbn Homebrew Tap

## What is Homebrew?

Package manager for macOS (or Linux), see more at https://brew.sh

## What is a Tap?

A third-party (in relation to Homebrew) repository providing installable packages (formulae) on macOS and Linux.

See more at https://docs.brew.sh/Taps

## How do I install packages from here?

```sh
brew install prnvbn/tap/<name>
```

You can also only add the tap which makes formulae within it available in search results (`brew search` output):

```sh
brew tap prnvbn/tap
```

Note: to clone the tap via SSH you will need to use:

```sh
brew tap prnvbn/tap https://github.com/prnvbn/homebrew-tap
```

While you may search across taps, it is necessary to always use fully qualified name (incl. the `hashicorp/tap/` prefix) when referring to formulae in external taps such as this one outside of search.

## What packages are available?

With the following commands, you can install the latest generally available (GA) version of each product:
```sh
brew install prnvbn/tap/bus
brew install prnvbn/tap/clocks
brew install prnvbn/tap/grpcexp
```
