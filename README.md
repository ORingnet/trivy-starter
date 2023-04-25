# Docker installation
https://www.docker.com/

# trivy installation
## Homebrew (Official)
https://aquasecurity.github.io/trivy/v0.40/getting-started/installation/
```
brew install trivy
```

# 將腳本設定為可執行
```
chmod +x trivy.sh
``` 

# 掃描腳本
./trivy.sh <專案資料夾路徑>

輸出檔案在資料夾路徑下report.html
