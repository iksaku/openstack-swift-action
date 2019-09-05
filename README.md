# openstack-swift-action


## Description
This action allows you to manage project files with your prefered Swift-compatible Object Storage provider.

This action uses OpenStack's Swift command line implementation (aka Python Swift Client) on version codenamed `Stein`.

In order to use the `swift` command in your project, you must authenticate with your service provider.
Conveniently, swift lets you authenticate using _Environment Variables_.
[Learn more about Swift Authentication Environment Variables](https://docs.openstack.org/python-swiftclient/stein/cli/index.html#authentication).