# Frontend Javatar

Views for this project.

## Installation

Install SSL certificates via:

```bash
chmod +x cert.sh
./cert.sh
```

Install dependencies into /react folder:

```bash
cd react && npm install
```
Options:
1. React
2. TypeScript + React Compiler

## Usage
Build React from source:
```bash
make react
```

Clean install (rebuild Docker image and refresh container)
```bash
make clean
```
Start local Vite server for development with HMR (port forwarding must be configured for dedicated server)
```bash
cd react && npm run dev
```
