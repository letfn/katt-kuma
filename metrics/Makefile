build: clean kuma-metrics.yaml

kuma-metrics.yaml: clean/kuma-metrics.yaml
	kustomize build clean > $@

clean/kuma-metrics.yaml:
	kumactl install metrics > clean/kuma-metrics.yaml

.PHONY: clean
clean:
	rm -f clean/kuma-metrics.yaml
