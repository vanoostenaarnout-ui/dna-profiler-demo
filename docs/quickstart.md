# Quickstart

1. **Clone** and enter the repo:
   \\\ash
   git clone https://github.com/your-org-or-user/dna-profiler-demo.git
   cd dna-profiler-demo
   \\\

2. **Run a profile demo**:
   \\\ash
   ./demo_scripts/profile_sample.sh
   \\\
   Outputs go to \./output/\.

3. **Docker (optional)**:
   \\\ash
   docker run --rm -v "\C:\Users\aarno\Documents\erengine\dna-profiler-demo/sample_data":/data -v "\C:\Users\aarno\Documents\erengine\dna-profiler-demo/output":/out your-public-image:demo profile /data/customers.csv --output /out/
   \\\

> Replace placeholders with the real image/CLI when ready.