node {
	stage('Git Clone') { 
        git 'https://github.com/kartikeyapro/ks.git' 
    }   
	
	stage('Maven Version'){
		sh 'mvn --version'
	}
	
   stage('mvn clean') { 
	
        sh 'mvn clean'
    }
    stage('Maven Validate ') {
      sh 'mvn validate'
    }
	stage('Maven Compile ') {
      sh 'mvn compile'
    }
	stage('Maven Test ') {
      sh 'mvn test'
    }
	stage('Maven Package ') {
      sh 'mvn package'
    }
    
}

