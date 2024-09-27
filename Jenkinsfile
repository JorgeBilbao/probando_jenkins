pipeline {
    agent {
        docker {
            image 'docker:latest'
            args '-v /var/run/docker.sock:/var/run/docker.sock'
        }
    }
    stages {
        stage('Checkout') {
            steps {
                // Clonar el repositorio
                checkout scm
            }
        }
        stage('Run MySQL Container') {
            steps {
                script {
                    // Levantar el contenedor MySQL dentro del agente Docker
                    sh 'docker run --name mi-mysql -e MYSQL_ROOT_PASSWORD=root -d mysql'
                }
            }
        }
        stage('Verify Container') {
            steps {
                script {
                    // Verificar que el contenedor esté corriendo
                    sh 'docker ps | grep mi-mysql'
                }
            }
        }
    }
}
