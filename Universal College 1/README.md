# Experiment 6 — Automated Deployment using GitHub and Jenkins

This folder contains the journal write-up and sample Flask/Docker CI/CD project.

## Files
- `exp6.txt` — experiment journal, procedure, observations, result, conclusion and viva questions
- `app.py` — Flask web application
- `requirements.txt` — Python dependencies
- `Dockerfile` — Docker image instructions
- `Jenkinsfile` — Jenkins pipeline for Windows agents
- `.github/workflows/deploy.yml` — GitHub Actions workflow
- `exp6.json` — metadata for the course website

## Run locally with Docker
```bash
docker build -t student-flask-app .
docker run -d -p 5000:5000 --name student-app student-flask-app
```
Open `http://localhost:5000`. Expected response: `Hello! Application deployed automatically.`

Stop/remove the container:
```bash
docker stop student-app
docker rm student-app
```

## GitHub Actions
Push the project to the `main` branch and check the **Actions** tab in GitHub. This workflow demonstrates build/test/container execution on the hosted runner; it does not deploy to a persistent external server.

## Jenkins
Configure a Pipeline job with **Pipeline script from SCM**, the Git repository URL, branch `*/main`, and script path `Jenkinsfile`. This Jenkinsfile uses Windows `bat` commands, so run it on a Windows Jenkins agent with Python, Git and Docker available.

Replace `YOUR-USERNAME` in the repository URL with your GitHub username. Do not commit passwords, access tokens or other secrets.
