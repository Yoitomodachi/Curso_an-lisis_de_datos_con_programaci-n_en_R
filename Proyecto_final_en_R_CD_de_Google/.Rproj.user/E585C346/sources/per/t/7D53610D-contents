# Autor: Roberto Rico Sandoval.
# Proyecto final en R.
# Date: 26/ 07/ 2024
# Language: R.

library(tidyverse)

# Visualización de datos.
bars_df = read.csv("flavors_of_cacao.csv")
glimpse(bars_df)
head(bars_df)
colnames(bars_df)
View(bars_df)

# Renombrar columnas.
bars_df %>% 
  rename(Brand = Company...Maker.if.known.)
  colnames(bars_df)
  View(bars_df)

# Generación de subconjunto de datos tibble.

trimmed_flavors_df = bars_df %>% 
  select(Rating, Cocoa.Percent, Company.Location,Company...Maker.if.known.)
View(trimmed_flavors_df)

# Promedio en summarize().

trimmed_flavors_df %>% 
  summarise(trimmed_flavors_df = sd(Rating, na.rm = TRUE))

# Filtrado de datos.
best_trimmed_flavors_df  = trimmed_flavors_df %>% 
  filter(Cocoa.Percent >= "80%" & Rating >= 3.75)
View(best_trimmed_flavors_df)

# Generar un gráfico de barras basado en Rating DF BetrFl
ggplot(data = best_trimmed_flavors_df)+
  geom_bar(mapping = aes(x = Company.Location, alpha = 0.5, fill = Rating))

# Separación de diagramas por columnas con face_wrap().
ggplot(data = best_trimmed_flavors_df)+
  geom_bar(mapping = aes(x = Rating))+
  facet_wrap(~Rating)

# Gráfico de dispersión con título.
# Guardar gráfico en formato jpeg.
ggplot(data = trimmed_flavors_df)+
  geom_point(mapping = aes(x = Cocoa.Percent, y = Rating))+
  labs(title = "Best Chocolates")
  ggsave("Chocolate.jpeg")

  
install.packages("tinytex")
tinytex::install_tinytex()
  
  