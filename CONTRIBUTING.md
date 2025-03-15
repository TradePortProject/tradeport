# Contributing Guidelines

Thank you for considering contributing to this project! To ensure a smooth collaboration, please follow these guidelines:

## How to Contribute

1. **Fork the Repository**: Start by forking this repository and creating a local clone.
2. **Work on a Branch**: Create a feature branch (`feature/<your-feature>` or `fix/<your-bug>`).
3. **Write Clear Commit Messages**: Follow the [Commit Message Guidelines](#) to maintain consistency.
4. **Pull Requests**:
   - Ensure your branch is up to date with the main branch before submitting a pull request.
   - Provide a clear description of your changes and reference related issues (if any).

## Code Style

- Follow the code style specified in the repository (e.g., linting rules).
- Use the existing structure for naming conventions and organization.

## Reporting Issues

- Check if the issue is already reported.
- If not, create a new issue with a descriptive title and relevant details.

## Commit Message Guidelines

This document defines the standard for writing commit messages to ensure consistency, readability, and collaboration across the team.

### Commit Message Format

Use the following structure for commit messages:

```
<type>(<scope>): <subject>

<body>

<footer>
```

#### 1. **Type**

The type describes the nature of the change. Use one of the following keywords:

- `feat`: A new feature (e.g., `feat(ui): add user login`)
- `fix`: A bug fix (e.g., `fix(api): resolve timeout issue`)
- `docs`: Documentation updates (e.g., `docs(readme): update setup steps`)
- `style`: Code formatting or style changes (e.g., `style(ui): fix alignment`)
- `refactor`: Code changes that neither fix a bug nor add a feature.
- `test`: Adding or updating tests.
- `chore`: Maintenance tasks (e.g., dependency updates).

#### 2. **Scope** (Optional)

The scope specifies the area of the codebase being changed, e.g., `auth`, `api`, `ui`, `docs`.

#### 3. **Subject**

A short, imperative description of the change:

- Limit to 50 characters.
- Start with a verb (e.g., `add`, `fix`, `update`).
- Do not capitalize the first word or add a period at the end.

**Example:** `feat(ui): add drag-and-drop functionality`

#### 4. **Body** (Optional)

Provide additional context or explanation for the change:

- Describe **what** and **why**, but not **how**.
- Wrap text at 72 characters.

**Example:**

```
fix(api): resolve response parsing issue

Resolved a bug where API responses were incorrectly parsed, causing
errors in the frontend display. Added unit tests to cover edge cases.
```

#### 5. **Footer** (Optional)

Use to reference issues or note breaking changes:

- Format for issues: `Closes #<issue-number>`.
- Format for breaking changes: `BREAKING CHANGE: <description>`.

**Example:**

```
feat(auth): add OAuth2.0 support

Implemented OAuth2.0 authentication for user login. Updated the
frontend to handle third-party login providers.

Closes #123
BREAKING CHANGE: User sessions are now managed by the new auth system.
```

---

### Examples

#### Feature Addition

```
feat(ui): add itinerary customization

Users can now customize itineraries with drag-and-drop functionality.
```

#### Bug Fix

```
fix(auth): resolve login redirection issue

Fixed a bug where users were not redirected to the dashboard after a
successful login.
```

#### Documentation Update

```
docs(api): update endpoint documentation

Added detailed examples and explanations for the itinerary endpoints.
```

#### Chore

```
chore(deps): update npm dependencies

Updated project dependencies to their latest versions for security
and performance improvements.
```

---

By following these guidelines, we can maintain a clean and structured project history, enabling better collaboration and easier tracking of changes.
