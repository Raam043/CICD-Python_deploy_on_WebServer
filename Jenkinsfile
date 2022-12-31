pipeline {
    agent any

    stages {
        stage('Git Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/Raam043/CICD-Python_deploy_on_WebServer.git'
            }
        }
        stage('Docker Image Build') {
            steps {
                sh 'docker stop myapp & docker rm -f myapp & docker image rm -f myapp & docker build -t myapp .'
            }
        }
        stage('Docker Run Container') {
            steps {
                sh 'docker run --name myapp -d -p 443:80 myapp'
            }
        }
        
    }
}
