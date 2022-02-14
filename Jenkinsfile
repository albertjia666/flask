pipeline {
    agent any

    stages {
        stage('Git Pull Repo') {
            steps {
                checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[credentialsId: 'a95002af-5f1d-4b9d-a766-92658c75ede2', url: 'git@github.com:albertjia666/flask.git']]])
            }
        }
        stage('Build Project') {
            steps {
                echo 'Build Project...'
            }
        }
        stage('Scantist') {
            steps {
                sh '''
                    curl -s https://download.scantist.io/scantist-bom-detect.jar --output scantist-bom-detect.jar
                    java -jar scantist-bom-detect.jar
                '''
            }
        }
    }
}