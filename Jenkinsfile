node ('docker2'){
    
    stage ('Checkout SCM') {
        checkout scm        
    }
    
    stage ('Build Image') {
        docker.build("super-node-js:${env.BUILD_ID}")
    }
}
