# terraform-lamda-ruby

A repo to create a AWS Lamda with Ruby.

## Create build

```prompt
make zip_function
```

## Create Lamda

```
terraform init
terraform apply
```

## Invoke

### Directly with AWS CLI

### Through the API Gateway with

```
curl $(terraform output base_url)`
```
