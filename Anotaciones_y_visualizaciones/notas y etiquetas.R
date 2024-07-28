# Autor: Roberto RIco Sandoval.
# Fille: Creación de etiquetas de texto y anotaciones.
# Date: 23/ 07/ 2024
# Language: R.

# Se pueden generar etiquetas en ggplot mediane la función label()

library(ggplot2)
library(palmerpenguins)

data("penguins")

# Se puede generar un titulo y un subtitulo mediante la etiqueta title() y subtitle()
# Se puede generar un pue de página mediante el atributo caption() de la función label.
# Se puede agregar una nota mediante la función annotate.
# Se utiliza el atributo color en anotaciones y etiquetas para cambiar el color del texto.
# Se utiliza el atributo size para redimensionar el tamaño del texto.
# Se utiliza el atributo bold para hacer negrita la letra.

ggplot(data = penguins) +
  geom_point(mapping = aes(x=flipper_length_mm, y=body_mass_g, colour = species))+
  labs(title = "Palmer Penguins: Masa corporal VS Tamaños de aletas", subtitle = "Tres especies de pinguinos estudiados.",
       caption = "Data Collecte by Dr. Kristen GOrman")+
  annotate("text", x=218, y=3000, label="The Gentoos are the largest!", color = "purple",
           size = 2.5, fontface = "bold")

# Almacenar el gráfico en una variable.

diagrama1 = ggplot(data = penguins) +
  geom_point(mapping = aes(x=flipper_length_mm, y=body_mass_g, colour = species))+
  labs(title = "Palmer Penguins: Masa corporal VS Tamaños de aletas", subtitle = "Tres especies de pinguinos estudiados.",
       caption = "Data Collecte by Dr. Kristen GOrman")+
  annotate("text", x=218, y=3000, label="The Gentoos are the largest!", color = "purple",
           size = 2.5, fontface = "bold")

# Guardar un gráfico mediante la función ggsave().
# Esta función guarda el último gráfico creado en el IDE.

ggsave("Tres especies de pinguinos.png")

