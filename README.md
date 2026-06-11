
# Flask + Docker + GitHub Actions

A simple Flask application demonstrating containerization with Docker and Continuous Integration (CI) using GitHub Actions.

## Features

* Flask web application
* Automated testing with Pytest
* Docker containerization
* GitHub Actions CI pipeline
* Python 3.11

## Project Structure

```text
.
├── .github/workflows/
│   └── docker-ci.yml
├── src/
│   └── app.py
├── tests/
│   └── test_app.py
├── Dockerfile
├── requirements.txt
├── .gitignore
└── README.md
```

## Setup

Create and activate a virtual environment:

```bash
conda create -p venv python=3.11
conda activate ./venv
```

Install dependencies:

```bash
pip install -r requirements.txt
```

## Run Flask Application

```bash
python src/app.py
```

The application will be available at:

```text
http://localhost:5000
```

## Run Tests

```bash
pytest
```

## Build Docker Image

```bash
docker build -t flask-app .
```

## Run Docker Container

```bash
docker run -p 5000:5000 flask-app
```

## GitHub Actions Pipeline

On every push or pull request, GitHub Actions will:

* Install dependencies
* Run Pytest tests
* Build the Docker image
* Validate application changes automatically

## Technologies

* Flask
* Pytest
* Docker
* GitHub Actions
* Python 3.11
