#!/usr/bin/env bash


rm -rf __pycache__

rm /browser_data_dir/SingletonLock

set -ex

~/.cache/ms-playwright/chromium-1179/chrome-linux/chrome --user-data-dir=/browser_data_dir
# ~/.cache/ms-playwright/chromium-1179/chrome-linux/chrome --user-data-dir=./test_browser_data_dir
