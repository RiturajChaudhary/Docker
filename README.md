🐳 Assignment-1: Containerize a Python Flask Application
<div align="center">
DockerPythonFlaskDockerHub

</div>
📌 Project Overview
This project demonstrates how to containerize a Python Flask application using Docker. The Flask app returns Hello, Docker! when accessed at the root URL (/). The application is containerized, built as a Docker image, and pushed to Docker Hub for easy deployment.

📁 Project Structure
flask-docker-app/
│
├── app.py             # Main Flask application
├── requirements.txt   # Python dependencies
└── Dockerfile         # Instructions to build Docker image
🐳 Docker Workflow
app.py  ──►  Dockerfile  ──►  docker build  ──►  docker push  ──►  docker run
 Flask          Image             Local            DockerHub        Container
⚙️ Docker Commands
1️⃣ Build the Docker Image
docker build -t flask-app .
Flag	Description
-t flask-app	Tags the image locally
.	Build context is the current directory
2️⃣ Run the Docker Container
docker run -dit -p 4000:4000 flask-app
Flag	Description
-d	Run container in detached (background) mode
-i	Keep STDIN open (interactive)
-t	Allocate a pseudo-TTY terminal
-p 4000:4000	Maps host port 4000 to container port 4000
3️⃣ Tag the Image for Docker Hub
docker tag flask-app rituraj4164/flask-app:latest
4️⃣ Push the Image to Docker Hub
docker push rituraj4164/flask-app:latest
5️⃣ Pull & Run the Image Anywhere
docker pull rituraj4164/flask-app:latest
docker run -dit -p 4000:4000 rituraj4164/flask-app:latest
🌐 Access the app at: http://localhost:4000

✅ Expected output: Hello, Docker!

💡 Notes & Tips
💬 Always check if a port is free before running containers using docker ps

🏷️ Tagging correctly is important before pushing to Docker Hub

🪶 Using a slim Python base image keeps the image size minimal

🚀 For production, consider replacing Flask's dev server with Gunicorn

✅ Result
The image is successfully pushed and publicly available on Docker Hub:

<div align="center">
🔗 hub.docker.com/r/rituraj4164/flask-app
</div>
