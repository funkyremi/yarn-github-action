# GitHub Action for Yarn

This Action for [yarn](https://yarnpkg.com/en/) enables arbitrary actions with the `yarn` command-line client, including testing packages.

## Usage

An example workflow to build and test packages:

```hcl
workflow "Build, Lint and Test" {
  on = "push"
  resolves = [
    "Tests",
    "Lint",
  ]
}

action "Install" {
  uses = "funkyremi/yarn-github-action@master"
  args = "install"
}

action "Lint" {
  uses = "funkyremi/yarn-github-action@master"
  args = "lint"
  needs = ["Install"]
}

action "Test" {
  uses = "funkyremi/yarn-github-action@master"
  args = "test"
  needs = ["Install"]
}
```

## License

MIT
