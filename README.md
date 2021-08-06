# panbuild
Scripts and templates for Pandoc processes

Input file is assumed to be Markdown, so no extension required. 

## Usage

```
./panbuild.sh {INPUT_FILE} {OUTPUT_FORMAT}
```

## Header Requirements

### School

```yaml
---
author:         Ashar Latif
studentnum:     215178734
title:          Microchip MCP4822 
subtitle:       HAL and Driver Documentation
classnum:       EECS3215
classname:      Embedded Systems
##############################################
# Only 1 of the following 3 lines can be true
labreport:      true
documentation:  true
homework:       true
#############################################
toc:            true
lof:            true
lot:            true
---
```

### Professional

```yaml
---
author:         Ashar Latif
title:          Microchip MCP4822 
subtitle:       HAL and Driver Documentation
classnum:       EECS3215
project_name:   Embedded Systems
labreport:      true
toc:            true
lof:            true
lot:            true
---
```
