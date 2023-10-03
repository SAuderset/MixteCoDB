# script for updating the database after implementing corrections

library(janitor)
library(tidyverse)
library(here)

# read in db
db_current <- read_tsv("mixtecan_cognate_db.tsv") %>%
  rename(COGIDS = COGIDS_BROAD)
glimpse(db_current)

# read in corrections - use absolute path
corrections <- read_tsv("cognates_tones_workingversion.tsv") %>%
  select(ID:TONES, COMMENT, SOURCE)
glimpse(corrections)

# subset and combine
rmr <- corrections %>%
  pull(ID)
corrections_add <- db_current %>%
  filter(!ID %in% rmr) %>%
  bind_rows(., corrections)

# clean up
# show duplicate IDs
dupes <- corrections_add %>%
  get_dupes(ID)
# max ID
max(corrections_add$ID)
# re-assing/delete duplicates
corrections_add_clean <- corrections_add %>%
  distinct(across(-COMMENT), .keep_all = TRUE) %>%
  select(-TONES)
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
