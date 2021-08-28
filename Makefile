build: clean kuma.yaml

kuma.yaml: clean/kuma.yaml
	kustomize build clean > $@

clean/kuma.yaml: values.yaml
	-helm repo add kuma https://kumahq.github.io/charts
	helm repo update
	helm template kuma kuma/kuma --version 0.7.0 --namespace=kuma-system --values=values.yaml > $@

.PHONY: clean
clean:
	rm -f clean/kuma.yaml
