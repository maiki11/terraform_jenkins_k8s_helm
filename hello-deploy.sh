## Copyright © 2022, Oracle and/or its affiliates. 
## All rights reserved. The Universal Permissive License (UPL), Version 1.0 as shown at http://oss.oracle.com/licenses/upl

#!/bin/bash
sudo runuser -l opc -c "kubectl create secret docker-registry secret --docker-server=sjc.ocir.io --docker-username='axwrtlp0n4xv/miguel@doorcounts.com' --docker-password='Us1+K(iJo5y18b+hI9mY' --docker-email='miguel@doorcounts.com'"
sudo runuser -l opc -c "sudo docker login -u 'axwrtlp0n4xv/miguel@doorcounts.com' -p 'Us1+K(iJo5y18b+hI9mY' sjc.ocir.io"
sudo runuser -l opc -c 'kubectl apply -f /var/lib/jenkins/hello.yml'