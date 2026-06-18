# Gemini CLI One-Click Kit — Beginner Guide (English)

This guide is for people **new to computers, AI, and software**. It explains, step by step, what you see on screen and what to press.
If you just want the short version, read `README_EN.md`. This document is the **slow, complete** walkthrough.

---

## 0. Simple terms to know first (1 minute)

| Term | Plain meaning |
|---|---|
| **Terminal / black window** | A black window where you type commands. The Kit opens it for you. |
| **Gemini** | A free AI made by Google. Ask a question, get an answer. |
| **Gemini CLI** | Google's official program that lets you use that AI in the black window. |
| **This Kit (.bat)** | A friendly helper that makes the program **easy to install and use**. |
| **Node.js** | The "engine" Gemini needs to run. The Kit installs it for you. |
| **API key** | The "key text" needed to use the free AI. Enter it once. |
| **Environment variable** | A setting your computer remembers. The Kit stores your key here. |
| **Double-click** | Quickly press the left mouse button twice. |

> It's fine if a word is unfamiliar. Just follow the steps below.

---

## 1. Before you start (prerequisites)

- A **Windows 10 or 11** computer
- An **internet connection** (Wi-Fi or cable)
- That's all. The Kit helps with Node.js and the API key.

---

## 2. Prepare the file & first run

1. Put `Gemini-CLI_One-Click_Kit.bat` somewhere easy to find, like your **Desktop**.
2. **Double-click** the file.

### Did a blue warning appear?
A blue window saying "**Windows protected your PC**" may appear.
→ It's a **normal warning** for files from the internet, not a virus.
1. Click the **[More info]** text
2. Click the **[Run anyway]** button that appears

> Alternative: right-click the file → **[Properties]** → check **[Unblock]** at the bottom → **[OK]** → double-click again.

### The black window and the menu
After a moment, a black window opens with a menu like this:

```
    1.  Install        first time only      ( step 1 )
    2.  Set API key    save a free key once ( step 2 )
    3.  Run            start chatting       ( step 3 )
    ...
```

(The actual menu is in Korean in the Kit; the order and numbers are the same.)

> A **single key press** works instantly. You do not need to press Enter.
> 💡 At the top of the menu there is a **"what to press now"** line. The Kit reads your
> computer's state and points to the exact next number ( [1] → [2] → [3] ). **When in doubt, just follow that line.**

---

## 3. [1] Install — first time only

1. Press **`1`** on the keyboard.
2. If Node.js is missing, it asks "**Install automatically? Y/N**" → press **`Y`**.
   (May take 1–3 minutes. Wait even if the window looks frozen.)
3. It then downloads and installs Gemini. "**Install complete!**" means success.
4. Press any key to return to the menu.

### If it says "close and re-open the window"
This happens right after Node.js was installed.
1. **Close** the black window (the X).
2. **Double-click** `Gemini-CLI_One-Click_Kit.bat` again.
3. Press **`1`** once more → this time it finishes installing.

---

## 4. [2] Set API key — enter the free key once

> **Why?** Since June 18, 2026, the free "Login with Google" method is blocked.
> Use a free **API key** instead (no credit card needed).

### (a) Create a free key — in your browser
1. Open a web browser (Chrome/Edge).
2. Go to: **aistudio.google.com/apikey**
3. **Sign in** with your Google account.
4. Click **[Create API key]**.
5. Click **[Copy]** next to the created key.
   - The key usually starts with `AIza…`.

