# Octopus Demo Sample Application

This is a .NET 9.0 sample application consisting of a frontend, API, and database layer. It is designed for use in Octopus Deploy demos and proof-of-value scenarios by solution engineers.

## 🧱 Application Structure

```
application-templates/kubernetes/src/
├── Api         # ASP.NET Core Web API (.NET 9)
├── Frontend    # Razor Pages frontend (.NET 9)
├── items.db    # Default SQLite database
└── docker-compose.yml
```

## 🌐 Purpose

- Demonstrates deployments with containers (via Docker Compose)
- Supports multiple database backends (SQLite, PostgreSQL, SQL Server)
- Shows how to centralize configuration and scale across environments
- Designed for portability — zipped up and reused in other Git repos

---

## 🚀 How to Run It

### ✅ Prerequisites

- Docker + Docker Compose
- .NET 9.0 SDK (for local dev)
- VS Code (recommended)

---

### 🐳 Run with Docker Compose

```bash
cd application-templates/kubernetes/src
docker-compose up --build
```

This will:
- Start the API on [http://localhost:5150](http://localhost:5150)
- Start the frontend on [http://localhost:5151](http://localhost:5151)

---

## 🧪 Database Options

The API supports **SQLite**, **PostgreSQL**, and **SQL Server** using a runtime switch.

### 🔧 Configure via Environment Variables

These are defined in `docker-compose.yml` or a `.env` file:

```env
DatabaseProvider=sqlite         # or 'postgres', 'sqlserver'
UseExternalMigrations=false     # set true if using Flyway or other tools
```

### 🗃️ SQLite (default)

No extra setup — creates `items.db` in container.

---

## 🛠️ Local Development

You can run the API and frontend independently using VS Code:

- Open the workspace at `application-templates/kubernetes/src`
- Use the `Run Api + Frontend` launch profile
- Change ports in `.vscode/launch.json` if needed

---

## 🧹 Notes for Reuse

- The app is designed to be copied into customer-specific Git repos
- Branding and styling can be updated in the Frontend layout
- Database schema can be extended or replaced via external scripts in the `/Database` folder (for Flyway etc.)

---

## 📌 What's Next

- [ ] Add Kubernetes manifests and Helm chart
- [ ] Integrate external migration (Flyway) workflows
- [ ] Include Azure Web App deployment instructions

---

Built and maintained by the Octopus Deploy Solutions Engineering team.
