# chef-delivery

[![CI State](https://github.com/actionshub/chef-delivery/workflows/release/badge.svg)](https://github.com/actionshub/chef-delivery)

A Github Action to run Chef Delivery on a cookbook

## Usage

```yaml
name: delivery

on: [push, pull_request]

jobs:
  delivery:

    runs-on: ubuntu-latest

    steps:
    - name: Check out code
      uses: actions/checkout@main
    - name: Run Chef Delivery
      uses: actionshub/chef-delivery@main
```
