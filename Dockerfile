FROM alpine:3.19
RUN apk add --no-cache curl bash
WORKDIR /app
COPY . /app/
CMD ["sh", "-c", "echo '✅ Validación exitosa!' && curl --version"]
