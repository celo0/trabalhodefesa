## INSTALAÇÃO DO HELM DO FALCO
helm repo add falcosecurity https://falcosecurity.github.io/charts 
helm repo update 
helm install --replace falco --namespace falco --create-namespace --set tty=true falcosecurity/falco


## Atualizar o falco  com os arquivos  
helm upgrade --namespace falco falco falcosecurity/falco -f falco_custom_rules.yaml -f values.yaml


## instalar falco talon
helm install falco-talon falcosecurity/falco-talon -n falco -f talon/values.yaml



## redirecto porta sidekick ui
kubectl -n falco port-forward svc/falco-falcosidekick-ui 2802 
