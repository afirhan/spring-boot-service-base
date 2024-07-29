# Spring Boot Service Base

## Overview
The **Spring Boot Service Base** repository provides a foundational template for developing and deploying Spring Boot microservices. This project includes essential configurations and setups to streamline the creation and management of Spring Boot applications within Docker environments.

## Features
- **Docker Integration**: Pre-configured Dockerfiles for development and production environments.
- **Development Setup**: Includes Docker Compose files to facilitate local development with live code reloading.
- **Production Setup**: Optimized Docker configurations for deploying applications in a production setting.
- **Makefile**: Simplified commands for building, starting, stopping, and resetting your application environment.

## Dependencies
This project utilizes the following key dependencies:

1. **Spring Boot Starter Web**: Provides the necessary libraries to develop web applications, including RESTful APIs. It includes embedded Tomcat server and essential web components.
   ```xml
   <dependency>
       <groupId>org.springframework.boot</groupId>
       <artifactId>spring-boot-starter-web</artifactId>
   </dependency>
   ```
2. **Spring Boot DevTools**: Enhances the development experience by enabling features like automatic restarts and live reload of changes in the application. This dependency is only included in the development environment.
    ```xml
    <dependency>
        <groupId>org.springframework.boot</groupId>
        <artifactId>spring-boot-devtools</artifactId>
        <optional>true</optional>
    </dependency>
    ```

## Maven Selection
The project uses Maven as the build tool to manage dependencies, build the project, and handle various lifecycle phases. Maven is chosen due to its robustness in handling complex projects and its extensive ecosystem of plugins and integrations.

## Application Properties
The application configuration is defined in **`src/main/resources/application.properties`**. Key properties include:
- **spring.application.name**: Defines the name of the application, which is useful for identifying the service in distributed systems.
    ```
    spring.application.name=Spring Service Base
    ```
- **server.port**: Sets the port on which the application will run. The default is set to 8080.
    ```
    server.port=8080
    ```
- **spring.devtools.restart.enabled**: Enables automatic restart of the application when code changes are detected, enhancing the development workflow.
    ```
    spring.devtools.restart.enabled=true
    ```
- **spring.devtools.livereload.enabled**: Activates live reloading of static resources during development.
    ```
    spring.devtools.livereload.enabled=true
    ```
<br/><br/>

## Getting Started
### Prerequisites
- Docker
- Docker Compose

### Development Setup
1. **Build and Run the Development Environment**:
    ```bash
    make build-dev
    ```

2. **Access the Application:**:
    - Visit **http://localhost:8080** to interact with the application.

### Production Setup
1. **Build and Run the Production Environment**:
    ```bash
    make build-prod
    ```

2. **Access the Application:**:
    - Visit **http://localhost:8080** to interact with the application.

### Makefile Commands
- **build-dev**: Build and start the development environment.
- **build-prod**: Build and start the production environment.
- **start**: Start all stopped containers.
- **stop**: Stop all running containers.
- **reset**: Stop, remove containers, networks, images, and prune volumes specific to the project.
<br/><br/>

## License
This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more details.
<br/><br/>

## Contact
For any inquiries or support, please contact [alifirhan.fa@gmail.com](mailto:alifirhan.fa@gmail.com).