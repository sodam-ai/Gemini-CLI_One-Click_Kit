# Gemini CLI One-Click Kit (for Beginners)

> 🌐 [한국어](README.md) | **English**

A **beginner-friendly tool** that lets you use Google's AI **Gemini** right on your Windows PC through a terminal (the black window).
No complicated setup — just **double-click one file and press a number key**.

> 📌 This Kit is an **unofficial helper launcher** that makes Google's official tool `@google/gemini-cli` easier to install and use.
> Gemini AI itself is built and operated by Google. This Kit is not affiliated with or endorsed by Google.

> ⚠️ **As of June 18, 2026, the "Login with Google" free method was discontinued.**
> You now use a **free "API key"** (this document shows how to get one); paste it once and you're set.

---

## ⚡ Quick Start (4 steps, about 5–10 minutes)

1. **Download**: place `Gemini-CLI_One-Click_Kit.bat` in a folder on your PC.
2. **Install**: double-click it → choose **[1] Install** in the menu.
3. **Set API key**: choose **[2] Set API key** → paste a free key. (How to create one is in step 4 below.)
4. **Run**: choose **[3] Run** → type your question in Korean or English. Done.

> Each number key works with a **single press** — you do not need to press Enter.

---

## 1. Prerequisites / Required Programs

| Item | Description | Cost |
|---|---|---|
| **Windows 10 or 11** | The operating system this Kit runs on | - |
| **Internet connection** | Needed to install and chat | - |
| **Node.js** | The "engine" program Gemini runs on. **Menu [1] Install sets it up automatically.** | Free |
| **Gemini API key** | The key to use the free AI. **Set it once in menu [2].** | Free (no credit card) |

