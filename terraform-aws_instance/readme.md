# Terraform AWS Instance
This module creates EC2 instances in AWS


# Inputs
* ami_id - string - Required 
* instance_type - string - optionally. By default it is t3.micro
* sg_ids - list(string) - Required.
* tags - map - Optional.

# Outputs
* instance_id - instance id of the created instance.
* public_ip - public ip of the instance.
* private_ip - private ip of the instance.