### (b) Enter it into the Kit
1. In the Kit menu, press **`2`**.
2. When you see "**paste the key and press Enter**":
   - **Right-click once** inside the black window to paste.
   - (It's a **right-click**, not Ctrl+V.)
3. Press **Enter**.
4. "**Saved!**" means you're done.

### 🔒 Key safety rules (important)
- Your key is **like a password.** Never show it or paste it in chats/forums/this conversation.
- On the free tier your input may be used to improve the AI, so **don't enter personal or company data.**
- If a key is exposed, **delete it** at aistudio.google.com/apikey and create a new one.

---

## 5. [3] Run — chat with the AI

1. In the Kit menu, press **`3`**.
2. Read the notes and press any key to start.
3. The first time, it may ask "**Do you trust this directory?**"
   → Use the arrow keys to choose **Trust / Yes** and press Enter. (It's your folder, so it's safe.)
4. When the chat opens, just type **in plain language** and press Enter.

### Things you can ask
- `Recommend 3 lunch ideas`
- `Fix the grammar in this sentence:` (paste the sentence on the next line)
- `Write a polite apology email`
- `How do I sum a column in Excel?`
- `Write Python code for a multiplication table`
- `Translate this English sentence into Korean`

### Commands during the chat
- `/help` → help
- `/clear` → clear the screen (or Ctrl+L)
- `/quit` → end the chat (or Ctrl+C twice)

---

## 6. [4] One-line question — a quick single question

Use this to ask one question without entering the chat window.
1. Press **`4`** in the menu.
2. Type your question and press **Enter**.
3. When the answer appears, press any key to return to the menu.

---

## 7. [5] How to use / [6] Self-diagnosis / [7] Update

- **[5] How to use**: see examples and commands again inside the Kit.
- **[6] Self-diagnosis**: press this **first** when something doesn't work. It shows the status of Node, internet, Gemini, and your API key at a glance, and saves `gemini_jindan.txt`.
- **[7] Update**: updates to the latest version when one is available.

---

## 8. [8] Remove — clean uninstall

Pressing **`8`** asks in order:
1. "Really remove?" → **Y** uninstalls the Gemini program.
2. "Also delete the API key?" → **Y** if you want to delete the saved key.
3. "Also delete the config folder?" → **Y** if you want.

> Pressing 8 by mistake is fine. It **always asks again**, so press N to cancel.

---

## 9. Frequently Asked Questions (FAQ)

**Q. Is it really free?**
A. The Kit and Gemini CLI are free, and you create a free API key without a credit card. Free limits are set by Google and may change.

**Q. The black window scares me. Is it safe?**
A. The black window just lets you chat with text. The Kit runs only standard commands, and you can read the code in `_build_kit.txt`/`.bat`.

**Q. It says "no key" when I run.**
A. Do **[2] Set API key** first. If you just set it in another window, close and re-open the Kit (a new window reads the saved key).

**Q. I see English like "trusted directory".**
A. It's a security question: "Do you trust this folder?" It's your folder, so choose **Trust / Yes**. The one-line question (Menu 4) handles it automatically.

**Q. No answer, just an error.**
A. ① Check internet ② Check the key was copied correctly and re-enter in [2] ③ Check the [6] Self-diagnosis result.

**Q. How do I use it on another computer?**
A. On that computer, do [1] Install → [2] Set API key again. (The key is stored per computer.)

**Q. Can I enter personal information?**
A. ❌ On the free tier your input may be used to improve the AI, so don't enter personal or confidential data.

---

## 10. File / folder locations

- Kit program: `Gemini-CLI_One-Click_Kit.bat`
- Guides: `README.md`, `README_EN.md`, `GUIDE_한국어.md`, `GUIDE_English.md` (+ each PDF)
- License/notice: `LICENSE`, `NOTICE`
- Activity log: `gemini_cli.log`
- Diagnosis result: `gemini_jindan.txt`
- Config folder (your PC): `C:\Users\(yourname)\.gemini`
- Saved key (your PC): user environment variable `GEMINI_API_KEY`

---

## 11. Safety · License summary

- The Kit is **Apache License 2.0** © 2026 SoDam AI Studio (commercial use allowed; full text in `LICENSE`).
- Gemini CLI is Google LLC's official Apache-2.0 tool; this Kit is **unofficial**.
- "Google" and "Gemini" are trademarks of Google LLC.
- Using Gemini AI is governed by **Google's terms**; commercial use and any fees are your responsibility.
- The Kit is provided "AS IS" with no warranty. See `NOTICE` for details.

---

## 12. The whole flow at a glance

```
Double-click the file
   → [1] Install        (first time)
   → [2] Set API key    (free key, once)
   → [3] Run            (ask in plain language → answer)
Problem? → [6] Self-diagnosis    New version? → [7] Update    Done? → [8] Remove
```

Well done. Now ask the black window anything, in your own words!
