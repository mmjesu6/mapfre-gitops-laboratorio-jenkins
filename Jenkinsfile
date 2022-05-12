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
                logsDocker= sh (returnStdout: true, script: '''
                chmod +x scrPrueba.sh
                echo "Jesus"|./scrPrueba.sh Jesus
                echo "Jesus"|./scrPrueba.sh secreto 
                ''').trim()
                echo logsDocekr
                
            }
        }
        stage('script stage') {
            agent{label "docker-agent"}
            steps {
                sh 'ls; echo "Hola"'
                
            }
        }
    }
}