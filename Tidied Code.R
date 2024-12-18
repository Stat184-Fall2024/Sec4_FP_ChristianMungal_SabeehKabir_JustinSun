#Downloading Data & Packages
install.packages("tidyverse")
library(dplyr)
library("tidyverse")
#twenty23player <- read.csv("/Users/christianmungal/Desktop/STAT184/2023-24NBASTATS.csv")
#twenty20player <- read.csv("/Users/christianmungal/Desktop/STAT184/2020-21NBASTATS.csv")
#draft_class <- read.csv("/Users/christianmungal/Desktop/STAT184/2020DRAFTCLASS.csv")

twenty23player <- read.csv("C:/Users/sabeehk/Downloads/2023-24NBASTATS.csv")
twenty20player <- read.csv("C:/Users/sabeehk/Downloads/2020-21NBASTATS.csv")
draft_class <- read.csv("C:/Users/sabeehk/Downloads/2020DRAFTCLASS.csv")

#Getting the 2020 draft class stats from the 2020-2021 NBA Season
keep2020 <- c("Anthony Edwards", "James Wiseman", "Lamelo Ball", "Patrick Williams", "Issac Okoro", "Onyeka Okongwu", "Killian Hayes", "Obi Toppin", "Deni Avdija", "Jalen Smith", "Devin Vassell", "Tyrese Haliburton", "Kira Lewis Jr.", "Aaron Nesmith", "Cole Anthony", "Isaiah Stewart", "Aleksej Pokusevski", "Josh Green", "Saddiq Bey", "Precious Achiuwa", "Tyrese Maxey", "Zeke Nnaji", "Leandro Bolmaro", "R.J. Hampton", "Immanuel Quickley", "Payton Pritchard", "Udoka Azubuike", "Jaden Mcdaniels", "Malachi Flynn", "Desmond Bane", "Tyrell Terry", "Vernon Carey Jr.", "Daniel Oturu", "Théo Maledon", "Xavier Tillman Sr.", "Tyler Bey", "Vit Krejci", "Saben Lee", "Elijah Hughes", "Robert Woodard II", "Tre Jones", "Nick Richards", "Jahmi'us Ramsey", " Marko Simonovic", "Jordan Nwora", "CJ Elleby", "Yam Madar", " Nico Mannion", "Isaiah Joe", "Skylar Mays", "Justinian Jessup", "KJ Martin", "Cassius Winston", "Jay Scrubb", "Grant Riller", "Paul Reed", "Jalen Harris", "Sam Merrill")
twenty20_stats <- twenty20player %>%
  filter(Player %in% keep2020)
#Getting the 2020 draft class stats from the 2023-2024 NBA Season
twenty23_stats <- twenty23player %>%
  filter(NAME %in% keep2020)

library(dplyr)

#This is what i have so far

my_data <- read.csv("~/Desktop/2020-21NBASTATS.csv")
my_data2 <- read.csv("~/Desktop/2020DRAFTCLASS.csv")
my_data3 <- read.csv("~/Desktop/2023-24NBASTATS.csv")

my_data3 <- my_data3 %>%
  rename(Player = NAME)   # Change NAME to Player if needed

names_to_remove <- c(
  "Anthony Edwards", "James Wiseman", "LaMelo Ball", "Patrick Williams",
  "Isaac Okoro", "Onyeka Okongwu", "Killian Hayes", "Obi Toppin",
  "Deni Avdija", "Jalen Smith", "Devin Vassell", "Tyrese Haliburton",
  "Kira Lewis Jr.", "Aaron Nesmith", "Cole Anthony", "Isaiah Stewart",
  "Aleksej Pokusevski", "Josh Green", "Saddiq Bey", "Precious Achiuwa",
  "Tyrese Maxey", "Zeke Nnaji", "Leandro Bolmaro", "R.J. Hampton",
  "Immanuel Quickley", "Payton Pritchard", "Udoka Azubuike", "Jaden McDaniels",
  "Malachi Flynn", "Desmond Bane", "Tyrell Terry", "Vernon Carey Jr.",
  "Daniel Oturu", "Théo Maledon", "Xavier Tillman Sr.", "Tyler Bey",
  "Vit Krejci", "Saben Lee", "Elijah Hughes", "Robert Woodard II",
  "Tre Jones", "Nick Richards", "Jahmi'us Ramsey", "Marko Simonovic",
  "Jordan Nwora", "CJ Elleby", "Yam Madar", "Nico Mannion",
  "Isaiah Joe", "Skylar Mays", "Justinian Jessup", "KJ Martin",
  "Cassius Winston", "Cassius Stanley", "Jay Scrubb", "Grant Riller",
  "Reggie Perry", "Paul Reed", "Jalen Harris", "Sam Merrill"
)

