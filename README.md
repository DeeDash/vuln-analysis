# AI-Based Vulnerability Analysis and Payload Generation Tool
## Overview
This project is an LLM-powered vulnerability assessment tool designed to analyze potentially vulnerable source code. Built using Ollama and Open WebUI’s RAG, it performs analysis using best practices and can also generate payloads for testing potential vulnerabilities. Its primary purpose is to allow offline processing of confidential source code, ensuring local vulnerability analysis.

## Setup
- Clone this repository
  
  ```
  git clone https://github.com/DeeDash/vuln-analysis.git
  cd vuln-analysis
  ```
- **Prepare your RAG data:** Place documents in `rag-data/` folder. If left empty, the image will still ship with built-in security knowledge base.
- Build and start the containers
  ```
  docker compose up -d --build
  ```
- **Access the app:** Open http://localhost:3000 in your browser

## Demo
[![IMAGE](https://img.youtube.com/vi/rXCPoW0GvaI/0.jpg)](https://www.youtube.com/watch?v=rXCPoW0GvaI)
