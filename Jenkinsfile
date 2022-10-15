pipeline {
    
    agent any
    
    stages {
        
        
        stage ("mvn install") {
            steps {
                
                
               sh "mvn clean install"
            }
            
        }
        stage ("Qa Deployment") {
            steps {
                
                sh "scp -i /mnt/key.pem /mnt/project/game-of-life/gameoflife-web/target/gameoflife.war ec2-user@172.31.7.27:/mnt/project"
                sh "scp -i /mnt/key.pem /mnt/project/game-of-life/gameoflife-web/Dockerfile ec2-user@172.31.7.27:/mnt/project"
            }
            
        }
        stage ("Docker Image") {
            steps {
                
                dir("/mnt/project/game-of-life/gameoflife-web/") {
                sh "docker build -t rohit ."
                }
                
            }
            
        }
    }
    
    
}