filtered_data <- my_data %>%
  filter(Player %in% names_to_remove)

filtered_data3 <- my_data3 %>%
  filter(Player %in% names_to_remove)




NEW(CHRISTIAN 12/12)
#Downloading Data & Packages
install.packages("tidyverse")
library(dplyr)
library("tidyverse")
library(base)
library(tidyr)

twenty23player <- read.csv("/Users/christianmungal/Desktop/STAT184/2023-24NBASTATS.csv")
twenty20player <- read.csv("/Users/christianmungal/Desktop/STAT184/2020-21NBASTATS.csv")
draft_class <- read.csv("/Users/christianmungal/Desktop/STAT184/2020DRAFTCLASS.csv")

#Getting the 2020 draft class stats from the 2020-2021 NBA Season
keep2020 <- c("Anthony Edwards", "James Wiseman", "Lamelo Ball", "Patrick Williams",
              "Issac Okoro", "Onyeka Okongwu", "Killian Hayes", 
              "Obi Toppin", "Deni Avdija", "Jalen Smith", "Devin Vassell", 
              "Tyrese Haliburton", "Kira Lewis Jr.",
              "Aaron Nesmith", "Cole Anthony", "Isaiah Stewart", "Aleksej Pokusevski", 
              "Josh Green", "Saddiq Bey", "Precious Achiuwa", "Tyrese Maxey", 
              "Zeke Nnaji", "Leandro Bolmaro",
              "R.J. Hampton", "Immanuel Quickley", "Payton Pritchard", 
              "Udoka Azubuike", "Jaden Mcdaniels", "Malachi Flynn", 
              "Desmond Bane", "Tyrell Terry", "Vernon Carey Jr.", "Daniel Oturu", 
              "Théo Maledon", "Xavier Tillman Sr.", "Tyler Bey", "Vit Krejci", 
              "Saben Lee", "Elijah Hughes", 
              "Robert Woodard II", "Tre Jones", "Nick Richards", "Jahmi'us Ramsey", 
              " Marko Simonovic", "Jordan Nwora", "CJ Elleby", "Yam Madar", 
              "Nico Mannion", "Isaiah Joe", "Skylar Mays", "Justinian Jessup", "KJ Martin", 
              "Cassius Winston", "Jay Scrubb", "Grant Riller", 
              "Paul Reed", "Jalen Harris", "Sam Merrill")

twenty20_stats <- twenty20player %>%
  filter(Player %in% keep2020)

#Getting the 2020 draft class stats from the 2023-2024 NBA Season
twenty23_stats <- twenty23player %>%
  filter(NAME %in% keep2020)

#Remove unwanted rows
twenty23_stats <- twenty23_stats[-c(1, 10, 12, 14, 17, 23, 25)]
twenty20_stats <- twenty20_stats[-c(1,7,9,10,11,12,13,15,16,19,20,22,23,28)]

#Remove two of the cases for RJ Hampton and keep the one that averaged the two in 2020stats
twenty20_stats <- twenty20_stats[-c(19,20), ]

#Put datasets in alphabetical order to make it easier to see errors and for easier binding
twenty20_stats <- twenty20_stats[order(twenty20_stats$Player), ]
twenty23_stats <- twenty23_stats[order(twenty23_stats$NAME), ]

#Remove duplicates
twenty23_stats <- twenty23_stats[-c(2,3,9,10,16,17,20,21,22,24,25,26,33,34,39,40), ]


#Add the players back
IQ <- data.frame(NAME = "Immanuel Quickley", TEAM = "2TMS", POS = "G", AGE = 24,
                 GP = 68, MPG = 28.7, USG. = 23.9, TO. = 9.8, FT. = 0.866, X2P. = 0.479, 
                 X3P. = 0.395, eFG. = 0.534, PPG = 16.8, RPG = 3.7, APG = 4.65, 
                 SPG = 0.7, BPG = 0.1, P.R = 20.5, P.R.A = 25, VI = 8.9, ORtg = 120.5, DRtg = 113.9 )
twenty23_stats <- rbind(twenty23_stats, IQ)

AP <- data.frame(NAME = "Aleksej Pokusevski", TEAM = "2TMS", POS = "F", AGE = 22,
                 GP = 28, MPG = 14.5, USG. = 16.3, TO. = 14.4, FT. = 0.629, 
                 X2P. = 0.438, X3P. = 0.273, eFG. = 0.409, PPG = 4.3, RPG = 2.7, 
                 APG = 1.1, SPG = 0.5, BPG = 0.4, P.R = 7.0, P.R.A = 8.1, VI = 6.7,
                 ORtg = 95.1, DRtg = 112.6)
twenty23_stats <- rbind(twenty23_stats, AP)

