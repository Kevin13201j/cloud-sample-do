Cloud Sample Deployment on DigitalOcean
🚀 Project Overview

This project demonstrates how to deploy a simple Node.js + Docker application on DigitalOcean, using two possible deployment methods:

DigitalOcean App Platform — the easiest “Platform as a Service” option.

DigitalOcean Droplet (with Docker) — a more manual and flexible VPS-based approach.

🧱 Project Structure
cloud-sample-digitalocean/
│
├── Dockerfile
├── package.json
├── app.js              # or index.js (main entry point)
├── .dockerignore
├── README.md
└── /node_modules

⚙️ Requirements

Before starting:

Have a DigitalOcean account: https://cloud.digitalocean.com

Have a GitHub repository with this code (cloud-sample-digitalocean)

Optional: Docker installed locally for testing

Node.js installed if you want to run it manually

🐳 Local Test (Optional)

You can test the app locally before deployment:

# Build Docker image
docker build -t cloud-sample-digitalocean .

# Run container locally
docker run -p 3000:3000 cloud-sample-digitalocean


Then open your browser at 👉 http://localhost:3000

Expected message:

App running successfully on port 3000 (Provider: DigitalOcean)

🌐 Deployment Options
🅰️ Option A: Deploy on DigitalOcean App Platform
1️⃣ Connect GitHub Repository

Go to https://cloud.digitalocean.com/apps

Click Create App

Choose GitHub as the source

Authorize and select your repo: cloud-sample-digitalocean

2️⃣ Configure the App

DigitalOcean will automatically detect the Node.js app or Dockerfile.

If it asks for build settings:

Environment: Node.js or Docker

Build Command: npm install

Run Command: npm start

Add the following environment variables:

PROVIDER = DigitalOcean
PORT = 3000

3️⃣ Deploy the App

Click Deploy

Wait for the build logs to show:

Building Docker image...
Running npm install...
App listening on port 3000


When the deployment completes, click Live App to open your app online.
Example URL:

https://cloud-sample-digitalocean.ondigitalocean.app
