# _Terraform Module: terraform-module-aws-rds-cluster-instance_
_Terraform module for AWS RDS Cluster Instances_


## _General_

_This module can be used to deploy a_ _**RDS Cluster Instances** on AWS Cloud Provider......_


---

## _Prerequisites_

_This module needs **Terraform 0.12.20** or newer._
_You can download the latest Terraform version from_ [_here_](https://www.terraform.io/downloads.html).



---

## _Features Branches_

_Below we are able to check the resources that are being created as part of this module call:_

- _**RDS Cluster Instances**_


---

## _Usage_

## _Using this repo_

_To use this module, add the following call to your code:_

```tf
module "rds_cluster" {
  source = "git::https://github.com/nitinda/terraform-module-aws-rds-cluster-instance.git?ref=master"

  providers = {
    aws = aws.services
  }

  # Tags
  tags = {
    Project      = "POC"
    Owner        = "Platform Team"
    Environment  = "prod"
    BusinessUnit = "Platform Team"
    ManagedBy    = "Terraform"
    Application  = "RDS Cluster Parameter Group"
  }

  # RDS Instance
}
```

---

## _Inputs_

_The variables required in order for the module to be successfully called from the deployment repository are the following:_

|**_Variable_** | **_Description_** | **_Type_** | **_Argument Comments_** |
|:----|:----|-----:|:---:|
| **_identifier_** | _The identifier for the RDS instance_ | _string_ | **_Required_** |
| **_cluster\dentifier_** | _ID of aws\_rds\_cluster resource_ | _string_ | **_Required_** |
| **_engine_** | _The name of the database engine_ | _string_ | **_Required_** |
| **_engine\_version_** | _The database engine version_ | _string_ | **_Required_** |
| **_instance\_class_** | _The instance class to use_ | _string_ | **_Required_** |
| **_publicly\_accessible_** | _Bool to control if instance is publicly accessible_ | _bool_ | **_Optional (Default false)_** |
| **_db\_subnet\_group\_name_** | _A DB subnet group to associate with this DB instances_ | _list(string)_ | **_Required_** |
| **_db\_parameter\_group\_name_** | _The name of the DB parameter group to associate_ | _list(string)_ | **_Required_** |
| **_apply\_immediately_** | _Determines whether or not any DB_ | _bool_ | **_Optional (Default false)_** |
| **_monitoring\_role\_arn_** | _The ARN for the IAM role_ | _string_ | **_Optional (Default null)_** |
| **_monitoring\_interval_** | _The interval, in seconds_ | _number_ | **_Optional (Default 0)_** |
| **_auto\_minor\_version\_upgrade_** | _Indicates that minor engine upgrades_ | _bool_ | **_Optional (Default false)_** |
| **_performance\_insights\_enabled_** | _TSpecifies whether Performance Insights_ | _bool_ | **_Optional (Default false)_** |
| **_performance\_insights\_kms\_key\_id_** | _The ARN for the KMS key_ | _bool_ | **_Optional (Default false)_** |
| **_copy\_tags\_to\_snapshot_** | _Copy all Cluster tags to snapshots_ | _bool_ | **_Optional (Default false)_** |
| **_tags_** | _Resource tags_ | _map(string)_ | **_Required_** |


---


## _Outputs_

### _General_

_This module has the following outputs:_

* **_id_**
* **_cluster\_identifier_**
* **_identifier_**
* **_writer_**
* **_endpoint_**
* **_engine_**
* **_engine\_version_**
* **_database\_name_**


### _Usage_

_In order for the variables to be accessed at module level please use the syntax below:_

```tf
module.<module_name>.<output_variable_name>
```


_The output variable is able to be accessed through terraform state file using the syntax below:_

```tf
data.terraform_remote_state.<layer_name>.<output_variable_name>
```

---



## _Authors_

_Module maintained by Module maintained by the -_ **_Nitin Das_**