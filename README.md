# openstack-swift-action


## Description
This action allows you to manage project files with your prefered (Swift-compatible) Object Storage provider. 
It uses my personal docker image [`openstack-swift-container`](https://hub.docker.com/r/iksaku/openstack-swift-container).

## Usage
Basic example using Keystone v2
```yaml
steps:
  ...
  - uses: iksaku/openstack-swift-action@master
    env:
      OS_AUTH_URL: ${{ secrets.AUTH_URL }}
      OS_REGION_NAME: ${{ secrets.REGION }}
      OS_TENANT_ID: ${{ secrets.TENANT_ID }}
      OS_USERNAME: ${{ secrets.USERNAME }}
      OS_PASSWORD: ${{ secrets.PASSWORD }}
    with:
      args: list openstack-swift-action
  ...
```

> You must authenticate against your Object Storage service provider via _Environment Variables_.
>
> [Learn more about Swift Authentication](https://docs.openstack.org/python-swiftclient/stein/cli/index.html#authentication)
>
> You can store these variables as _Secrets_ in your Github repo, and refer them in your workflow.
>
> [Learn more about using Github Secrets in your Workflow](https://help.github.com/en/articles/virtual-environments-for-github-actions#creating-and-using-secrets-encrypted-variables)