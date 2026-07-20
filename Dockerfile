FROM rocker/r-ver:4.6.1
LABEL maintainer="brueckmann"
RUN apt-get update -y && \
    apt-get install -y --no-install-recommends cmake libfontconfig1-dev libfreetype6-dev libfribidi-dev git make libharfbuzz-dev libcurl4-openssl-dev libicu-dev libjpeg-dev libpng-dev libtiff-dev libuv1-dev libwebp-dev libxml2-dev libssl-dev pandoc libx11-dev zlib1g-dev && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
RUN R -e "install.packages(c('backports', 'bit', 'bit64', 'cachem', 'checkmate', 'cli', 'crayon', 'curl', 'data.table', 'dataverse', 'digest', 'dplyr', 'estimatr', 'evaluate', 'farver', 'fastmap', 'forcats', 'Formula', 'generics', 'ggplot2', 'glue', 'gtable', 'haven', 'hms', 'htmltools', 'httr', 'insight', 'jsonlite', 'knitr', 'labeling', 'lifecycle', 'lubridate', 'magrittr', 'memoise', 'modelsummary', 'otel', 'pillar', 'pkgconfig', 'purrr', 'R6', 'RColorBrewer', 'Rcpp', 'readr', 'remotes', 'rlang', 'rprojroot', 'rstudioapi', 'S7', 'scales', 'stringi', 'stringr', 'tables', 'this.path', 'tibble', 'tidyr', 'tidyselect', 'tidyverse', 'timechange', 'tinytable', 'tzdb', 'vctrs', 'vroom', 'withr', 'xfun'), repos='https://cloud.r-project.org/')"

