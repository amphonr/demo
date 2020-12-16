node {

   stage('Clone Repository') {
        // Get some code from a GitHub repository
        git 'https://github.com/amphonr/demo.git'
   }

   stage('Build Maven Image') {
            sh 'mvn clean install package'
   }
}
