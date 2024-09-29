# Usar una imagen base de Python
FROM python:3.8-slim

# Establecer el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiar el archivo de requisitos (si usas uno) al contenedor
COPY requirements.txt .

# Instalar las dependencias del proyecto (si tienes un requirements.txt)
RUN pip install -r requirements.txt

# Copiar el resto de la aplicación al contenedor
COPY . .

# Exponer el puerto en el que correrá tu aplicación (si es Flask, por ejemplo, será 5000)
EXPOSE 5000

# Comando para ejecutar la aplicación cuando el contenedor arranque
CMD ["python", "app.py"]
