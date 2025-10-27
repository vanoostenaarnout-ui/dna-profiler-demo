# 🧬 DNA Profiler — Public Demo

This is a **runnable public demo** of **DNA Profiler**, the lightweight engine for **profiling, validating, and matching organisational data** — built to reveal the *terrain* of your data in minutes.

Understand your datasets at a glance:
- 📊 **Completeness & quality signals**
- 🧩 **Duplicate and fuzzy clusters**
- 🔍 **Field-level patterns & MDM hints**

No installation, no cloud dependency — just clarity, fast.

---

## ⚡ Try it in 5 Minutes

### 🐳 Option A — Run via Docker (recommended)

Run instantly without installing anything else.

**macOS / Linux:**

```bash
docker run --rm -p 8080:8080 -v "$(pwd)/sample_data:/data" -v "$(pwd)/output:/out" ghcr.io/vanoostenaarnout-ui/dna-profiler:latest server --host 0.0.0.0 --port 8080
```
**Windows Powershell:**

```bash
docker run --rm -p 8080:8080 ghcr.io/vanoostenaarnout-ui/dna-profiler:latest server --host 0.0.0.0 --port 8080
```
**If port 8080 is busy, remap:**
```bash
docker run --rm -p 8081:8080 ghcr.io/vanoostenaarnout-ui/dna-profiler:latest --host 0.0.0.0 --port 8080
```

🧭 Runs locally. **No data ever leaves your machine.**
For enterprise trials, contact info@dnahub.co.uk

### 💻 Option B — Download a Pre-built Executable

Download from the [Releases page](https://github.com/dnahub/dna-profiler-demo/releases):

| Platform | File |
|-----------|------|
| 🪟 Windows | `dnaprofiler_windows_amd64.zip` |
| 🍎 macOS (Apple Silicon) | `dnaprofiler_darwin_arm64.zip` |
| 🍎 macOS (Intel) | `dnaprofiler_darwin_amd64.zip` |
| 🐧 Linux | `dnaprofiler_linux_amd64.zip` |

Unzip the file.

**Make executable (macOS / Linux):**

```bash
chmod +x ./dnaprofiler_*
```

Quick Check:
```bash
./dnaprofiler_* --version
```
MacOS Gatekeeper (If blocked):
```bash
xattr -d com.apple.quarantine ./dnaprofiler_darwin_arm64
```

# How To Use 

Each binary can act as either server or client.

**Server mode (REST API + UI):**

```bash
./dnaprofiler_* server --host 0.0.0.0 --port 8080
```
**Client mode (CLI command examples):**
Open (http://localhost:8080)
```bash
./dnaprofiler_* profile  --input sample_data/customers.csv --out output/report.json
./dnaprofiler_* validate --input sample_data/customers.csv
./dnaprofiler_* match    --input sample_data/customers.csv
```


## 📁 What’s Inside

| 📂 Folder | 📘 Description |
|------------|----------------|
| `demo_scripts/` | Runnable examples (`profile`, `validate`, `match`) |
| `sample_data/`  | Synthetic datasets for testing |
| `docs/`         | Quickstart, architecture, and transparency notes |
| `screenshots/`  | CLI and UI snapshots |


🌍 Why a Public Demo?

Because transparency builds trust.
We believe teams should be able to see the terrain before they decide to journey further.
This repository shows the workflow, inputs, and outputs clearly — while keeping the proprietary engine secure.

⚖️ License

Docs, data, and scripts are licensed under CC BY-NC 4.0 (Non-Commercial).

See [LICENSE](./LICENSE) for details.


