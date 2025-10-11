# Creates DNA Profiler demo repo scaffold with placeholder content.
# Run inside your cloned repo folder (or any empty folder).

$ErrorActionPreference = "Stop"

function Ensure-Dir { param($p) if (!(Test-Path $p)) { New-Item -ItemType Directory -Path $p | Out-Null } }

# 1) Directories
$dirs = @(
  ".", "demo_scripts", "sample_data", "docs", "screenshots"
)
$dirs | ForEach-Object { Ensure-Dir $_ }

# 2) README.md
$readme = @"
# DNA Profiler — Demo Repository

This is a public, runnable **demo** of DNA Profiler. It shows how we reveal the *terrain* of organisational data: completeness, quality signals, and duplicate clusters — in minutes.

> This repo shares **examples, docs, and demo outputs**. It does **not** include the proprietary engine code.

## ⏱️ Try it in 5 Minutes

### Option A — Run the CLI demo
\`\`\`bash
git clone https://github.com/your-org-or-user/dna-profiler-demo.git
cd dna-profiler-demo
./demo_scripts/profile_sample.sh
# Results saved under ./output/
\`\`\`

Expected (abridged):
\`\`\`
✔ File: customers.csv
✔ Records: 10,000
✔ Completeness: 94.2 %
✔ Duplicate clusters: 27
→ Open output/profile_dashboard.html
\`\`\`

### Option B — Docker (no install)
\`\`\`bash
docker run --rm -v "\$(pwd)/sample_data":/data -v "\$(pwd)/output":/out `
  your-public-image:demo profile /data/customers.csv --output /out/
