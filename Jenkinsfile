pipeline {
	agent any
	environment {
	     AWS_REGION = "ap-south-1"
}
	stages {
		stage('use aws credentials') {
			steps {
				withCredentials([usernamePassword(credentialsId: 'aw-credenials', usernameVariable: 'AWS_ACCESS_KEY_ID', passwordVariable: 'AWS_SECRET_ACCESS_KEY')]) {
					sh '''
					    export AWS_ACCESS_SECRET_KEY=$AWS_ACCESS_KEY_ID
					    export AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY
					
					    aws s3 ls --region $AWS_REGION
					'''

				}					
			}	
		}
	}
}	
