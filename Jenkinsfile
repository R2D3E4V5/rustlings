pipeline {
    agent { dockerfile true }
    stages {
        stage('environment setup') {
            steps {
                sh 'ls -al'
            }
        }
        // stage('build') {
        //     steps {
        //         sh "docker build -t rustlings:${BUILD_ID} ."
        //     }
        // }
        stage('tests'){
            steps {
                sh "cargo test"
            }
        }
    }
    post {
        always {
            echo "build id ${BUILD_ID}"
            echo "build number ${BUILD_NUMBER}"
            echo "build tag ${BUILD_TAG}"
            //TODO:  clean up other old images
        }
        success {
            echo 'success'
            // sh "docker tag my-rust-lib:latest mohanliucialfo/rust_sample:${BUILD_ID}"
            // sh "docker push mohanliucialfo/rust_sample:${BUILD_ID}"
        }
        failure {
            echo 'This will run only if failed'
        }
        unstable {
            echo 'This will run only if the run was marked as unstable'
        }
        changed {
            echo 'This will run only if the state of the Pipeline has changed'
            echo 'For example, if the Pipeline was previously failing but is now successful'
        }
    }
}
