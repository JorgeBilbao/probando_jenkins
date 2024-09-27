pipeline {
    agent any
    stages {
        stage('Levantar contenedor') {
            steps {
                // Comando para levantar el contenedor de MySQL 7777
                sh 'docker run --name mi-mysql -e MYSQL_ROOT_PASSWORD=root -d mysql'
            }
        }
    }
}
