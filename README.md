# tf_aws_ec2_domain_name

Simple module to calculate EC2 domain name by region using the following rules:

1. If region is `us-east-1`, return `ec2.internal`
2. Otherwise, return `<region>.compute.internal`

From [Amazon's DHCP options guide](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_DHCP_Options.html)

## Usage

```terraform
module "ec2_dns" {
  source = "github.com/paultyng/tf_aws_ec2_domain_name"
  region = "us-east-2"
}
```

`module.ec2_dns.domain_name` = `"us-east-2.compute.internal"`


