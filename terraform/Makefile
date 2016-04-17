PARALLELISM=3

update-modules:
	terraform get

plan: update-modules
	terraform plan -state="tfstate/awencraft.tfstate" -var-file="tfvars/awencraft.tfvars" -module-depth=-1 -parallelism=$(PARALLELISM)

apply: update-modules
	terraform apply -state="tfstate/awencraft.tfstate" -var-file="tfvars/awencraft.tfvars" -parallelism=$(PARALLELISM)
