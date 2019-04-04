#!/bin/bash
# Converter script. Place ttf fonts in fonts/ directory and run this script.
# 
# Need ttf2woff and woff2_compressor in PATH.

for e in fonts/*.ttf; do
	ttf2woff $e ${e/.ttf/.woff}
	woff2_compress $e &
done
wait
