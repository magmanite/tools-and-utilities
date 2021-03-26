## JSON5 Parser ##
This is a CLI parser for JSON 5.\
It is a simple wrap for JQ.

# Install
You can use the Docker image
```
cat some-file.json | docker run --rm -i magmanite/tool-json5 '.'
```

You can also copy convenience script shortcuts/jq5 to your bin directory
```
ln -s "$(pwd)/shortcuts/jq5" /usr/local/bin/
```

# Manual
See [JQ manual](https://stedolan.github.io/jq/manual/) for filters.

# Resources
* [jq lightweight JSON processor](https://stedolan.github.io/jq/)
* [JSON5 parser](https://json5.org/)
* [JSON5 Specifications](https://spec.json5.org/)

# Changelog
* **2021.03.26** This is initial version using node:alpine3.13 image.\
  Versions installed:
  * Node: alpine3.13
  * JSON5: 2.2.0,
  * jq: jq-master-v20200917-3811-g2b0a3891bf

