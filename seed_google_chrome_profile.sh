#!/usr/bin/env bash

set -ex

rm -rf __pycache__

~/.cache/ms-playwright/chromium-1179/chrome-linux/chrome --user-data-dir=./test_browser_data_dir
