FROM jupyter/base-notebook:latest

WORKDIR /app

COPY requirements.txt .

RUN pip install --upgrade pip && pip install -r requirements.txt --default-timeout=1000

EXPOSE 8888

COPY . .

CMD ["jupyter", "lab", "--ip='0.0.0.0'", "--port=8888", "--no-browser", "--allow-root"]
