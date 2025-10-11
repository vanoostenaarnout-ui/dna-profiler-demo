#!/usr/bin/env bash
set -euo pipefail
mkdir -p output
echo 'Matching sample_data/customers.csv â€¦'
echo 'âœ” Example clusters generated (placeholder). See output/match_clusters.json'
echo '[ {"cluster_id":1,"members":[101,445,902]}, {"cluster_id":2,"members":[77,318]} ]' > output/match_clusters.json