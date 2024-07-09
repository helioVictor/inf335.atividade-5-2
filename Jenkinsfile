pipeline {

	agent any 
	
	stages { 
	
	   stage('Build Docker Image') { 
			steps { 
				script {
           				// Constrói a imagem ola-unicamp:latest
                        docker.build('ola-unicamp:latest', '-f Dockerfile .')
                    
                }
            }
        }

           stage('Run Docker Container') {
			steps { 
				script {
                    // Executa o contêiner a partir da imagem construída
	                script {
	                    docker.run("-p 8081:8080 --name ola-unicamp-container ola-unicamp:latest")
	                }
                }
            }
        }
    }
    
    post { 
    	success { echo 'Pipeline executada com sucesso!' }
        failure { echo 'Pipeline falhou! Verifique os logs para mais detalhes.' }
    }
}
