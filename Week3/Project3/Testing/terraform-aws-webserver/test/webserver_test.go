package test

import (
	"fmt"
	"testing"
	"time"

	http_helper "github.com/gruntwork-io/terratest/modules/http-helper"
	"github.com/gruntwork-io/terratest/modules/terraform"
)

func TestTerraformWebServerExample(t *testing.T) {

	// the values to pass into the Terraform CLI
	terraformOptions := terraform.WithDefaultRetryableErrors(t, &terraform.Options{

		// the path where the example Terraform code is located
		TerraformDir: "../examples/webserver",

		// variables to pass to the Terraform code using -var options
		Vars: map[string]interface{}{
			"region":     "us-west-2",
			"servername": "testwebserver",
		},
	})

	// run a Terraform init and apply with the Terraform options
	terraform.InitAndApply(t, terraformOptions)

	// run a Terraform destroy at the end of the test
	defer terraform.Destroy(t, terraformOptions)

	publicIp := terraform.Output(t, terraformOptions, "public_ip")

	url := fmt.Sprintf("http://%s:8080", publicIp)

	http_helper.HttpGetWithRetry(t, url, nil, 200, "My first Terraform module!", 30, 5*time.Second)

}
