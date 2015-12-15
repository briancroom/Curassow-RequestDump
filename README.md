# Curassow-RequestDump

This is a Swift demo web app which uses the [Curassow](https://github.com/kylef/Curassow) web server. It responds to HTTP requests by sending back a summary of the contents of the request.

It can be built and run on OS X and Linux using a Swift 2.2 toolchain from [Swift.org](https://swift.org/download). See [this repo](https://github.com/kylef/Curassow-example-helloworld) for more usage details.

## Deployment

This app is compatible with the [Swift buildpack](https://github.com/cloudfoundry-community/swift-buildpack) and can be deployed to Cloud Foundry with a simple `cf push` command.
