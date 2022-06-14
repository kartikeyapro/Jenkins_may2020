pipeline {
    agent any

    tools {
       maven 'maven 3.0.5'
    }

    stages {
        stage('git clone') {
            steps {
            git 'https://github.com/kartikeyapro/ks.git'    
            }
			}
			
   
        stage('maven version') {
            steps {
				sh 'mvn --version' 
            }
			}
	

  
        stage('mvn clean') {
            steps {
               sh 'mvn clean'
            }  
			}
			   
		
        stage('mvn validate') {
            steps {
               sh 'mvn validate'
            }
			}
			

        stage('mvn compile') {
            steps {
               sh 'mvn compile'
            }
}
			
	
	
        stage('mvn test') {
            steps {
               sh 'mvn test'
            }
			}
			
			
	
        stage('mvn package') {
            steps {
				sh 'mvn package'
            }	
			}
		stage('mvn deploy') {
            steps {
				sh 'mvn deploy'
            }				
	}
	    stage('Release to aws') {
        steps {
            withAWS(region:'us-east-1', credentials:'ksstore'){
                s3Upload(bucket:"ksstore", workingDir:'target', target/*.war'); // pick your jar or whatever you need
            }
        }
	}
}	
}
