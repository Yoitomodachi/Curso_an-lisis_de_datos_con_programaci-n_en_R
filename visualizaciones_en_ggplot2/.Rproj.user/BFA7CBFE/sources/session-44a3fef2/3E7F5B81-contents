# Autor: ROberto Rico Sandoval.
# Fille: ggplot gráficos.
# Date: 21/ 07/ 2024
# Language: R

library(ggplot2)
library(palmerpenguins)
data("penguins")

# Creación de gráfico de dispersión.
ggplot(data = penguins) + geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g))

hotel_bookings = read.csv("hotel_bookings.csv")
names(hotel_bookings)
head(hotel_bookings)

ggplot(data = hotel_bookings) + geom_point(mapping = aes(x = lead_time, y = children))

ggplot(data = hotel_bookings) + geom_point(mapping = aes(x = stays_in_weekend_nights, y = children))

penguins %>% 
  filter(species == "Adelie")

penguins %>%
  
  drop_na() %>% 
  
  group_by(species) %>%
  
  summarize(max_flipper_length = max(flipper_length_mm, na.rm = TRUE))

str(penguins)
unique(penguins$species)
