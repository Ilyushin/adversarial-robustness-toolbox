#!/usr/bin/env bash


rm -rf ./adversarial_robustness_toolbox.egg-info ./dist ./build
python3 -m pip install --upgrade pip
python3 setup.py sdist bdist_wheel
python3 -m pip uninstall -y adversarial-robustness-toolbox
python3 -m pip install --upgrade ./dist/adversarial-robustness-toolbox-*-py3-none-any.whl
#rm -rf ./adversarial_robustness_toolbox.egg-info ./dist ./build