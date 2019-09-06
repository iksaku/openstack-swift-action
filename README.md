# openstack-swift-action


## Description
This action allows you to manage project files with your prefered (Swift-compatible) Object Storage provider. 
It uses my personal docker image [`openstack-swift-container`](https://hub.docker.com/r/iksaku/openstack-swift-container).

## Usage
You must authenticate against your Object Storage service provider via _Environment Variables_.
You can store these variables as _Secrets_ in your Github repo, and refer them in your workflow. [Learn more about using Github Secrets in your Workflow](https://help.github.com/en/articles/virtual-environments-for-github-actions#creating-and-using-secrets-encrypted-variables)

For an actual example, please refer to the [`test.yml` file](https://github.com/iksaku/openstack-swift-action/blob/master/.github/workflows/test.yml) located in this repo.