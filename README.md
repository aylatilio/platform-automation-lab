# 🧠 Platform Automation Lab

Small demo project to showcase **API deployment automation** and **CI/CD workflow**.

---

## 🚀 Stack
- **Python 3.11 + FastAPI** — simple REST API
- **GitHub Actions** — CI/CD automation
- **(Planned)** Terraform for AWS provisioning

---

## ⚙️ How it works
On each push to the `main` branch, GitHub Actions:
1. Checks out the code  
2. Installs dependencies  
3. Runs a startup test for the FastAPI app  

---

## 📡 API Example
`GET /` → returns `{ "status": "ok", "message": "Platform automation demo running" }`

Run locally:
```bash
pip install -r requirements.txt
uvicorn main:app --reload
