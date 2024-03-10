
aws_eks_cluster_config = {

      "demo-cluster" = {

        eks_cluster_name         = "demo-cluster1"
        eks_subnet_ids = ["subnet-0bb34b2bee857be2d","subnet-03b098b7d2cbd122c","subnet-0167fbeff292b904c","subnet-09af1b434de17af73"]
        tags = {
             "Name" =  "demo-cluster"
         }  
      }
}

eks_node_group_config = {

  "node1" = {

        eks_cluster_name         = "demo-cluster"
        node_group_name          = "mynode"
        nodes_iam_role           = "eks-node-group-general1"
        node_subnet_ids          = ["subnet-0bb34b2bee857be2d","subnet-03b098b7d2cbd122c","subnet-0167fbeff292b904c","subnet-09af1b434de17af73"]
        tags = {
             "Name" =  "node1"
         } 
  }
}