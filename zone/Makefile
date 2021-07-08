kuma.yaml: clean/kuma.yaml
	kustomize build clean > $@

clean/kuma.yaml: values.yaml
	-helm repo add kuma https://kumahq.github.io/charts
	helm repo update
	helm template kuma kuma/kuma --version 0.6.1 --namespace=kuma-system --values=values.yaml > $@
