# Autor: Roberto Rico Sandoval.
# Date: 24/ 07 2024
# Fille: Gráficos.
# Language: R.

library(ggplot2)
data("mtcars")

head(mtcars)
names(mtcars)
View(mtcars)

P = ggplot(data = mtcars) + geom_point(mapping = aes(x = wt, y = mpg)) + annotate("text", x = 4, y = 25, label = "Cars")

# Texto consecutivo en X.

p1 = ggplot(data = mtcars) + geom_point(mapping = aes(x = wt, y = mpg)) + annotate("text", x = 2:5, y = 25, label = "Cars")

# Creación de un cuadrado sobre el gráfico

p2 = ggplot(data = mtcars) + geom_point(mapping = aes(x = wt, y = mpg)) + annotate("rect", xmin = 3, xmax = 4.2, ymin = 12, ymax = 21, alpha = .5, fill = "red", color = "black")

# Dibujar una línea de dirección.

p3 = ggplot(data = mtcars) + geom_point(mapping = aes(x = wt, y = mpg)) + annotate("segment", x = 2.5, xend = 4, y = 15, yend = 25, color = "blue")

# Dibujar una línea de dirección con punto medio.
# Size para el tamaño del punto.
# linewith para el grosor de la línea.

p4 = ggplot(data = mtcars) + geom_point(mapping = aes(x = wt, y = mpg)) + annotate("pointrange", x = 3.5, y = 20, ymin = 12, ymax = 28, color = "yellow", size = 2, linewidth = 1.5)

# Anotación cientifica.

p5 = ggplot(data = mtcars) + geom_point(mapping = aes(x = wt, y = mpg)) + annotate("text", x = 4, y = 25, label = "italic(R) ^ 2 == 0.75", parse = TRUE)

# Anotación cientifica any zero.

p6 = ggplot(data = mtcars) + geom_point(mapping = aes(x = wt, y = mpg)) + annotate("text", x = 4, y = 25, label = "paste(italic(R) ^ 2, \"= .75\")", parse = TRUE)

# Creación de una flecha o rayo.

ggplot(data = mtcars) + geom_point(mapping = aes(x = wt, y = mpg)) + annotate("segment", x = 2, xend = 4, y = 15, yend = 25, colour = "pink", size=3, alpha=0.6, arrow=arrow())

# Creación de líneas interceptadas.
# geom_hline para líneas horizontales.
# geom_vline para líneas verticales.

ggplot(data = mtcars) + geom_point(mapping = aes(x = wt, y = mpg)) + geom_hline(yintercept=25, color="orange", size=1) + geom_vline(xintercept=3, color="orange", size=1)

