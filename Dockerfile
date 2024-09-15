#    This file is part of otero-garcia-2022-ssRNAseq.
#    Copyright (C) 2024  Emir Turkes, UK DRI at UCL
#
#    This program is free software: you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation, either version 3 of the License, or
#    (at your option) any later version.
#
#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#
#    You should have received a copy of the GNU General Public License
#    along with this program.  If not, see <http://www.gnu.org/licenses/>.
#
#    Emir Turkes can be contacted at emir.turkes@eturkes.com

FROM rocker/rstudio:4.3.3

LABEL org.opencontainers.image.authors="Emir Turkes emir.turkes@eturkes.com"

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        libglpk40 \
        zlib1g-dev \
        libhdf5-dev \
        patch \
    && Rscript -e "install.packages('rmarkdown')" \
        -e "install.packages('stringr')" \
        -e "install.packages('conflicted')" \
        -e "install.packages('Seurat')" \
        -e "install.packages('viridis')" \
        -e "install.packages('DT')" \
        -e "install.packages('hdf5r')" \
        -e "install.packages('flexdashboard')" \
        -e "install.packages('networkD3')" \
        -e "install.packages('BiocManager')" \
        -e "BiocManager::install('glmGamPoi')" \
        -e "BiocManager::install('GSEABase')" \
        -e "BiocManager::install('scuttle')" \
        -e "BiocManager::install('edgeR')" \
        -e "BiocManager::install('GSVA')" \
        -e "BiocManager::install('biomaRt')" \
        -e "BiocManager::install('IHW')" \
        -e "BiocManager::install('ComplexHeatmap')" \
    && apt-get clean \
    && rm -Rf /var/lib/apt/lists/ \
        /tmp/downloaded_packages/ \
        /tmp/*.rds
