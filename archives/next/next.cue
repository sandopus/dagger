package next

import (
	"alpha.dagger.io/docker"
	"alpha.dagger.io/os"
)

image: os.#Container & {
	image: docker.#Pull & {
		from: "ghcr.io/sandopus/next:latest"
	}
}
