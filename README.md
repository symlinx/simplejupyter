# simplejupyter
A Docker image for Jupyter based on the official Python Docker image which offers the latest version of Jupyter

The slim version is the lightest one but doesn't include TeX distribution so some export features may not work.
Th full version incudes a full TeX distribution and supports all export features (PDF, TeX, LaTeX, Postscript)

## Build

You may build the slim and the full images by runing these comands :

```bash
docker build -t simplejupyter:slim build/slim/
docker build -t simplejupyter:full build/full/
```

## Run

TODO
