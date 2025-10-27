# Quickstart

1. **Clone** and enter the repo:
   ```bash
   git clone https://github.com/your-org-or-user/dna-profiler-demo.git
   cd dna-profiler-demo
   ```

2. **Run a profile demo**:
   ```bash
   ./demo_scripts/profile_sample.sh
   ```
   Outputs go to \./output/\.

3. **Docker (optional)**:
   ```bash
   docker run --rm -v "\C:\Users\<your_user>\Documents\erengine\dna-profiler-demo/sample_data":/data -v "\C:\Users\aarno\Documents\erengine\dna-profiler-   demo/output":/out your-public-image:demo profile /data/customers.csv --output /out/
   ```
