#!/bin/bash

#$ -pe smp 6
#$ -q UI
#$ -m bea
#$ -M michelle-voss@uiowa.edu
#$ -e /Shared/vosslabhpc/Projects/CREST/code/xcp/xcp.err
#$ -o /Shared/vosslabhpc/Projects/CREST/code/xcp/xcp.out

singularity run -H /Users/mwvoss/singularity_home --cleanenv \
/Users/mwvoss/simgs/xcpEngine_v1.0.simg \
-d /Shared/vosslabhpc/Projects/CREST/code/xcp/fc-acompcor.dsn \
-c /Shared/vosslabhpc/Projects/CREST/code/xcp/cohort.csv \
-o /Shared/vosslabhpc/Projects/CREST/derivatives/xcp_output \
-t 1 -r /Shared/vosslabhpc/Projects/CREST/derivatives
