data "aws_vpc" "selected" {
  id = var.vpc_id
}

resource "aws_security_group" "db-security-group"{
    name = var.db_sg_name
    vpc_id= data.aws_vpc.selected.id
    ingress {
    description ="Allow MySQL traffic from application sg only"
    from_port        = "3306"
    to_port          = "3306"
    protocol         = "tcp"
    security_groups=[var.app_security_group_id]
    }
}