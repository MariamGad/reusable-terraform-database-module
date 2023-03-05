resource "aws_db_instance" "database"{
    allocated_storage=var.db_allocated_storage
    db_name= var.db_name
    engine= var.db_engine
    engine_version =var.db_engine_version
    instance_class = var.db_instance_class
    username = var.db_username
    password = var.db_password
    db_subnet_group_name= var.private_subnet_ids
    skip_final_snapshot=var.db_final_snapshot

}