\`\`\`

> 🕊 Runs locally. No data leaves your machine. For enterprise trials, contact **hello@dnahub.io**.

## What’s inside
- \`demo_scripts/\` runnable examples (profile, validate, match)
- \`sample_data/\` synthetic CSVs
- \`docs/\` quickstart, architecture, transparency
- \`screenshots/\` UI and CLI snapshots

## Why a demo repo?
**Transparency builds trust.** We show the workflow, inputs, and outputs so teams can evaluate fit quickly — while keeping sensitive IP secure.

## License
Docs, data, and scripts are **CC BY-NC 4.0** (non-commercial). See **LICENSE**.
"@
Set-Content -Path ".\README.md" -Value $readme -Encoding UTF8 -NoNewline

# 3) LICENSE (CC BY-NC 4.0 skeleton)
$license = @"
Creative Commons Attribution–NonCommercial 4.0 International (CC BY-NC 4.0)

Copyright (c) 2025 DNAHUB Ltd.

This repository and its contents (including sample data, documentation, and example scripts)
are made available under the Creative Commons Attribution–NonCommercial 4.0 International License.

You are free to share and adapt this material for non-commercial purposes,
provided that appropriate credit is given and a link to this license is included.

No warranty is expressed or implied. The DNA Profiler name and logo remain trademarks
of DNAHUB Ltd and may not be used without written permission.

Full license: https://creativecommons.org/licenses/by-nc/4.0/
"@
Set-Content -Path ".\LICENSE" -Value $license -Encoding UTF8 -NoNewline

# 4) demo_scripts/*.sh (placeholders that create fake output if binary not present)
$profile = @"
#!/usr/bin/env bash
set -euo pipefail
mkdir -p output
echo 'Profiling sample_data/customers.csv …'
# Placeholder output for first commit; replace with real CLI call when ready:
cat > output/profile_summary.txt <<TXT
File: customers.csv
Records: 10000
Completeness: 94.2 %
Duplicate clusters: 27
TXT
cp screenshots/profiler-summary.png output/profile_dashboard.png 2>/dev/null || true
echo 'Done. See output/profile_summary.txt and output/profile_dashboard.png'
"@
Set-Content -Path ".\demo_scripts\profile_sample.sh" -Value $profile -Encoding UTF8 -NoNewline

$validate = @"
#!/usr/bin/env bash
set -euo pipefail
mkdir -p output
echo 'Validating sample_data/customers.csv …'
echo '✔ Example rule set applied (placeholder). See output/validation_report.json'
echo '{ "valid_rows": 9876, "pii_flags": 3, "issues": [{"col":"email","type":"format"}] }' > output/validation_report.json
"@
Set-Content -Path ".\demo_scripts\validate_sample.sh" -Value $validate -Encoding UTF8 -NoNewline

$match = @"
#!/usr/bin/env bash
set -euo pipefail
mkdir -p output
echo 'Matching sample_data/customers.csv …'
echo '✔ Example clusters generated (placeholder). See output/match_clusters.json'
echo '[ {"cluster_id":1,"members":[101,445,902]}, {"cluster_id":2,"members":[77,318]} ]' > output/match_clusters.json
"@
Set-Content -Path ".\demo_scripts\match_sample.sh" -Value $match -Encoding UTF8 -NoNewline

# 5) sample_data (tiny synthetic CSVs)
$customers = @"
customer_id,first_name,last_name,email,phone,country
101,Ada,Lovelace,ada@example.com,+44 7000 000101,UK
102,Alan,Turing,alan@example.org,+44 7000 000102,UK
103,Grace,Hopper,grace@example.net,+1 212 000 0103,US
104,Linus,Torvalds,linus@example.fi,+358 50 000 0104,FI
105,Tim,Berners-Lee,tim@example.uk,+44 7000 000105,UK
"@
Set-Content -Path ".\sample_data\customers.csv" -Value $customers -Encoding UTF8 -NoNewline

$tx = @"
transaction_id,customer_id,amount,currency,timestamp
1,101,120.50,GBP,2025-09-01T10:00:00Z
2,102,75.00,GBP,2025-09-02T11:15:00Z
3,101,33.10,GBP,2025-09-03T09:05:00Z
4,105,220.00,GBP,2025-09-04T14:32:00Z
"@
Set-Content -Path ".\sample_data\transactions.csv" -Value $tx -Encoding UTF8 -NoNewline

$sdreadme = @"
Synthetic demo data for DNA Profiler examples.
- All rows are fictitious.
- Use your own sample safely; no data leaves your machine in demo flows.
"@
Set-Content -Path ".\sample_data\readme.md" -Value $sdreadme -Encoding UTF8 -NoNewline

# 6) docs
$quickstart = @"
# Quickstart

1. **Clone** and enter the repo:
   \`\`\`bash
   git clone https://github.com/your-org-or-user/dna-profiler-demo.git
   cd dna-profiler-demo
   \`\`\`

2. **Run a profile demo**:
   \`\`\`bash
   ./demo_scripts/profile_sample.sh
   \`\`\`
   Outputs go to \`./output/\`.

3. **Docker (optional)**:
   \`\`\`bash
   docker run --rm -v "\$(pwd)/sample_data":/data -v "\$(pwd)/output":/out your-public-image:demo profile /data/customers.csv --output /out/
   \`\`\`

> Replace placeholders with the real image/CLI when ready.
"@
Set-Content -Path ".\docs\quickstart.md" -Value $quickstart -Encoding UTF8 -NoNewline

$arch = @"
# Architecture (High Level)

- **Input**: delimited files (CSV) or API connectors (enterprise).
- **Profiling**: completeness, uniqueness, ranges, PII hints.
- **Validation**: rule sets applied to columns/entities.
- **Matching (ER)**: clustering potential duplicates.
- **Outputs**: JSON/CSV and dashboard assets.

> This demo shows workflow, inputs, and outputs. Core engine remains proprietary.
"@
Set-Content -Path ".\docs\architecture.md" -Value $arch -Encoding UTF8 -NoNewline

$transparency = @"
# Transparency

We believe clarity builds trust. This demo shares structure, examples, and outputs
so you can evaluate fit quickly, while we keep sensitive IP secure.

- No real data leaves your machine in demo flows.
- Sample data here is fully synthetic.
- Engine code and advanced models remain private.

Questions? hello@dnahub.io
"@
Set-Content -Path ".\docs\transparency.md" -Value $transparency -Encoding UTF8 -NoNewline

$troubleshoot = @"
# Troubleshooting

- **Permission denied** on \`.sh\`: make executable → \`chmod +x demo_scripts/*.sh\`
- **Docker volume path** on Windows: use PowerShell \`$(pwd)\` or absolute paths.
- **Non-UTF8 CSV**: convert to UTF-8 (BOMless) for best results.
"@
Set-Content -Path ".\docs\troubleshooting.md" -Value $troubleshoot -Encoding UTF8 -NoNewline

# 7) screenshots (empty placeholders so README looks complete)
"PLACEHOLDER IMAGE" | Out-File ".\screenshots\profiler-summary.png"
"PLACEHOLDER IMAGE" | Out-File ".\screenshots\dq-rules-card.png"
"PLACEHOLDER IMAGE" | Out-File ".\screenshots\match-clusters.png"

# 8) .gitattributes (ensure text normalization)
$gitattributes = @"
* text=auto
"@
Set-Content -Path ".\.gitattributes" -Value $gitattributes -Encoding UTF8 -NoNewline

# 9) .gitignore
$gitignore = @"
output/
.DS_Store
Thumbs.db
"@
Set-Content -Path ".\.gitignore" -Value $gitignore -Encoding UTF8 -NoNewline

Write-Host "`nScaffold created. Next steps:"
Write-Host "1) git add ."
Write-Host "2) git commit -m 'chore(demo): initial public scaffold v0.9-demo'"
Write-Host "3) git push (or add remote then push)"
