# Experiment 4 — Containerize Applications Using Docker

This folder contains the journal write-up and a small example application that can be containerized.

## Files
- `exp4.txt` — full experiment journal, procedure, observations, conclusion, and viva questions
- `Dockerfile` — builds a minimal Python application image
- `app.py` — sample app that prints a message
- `docker_commands.txt` — commands for image and container lifecycle practice
- `exp4.json` — metadata for the course portal

## Run the sample application
From this folder, run:

```bash
docker build -t exp4-hello .
docker run --rm exp4-hello
```

Expected output: `Hello from a Docker container!`

The main lab procedure in `exp4.txt` uses the Ubuntu image, matching the provided experiment material.
