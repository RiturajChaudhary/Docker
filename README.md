# 🐳 Containerizing a Flask App from Scratch

<div align="center">

![Docker](https://img.shields.io/badge/Docker-2496ED?style=for-the-badge&logo=docker&logoColor=white)
![Python](https://img.shields.io/badge/Python-3.11-3776AB?style=for-the-badge&logo=python&logoColor=white)
![Flask](https://img.shields.io/badge/Flask-2.3.2-000000?style=for-the-badge&logo=flask&logoColor=white)
![DockerHub](https://img.shields.io/badge/DockerHub-rituraj4164-2496ED?style=for-the-badge&logo=docker&logoColor=white)

</div>

---

## 📌 Project Overview

This project demonstrates how to **containerize a Python Flask application** using Docker.
The Flask app returns `Hello, Docker!` when accessed at the root URL (`/`).
The application is containerized, built as a Docker image, and pushed to **Docker Hub** for easy deployment.

---

## 📁 Project Structure

```
flask-docker-app/
│
├── app.py             # Main Flask application
├── requirements.txt   # Python dependencies
└── Dockerfile         # Instructions to build Docker image
```

---

## 🐳 Docker Workflow

```
app.py  ──►  Dockerfile  ──►  docker build  ──►  docker push  ──►  docker run
 Flask          Image             Local            DockerHub        Container
```

---

## ⚙️ Docker Commands

### 1️⃣ Build the Docker Image

```bash
docker build -t flask-app .
```

| Flag | Description |
|------|-------------|
| `-t flask-app` | Tags the image locally |
| `.` | Build context is the current directory |

---

### 2️⃣ Run the Docker Container

```bash
docker run -dit -p 4000:4000 flask-app
```

| Flag | Description |
|------|-------------|
| `-d` | Run container in detached (background) mode |
| `-i` | Keep STDIN open (interactive) |
| `-t` | Allocate a pseudo-TTY terminal |
| `-p 4000:4000` | Maps host port 4000 to container port 4000 |

---

### 3️⃣ Tag the Image for Docker Hub

```bash
docker tag flask-app rituraj4164/flask-app:latest
```

---

### 4️⃣ Push the Image to Docker Hub

```bash
docker push rituraj4164/flask-app:latest
```

---

### 5️⃣ Pull & Run the Image Anywhere

```bash
docker pull rituraj4164/flask-app:latest
docker run -dit -p 4000:4000 rituraj4164/flask-app:latest
```

> 🌐 Access the app at: **http://localhost:4000**
>
> ✅ Expected output: `Hello, Docker!`

---

## 💡 Notes & Tips

> 💬 Always check if a port is free before running containers using `docker ps`

> 🏷️ Tagging correctly is important before pushing to Docker Hub

> 🪶 Using a `slim` Python base image keeps the image size minimal

---

## ✅ Result

The image is successfully pushed and publicly available on Docker Hub:

<div align="center">

### 🔗 [hub.docker.com/r/rituraj4164/flask-app](https://hub.docker.com/r/rituraj4164/flask-app)

</div>
