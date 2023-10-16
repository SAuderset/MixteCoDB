# script for updating the database after implementing corrections

library(janitor)
library(tidyverse)
library(here)

# read in db
db_current <- read_tsv("mixtecan_cognate_db.tsv")
glimpse(db_current)

# read in corrections - use absolute path
corrections <- read_tsv("/Users/auderset/Documents/GitHub/tone-rate-signal/Data/cognates_tones_workv.tsv") %>%
  select(ID:TOKENS, COMMENT:SOURCE)
glimpse(corrections)

# subset and combine
rmr <- corrections %>%
  pull(ID)
corrections_add <- db_current %>%
  filter(!ID %in% rmr) %>%
  bind_rows(., corrections)

# clean up
# show duplicate IDs
dupes <- corrections %>%
  get_dupes(ID)
# max ID
max(corrections$ID)
# re-assing/delete duplicates
corrections_add_clean <- corrections_add %>%
  distinct(across(-COMMENT), .keep_all = TRUE)
# check again
corrections_add_clean %>%
  get_dupes(ID)
glimpse(corrections_add_clean)

# finish clean up
corrections_add_clean <- corrections_add_clean %>%
  mutate(SOURCE_ORIGINAL = if_else(is.na(SOURCE_ORIGINAL), SOURCE_ORTHOGRAPHIC, SOURCE_ORIGINAL)) %>%
  mutate(TOKENS = if_else(is.na(TOKENS), TOKENS_SOURCE, TOKENS))

# write out
write_tsv(corrections_add_clean, "mixtecan_cognate_db.tsv")
