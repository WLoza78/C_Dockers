# Usa una imagen base de Python
FROM python:3.9-slim

# Establece el directorio de trabajo
WORKDIR /app

# Instala Flask en el contenedor
RUN pip install Flask

# Copia el script de la aplicación en el contenedor
COPY app.py /app/app.py

# Expone el puerto 5000 para el servidor HTTP
EXPOSE 5000

# Comando para ejecutar la aplicación
CMD ["python", "app.py"]
