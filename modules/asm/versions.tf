
/**
 * Copyright 2021 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

terraform {
  required_version = ">= 1.1"

  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.0"
    }
    google = {
      source = "hashicorp/google"
      # Avoid v4.49 and v4.50 for https://github.com/hashicorp/terraform-provider-google/issues/13507
      version = ">= 4.47.0, != 4.49.0, != 4.50.0, < 7"
    }
    google-beta = {
      source = "hashicorp/google-beta"
      # Avoid v4.49 and v4.50 for https://github.com/hashicorp/terraform-provider-google/issues/13507
      version = ">= 4.47.0, != 4.49.0, != 4.50.0, < 7"
    }
  }

  provider_meta "google" {
    module_name = "blueprints/terraform/terraform-google-kubernetes-engine:asm/v33.0.2"
  }

  provider_meta "google-beta" {
    module_name = "blueprints/terraform/terraform-google-kubernetes-engine:asm/v33.0.2"
  }
}
