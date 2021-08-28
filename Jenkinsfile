pipeline {
    agent {
        docker {
            image 'python:3.9-alpine3.14'
        }
    }

    stages {
        stage('Build') {
            steps {
                checkout scm
                sh 'pip install -r app_python/requirements.test.txt -r app_python/requirements.txt'
            }
        }
        stage('Lint') {
            steps {
                sh 'pylint .'
            }
        }
        stage('Test') {
            steps {
                sh 'pytest'
            }
        }
    }
}