pipeline{
	agent any
	stages{
	stage("verifying tooling"){
	steps {
	sh '''
		doker version
		docker info
		docker compose version
		curl --version
		jq --version
	'''	
		}	
	}
	stage("Prune Docker Data"){
	steps{
	sh 'docker system prune -a --volumes -f'
}
stage("Start container"){
	steps{
	sh 'docker compose up -d --no-color --wait'
	sh 'docker compose ps'
}
stage("Check Response"){
	sh 'curl httpl:://localhost:8080'
}
post{{always{
	sh
	'''
		docker compose down --remove-orphans -v
		docker compose ps
	'''}}
}
}
	}
	}
