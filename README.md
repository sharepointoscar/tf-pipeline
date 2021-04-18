# Getting Started
Any `terraform` command must include the `github_token` variable for now. 

`terraform plan -var 'github_token=<github_token>' `

# Issues
1. IAM Policies are too permissive, need to be more granular
2. Need to add `buildspec.yml` environment variables i.e. GithubRepo, GithubOwner etc.

NOTE: Because we don't have parameters in `buildspec`, the buildspec is hardcoded to use a specific github public repo from a public organization.
