# 🤖 Gemini-CLI_One-Click_Kit

> A one-click automated launcher to install and run Google Gemini AI CLI on Windows

[![License](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)
[![Platform](https://img.shields.io/badge/platform-Windows-blue)](https://www.microsoft.com/windows)
[![Node.js](https://img.shields.io/badge/Node.js-v20%2B-green)](https://nodejs.org/)

**Korean README**: [README.md](README.md)

---

## 📌 Overview

`Gemini-CLI_One-Click_Kit` is an automated launcher that lets anyone use Google Gemini AI's interactive CLI on Windows — no coding knowledge required.

Just double-click the `.bat` file. Everything from installation to launch is handled automatically.

---

## ✨ Key Features

| Feature | Description |
|---------|-------------|
| Auto Environment Check | Verifies Node.js, NPM, and network connectivity |
| Auto Installation | Installs Gemini CLI automatically if not found |
| First-Run Setup Wizard | Guides you through login on first launch |
| Duplicate Process Guard | Safely handles already-running instances |
| Session Logging | Saves usage logs locally |

---

## 📋 Prerequisites (Only One Thing Needed)

### Install Node.js

1. Visit: 👉 [https://nodejs.org/](https://nodejs.org/)
2. Download the **LTS** version (v20 or higher) on the left
3. Run the installer and click **Next** to complete
4. **Restart your computer** after installation

> ✅ Skip this step if Node.js v20+ is already installed.

---

## 🚀 How to Use

### Step 1: Download

- Download the latest version from the **Releases** tab
- Or click the green **Code** button → **Download ZIP** and extract

### Step 2: Run

- Double-click `Gemini-CLI_One-Click_Kit.bat`

### Step 3: First-Run Login

On first launch, you'll see a login selection screen:

```
[1] 🌟 Google Account Login (Recommended)
    - Easiest method
    - 60 requests/min, 1,000/day free

[2] 🔑 API Key
    - 100 requests/day free
```

**Choosing Google Account (option 1)**:
- Your browser opens automatically
- Sign in with your Google account
- Click **Allow Access**
- Done!

**From the second launch onward, just double-click to start immediately.**

---

## 💬 Usage Examples

After launching, type natural language questions in the terminal:

```
> Why is it so hot today?
> Write a Python calculator
> Translate this: 안녕하세요
> Draft a marketing email for my product
```

To exit, type `exit` or press `Ctrl+C`.

---

## 📁 Project Structure

```
Gemini-CLI_One-Click_Kit/
├── Gemini-CLI_One-Click_Kit.bat   # Main launcher
├── README.md                      # Korean documentation
├── README_EN.md                   # English documentation (this file)
├── LICENSE                        # License
└── gemini_cli.log                 # Runtime log (auto-generated, not in git)
```

---

## ⚙️ How It Works (5 Steps)

```
Double-click
  ↓
[Step 1] Environment Check - Verify Node.js, NPM, network
  ↓
[Step 2] Gemini CLI Check - Auto-install if missing
  ↓
[Step 3] Process Check - Detect duplicate instances
  ↓
[Step 4] Config Check - Run setup wizard on first launch
  ↓
[Step 5] Launch - Start Gemini AI conversation
```

---

## ❓ FAQ & Troubleshooting

### Q: I see "Node.js not found"
→ Node.js is not installed. Install the LTS version from [nodejs.org](https://nodejs.org/) and restart your computer.

### Q: Same error after installing Node.js
→ Restart your computer. Environment variables are not applied until after a reboot.

### Q: Installation fails
→ Check your internet connection. Or open a terminal and run manually:
```
npm install -g @google/gemini-cli
```

### Q: Where do I get an API key?
→ Get one free at [https://aistudio.google.com/apikey](https://aistudio.google.com/apikey).

### Q: Do I need to log in every time?
→ No. Login is only required once. After that, credentials are saved locally.

---

## 🔒 Security Notes

- No API keys, passwords, or personal data are hardcoded in this file
- Credentials are stored only in `%USERPROFILE%\.config\gemini-cli\` on your local machine
- Log files (`gemini_cli.log`) are stored locally and never transmitted

---

## 🏷️ Changelog

| Version | Changes |
|---------|---------|
| v2.1 | Fixed input wait bug (pre-initialize `set /p` variable) |
| v2.0 | Added first-run setup wizard and VBScript automation |
| v1.0 | Initial release |

---

## 📜 License

This project is distributed under the [MIT License](LICENSE).

Copyright © 2026 SoDam AI Studio

---

## 🙏 Made By

**SoDam AI Studio**
Making AI tools accessible to everyone.
