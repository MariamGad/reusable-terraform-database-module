variable vpc_id{}

variable db_allocated_storage{
    description= "Amount of storage to allocate for DB instance"
}

variable db_name{
    description= "Name for the database on DB instance."
}

variable db_engine{
    description="Database engine to be used"
}

variable db_engine_version{
    description="Version of database engine you want to use."
}

variable db_instance_class{
    description="Configuration for DB instance"
}

variable db_username{
    description="Database username"
}
variable db_password{
    description ="Database password"
}

variable db_final_snapshot{
    description = "to skip final snapshot"
}

variable private_subnet_ids{
    description ="to get private subnets ids from netwrok module"
}
variable db_sg_name{
    description ="Database security group name"
}

variable app_security_group_id{
    description ="to get application security group id form application module"
}