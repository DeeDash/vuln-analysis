# AI-Based Vulnerability Analysis and Payload Generation Tool
## Overview
This project is an AI/ML-powered vulnerability assessment tool designed to simulate real-world attack payloads and test applications against known security flaws. It leverages machine learning models trained on OWASP Top 10 vulnerabilities, secure coding practices, and best-in-class defense strategies. The tool includes a payload generator built on top of the Ollama framework and uses a hybrid approach combining signature heuristics with AI inference for realistic attack simulation.

## Setup
- Clone this repository
  ```
  git clone https://github.com/DeeDash/vuln-analysis.git
  cd vuln-analysis
  ```
- Prepare your RAG data: Place documents in rag-data/ folder (PDF, TXT, MD supported). If left empty, the image will still ship with built-in security knowledge base.
- Build and start the containers
  ```
  docker compose up -d --build
  ```
- Access the app: Open http://localhost:3000 in your browser

## Demo
[![IMAGE ALT TEXT HERE](https://img.youtube.com/vi/rXCPoW0GvaI/0.jpg)](https://www.youtube.com/watch?v=rXCPoW0GvaI)
