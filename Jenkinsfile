pipeline {

	agent any 
	
	stages { 
	
	   stage('Build Docker Image') { 
			steps { 
				 sh """
		          docker build -t OlaUnicamp .
		         """
            }
        }

           stage('Run Docker Container') {
			steps { 
				sh """
		          docker run --rm OlaUnicamp
		        """
            }
        }
    }
    
    post { 
    	success { echo 'Pipeline executada com sucesso!' }
        failure { echo 'Pipeline falhou! Verifique os logs para mais detalhes.' }
    }
}
