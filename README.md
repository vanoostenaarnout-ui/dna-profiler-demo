# DNA Profiler â€” Demo Repository

This is a public, runnable **demo** of DNA Profiler. It shows how we reveal the *terrain* of organisational data: completeness, quality signals, and duplicate clusters â€” in minutes.

> This repo shares **examples, docs, and demo outputs**. It does **not** include the proprietary engine code.

## â±ï¸ Try it in 5 Minutes

### Option A â€” Run the CLI demo
\\\ash
git clone https://github.com/your-org-or-user/dna-profiler-demo.git
cd dna-profiler-demo
./demo_scripts/profile_sample.sh
# Results saved under ./output/
\\\

Expected (abridged):
\\\
âœ” File: customers.csv
âœ” Records: 10,000
âœ” Completeness: 94.2 %
âœ” Duplicate clusters: 27
â†’ Open output/profile_dashboard.html
\\\

### Option B â€” Docker (no install)
\\\ash
docker run --rm -v "\C:\Users\aarno\Documents\erengine\dna-profiler-demo/sample_data":/data -v "\C:\Users\aarno\Documents\erengine\dna-profiler-demo/output":/out 
  your-public-image:demo profile /data/customers.csv --output /out/
\\\

> ðŸ•Š Runs locally. No data leaves your machine. For enterprise trials, contact **hello@dnahub.io**.

## Whatâ€™s inside
- \demo_scripts/\ runnable examples (profile, validate, match)
- \sample_data/\ synthetic CSVs
- \docs/\ quickstart, architecture, transparency
- \screenshots/\ UI and CLI snapshots

## Why a demo repo?
**Transparency builds trust.** We show the workflow, inputs, and outputs so teams can evaluate fit quickly â€” while keeping sensitive IP secure.

## License
Docs, data, and scripts are **CC BY-NC 4.0** (non-commercial). See **LICENSE**.