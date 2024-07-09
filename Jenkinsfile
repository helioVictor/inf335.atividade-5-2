pipeline {

	agent any stages { 
	
	   stage('Build Docker Image') { 
		steps { script {
                    // Definindo as credenciais para o Docker Hub (substitua pelos seus próprios detalhes)
                    docker.withRegistry('https://registry.hub.docker.com', 'docker-hub-credentials') {
                        // Nome da imagem a ser construída
                        def dockerImage = docker.build('OlaUnicamp', '-f Dockerfile .')
                    }
                }
            }
        }

           stage('Run Docker Container') { 
		steps { script {
                    // Roda o contêiner a partir da imagem construída anteriormente
                    docker.withRun('OlaUnicamp') {
                        // Comandos adicionais que você pode querer executar dentro do contêiner
                        sh 'echo "Executando contêiner..."' sh 'docker ps'
                    }
                }
            }
        }
    }
    post { success { echo 'Pipeline executada com sucesso!'
        }
        failure { echo 'Pipeline falhou! Verifique os logs para mais detalhes.'
        }
    }
}
