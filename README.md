# OTEL Analysis Docker Action

This action checks for correct integration of the OpenTelemetry library. Uses the semgrep Docker image for matching code.

## Inputs

## `rules`

**Optional** Comma-separated list of semgrep rules which should be analyzed. If left empty, all rules will be analyzed. Default value is `` (empty).

## Outputs

## `analysis`

Analysis results for chosen rules.

## Example usage

uses: actions/observability-ci-metrics@v1
with:
  rules: 'java-check-span-creation'