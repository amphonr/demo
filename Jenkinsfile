node {

   stage('Clone Repository') {
        // Get some code from a GitHub repository
        git 'https://github.com/amphonr/demo.git'
   }

   stage('Build Maven Image') {
        sh 'mvn clean install package'
   }

   stage ('Docker image build') {
        sh 'docker build -t demo:1.0.0 .'
   }

   stage ('Push image') {
        sh 'docker push demo:1.0.0'
   }

   stage ('Deploy to Dev') {
        def dockerRun = 'docker run -d -p 8091:8090 demo:1.0.0'
        sh '${dockerRun}'
   }

}
