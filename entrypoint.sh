#!/bin/sh -l

echo "Running semgrep for specified rules..."
semgrep --config /rules-static/ --json -o /semgrep-results.json ${GITHUB_WORKSPACE}
echo "Running analysis of semgrep results..."
analysis = $(python3 /tmm.py -r $1 /semgrep-results.json)
echo "::set-output name=analysis::$analysis"