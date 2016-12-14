# Lecture des données
library(readr)
Taille_Marrons <- read_delim("~/Professionnel/Ingénieur/Projets/LesNutella-TSE/Informations/Taille_Marrons.csv", 
                             ";", escape_double = FALSE, col_names = FALSE, 
                             trim_ws = TRUE)

# Tracé  de l'histogramme sur les longueurs avec ses paramètres
hist(Taille_Marrons$X2,
     main = "Dimensions des marrons",
     xlab = "Taille en mm",
     ylab = "Nombre de marrons",
     col = rgb(0,0,1,0.5)
)
axis(side= 1, at=seq(21,36, 1), labels=seq(21,36, 1))

# Écriture de la légende
legend("topright", legend="Largeur", col=rgb(0,0,1,0.5), pt.cex=2, pch=15)

# Écriture de la moyenne
lines( c(mean(Taille_Marrons$X2),mean(Taille_Marrons$X2)), c(0,15), col = "blue", lwd = 2)
text(mean(Taille_Marrons$X2) + 5, 5, "Moyenne = 28.455", cex = 2)