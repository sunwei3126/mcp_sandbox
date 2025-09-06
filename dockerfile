# 使用官方的 Python 3.13 slim-bookworm 作为基础镜像
FROM python:3.13-slim-bookworm

# 设置工作目录
WORKDIR /app

# 设置环境变量，避免 Python 缓存文件
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# 安装系统依赖
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    libatlas-base-dev \
    wkhtmltopdf \
    fonts-dejavu \
    libcairo2 \
    libpango-1.0-0 \
    libpangocairo-1.0-0 \
    libgdk-pixbuf-2.0-0 \
    libffi-dev \
    shared-mime-info \
    fonts-wqy-zenhei \
    fonts-wqy-microhei \
    fonts-noto-cjk \
    && rm -rf /var/lib/apt/lists/*

# 安装 Python 包管理工具 pip 的最新版本
RUN pip install --no-cache-dir --upgrade pip

# 安装常用的可视化和数据处理库
RUN pip install --no-cache-dir \
    pandas \
    numpy \
    matplotlib \
    seaborn \
    scipy \
    statsmodels \
    scikit-learn \
    plotly \
    openpyxl \
    pdfkit \
    weasyprint

# 检查依赖是否安装成功
RUN python -c "import pandas, numpy, matplotlib, seaborn, scipy, statsmodels, sklearn, plotly, openpyxl, pdfkit, weasyprint"
   