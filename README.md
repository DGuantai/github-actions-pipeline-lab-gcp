# github-actions-pipeline-lab-gcp

A GitHub Actions laboratory built to demonstrate CI/CD using a small FastAPI application.

## Purpose

This repository is focused on pipeline engineering. It demonstrates how to design GitHub Actions workflows for validation, container builds, release tagging, scheduled jobs, reusable workflows, and environment-based deployment simulation. etc

## Branch Strategy

- `main` = stable branch
- `dev` = active development branch

## What This Repo Demonstrates

- Pull request validation
- Push-triggered workflows
- Manual workflows with `workflow_dispatch`
- Scheduled jobs with cron
- Matrix testing
- Reusable workflows
- Docker build pipelines
- Release tag workflows
- Environment-based deployment simulation

## Stack

- Python
- FastAPI
- pytest
- Ruff
- Docker
- GitHub Actions

## Project Structure

- `app/` → application code
- `tests/` → automated tests
- `.github/workflows/` → CI/CD workflow definitions
- `docs/` → workflow and design documentation

## Local Setup

```bash
python -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt
uvicorn app.main:app --reload