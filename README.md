# openstack-swift-action


## Description
This action allows you to manage project files with your prefered (Swift-compatible) Object Storage provider. 
It uses my personal docker image [`openstack-swift-container`](https://hub.docker.com/r/iksaku/openstack-swift-container).

## Usage
* ### Basic Usage
  Assume have all our `Keystone` credentials stored in our repo's Secrets. We must pass them in form of environment variables to the action in order to authenticate against our service provier:
  ```yaml
  steps:
    ...
    - uses: iksaku/openstack-swift-action@master
      env:
        OS_AUTH_URL: ${{ secrets.AUTH_URL }}
        OS_PASSWORD: ${{ secrets.PASSWORD }}
        OS_PROJECT_NAME: ${{ secrets.PROJECT_NAME }}
        OS_REGION_NAME: ${{ secrets.REGION_NAME }}
        OS_USERNAME: ${{ secrets.USERNAME }}
        OS_USER_DOMAIN_NAME: ${{ secrets.USER_DOMAIN_NAME }}
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

* ### Skipping Auth Pre-Check
  By default, this action executes an authentication check before executing your command arguments. This will help you notice when you haven't setup your credentials properly.

  If your credentials are not valid nor setup properly, the image will halt execution and provide an error message.

  If you don't want to run an authentication check before your command, you can supress this behaviour by passing a `false` value to action's `auth_check` input:
  ```yaml
  steps:
    ...
    - uses: iksaku/openstack-swift-action@master
      with:
        auth_check: false
        args: --version
    ...
  ```