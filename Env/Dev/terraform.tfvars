module_rg = {
  rg_dev_network = {
    name            = "shubham-terraform"
    location        = "Japan East"
    target_provider = "dev"
  }

  rg_network = {
    name            = "dynamic_RG"
    location        = "Central India"
    target_provider = "dev"
  }
  
}



 module_stg = {
  stg_dev = {
    name                     = "sachinstg"
    resource_group_name      = "Sachin_RG"
    location                 = "EastUS"
    account_replication_type = "LRS"
    target_provider          = "dev"
  }
 }
 
subscription_id = "1045b2e8-43bd-4126-ad19-ca7b9ae1d5c4"
target          = "dev"

