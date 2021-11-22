package boot

import (
	"github.com/defn/boot"
)

repo: boot.#Repo & {
	repo_name:     "katt-kuma"
	chart_repo:    "https://kumahq.github.io/charts"
	chart_name:    "kuma"
	chart_version: "0.8.0"
	install:       "kuma"
	namespace:     "kuma-system"
	variants: {
		global: values: {
			controlPlane: mode: "global"
		}
		zone: values: {
			controlPlane: {
				mode:             "zone"
				zone:             "TODO"
				kdsGlobalAddress: "grpcs://100.100.100.100:5685"
			}
			ingress: enabled: true
		}
	}
}
