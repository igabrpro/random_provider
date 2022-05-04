# **random_provider**


#### This repo is a guideline on HOW to use null provider with random in terraform using Ubuntu.

# **Repo content**
```main.tf``` - Terraform configuration file

# **PreRequsits**
#### You need to have terraform cli instaled 
#### [download link](https://www.terraform.io/downloads)

# **How to use**
```
    Download the repo bigabrpro/Count_null_provider git clone https://github.com/igabrpro/Count_null_provider.git
    Change to Count_null_provider: cd Count_null_provider
    Type in your terminal terraform init in order to be downloaded required providers
    Type in your terminal terraform plan in order to see the changes which terraform is going to be made
    Type in your terminal terraform apply execute changes bases on our code(main.tf) 
```
    
    
# **Expected results**
```
after terraform apply you shuld get
random_id.server: Creating...
random_id.server: Creation complete after 0s [id=kVMZ36zjrZc]
null_resource.igabr: Creating...
null_resource.igabr: Creation complete after 0s [id=2890426957068239789]
```
# **Example**

```
Execute terraform show to check the created objects

# null_resource.igabr:
resource "null_resource" "igabr" {
    id       = "2890426957068239789"
    triggers = {
        "build_number" = "Object kVMZ36zjrZc"
    }
}

# random_id.server:
resource "random_id" "server" {
    b64_std     = "kVMZ36zjrZc="
    b64_url     = "kVMZ36zjrZc"
    byte_length = 8
    dec         = "10471742007035538839"
    hex         = "915319dface3ad97"
    id          = "kVMZ36zjrZc"
}
```
