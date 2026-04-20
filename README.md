# 🤖 Gemini-CLI_One-Click_Kit

> Google Gemini AI를 Windows에서 더블클릭 한 번으로 설치하고 바로 사용하는 자동화 런처

[![License](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)
[![Platform](https://img.shields.io/badge/platform-Windows-blue)](https://www.microsoft.com/windows)
[![Node.js](https://img.shields.io/badge/Node.js-v20%2B-green)](https://nodejs.org/)

**영어 문서**: [README_EN.md](README_EN.md)

---

## 📌 프로젝트 개요

`Gemini-CLI_One-Click_Kit`은 Google Gemini AI 대화형 CLI를 Windows 환경에서 누구나 쉽게 사용할 수 있도록 만든 자동화 런처입니다.

코딩을 전혀 몰라도 됩니다. `.bat` 파일을 더블클릭하기만 하면 설치부터 실행까지 모두 자동으로 처리됩니다.

---

## ✨ 주요 기능

| 기능 | 설명 |
|------|------|
| 자동 환경 검증 | Node.js, NPM, 네트워크 연결 상태를 자동으로 확인합니다 |
| 자동 설치 | Gemini CLI가 없으면 자동으로 설치합니다 |
| 초기 설정 마법사 | 처음 실행 시 로그인 방법을 안내합니다 |
| 다중 실행 방지 | 이미 실행 중이면 충돌 없이 안전하게 처리합니다 |
| 실행 로그 기록 | 사용 기록을 로컬 파일에 자동 저장합니다 |

---

## 📋 사전 준비 (딱 하나만 필요합니다)

### Node.js 설치

1. 아래 주소로 접속합니다:
   👉 [https://nodejs.org/](https://nodejs.org/)

2. 왼쪽에 있는 **LTS** 버전 (v20 이상) 버튼을 클릭해 다운로드합니다

3. 다운로드된 파일을 실행하고 **계속 Next** 버튼을 눌러 설치합니다

4. 설치가 끝나면 컴퓨터를 **재시작**하는 것을 권장합니다

> ✅ 이미 Node.js v20 이상이 설치되어 있다면 이 단계를 건너뛰세요.

---

## 🚀 설치 및 실행 방법

### 1단계: 파일 다운로드

- 이 저장소의 **Releases** 탭에서 최신 버전을 다운로드합니다
- 또는 초록색 **Code** 버튼 → **Download ZIP**을 클릭해 압축을 풀어도 됩니다

### 2단계: 실행

- `Gemini-CLI_One-Click_Kit.bat` 파일을 **더블클릭**합니다

### 3단계: 처음 실행 시 로그인

처음 실행하면 로그인 방법을 선택하는 화면이 나타납니다:

```
[1] 🌟 구글 계정 로그인 (추천!)
    - 가장 쉬운 방법
    - 분당 60회, 하루 1,000회 무료

[2] 🔑 API 키 입력
    - 하루 100회 무료
```

**구글 계정 로그인 (1번 추천)**을 선택하면:
- 브라우저가 자동으로 열립니다
- 구글 계정으로 로그인합니다
- **[액세스 허용]** 버튼을 클릭합니다
- 완료!

**두 번째 실행부터는 더블클릭만 하면 바로 실행됩니다.**

---

## 💬 사용 예시

실행 후 터미널에 자연어로 질문을 입력하면 됩니다:

```
> 오늘 날씨가 왜 이렇게 더운 거야?
> Python으로 계산기 만들어줘
> 이 영어 문장 번역해줘: Hello, how are you?
> 마케팅 이메일 초안 작성해줘
```

종료하려면 `exit`를 입력하거나 `Ctrl+C`를 누릅니다.

---

## 📁 폴더 구조

```
Gemini-CLI_One-Click_Kit/
├── Gemini-CLI_One-Click_Kit.bat   # 메인 실행 파일
├── README.md                      # 한국어 문서 (현재 파일)
├── README_EN.md                   # 영어 문서
├── LICENSE                        # 라이선스
└── gemini_cli.log                 # 실행 로그 (자동 생성, git 미포함)
```

---

## ⚙️ 작동 방식 (5단계)

```
더블클릭
  ↓
[1단계] 환경 검증 - Node.js, NPM, 네트워크 확인
  ↓
[2단계] Gemini CLI 확인 - 없으면 자동 설치
  ↓
[3단계] 충돌 검사 - 이미 실행 중인지 확인
  ↓
[4단계] 설정 확인 - 첫 실행이면 로그인 안내
  ↓
[5단계] 실행 - Gemini AI와 대화 시작
```

---

## ❓ 자주 묻는 질문 및 문제 해결

### Q: "Node.js를 찾을 수 없습니다" 메시지가 나옵니다
→ Node.js가 설치되지 않았습니다. [nodejs.org](https://nodejs.org/)에서 LTS 버전을 설치하고 컴퓨터를 재시작하세요.

### Q: Node.js를 설치했는데도 같은 오류가 납니다
→ 컴퓨터를 재시작한 후 다시 실행해보세요. 재시작하지 않으면 설치가 반영되지 않을 수 있습니다.

### Q: 설치 중 오류가 발생합니다
→ 인터넷 연결을 확인하세요. 또는 터미널을 열고 직접 입력해보세요:
```
npm install -g @google/gemini-cli
```

### Q: API 키는 어디서 받나요?
→ [https://aistudio.google.com/apikey](https://aistudio.google.com/apikey)에서 무료로 발급받을 수 있습니다.

### Q: 두 번째 실행부터 로그인을 또 해야 하나요?
→ 아닙니다. 처음 한 번만 로그인하면 이후에는 자동으로 연결됩니다.

---

## 🔒 보안 안내

- 이 파일에는 API 키, 비밀번호, 개인정보가 포함되어 있지 않습니다
- 인증 정보는 내 컴퓨터의 `%USERPROFILE%\.config\gemini-cli\` 폴더에만 저장됩니다
- 로그 파일(`gemini_cli.log`)은 로컬에만 저장되며 외부로 전송되지 않습니다

---

## 🏷️ 버전 정보

| 버전 | 내용 |
|------|------|
| v2.1 | 입력 대기 버그 수정 (`set /p` 변수 사전 초기화) |
| v2.0 | 초기 설정 마법사 추가, VBScript 자동 입력 |
| v1.0 | 최초 릴리즈 |

---

## 📜 라이선스

이 프로젝트는 [MIT License](LICENSE) 하에 배포됩니다.

Copyright © 2026 SoDam AI Studio

---

## 🙏 만든 곳

**SoDam AI Studio**
AI 도구를 누구나 쉽게 사용할 수 있도록 만듭니다.
