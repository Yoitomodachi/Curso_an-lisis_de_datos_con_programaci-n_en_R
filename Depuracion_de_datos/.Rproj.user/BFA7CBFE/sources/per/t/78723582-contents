# Autor: Roberto Rico Sandoval.
# Fille: Ordenamiento de datos.
# Date: 18/ 07/ 2024

# Ordenar por picos inferiores en un tibble.
penguins %>% 
  arrange(bill_length_mm)

# Ordenar por picos mayores en un tibble.
penguins %>% 
  arrange(-bill_length_mm)

# Almacenar el tibble.
penguins2 = penguins %>% arrange(-bill_length_mm)
View(penguins2)

# Agrupación y promedio, y excluir datos de tipo NaN.
# drop_na eliminara filas que contengan valores NaN.
penguins %>% group_by(island) %>% drop_na() %>% summarise(mean_bill_length_mm = mean(bill_length_mm))

# Ahora con valores máximos.
penguins %>% group_by(island) %>% drop_na() %>% summarise(max_bill_length_mm = max(bill_length_mm))

# Ahora con 2 columnas.
penguins %>% group_by(species,island) %>% drop_na() %>% summarise(max_bl = max(bill_length_mm), mean_bl = mean(bill_length_mm))

# filtrar el data frame por el valor Adelie.
penguins %>% 
  drop_na %>% 
  filter(species == "Adelie")

