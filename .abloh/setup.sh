#!/usr/bin/env bash
# Written by abloh init. This file is how your project builds.
# It is the single source of truth for the steps abloh runs before it measures your suite,
# and abloh never guesses around it.
# Edit it freely. Plain shell, one step per block. Your coding agent can edit it too.
set -euo pipefail

# step 1: dependencies, from your lockfile. From bun.lock, bun 1.3.14 in the proof image
bun install --frozen-lockfile

# step 2: your build. From ci.yml::build
bun run build:all

# After this script finishes, your suite runs sealed: no network, no secrets.
