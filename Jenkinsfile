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
        stage('script stage') {
            agent{label "docker-agent"}
            steps {
                sh  '''
                chmod +x scrPrueba.sh
                echo "Jesus"|./scrPrueba.sh Jesus
                echo "secreto"|./scrPrueba.sh secreto 
                '''   
                echo "Branch Naming " + BRANCH_NAME
            }
        }
        stage('Tests') {
            agent{label "docker-agent"}
            when{
                expression{BRANCH_NAME.startsWith("PR-")}
            }
            steps {
                echo "Testing on PR" 
                sh "chmod +x ./testScript.sh; ./testScript.sh" 
            }
        }
    }
}