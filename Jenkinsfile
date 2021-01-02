pipeline {
    agent any

    environment {
        dockerImage = ''
    }

    stages {
        stage('Build') {
            steps {
                sh 'mvn clean package'
            }
        }
        stage('Build image') {
            steps {
                script {
                    dockerImage = docker.build("modongsotay/config-server-client")
                }
            }
        }
        stage('Push image') {
            steps {
                script {
                    withDockerRegistry(
                        credentialsId: 'docker-credential',
                        url: 'https://index.docker.io/v1/') {
                        dockerImage.push()
                    }
                }
            }
        }
        stage('Deployment') {
            steps {
                sh 'kubectl apply -f deployment.yml';
            }
        }
    }
}