# Inception Project

This project from 1337 school aims to broaden your knowledge of system administration by using Docker. You will virtualize several Docker images, creating them in your new personal virtual machine. This tutorial will guide you step-by-step on how to set up the project and understand how each component works.

## Table of Contents
1. [Important Things to Read Before Beginning the Project](#important-things-to-read-before-beginning-the-project)
2. [Definitions](#definitions)
3. [Docker](#docker)
4. [Nginx](#nginx)
5. [Wordpress](#wordpress)
6. [MariaDB](#mariadb)
7. [Useful Links](#useful-links)

## Important Things to Read Before Beginning the Project

1. **Don't Try to Do All Containers at Once:**
   - Nginx, WordPress, and MariaDB should be done step-by-step to understand how each container works. Trying them all at once will make you lost.
   
2. **Start with Nginx:**
   - Begin by displaying a simple `index.html` page.
   - Learn how to launch a Docker image and execute it without `docker-compose`.
   - Learn how to display an HTML page on `http://localhost:80`.
   - Learn how to enable SSL and display an HTML page on `https://localhost:443`.

3. **Move on to WordPress:**
   - Use `docker-compose` for WordPress after understanding Nginx.

4. **Finish with MariaDB:**
   - Configure MariaDB and link it with your WordPress container.
---

## Definitions

### What is Docker?
Docker is an open platform for developing, shipping, and running applications. It allows you to separate your applications from your infrastructure to deliver software quickly. Docker containers isolate applications in a way that ensures a consistent environment across various stages of development.

### What is Docker Compose?
Docker Compose is a tool for defining and running multi-container Docker applications. You can configure your services using a YAML file and start all services with a single command.

### What is a Dockerfile?
A Dockerfile is a text document containing all the instructions needed to build an image. It automates the image creation process with a series of commands executed in sequence.

---

## Docker

### Important Docker Commands

- `docker ps` or `docker ps -a`: Shows the names of all containers, their IDs, and associated ports.
- `docker pull <image-name>`: Pulls an image from Docker Hub.
- `docker exec -it <container-name> sh`: Opens a shell inside a running container.
- `docker rm $(docker ps -a -q)`: Removes all stopped containers.

### Docker Run Commands
- `docker run <image-name>`: Runs a Docker container from an image.
- `docker run -d`: Runs the container in the background.
- `docker run -p <host-port>:<container-port>`: Maps the container port to a host port.
- `docker run -it <image-name>`: Runs a container interactively.

### Writing a Dockerfile
1. Create a `Dockerfile` with basic instructions.
2. Build the Docker image using `docker build -t <image-name> .`.
3. Run the image with `docker run <image-name>`.

---

## Nginx

### Setting Up Nginx

Nginx is a web server that serves static content like HTML, CSS, JS files. It listens for HTTP requests and serves responses based on the configuration defined in `.conf` files.

1. **Configure Nginx:**
   - Add your HTML files to `/var/www/` directory.
   - Edit the default file in `/etc/nginx/sites-enabled/` to point to your HTML files.

2. **Start Nginx:**
   - Run the server and access it through `http://localhost:7000`.

3. **SSL Configuration:**
   - Set up SSL in Nginx for secure HTTPS traffic.

---

## WordPress

### Steps to Set Up WordPress

1. **Create a Docker Image for WordPress:**
   - Download PHP-FPM.
   - Set up WordPress in the container.
   - Configure PHP-FPM for running WordPress.

2. **Create `wp-config.php`:**
   - Configure your database connection.
   - Set up the necessary environment variables.

3. **Start WordPress:**
   - Ensure that the WordPress files are in the correct directory and that the database is properly configured.

---

## MariaDB

### Setting Up MariaDB

1. **Create a Docker Image for MariaDB:**
   - Install MariaDB server and client.
   - Initialize the database and create users with the right privileges.

2. **Configure the Database:**
   - Use `.sql` scripts to create the necessary WordPress database and users.
   - Link the database with the WordPress container using Docker Compose.

---

## Useful Links

- [Docker Documentation](https://docs.docker.com/)
- [Docker Compose Documentation](https://docs.docker.com/compose/)
- [Nginx Documentation](http://nginx.org/en/docs/)
- [WordPress Docker Guide](https://hub.docker.com/_/wordpress)
- [MariaDB Docker Guide](https://hub.docker.com/_/mariadb)

---

## How to Run the Project Locally

1. Clone this repository:
   ```bash
   git clone <repository-url>
