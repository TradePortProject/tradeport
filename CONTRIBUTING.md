# 🌟 Contributing Guidelines

Thank you for considering contributing to this project! To ensure a smooth and effective collaboration, please follow the guidelines below.

## 🚀 How to Contribute

| Step | Action                                                                                                                                              |
| ---- | --------------------------------------------------------------------------------------------------------------------------------------------------- |
| 1.   | **Fork** the repository and clone it locally.                                                                                                       |
| 2.   | **Create a new branch**:<br>Use the format `feature/<your-feature>` or `fix/<your-bug>`.                                                            |
| 3.   | **Write clear commit messages** following our [Commit Message Guidelines](#-commit-message-guidelines).                                             |
| 4.   | **Open a Pull Request (PR)**:<br>Ensure your branch is updated with the `main` branch. Provide a clear description and link the related JIRA issue. |

## 🧑‍💻 Code Style

- Follow the project's existing **linting rules** and formatting standards.
- Maintain consistency in **naming conventions**, **file structures**, and **code organization**.
- Use TypeScript interfaces and types where applicable.

## 🐞 Reporting Issues

- Check the existing issues before raising a new one.
- When reporting, please include:
  - A **clear title**
  - Steps to **reproduce the issue**
  - Screenshots or logs, if relevant

## 📝 Commit Message Guidelines

We follow a **JIRA-integrated commit format** to ensure traceability and consistency.

### 🔐 Format

```

SCRUM-XX-TYPE: Title Case Summary

Optional longer description.

Closes SCRUM-XX

```

| Component       | Description                                                                  |
| --------------- | ---------------------------------------------------------------------------- |
| `SCRUM-XX`      | Replace with the actual JIRA ticket number (e.g., `SCRUM-42`)                |
| `TYPE`          | One of the [Commit Types](#-commit-types) listed below, always **uppercase** |
| `Title`         | Short, descriptive summary in **Title Case**                                 |
| `Body` (opt.)   | Provide additional context or rationale                                      |
| `Footer` (opt.) | `Closes SCRUM-XX` (optional but useful for automation)                       |

### 📦 Commit Types

| Type       | Description                                    |
| ---------- | ---------------------------------------------- |
| `FEAT`     | A new feature                                  |
| `FIX`      | A bug fix                                      |
| `DOCS`     | Documentation updates                          |
| `STYLE`    | Code formatting or styling (no logic changes)  |
| `REFACTOR` | Code refactoring without feature or bug change |
| `TEST`     | Adding or updating tests                       |
| `CHORE`    | Maintenance tasks, dependency updates, etc.    |

### ✅ Examples

#### ✨ Feature Addition

```

SCRUM-42-FEAT: Add Retailer Registration Page

Implemented form and validation logic for retailer onboarding.
Closes SCRUM-42

```

#### 🐛 Bug Fix

```

SCRUM-08-FIX: Handle Empty Cart Edge Case

Prevented cart crash when product list is empty. Added unit tests.

```

#### 📄 Documentation Update

```

SCRUM-19-DOCS: Update API Usage in README

Added examples for auth token usage in API calls.

```

#### 🧹 Chore

```

SCRUM-33-CHORE: Upgrade React and Tailwind Dependencies

```

## 📢 Git Tips

Use this CLI-friendly command:

```bash
git commit -m "SCRUM-XX-TYPE: Title Case Summary" -m "Optional detailed description"
```

For example:

```bash
git commit -m "SCRUM-07-FIX: Resolve Login Timeout Issue" -m "Session expired due to inactive refresh token. Added middleware to renew tokens."
```

## 🧪 Before Submitting a Pull Request

- [ ] Your branch is updated with `main`
- [ ] Code is linted (`npm run lint`)
- [ ] Tests are passing (`npm run test`)
- [ ] Commit messages follow the format
- [ ] Related issue(s) are referenced in the PR

---

By following these practices, we can maintain a high-quality, collaborative codebase that's easy to manage and scale 🚀
