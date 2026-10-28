# Experiment 4 — Docker Compose Multi-Service Application

This folder contains the lab write-up and Flask + MySQL Docker Compose project.

## Files
- `exp4.txt` — journal, procedure, commands, observations, conclusion and viva questions
- `app.py` — Flask app that connects to MySQL using Compose hostname `db`
- `requirements.txt` — Python dependencies
- `Dockerfile` — builds the Flask web image
- `docker-compose.yml` — defines the Flask and MySQL services
- `exp4.json` — metadata for the course website

## Run
Make sure Docker Desktop is running, then open a terminal in this folder and execute:

```bash
docker compose up --build
```

Open `http://localhost:5000`. The expected successful response is:
`Flask application is running and connected to MySQL using Docker Compose!`

Useful commands:
```bash
docker compose ps
docker compose logs web
docker compose logs db
docker compose down
```

To run in the background:
```bash
docker compose up -d --build
```

## Note
The example credentials (`rootpassword`) are for a lab demonstration only. Do not use them in production. `depends_on` controls startup order but does not guarantee MySQL is ready to accept connections immediately; if the first request fails during startup, wait a moment and refresh.
