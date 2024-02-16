package next

import (
	"alpha.dagger.io/dagger"
	"alpha.dagger.io/docker"
)

dockerSocket: dagger.#Stream & dagger.#Input

run: docker.#Run & {
	ref:  image.ref
	name: "next"
	ports: ["3000:3000"]
	socket: dockerSocket
}

url: "http://localhost:5000/" & dagger.#Output
