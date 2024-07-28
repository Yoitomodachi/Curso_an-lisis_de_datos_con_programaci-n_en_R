# Autor: ROberto Rico Sandoval.
# Fille: Práctica sobre gráficas en ggplot y salvado de los mismos.
# Date: 24/ 07/ 2024
# Language: R.

library(ggplot2)
library(palmerpenguins)
data("penguins")
data("diamonds")

hotel_bookings = read.csv("hotel_bookings.csv")
names(hotel_bookings)
View(hotel_bookings)

# Generar gráficas de barras separadas de la columan market_segment.
# En donde, se dividan según el tipo de hotel que presenten.
# Generar una etiqueta de tipo título.

ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = market_segment)) +
  facet_wrap(~hotel)+
  labs(title = "Comparison of market segments for type hotel")

# Mostrar el valor mínimo y máximo de la columna arrival_date_year.

min(hotel_bookings$arrival_date_year)
max(hotel_bookings$arrival_date_year)

minDateYear = min(hotel_bookings$arrival_date_year)
maxDateYear = max(hotel_bookings$arrival_date_year)

# Agregar un subtítulo.

ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = market_segment)) +
  facet_wrap(~hotel)+
  labs(title = "Comparison of market segments for type hotel",
       subtitle = paste0("Data from: ", minDateYear, " to ", maxDateYear))

# El atributo caption para nombrar el eje x e y , 
ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = market_segment)) +
  facet_wrap(~hotel)+
  labs(title = "Comparison of market segments for type hotel",
       caption = paste0("Data from: ", minDateYear, " to ", maxDateYear),
       x="Market Segment", y="Number of Bookings")

# Salvar el último gráfico construido.
ggsave("hotel_bookings_chart.png")

# Modificar el tamaño de la imagen guardada como gráfico.
ggsave("hotel_bookings_charte.png",
       width = 15,
       height = 8)

#--------------------
ggplot(data = penguins) +
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g)) +
  labs(title = "Penguins")

ggsave("Penguins.png")

ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, alpha = species))

ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = color, fill = cut)) +
  facet_wrap(~ color)+
  ggsave("Distribución_por_color.png")


