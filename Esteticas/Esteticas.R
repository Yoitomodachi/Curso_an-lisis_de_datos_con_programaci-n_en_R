# Autor: Roberto Rico Sandoval.
# Fille: Estéticas en gráficos de R.
# Date: 23/ 07/ 2024
# Language: R

library(ggplot2)
library(dplyr)

hotel_book = read.csv("hotel_bookings.csv")

# Generar una gráfica de barras.
ggplot(data = hotel_bookings) + 
  geom_bar(mapping = aes(x = distribution_channel))
  + labs(title = "Tipos de reservaciones()")

# Generar una gráfica de barras coloreada.
ggplot(data = hotel_bookings) + 
  + geom_bar
    (mapping = 
        aes(x = distribution_channel, fill = deposit_type))

# Segmentar por mercado.
ggplot(data = hotel_bookings) +
  geom_bar(mapping = 
      aes(x = distribution_channel, fill=market_segment))

# Dibvidir las gráficas por valores contenidos en la columna.
ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = distribution_channel)) +
  facet_wrap(~deposit_type)

ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = distribution_channel)) +
  facet_wrap(~market_segment)

# La función face_grid hace lo mismo que face_wrap.
# Solo que face_grid agrega a los valores NaN y vacíos en un apartado.
# Face_wrap omite estos espacios.
ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = distribution_channel)) +
  facet_grid(~deposit_type)

 
ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = distribution_channel)) +
  facet_wrap(~deposit_type~market_segment)

