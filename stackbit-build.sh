#!/usr/bin/env bash

set -e
set -o pipefail
set -v

npx @stackbit/stackbit-pull --stackbit-pull-api-url=https://api.stackbit.com/pull/5d5ad95699a43e0013580a79
cd exampleSite && hugo --gc --baseURL "/" --themesDir ../.. && cd ..
