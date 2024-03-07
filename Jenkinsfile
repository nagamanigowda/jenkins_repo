@Library('my-shared-library') _

pipeline {

    agent any

        parameters{

        //     choice(name = 'action', choices='create\ndelete', description='create or destroy')
               string(name: 'ImageName', description: 'name of the image', defaultValue: 'javaapp')
               string(name :'TagName', description :'name of the Tag', defaultValue :'v1')
               string(name :'DockerhubName', description : 'name of the Project', defaultValue :'nagamanigowda946')
        }
         
        stages {

            stage('Git Checkout'){

            //when {expression {params.action == 'create'}}

                steps{

                        GitCheckout(
                            branch : "main",
                            url : "https://github.com/nagamanigowda/jenkins_repo.git"
                        )
                }
            }

            //stage('Unit Test maven'){

            //when {expression {params.action == 'create'}}

              //  steps{

                //    script{

                 //       mvnTest()

                   // }

                //}
            //}
        
        //stage('Integration Test maven'){
               
        //when {expression {params.action == 'create'}}
                           
          //      steps{

            //        script{

              //          mvnIntegrationTest()
                        
                //    }

               // }
            //}

        stage('static code analysis:sonarqube'){
               
        //when {expression {params.action == 'create'}}
                           
                steps{

                    script{
                        
                        def sonarqubecredentialId = 'my-sonar'
                        staticCodeAnalysis(sonarqubecredentialId)
                        
                    }

                }
            } 

        stage('Quality Gate Status:sonarqube'){
               
        //when {expression {params.action == 'create'}}
                           
                steps{

                    script{
                        
                        def sonarqubecredentialId = 'my-sonar'
                        QualityGateStatus(sonarqubecredentialId)
                        
                    }

                }
            }
        stage('Maven Build: maven'){

            //when {expression {params.action == 'create'}}

                steps{

                    script{

                        mvnBuild()

                    }

                }
            }

        stage('Docker Build: Docker'){

            //when {expression {params.action == 'create'}}

                steps{

                    script{

                        DockerBuild("${params.ImageName}", "${params.ImageTag}", "${params.DockerhubName}")

                    }

                }
            }               
        }
    
}