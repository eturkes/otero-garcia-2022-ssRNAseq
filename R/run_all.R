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

# This script runs all files in the analysis.
# Sections can be commented out as needed.

setwd(dirname(parent.frame(2)$ofile)) # Move to location of this file.

xfun::Rscript_call(
  rmarkdown::render,
  list(
    file.path("individual", "1_MAP2_01prep.Rmd"),
    output_file = file.path(
      "..", "..", "results", "individual", "1_MAP2_01prep.html"
    ),
    envir = new.env()
  )
)
xfun::Rscript_call(
  rmarkdown::render,
  list(
    file.path("individual", "2_MAP2_01prep.Rmd"),
    output_file = file.path(
      "..", "..", "results", "individual", "2_MAP2_01prep.html"
    ),
    envir = new.env()
  )
)
xfun::Rscript_call(
  rmarkdown::render,
  list(
    file.path("individual", "3_MAP2_01prep.Rmd"),
    output_file = file.path(
      "..", "..", "results", "individual", "3_MAP2_01prep.html"
    ),
    envir = new.env()
  )
)
xfun::Rscript_call(
  rmarkdown::render,
  list(
    file.path("individual", "4_MAP2_01prep.Rmd"),
    output_file = file.path(
      "..", "..", "results", "individual", "4_MAP2_01prep.html"
    ),
    envir = new.env()
  )
)
xfun::Rscript_call(
  rmarkdown::render,
  list(
    file.path("individual", "5_MAP2_01prep.Rmd"),
    output_file = file.path(
      "..", "..", "results", "individual", "5_MAP2_01prep.html"
    ),
    envir = new.env()
  )
)
xfun::Rscript_call(
  rmarkdown::render,
  list(
    file.path("individual", "6_MAP2_01prep.Rmd"),
    output_file = file.path(
      "..", "..", "results", "individual", "6_MAP2_01prep.html"
    ),
    envir = new.env()
  )
)
xfun::Rscript_call(
  rmarkdown::render,
  list(
    file.path("individual", "7_MAP2_01prep.Rmd"),
    output_file = file.path(
      "..", "..", "results", "individual", "7_MAP2_01prep.html"
    ),
    envir = new.env()
  )
)
xfun::Rscript_call(
  rmarkdown::render,
  list(
    file.path("individual", "8_MAP2_01prep.Rmd"),
    output_file = file.path(
      "..", "..", "results", "individual", "8_MAP2_01prep.html"
    ),
    envir = new.env()
  )
)
xfun::Rscript_call(
  rmarkdown::render,
  list(
    file.path("individual", "1_AT8_01prep.Rmd"),
    output_file = file.path(
      "..", "..", "results", "individual", "1_AT8_01prep.html"
    ),
    envir = new.env()
  )
)
xfun::Rscript_call(
  rmarkdown::render,
  list(
    file.path("individual", "2_AT8_01prep.Rmd"),
    output_file = file.path(
      "..", "..", "results", "individual", "2_AT8_01prep.html"
    ),
    envir = new.env()
  )
)
xfun::Rscript_call(
  rmarkdown::render,
  list(
    file.path("individual", "3_AT8_01prep.Rmd"),
    output_file = file.path(
      "..", "..", "results", "individual", "3_AT8_01prep.html"
    ),
    envir = new.env()
  )
)
xfun::Rscript_call(
  rmarkdown::render,
  list(
    file.path("individual", "4_AT8_01prep.Rmd"),
    output_file = file.path(
      "..", "..", "results", "individual", "4_AT8_01prep.html"
    ),
    envir = new.env()
  )
)
xfun::Rscript_call(
  rmarkdown::render,
  list(
    file.path("individual", "5_AT8_01prep.Rmd"),
    output_file = file.path(
      "..", "..", "results", "individual", "5_AT8_01prep.html"
    ),
    envir = new.env()
  )
)
xfun::Rscript_call(
  rmarkdown::render,
  list(
    file.path("individual", "6_AT8_01prep.Rmd"),
    output_file = file.path(
      "..", "..", "results", "individual", "6_AT8_01prep.html"
    ),
    envir = new.env()
  )
)
xfun::Rscript_call(
  rmarkdown::render,
  list(
    file.path("individual", "7_AT8_01prep.Rmd"),
    output_file = file.path(
      "..", "..", "results", "individual", "7_AT8_01prep.html"
    ),
    envir = new.env()
  )
)
xfun::Rscript_call(
  rmarkdown::render,
  list(
    file.path("individual", "8_AT8_01prep.Rmd"),
    output_file = file.path(
      "..", "..", "results", "individual", "8_AT8_01prep.html"
    ),
    envir = new.env()
  )
)
