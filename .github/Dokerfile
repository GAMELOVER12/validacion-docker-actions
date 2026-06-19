# ✅ VERSIÓN CORREGIDA
FROM ubuntu:22.04          # ✅ Especifica versión
RUN apt-get update && \    # ✅ Combina con clean
    apt-get install -y curl && \
    rm -rf /var/lib/apt/lists/*
COPY . /app               # ✅ Usa COPY en lugar de ADD
WORKDIR /app
CMD ["sh", "-c", "echo 'Hola desde Ubuntu'"]  # ✅ Formato JSON correcto
