# Blog en Laravel 11 con Tailwind CSS

Este proyecto es un blog (basico) desarrollado con **Laravel 11**, utilizando **Tailwind CSS** para el diseño y **MySQL** como sistema de base de datos.

## Características

- **Gestión de Usuarios**  
  - Registro de usuarios  
  - Inicio de sesión  
  - Recuperación de contraseñas  
  - Cambio de credenciales  
  - Activación de cuenta vía correo electrónico  
  Todas estas funcionalidades se implementaron con **Laravel Breeze**.

- **Funcionalidades del Blog**  
  - Publicar temas  
  - Comentar publicaciones de otros usuarios  
  - Crear, editar y eliminar publicaciones (solo para usuarios registrados y con cuenta activa)

- **Protección y Políticas**  
  - Rutas protegidas para usuarios no autenticados  
  - Policies que evitan que un usuario edite publicaciones ajenas, ofreciendo solo opciones limitadas en esos casos

- **Diseño Adaptable**  
  El sitio se adapta al modo claro u oscuro según la configuración del navegador.

## Requisitos

- PHP (compatible con Laravel 11)
- Composer
- MySQL
- Node.js y npm (para compilar assets, si fuera necesario)

## Instalación y Configuración

1. **Clonar el Repositorio:**
   ```bash
   git clone <URL_DEL_REPOSITORIO>
   cd <NOMBRE_DEL_PROYECTO>

2. **Instalar Dependencias:**
   ```bash
   composer install
    npm install
    npm run dev
    
3. **Configurar el Entorno:**
    Copia el archivo .env.example a .env:
   ```bash
   cp .env.example .env

- **Base de datos:**
    - Importa la base de datos desde la carpeta DB (se incluye el archivo SQL listo para importar).
    - Configura el nombre de la base de datos, usuario y contraseña en el archivo .env.

- **SMTP:**
    Se uso [[Mailtrap](https://mailtrap.io/)] para el envío de correos. Configura los datos en el archivo .env:
    ```bash
    MAIL_MAILER=smtp
    MAIL_HOST=smtp.mailtrap.io
    MAIL_PORT=2525
    MAIL_USERNAME=tu_usuario
    MAIL_PASSWORD=tu_contraseña
    MAIL_ENCRYPTION=null
    MAIL_FROM_ADDRESS="tu_correo@example.com"
    MAIL_FROM_NAME="${APP_NAME}"

4. **Generar la Clave de la Aplicación:**
    ```bash
    php artisan key:generate

5. **Iniciar el Servidor de Desarrollo:**
     ```bash
     cd <RUTA_DEL_PROYECTO>
     php artisan serve

**LISTO !!!** El proyecto se ejecutará en http://localhost:8000




