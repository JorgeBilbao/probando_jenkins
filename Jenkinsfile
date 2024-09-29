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
                script {
                    sh 'docker build -t mi-imagen .'
                }
            }
        }
        stage('Run Docker container') {
            steps {
                script {
                    sh 'docker run -d mi-imagen'
                }
            }
        }
    }
}

