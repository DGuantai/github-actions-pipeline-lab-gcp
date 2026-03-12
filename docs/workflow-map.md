# Workflow Map

## CI
- Trigger: pull requests to `main` and `dev`
- Purpose: lint and test validation

## Docker Build
- Trigger: pushes to `main` and `dev`
- Purpose: verify container buildability

## Deploy Staging
- Trigger: push to `dev` or manual dispatch
- Purpose: simulate environment deployment flow

## Release
- Trigger: semantic version tags
- Purpose: simulate release automation

## Scheduled Maintenance
- Trigger: cron schedule or manual dispatch
- Purpose: simulate operational automation