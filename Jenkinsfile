pipeline {
  agent {
    docker {
     image 'node:12.18.3'
     args '-p 3000:3000'
    }
  }
  environment {
    CI = 'true'
  }
  stages {
      stage('Check branch name') {
          steps {
            echo BRANCH_NAME
          }
        }
   //  stage('Install Packages') {
   //    steps {
   //      sh 'npm install'
   //    }
   //  }
   //  stage('Test and Build') {
   //    parallel {
   //      stage('Run Tests') {
   //        steps {
   //          sh 'npm run test'
   //        }
   //      }
   //      stage('Create Build Artifacts') {
   //        steps {
   //          sh 'npm run build'
   //        }
   //      }
        
   //    }
   //  }

stage('Production') {
  steps {
   input message: 'Deploy to production? (Click "Proceed" to continue)'
    withAWS(region:'ap-southeast-2',credentials:'aws-credentials') {
    s3Delete(bucket: 'jingshuai-react-sample', path:'**/*')
    s3Upload(bucket: 'jingshuai-react-sample', workingDir:'build', includePathPattern:'**/*');
            }
          }
        }
    }
}