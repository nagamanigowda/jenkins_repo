@Library('my-shared-library') _
pipeline {

    agent any 

        stagegit {

            stage('Git Checkout'){

                steps{

                    script{

                        GitCheckout(
                            branch : "main",
                            url : "https://github.com/nagamanigowda/jenkins_repo.git"
                        )
                        
                    }

                }
            }

        }
    
}