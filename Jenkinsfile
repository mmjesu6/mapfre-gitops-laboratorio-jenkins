pipeline {
    agent any

    stages {
        stage('Hello') {
         
            steps {
                echo 'Hello World from mmjesu6 folder'
            }
        }
        stage('sh stage') {
            agent{label "docker-agent"}
            steps {
                sh 'ls; echo "Hola"'
                
            }
        }
    }
}