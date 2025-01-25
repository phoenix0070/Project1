pipeline {
    agent any
    
    stages {
        stage('GIT CHECKOUT') {
            steps {
                // Specify the branch name explicitly (e.g., 'main' or 'master'please check this is for test)
                git branch: 'main', url: 'https://github.com/phoenix0070/Project1.git'
            }
        }
        stage('terraform init'){
            steps {
                sh 'terraform init' 
            }
            
        }
         stage('terraform plan'){
            steps {
                sh 'terraform plan' 
            }
            
        }
        stage('terraform action'){
            steps {
                sh 'terraform apply -auto-approve' 
            }
            
        }
    }
}
