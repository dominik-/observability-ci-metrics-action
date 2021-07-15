#!/bin/sh -l

echo "Running semgrep for specified rules..."
semgrep --config $GITHUB_WORKSPACE/rules-static/ --json -o semgrep-results.json
echo "Running analysis of semgrep results..."
analysis = $(python3 $GITHUB_WORKSPACE/tmm.py -r $1 semgrep-results.json)
echo "::set-output name=analysis::$analysis"