# Example: Summarising the penguins data set

# Load the required package(s)
library(tidyverse)


# Import the penguins data set from CSV
data_penguins <- read.csv("data_penguins.csv")


# Have a quick look at the imported data, observe the variable names
head(data_penguins)


# Count how many times each species appears in the data set
count_by_species <- data_penguins %>%
  group_by(species) %>%
  count()

print(count_by_species)


# Count how many times each island appears in the data set
count_by_islands <- data_penguins %>%
  group_by(island) %>%
  count()

print(count_by_islands)


# Look at the island-species combinations in the data set
island_species_combos <- data_penguins %>%
  group_by(species, island) %>%
  count()

print(island_species_combos)


# Count how many islands each species appears on in the data set
islands_per_species <- data_penguins %>%
  group_by(species, island) %>%
  count() %>%
  ungroup() %>%
  count(species)

print(islands_per_species)
