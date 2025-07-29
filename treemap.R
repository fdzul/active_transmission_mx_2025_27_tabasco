
# Step 1. definir el path #### 
path_dengue <- "/Users/felipedzul/Library/CloudStorage/OneDrive-Personal/datasets/DGE/denv/2025/DENGUE2_.txt"

# Step 2. sunir la base ####
x <- data.table::fread(input = path_dengue,
                       encoding = "Latin-1",
                       quote="",
                       fill=TRUE)

# Step 3. visualizar los casos por municipio ####
densnv::mp_treemap(country = FALSE,
                   year = 2025,
                   cve_edo = "11",
                   snv_dataset = x)
