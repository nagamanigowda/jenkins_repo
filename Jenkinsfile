@Library('my-shared-library') _

pipeline {

    agent any

        """parameters{

             choice(name = 'action', choices='create\ndelete', description='create or destroy')
        }
         """
        stages {

            stage('Git Checkout'){

            """when {expression {params.action == 'create'}}"""

                steps{

                        GitCheckout(
                            branch : "main",
                            url : "https://github.com/nagamanigowda/jenkins_repo.git"
                        )
                }
            }

            stage('Unit Test maven'){

            """when {expression {params.action == 'create'}}"""

                steps{

                    script{

                        mvnTest()

                    }

                }
            }
        
        stage('Integration Test maven'){
               
        """when {expression {params.action == 'create'}}"""
                           
                steps{

                    script{

                        mvnIntegrationTest()
                        
                    }

                }
            }

        stage('static code analysis:sonarqube'){
               
        """when {expression {params.action == 'create'}}"""
                           
                steps{

                    script{

                        statisCodeAnalysis()
                        
                    }

                }
            }    
        }
    
}