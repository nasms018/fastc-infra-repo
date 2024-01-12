module "eks" {
  # eks 모듈에서 사용할 변수 정의
  source = "./modules/eks-cluster"
  cluster_name = "fast-cluster"
  cluster_version = "1.25"
  vpc_id = "vpc-08bef951d113f4b06"

  private_subnets = ["subnet-0944e736a028dcbfe", "subnet-01b87077945b67eb2"]
  public_subnets  = ["subnet-036201bb4ae0c15c0", "subnet-002b7adeec58140c4"]
}