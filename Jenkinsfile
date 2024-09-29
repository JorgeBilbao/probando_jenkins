pipeline {
    agent any
    stages {
        stage('Clone repository') {
            steps {
                git 'https://github.com/JorgeBilbao/probando_jenkins'
            }
        }
        stage('Build Docker image') {
            steps {
                sh 'docker build -t mi-imagen .'
            }
        }
        stage('Run Docker container') {
            steps {
                sh 'docker run -d mi-imagen'
            }
        }
    }
}


