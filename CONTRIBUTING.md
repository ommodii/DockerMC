# Contributing to DockerMC 🚀

First off, thank you for considering contributing to DockerMC! Our goal is to eliminate the pain of creating and maintaining Minecraft servers through the power of Docker.

Whether you're fixing a bug, suggesting a feature, or improving documentation, your help is welcome.

---

## 🛠 How Can I Contribute?

### 🐞 Reporting Bugs
If you find a bug, please open an **Issue** and include:
* **A clear description** of the problem.
* **Steps to reproduce** (including your `docker-compose.yml` if applicable).
* **Your Hardware Environment** (e.g., Apple Silicon M-series, Intel/AMD, or TrueNAS storage setup).
* **Logs** from the container (`docker logs <container_id>`).

### ✨ Suggesting Features
We love new ideas! If you have a suggestion:
* Check existing issues to see if it's already been suggested.
* Open an issue with the tag `enhancement`.
* Explain **why** this feature would make server management easier.

---

## 💻 Development Workflow

To get started with development on DockerMC:

1.  **Fork** the repository to your own account.
2.  **Clone** your fork locally:
    ```bash
    git clone [https://github.com/YOUR_USERNAME/DockerMC.git](https://github.com/YOUR_USERNAME/DockerMC.git)
    ```
3.  **Create a branch** for your fix or feature:
    ```bash
    git checkout -b feature/amazing-new-logic
    ```
4.  **Test locally.** Since this is a Docker project, ensure your changes don't break the container build:
    ```bash
    docker build -t dockermc-test .
    ```

---

## ✅ Pull Request Process

1.  Ensure any new environment variables are documented in the `README.md`.
2.  Update the `CHANGELOG.md` with your changes.
3.  Submit your PR against the `main` branch.
4.  Wait for review! We aim to respond to all PRs within 48 hours.

---

## 📜 Code of Conduct
By participating in this project, you agree to abide by our standards of being respectful, inclusive, and technically honest. Let's keep the Minecraft community helpful!

**Happy Crafting!** ⛏️
