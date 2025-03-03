# panbuild
Scripts and templates for Pandoc processes

Input file is assumed to be Markdown, so no extension required.

## Dependencies
- `pandoc>=2.14`
- `texlive-xetex`
- `texlive-base`
- `markdown`

To install all dependencies copy and paste the following:
```
sudo apt install pandoc texlive-xetex texlive-base
```

## Usage

```
./panbuild-work.sh {INPUT_FILE} {OUTPUT_FORMAT}
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
email_address:  ashar@kpmpower.com
title:          Microchip MCP4822
subtitle:       HAL and Driver Documentation
org_name:       My Company
org_motto:      The motto or something
##############################################
# Only 1 of the following 3 lines can be true
formal_report:  true
documentation:  true
kpmreport:      true
#############################################
draft:          true
toc:            true
lof:            true
lot:            true
grayscale:      true
---
```
