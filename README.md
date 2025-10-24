# 🧬 DNA Profiler — Public Demo

This is a **runnable public demo** of **DNA Profiler**, the lightweight engine for **profiling, validating, and matching organisational data** — built to reveal the *terrain* of your data in minutes.

Understand your datasets at a glance:
- 📊 **Completeness & quality signals**
- 🧩 **Duplicate and fuzzy clusters**
- 🔍 **Field-level patterns & MDM hints**

No installation, no cloud dependency — just clarity, fast.

---

## ⚡ Try it in 5 Minutes

### Option A — Run via CLI
```bash
git clone https://github.com/your-org-or-user/dna-profiler-demo.git
cd dna-profiler-demo
./demo_scripts/profile_sample.sh
```
### Option B — Run via Docker

```bash
docker run --rm \
  -v "<your\path\to>\dna-profiler-demo\sample_data":/data \
  -v "<your\path\to>\dna-profiler-demo\output":/out \
  ghcr.io/dnahub/dna-profiler:demo server 
```
🧭 Runs locally. **No data ever leaves your machine.**
For enterprise trials, contact info@dnahub.co.uk

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


