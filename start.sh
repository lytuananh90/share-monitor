#!/usr/bin/env bash
# ShareMonitor Launcher
PORT=8765
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$DIR"

URL="http://localhost:$PORT/share.html"

echo "=== Đang khởi động ShareMonitor: $URL ==="

# Tự động mở đúng file trên trình duyệt
(sleep 0.5 && xdg-open "$URL" 2>/dev/null || sensible-browser "$URL" 2>/dev/null) &

# Chạy server python local tĩnh siêu nhẹ
python3 -m http.server "$PORT"
