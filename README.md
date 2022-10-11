# tf-ec2-ssm-lab

Alternative of connecting to instance with SSM instead of SSH
https://docs.aws.amazon.com/systems-manager/latest/userguide/session-manager-prerequisites.html

#### Prerequisites
````
brew install session-manager-plugin
````
#### CLI command
```sh
aws ssm start-session --target <INSTANCE-ID>
```