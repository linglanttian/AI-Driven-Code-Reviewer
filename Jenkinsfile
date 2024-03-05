pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                echo 'Building full-stack architecture...'
            }
        }
        stage('Test') {
            steps {
                echo 'Running backend unit tests and frontend E2E tests...'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying to staging environment via Kubernetes...'
            }
        }
    }
}
