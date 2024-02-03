variable "aws_access_key" {
   default  = "AKIA6NXZTVLK6ARTKLNY"
   }

variable "aws_secret_key" {
      default  = "2zO11YebnI1CFNNFHvrpcxFzMaj3Su2ad+itKFlH"
}

variable "AWS_REGION" {
    type = string
    default = "eu-west-1"
    description = "Région de notre instance ec2"
}

variable "AWS_AMIS" {
    type = map
    default = {
        "eu-west-1" = "ami-0905a3c97561e0b69"
        "eu-west-2" = "ami-07c1207a9d40bc3bd"
    }


}
