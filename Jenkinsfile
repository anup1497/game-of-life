pipeline {
    
    agent any
    
    stages {
        
        
        stage ("mvn install") {
            steps {
                
                
               sh "mvn clean install"

               echo "MVN stage successfull"
            }
            
        }
        stage ("Qa Deployment") {
            steps {
                
                //sh "scp -i /mnt/key.pem /mnt/project/game-of-life/gameoflife-web/target/gameoflife.war ec2-user@172.31.7.27:/mnt/project"
                sh "scp -i /mnt/key.pem /root/.jenkins/workspace/Muli_GOL_master/gameoflife-web/target/gameoflife.war ec2-user@172.31.7.27:/mnt/project"
                //sh "scp -i /mnt/key.pem /mnt/project/game-of-life/gameoflife-web/Dockerfile ec2-user@172.31.7.27:/mnt/project"
                sh "scp -i /mnt/key.pem /root/.jenkins/workspace/Muli_GOL_master/gameoflife-web/Dockerfile ec2-user@172.31.7.27:/mnt/project"

                echo "QA deployment successfull"
            }


            
        }
        stage ("Docker Image") {
            steps {
                
                dir("/root/.jenkins/workspace/Muli_GOL_master/gameoflife-web/") {
                sh "docker build -t rohit ."

                echo "Docker Image created"
                }
                
            }
            
        }
    }
    
    
}
