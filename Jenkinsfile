pipeline {
    
    agent any
    
    stages {
        
        //stage ("Git checkout") {
           //steps {
             //   dir("/mnt/project/") {
              //  sh "git clone https://github.com/anup1497/game-of-life.git"
              //  }
          //  }
            
       // }
        stage ("mvn install") {
            steps {
                dir("/mnt/project/game-of-life/") {
                sh "mvn clean install"
                }
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
