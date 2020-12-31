node {

   stage('Clone Repository') {
        git 'https://github.com/amphonr/demo.git'
   }

   stage('Build Maven Image') {
        sh 'mvn clean install package'
   }

   stage ('Docker image build') {
        sh 'docker build -t demo:1.0.0 .'
   }

   stage ('Deploy to Dev') {
        sh 'docker run -d -p 8091:8090 demo:1.0.0'
   }

}
