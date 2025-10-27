# Troubleshooting

**Permission denied on .sh**: 
make executable  
```bash
chmod +x demo_scripts/*.sh
```
**Docker volume path on Windows**: 
use PowerShell \$(pwd)\ or absolute paths. Example:
```bash
-v "${PWD}\sample_data:/data" -v "${PWD}\output:/out"
```

**Non-UTF8 CSV**:
convert to UTF-8 (BOMless) for best results.