- If automatic Node.js install fails, the Kit shows the download link (<https://nodejs.org> → the **LTS** button on the left).

---

## 2. How to Download

- You only need the single file `Gemini-CLI_One-Click_Kit.bat`.
- The included documents (README, GUIDE, LICENSE, NOTICE) are for reference and are not required to run.
- Put the file in an easy-to-find folder such as your **Desktop** or **Documents**.

> 💡 If a blue warning ("Windows protected your PC") appears when you double-click, see **5 / 9. Troubleshooting**. It is a normal warning, not a virus.

---

## 3. How to Install (Menu 1)

1. **Double-click** `Gemini-CLI_One-Click_Kit.bat`.
2. When the menu appears in the black window, press **[1]**.
3. If Node.js is missing, it asks "Install automatically?" → press **Y**.
4. When "Install complete!" appears, you're done (usually 30s–1min).

> If Node.js was just auto-installed, **close the window and re-open it** (double-click again), then press [1] once more (to refresh the path).

---

## 4. Set API Key (Menu 2) — once only

**Why?** Since 2026-06-18 the free "Login with Google" method is blocked. Use a free **API key** instead. Enter it once and the Kit remembers it.

**Create a free key (no credit card)**
1. In a browser, go to 👉 <https://aistudio.google.com/apikey> → sign in with Google
2. Click **[Create API key]**
3. Click **Copy** next to the created key (it usually starts with `AIza…`)

**Enter it into the Kit**
1. In the Kit menu, choose **[2] Set API key**
2. When prompted, **right-click to paste** the copied key, then press **Enter**
3. When "Saved!" appears, you're done. Menu [3] Run / [4] One-line question now work.

> 🔒 **Your key is like a password.** Never show it to others or paste it in chats/forums.
> The Kit stores the key in this PC's user environment variable `GEMINI_API_KEY` (it is not sent over the internet).
> To delete the key, use **[8] Remove → "Also delete API key"**.

---

## 5. How to Run (Menu 3) & How to Use

1. In the Kit menu, choose **[3] Run**.
2. If asked **"Do you trust this directory?"** the first time → choose **Trust / Yes**.
3. When the chat opens, just type **in plain language** — no commands to memorize.
   - e.g. `What should I have for lunch?` / `Write a polite apology email` / `Write Python code for a multiplication table`
4. To end the chat, type `/quit` or press **Ctrl+C twice**.

**One-line question (Menu 4)**: ask a single question and get an answer without entering the chat window.

---

## 6. How It Works (what the Kit does)

This Kit is a **helper launcher that types the complicated commands for you**.

```
[You] press a number key
   │
   ▼
[Kit (.bat)] runs the right command for you
   │   - Install:  npm install -g @google/gemini-cli
   │   - Set key:  saves env var GEMINI_API_KEY
   │   - Run:      gemini  (chat)  /  gemini -p "question" (one-line)
   ▼
[Gemini CLI] → internet → [Google Gemini AI] → answer
```

So the Kit just shows friendly screens and types commands for you; the **actual AI work happens on Google's servers**.

---

## 7. Full Menu

> A **single key press** moves you instantly. No Enter needed.
> 💡 The Kit shows **"what to press now"** at the top, based on your current state — just follow it.

| No. | Function | Description |
|---|---|---|
| **1** | Install ⭐ | Installs Gemini on your PC (first time) |
| **2** | Set API key ⭐ | Saves your free key once |
| **3** | Run ⭐ | Starts a chat with the AI |
| **4** | One-line question | A single quick question without the chat |
| **5** | How to use | Walkthrough + examples/commands |
| **6** | Self-diagnosis | Checks setup / finds problems (saves a result file) |
| **7** | Update | Updates to the latest version |
| **8** | Remove | Cleanly uninstalls (optionally deletes key/config) |
| **0** | Exit | Closes the window |

⭐ = the steps a first-time user presses in order.

---

## 8. Command Reference

**Inside the chat (during Menu 3 Run)**
| Command | Meaning |
|---|---|
| `/help` | Show help |
| `/clear` | Clear the screen (or Ctrl+L) |
| `/quit` | End the chat (or Ctrl+C twice) |

**Typed commands (for reference, if you use it without the Kit)**
| Command | Meaning |
|---|---|
| `npm install -g @google/gemini-cli` | Install |
| `npm install -g @google/gemini-cli@latest` | Update |
| `npm uninstall -g @google/gemini-cli` | Remove |
| `gemini` | Start a chat |
| `gemini --skip-trust -p "question"` | One-line question |

---

## 9. Troubleshooting / Error Handling

**First: press Menu [6] Self-diagnosis.** It shows what's wrong at a glance and also saves `gemini_jindan.txt` (the diagnosis result) in the Kit folder.

| Symptom | What to do |
|---|---|
| Blue **"Windows protected your PC"** warning | **[More info] → [Run anyway]**. (Or right-click the file → [Properties] → check **[Unblock]** at the bottom → [OK], then double-click again.) It's a normal warning for files from the internet. |
| **"Node.js not found"** | **[1] Install** sets it up automatically. If not, install LTS from <https://nodejs.org> and re-open the window. |
| Install failed | Check your internet, then press **[1] Install** again. |
| **"Command not found"** / just installed but not working | **Close the window and double-click again** (to refresh the path). |
| Says **no key** when running | Do **[2] Set API key** first. If you just set it in another window, close and re-open. |
| **"trusted directory"** prompt | In chat mode choose **Trust / Yes**. The one-line question handles it automatically. |
| No answer / error | Check the key was copied correctly, then re-enter it in **[2]**. |

---

## 10. Workflow (the whole flow)

```
Download → [1] Install → [2] Set API key → [3] Run → ask in plain language → answer
                                       └→ [4] One-line question (quick, once)
If something breaks → [6] Self-diagnosis
When a new version is out → [7] Update
When you're done → [8] Remove
```

---

## 11. File Locations / Document Locations

Inside the Kit folder:
| File | Contents |
|---|---|
| `Gemini-CLI_One-Click_Kit.bat` | **The program** (double-click only this) |
| `README.md` / `README_EN.md` | Quick guide (this document) |
| `GUIDE_한국어.md` / `GUIDE_English.md` | More detailed walkthrough |
| `*.pdf` | PDF versions of the documents (identical content) |
| `LICENSE` | Full license (Apache-2.0) |
| `NOTICE` | Copyright, trademark, disclaimer, service notice |
| `gemini_cli.log` | A record of what the Kit did |
| `gemini_jindan.txt` | Self-diagnosis result |

On your PC:
- Config folder: `C:\Users\(yourname)\.gemini`
- Saved API key: user environment variable `GEMINI_API_KEY`

---

## 12. How to Remove (Menu 8)

Pressing **[8] Remove** asks in order:
1. Whether to uninstall the program (Gemini)
2. Whether to also delete the saved **API key** (`GEMINI_API_KEY`)
3. Whether to also delete the config folder (`~/.gemini`)

To remove manually: `npm uninstall -g @google/gemini-cli`

---

## 13. Free Limits & Data Caution

- Free limits are **set by Google and may change.** Check the exact limits at <https://aistudio.google.com>.
- ⚠️ **On the free tier, your input may be used to improve Google's AI.**
  **Do not enter personal information, company secrets, or sensitive data.**

---

## 14. License · Copyright · Commercial Use

- **This Kit** (launcher and docs): **Apache License 2.0** © 2026 SoDam AI Studio — commercial use, modification, and redistribution allowed. Full text in the `LICENSE` file.
- **Gemini CLI** (`@google/gemini-cli`): Apache-2.0 © Google LLC. The Kit does not bundle/redistribute it; it only helps you get it from the official source.
- **Trademarks**: "Google", "Gemini", etc. are trademarks of Google LLC. This Kit is **unofficial** and not affiliated with Google.
- **AI service use**: using Gemini AI is governed by **Google's terms** (<https://policies.google.com/terms>, <https://ai.google.dev/gemini-api/terms>), not by the Kit's license.
- **Commercial-use caution**: the Kit itself may be used commercially, but **whether commercial use of the AI service is allowed, and any fees, are governed by Google's terms and your plan — your responsibility.**
- **No warranty**: the Kit is provided "AS IS" with no warranty. You use it at your own risk (see `NOTICE`).

---

## Reference Links

- Official repository: <https://github.com/google-gemini/gemini-cli>
- Get a free API key: <https://aistudio.google.com/apikey>
- Node.js: <https://nodejs.org>
