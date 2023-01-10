# Required Provider which help us to maintain the same version
# ~ Tilde symbol which allows the minior versions like 1.2.1, 1.2.2,...

terraform {
    required_version = "~> 1.3.0"
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "3.50.0"
        }
    }
}