# Experiment 1 — Agile Software Project Lifecycle

This folder is intended to be placed at `exp1/` beside the course portal's `index.html`.

## Files
- `exp1.txt`: full experiment steps, workflow, checklist, output, result, and viva questions.
- `app.py`: sample Student Management System implementation.
- `test_app.py`: automated unit tests.
- `requirements.txt`: no external packages are required.
- `ci.yml`: GitHub Actions workflow source. Copy it to `.github/workflows/ci.yml` in your GitHub repository.
- `exp1.json`: title, description, and useful links for the course portal.

## Run locally
From this folder:

```bash
python -m unittest -v
python app.py
```

## GitHub Actions
For the repository used in the lab, put the workflow at `.github/workflows/ci.yml` in the repository root. GitHub Actions runs tests on pushes and Pull Requests.
