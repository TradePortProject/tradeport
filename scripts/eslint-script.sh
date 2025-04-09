#!/bin/bash

mkdir -p frontend/lint-reports
npx eslint frontend/src --ext .ts,.tsx -f stylish > frontend/lint-reports/eslint-report.txt

echo $? > /dev/null
