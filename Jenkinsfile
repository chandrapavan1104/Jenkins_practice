pipeline {
    agent {
        docker {
            // Use the official Node.js image to build the frontend
            image 'node:16-alpine'
            args '-p 3000:3000' // Port mapping for development
        }
    }
    stages {
        stage('Build') {
            steps {
                sh 'npm install' // Install dependencies
            }
        }
        stage('Test') {
            steps {
                sh 'npm test' // Run tests (if applicable)
            }
        }
        stage('Package') {
            steps {
                sh 'npm run build' // Build the frontend application
            }
        }
        stage('Deploy') {
            environment {
                DOCKER_IMAGE = 'frontend-app' // Docker image name
            }
            steps {
                sh 'docker build -t $DOCKER_IMAGE .' // Build Docker image
                sh 'docker run -d -p 8080:80 $DOCKER_IMAGE' // Run Docker container
            }
        }
    }
}
