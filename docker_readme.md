## docker_readme Ref:https://github.com/docker/docker.github.io/blob/master/develop/develop-images/dockerfile_best-practices.md

		*FROM ubuntu:18.04
		COPY . /app
		RUN make /app
		CMD python /app/app.py


		* Each instruction creates 1 layer:
		* FROM creates a layer from the ubuntu:18.04 Docker image.
		* COPY adds files from your Docker client's current directory.
		* RUN builds your application with make.
		* CMD specifies what command to run within the container.