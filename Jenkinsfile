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
					    export AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID
					    export AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY
					
					    aws s3 ls --region $AWS_REGION
					'''

				}					
			}	
		}
		stage('Terraform Init') {
			steps {
				sh 'terraform init'
			}
		}
		stage('Terraform Validate') {
			steps {
				sh 'terraform validate'
			}
		}	
		stage('Terraform Plan') {
			steps {
				     withCredentials([usernamePassword(credentialsId: 'aw-credenials', usernameVariable: 'AWS_ACCESS_KEY_ID', passwordVariable: 'AWS_SECRET_ACCESS_KEY')]) {
					sh '''	
				     	  export AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID
				     	  export AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY
				     	  terraform plan
					'''
				      }
		        }
		}	
		stage('Terraform apply') {
			steps {
				    withCredentials([usernamePassword(credentialsId: 'aw-credenials', usernameVariable: 'AWS_ACCESS_KEY_ID', passwordVariable: 'AWS_SECRET_ACCESS_KEY')]) {
				       sh '''
					  export AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID
					  export AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY 
					  terraform apply -auto-approve
				       '''
		              }
			}
		}			
	}
}
