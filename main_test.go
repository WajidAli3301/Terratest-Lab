package aws

import (
"testing"

"github.com/gruntwork-io/terratest/modules/aws"
"github.com/gruntwork-io/terratest/modules/terraform"
)
func TestWebServer(t *testing.T) {
    terraformOptions := &terraform.Options{
    // The path to where your Terraform code is located
    TerraformDir: ".",
    }

//defer terraform.Destroy(t, terraformOptions)

terraform.InitAndApply(t, terraformOptions)

name := "testing3301-demo-lab"
region := "us-east-1"
aws.AssertS3BucketExists(t, region, name)


}

// GetS3ObjectContents fetches the contents of the object in the given bucket with the given key and return it as a string.
//


