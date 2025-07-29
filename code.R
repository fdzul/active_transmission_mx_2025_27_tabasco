
library(sf)
mapview::mapviewOptions(default = TRUE,
                        basemaps.color.shuffle = FALSE)
load("/Users/felipedzul/OneDrive/proyects/geocoding_mex/2025/8.RData/denmex_2025.RData")
library(magrittr)


villa <- denhotspots::transmission_chains_map(geocoded_dataset = z,
                                     cve_edo = "27",
                                     locality = "Villahermosa",
                                     dengue_cases = "Probable")


villa_heatmap <- densnv::mp_heatmap(geocoded_datasets = z,
                                    cve_edo = "27",
                                    locality = "Villahermosa",
                                    status_caso = c(1, 2),
                                    week = c(1:53),
                                    zoom = NULL,
                                    map_type = NULL,
                                    alpha = 0.6,
                                    static = FALSE,
                                    palette = viridis::turbo)

save(villa, villa_heatmap,
     file = "villa.RData")
