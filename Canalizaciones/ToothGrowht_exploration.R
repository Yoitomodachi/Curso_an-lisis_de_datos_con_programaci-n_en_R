# Autor: Roberto Rico Sandoval.
# Fille: Canalizaciones.
# Date: 18/ 07/ 2024
# Language: R

# Agregar data de R.
data("ToothGrowth")

# Visualizar el data frame.
View(ToothGrowth)

# Creación de un filtro, solo mostrar valores donde la columna dose sea igual a 0.5
filtro = filter(ToothGrowth, dose == 0.5)
View(filtro)

# Reordenar la tabla de forma ascendente por la función arrange.
# Acomodo con argumento basado en la columna len.
arrange(filtro, len)

# Filtrar y reordenar desde una función anidada.
arrange(filter(ToothGrowth, dose == 1.0))

# Para indicar una canalización utilizamos el operador %>%
# En atajo para canalizar es Ctrl + Shift + m
# La canalización hará lo mismo que una función anidadad con un filtro y ordenamiento.
filtro_canalizado = ToothGrowth %>%
  filter(dose == 0.5) %>%
  group_by(supp) %>%
  summarise(mean_lean = mean(len, na, rm = T),.groups = "drop")

