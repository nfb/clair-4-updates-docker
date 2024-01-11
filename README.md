# Clair 4 bundled updates

This repo builds a clair4 based image with output of clairctl --export-updaters into /updates/ of the container to allow simple impex of definitions.
The process of uploading these definitions can take +30Minutes due to the work done on the clair side so is not a suitable replacement in a CI pipeline for arminc/clair-local-scan


