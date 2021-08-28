build: clean kuma-demo.yaml

kuma-demo.yaml: clean/kuma-demo.yaml
	kustomize build clean > $@

clean/kuma-demo.yaml:
	curl -sSL https://bit.ly/demokuma >  $@

.PHONY: clean
clean:
	rm -f clean/kuma-demo.yaml
