# Autor: Roberto Rico Sandoval.
# Fille: Penguins y depuración.
# Date: 18/ 07/ 2024

penguins %>%
  select(species)

# Excluir la columna especies.
penguins %>%
  select(-species)

# Renombrar una columna.
penguins %>% 
  rename(island_new = island)

# Cambiar los nombres de las columnas a mayusculas.
rename_with(penguins,toupper)

# Depurar los strings, para que solo haya números, letras, y guiones bajos.
clean_names(penguins)

