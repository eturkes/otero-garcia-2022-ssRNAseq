# Otero-Garcia 2022 ssRNAseq
#### *This analysis is a work-in-progress.*

```
This file is part of otero-garcia-2022-ssRNAseq.
Copyright (C) 2024-2025  Emir Turkes, UK DRI at UCL

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.

Emir Turkes can be contacted at emir.turkes@eturkes.com
```

Other than the raw data, this repo contains everything needed to reproduce the analysis.

To obtain the raw data and pre-computed results, please download this Dropbox folder:  
[https://www.dropbox.com/scl/fo/dx1xmpdvq8paam9ujrte3/AMUozK4aieT9fLPaCxHQsj0?rlkey=k1f74ght8299gz87pxjbuc3sb&st=uqccic97&dl=0](https://www.dropbox.com/scl/fo/dx1xmpdvq8paam9ujrte3/AMUozK4aieT9fLPaCxHQsj0?rlkey=k1f74ght8299gz87pxjbuc3sb&st=uqccic97&dl=0)  
The folder called `otero-garcia-2022-ssRNAseq` should then be renamed `storage` and placed in the top-level of this project.

For reproducibility, we provide several options for replicating the environment used in the original analysis:

### 1. Docker

This approach requires Docker installation and setup [https://www.docker.com/](https://www.docker.com/).  
The simplest command is to run `run_all.R` non-interactively with the following:

```
docker-compose up all
```

If one wishes to use RStudio, first create a `.env` file with the port you would like to use, as so:

```
PORT=8787
```

Then open RStudio with:

```
docker-compose up rstudio
```

If the Docker container is being launched on a remote machine, an SSH tunnel like the one below will be needed:

```
ssh -N -L 8787:localhost:8787 user@ip-address
```

### 2. Singularity

This approach is similar to using Docker except with a Singularity wrapper to meet the security requirements common in high-performance computing (HPC).  
Similar to before, `run_all.R` is called non-interactively with:

```
sh ./singularity.sh all
```

To use RStudio, no `.env` file is needed, it is instead included in the command:

```
sh ./singularity.sh rstudio 8787
```

As before, an SSH tunnel is required if connecting remotely.
