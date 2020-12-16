node {

   stage('Clone Repository') {
        // Get some code from a GitHub repository
        git 'https://github.com/amphonr/demo.git'
   }

   stage('Build Maven Image') {
         steps {
            script {
                withMaven(maven: 'M3'){
                    bat "mvn clean package"
                }
            }
         }
   }
}
