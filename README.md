# Docker image with Elixir and FDK-AAC

This Docker image is based on Elixir image, but adds a custom installation of [FKD-AAC](https://github.com/mstorsjo/fdk-aac) library, built from sources.
This is necessary because Ubuntu packages do not contain the latest (2.0.0) version of the FDK-AAC.

## Building the image
To rebuild the image, run the following command:
```
make build
```

Optionally, one can add the following variables:
* `VERSION=string`, which adds the version tag (for example, `1.1.1`)
* `IMAGE=name`, which will override the default image name. If not specified, this is set to `membrane/elixir-fdk-aac`

## Sample usage

Execute the following command while being in you app's directory:

```sh
docker run -it --rm -v `pwd`:/app membrane/elixir-fdk-aac /bin/bash
```

Inside the container, change the directory to the application's directory:
```sh
cd /app
```

Execute you app's code (for example tests)
```sh
mix test
```

# Authors

[Krzysztof Ciombor](https://github.com/krzysztofciombor)

# Copyright and License

Copyright 2018, [Software Mansion](https://swmansion.com/?utm_source=git&utm_medium=readme&utm_campaign=react-native-docker-android)

[![Software Mansion](https://membraneframework.github.io/static/logo/swm_logo_readme.png)](https://swmansion.com/?utm_source=git&utm_medium=readme&utm_campaign=react-native-docker-android)

Licensed under the [Apache License, Version 2.0](LICENSE)
