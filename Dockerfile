# Usar una imagen base de Python
FROM python:3.8

# Copiar el cuaderno y otros archivos necesarios
COPY at.ipynb /app/
COPY requirements.txt /app/  # Si tienes un archivo de requisitos

# Instalar Voila y otros paquetes requeridos
RUN pip install voila
RUN pip install -r requirements.txt  # Si tienes un archivo de requisitos

# Exponer el puerto en el que se ejecuta la aplicación Voila
EXPOSE 8866

# Iniciar Voila cuando se inicie el contenedor
CMD ["voila", "--no-browser", "/app/at.ipynb .ipynb"]
