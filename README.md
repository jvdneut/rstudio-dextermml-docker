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
