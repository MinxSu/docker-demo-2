# 使用 Python 3.11 作為 base image
FROM python:3.11-slim

# 設置工作目錄
WORKDIR /app

# 複製當前目錄的內容到容器中的 /app 目錄
COPY . .

# 安裝 Python 依賴項
# 如果有 requirements.txt 文件，使用它安裝依賴
RUN pip install --no-cache-dir --upgrade pip && \
    if [ -f requirements.txt ]; then pip install --no-cache-dir -r requirements.txt; fi

# 指定要執行的命令
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8080"]
