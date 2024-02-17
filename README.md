# RStudio server with dexterMML

Easy way to install [RStudio server](https://www.rstudio.com) with [dexterMML](https://github.com/dexter-psychometrics/dexterMML).

To run, simply:
1. Install [Docker](https://www.docker.com)
2. Run `docker-compose up` to start RStudio server. First run will take a while.
3. Open your browser to <http://localhost:8787>
4. Log in using username `rstudio` and password `password`

To set up a different password modify the `.env` file with the following contents:

```
PASSWORD=your-password-here
```

The `data` sub-folder is shared with the docker image.

## Publish steps
```sh
docker build -t jvdneut/rstudio-dextermml-amd64:latest .
docker push jvdneut/rstudio-dextermml-amd64:latest

docker build -t jvdneut/rstudio-dextermml-arm64:latest .
docker push jvdneut/rstudio-dextermml-arm64:latest

docker manifest create jvdneut/rstudio-dextermml:latest \
jvdneut/rstudio-dextermml-amd64 \
jvdneut/rstudio-dextermml-arm64
docker manifest push jvdneut/rstudio-dextermml:latest
```
