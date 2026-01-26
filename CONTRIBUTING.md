# Contributing to Lua-course 🌙

Thank you for your interest in contributing to **Lua-course**!  
Contributions are welcome and appreciated. This document explains how you can help improve the project.

---

## 📌 Ways to Contribute

You can contribute in many ways:

- 📚 Improve or add lessons
- 🧪 Add or improve tests
- ✍️ Fix typos or improve documentation
- 🧩 Add examples or exercises
- 🚀 Improve projects
- 🐛 Report bugs or issues
- 💡 Suggest new features or topics

---

## 🛠 Requirements

- Lua **5.4+**
- Basic knowledge of Lua
- Git & GitHub

Optional:
- `luaunit` for tests

---

## 📂 Project Structure Overview

```
lessons/ → Theory and guided examples
examples/ → Standalone runnable examples
exercises/ → Practice tasks
projects/ → Real-world Lua projects
tests/ → Unit tests (luaunit)
resources/ → Reference material
```

Please follow the existing structure when adding new content.

---

## 🧑‍💻 Coding Guidelines

- Always use `local` variables when possible
- Follow the Lua Style Guide (`resources/lua_style_guide.md`)
- Keep code simple, readable, and beginner-friendly
- Add comments when introducing new concepts
- Avoid unnecessary global variables

Example:
```lua
local function add(a, b)
    return a + b
end
