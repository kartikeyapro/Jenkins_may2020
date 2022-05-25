pipeline {
    agent any

    tools {
       maven 'Maven-3.0.5'
    }

    stages {
        stage('git clone') {
            steps {
            git 'https://github.com/kartikeyapro/ks.git'    
            }
			}
			}
    stages {
        stage('maven version') {
            steps {
				sh 'mvn --version' 
            }
			}
			}

    stages {
        stage('mvn clean') {
            steps {
               sh 'mvn clean'
            }  
			}
			}     
    stages {
        stage('mvn validate') {
            steps {
               sh 'mvn validate'
            }
			}
			}
	stages {
        stage('mvn compile') {
            steps {
               sh 'mvn compile'
            }
}
}			
	
	stages {
        stage('mvn test') {
            steps {
               sh 'mvn test'
            }
			}
			}
			
	stages {
        stage('mvn package') {
            steps {
				sh 'mvn package'
            }			
	}
}
}	