JN <- data.frame(NAME = "Jordan Nwora", TEAM = "2TMS", POS = "F", AGE = 25.6,GP = 52, 
                 MPG = 13.7, USG. = 22.5, TO. = 14.3, FT. = 0.825, X2P. = 0.561, X3P. = 0.327, 
                 eFG. = 0.530, PPG = 6.6, RPG = 2.6, APG = 1.15, SPG = 0.5, BPG = 0.3, P.R = 9.3, 
                 P.R.A = 10.4, VI = 8.3, ORtg = 105.3, DRtg = 113.2)
twenty23_stats <- rbind(twenty23_stats, JN)

KLJ <- data.frame(NAME = "Kira Lewis Jr.", TEAM = "3TMS", POS = "G", AGE = 23,
                  GP = 28, MPG = 9.5, USG. = 18.6, TO. = 13.0, FT. = 0.850, 
                  X2P. = 0.508, X3P. = 0.121, 
                  eFG. = 0.391, PPG = 3.2, RPG = 0.9, APG = 1.3, SPG = 0.3, 
                  BPG = 0.1, P.R = 4.7, P.R.A = 6.0, VI = 6.7, ORtg = 100.9, DRtg = 117.4)
twenty23_stats <- rbind(twenty23_stats, KLJ)

MF <- data.frame(NAME = "Malachi Flynn", TEAM = "3TMS", POS = "G", AGE = 25.9,
                 GP = 69, MPG = 12.7, USG. = 21.4, TO. = 14.9, FT. = 0.730, 
                 X2P. = 0.513, X3P. = 0.331, eFG. = 0.505,
                 PPG = 5.5, RPG = 1.7, APG = 1.9, SPG = 0.6, BPG = 0.1, P.R = 6.5, 
                 P.R.A = 8.2, VI = 7.7, ORtg = 108.4, DRtg = 113.8)
twenty23_stats <- rbind(twenty23_stats, MF)

PA <- data.frame(NAME = "Precious Achiuwa", TEAM = "2TMS", POS = "F", AGE = 24,
                 GP = 74, MPG = 21.9, USG. = 17.6, TO. = 14.9, FT. = 0.616, 
                 X2P. = 0.562, X3P. = 0.268, eFG. = 0.529,
                 PPG = 7.6, RPG = 6.6, APG = 1.3, SPG = 0.6, BPG = 0.8, P.R = 14, 
                 P.R.A = 15.3, VI = 8, ORtg = 111.1, DRtg = 108.1)
twenty23_stats <- rbind(twenty23_stats, PA)

SM <- data.frame(NAME = "Skylar Mays", TEAM = "2TMS", POS = "G", AGE = 26,
                 GP = 38, MPG = 11.4, USG. = 16.2, TO. = 10.1, FT. = 0.765, 
                 X2P. = 0.469, X3P. = 0.296, eFG. = 0.447, 
                 PPG = 4.1, RPG = 1.1, APG = 2.2, SPG = 0.6, BPG = 0.1, 
                 P.R = 5.1, P.R.A = 6.9, VI = 7, ORtg = 109.7, DRtg = 112.6)
twenty23_stats <- rbind(twenty23_stats, SM)


#Reorder the new cases in alphabetical order
twenty23_stats <- twenty23_stats[order(twenty23_stats$NAME), ]

#Only keep players that played in both seasons 
twenty23_stats <- twenty23_stats[-c(
  1, 9, 11, 12, 15, 20, 21, 22, 24, 30, 31, 32, 35, 36, 37), ]
twenty20_stats <- twenty20_stats[-c(9, 11, 23, 26), ]

#Making the plots and graphs
library(ggplot2)

PTS_PROG <- bind_cols(
  select(twenty20_stats, Player),
  select(twenty20_stats, PTS),
  select(twenty23_stats, PPG)
)
PTS_PROG <- PTS_PROG %>%
  rename(
    PPG2020 = PTS,
    PPG2023 = PPG
  )

PTS_PROG_FORMED <- pivot_longer(
  PTS_PROG,
  cols = c(PPG2020, PPG2023),
  names_to = "Season",
  values_to = "Points"
)
PTS_PROG_FORMED$Player <- gsub(" ", "\n", PTS_PROG_FORMED$Player)

ggplot(
  PTS_PROG_FORMED,
  aes(
    x = Player,
    y = Points, 
    fill = Season
  )
) +
  geom_bar(stat = "identity", position = "stack", width = 0.5) +
  labs(title = "2020 Draft Class Points (2020 vs 2023) Seasons",
       x = "Player Name", 
       y = "Points") +
  scale_fill_manual(values = c(PPG2020 = "blue", PPG2023 = "lightblue"))
theme_minimal() +
  theme(axis.text.x = element_text(angle = 0, hjust = 0.5, size = 3))










