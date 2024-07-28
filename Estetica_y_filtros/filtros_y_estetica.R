# Autor: Roberto Rico Sandoval.
# Fille: Estética y filtros.
# Date: 23/ 07/ 2024
# Language: R.

library(ggplot2)
library(dplyr)
library(tidyverse)

hotel_bookings = read.csv("hotel_bookings.csv")

head(hotel_bookings)
names(hotel_bookings)

# Diagrama de dispersión.
ggplot(data = hotel_bookings) + geom_point(mapping = aes(x = lead_time, y = children))

# Gráfico de barras separado por mercados.
ggplot(data = hotel_bookings) + geom_bar(mapping = aes(x=hotel, fill = market_segment))

# Separar a los mercados agrupados.
ggplot(data = hotel_bookings) + geom_bar(mapping = aes(x=hotel)) + facet_wrap(~market_segment)

# Generar un sub data frame filtrado por variables condicionales y operadores lógicos.
only_city_hotel = filter(hotel_bookings, (hotel == "City Hotel" & hotel_bookings$market_segment == "Online TA"))
head(only_city_hotel)
View(only_city_hotel)

# Generar un sub data frame filtrado por canalizaciones.
only_city_hotel_V2 = hotel_bookings %>% 
  filter(hotel == "City Hotel") %>% 
  filter(market_segment == "Online TA")

head(only_city_hotel_V2)
View(only_city_hotel_V2)

# Nuevo gráfico con uno de los nuevos data frame.
ggplot(data = only_city_hotel) + geom_point(mapping = aes(x=lead_time, y=children))

# Mostrar el valor más bajo e lead_time.
tiempo_bajo = min(only_city_hotel$lead_time)
print(tiempo_bajo)

