resource "aws_eks_cluster" "aws_eks" {
  name     = "eks_cluster_mrp"
  role_arn = aws_iam_role.eks_cluster.arn

  vpc_config {
    subnet_ids = module.vpc.public_subnets
  }

  depends_on = [
    aws_iam_role_policy_attachment.AmazonEKSClusterPolicy,  
    aws_iam_role_policy_attachment.AmazonEKSServicePolicy
  ]

  tags = {
    Name = "EKS_Cluster_MRP"
  }
}

