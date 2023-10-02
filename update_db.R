# script for updating the database after implementing corrections

library(janitor)
library(tidyverse)
library(here)

# read in db
db_current <- read_tsv("mixtecan_cognate_db.tsv")
glimpse(db_current)

# read in corrections - use absolute path
corrections <- read_tsv("/Users/auderset/Documents/GitHub/sound-change-patterns/Data/cognates_revised.tsv") %>%
  select(-PMX_TOKEN)
glimpse(corrections)

# subset and combine
db_current_sub <- db_current %>%
  select(ID, DOCULECT)
mv <- anti_join(db_current_sub, corrections) %>%
  pull(ID)
# what is missing from new db
missing_new <- db_current %>%
  filter(ID %in% mv) %>%
  select(ID, DOCULECT, MEANING = CONCEPT, COGIDS_BROAD, SOURCE_ORIGINAL = VALUE, SOURCE_ORTHOGRAPHIC = FORM, TOKENS_SOURCE = TOKENS, SOURCE)

# add back
corrections_add <- bind_rows(corrections, missing_new) %>%
  arrange(ID)

# clean up
# show duplicate IDs
dupes <- corrections_add %>%
  get_dupes(ID)
# max ID
max(corrections_add$ID)
# re-assing/delete duplicates
corrections_add_clean <- corrections_add %>%
  filter(!(ID==7365&MEANING=="GRIDDLE"&DOCULECT=="SantaCruzItundujiaMixtec"&COGIDS_BROAD==286)) %>%
  mutate(ID = case_when(ID==7365&DOCULECT=="SantaCruzItundujiaMixtec" ~ 22323,
                        ID==22148&DOCULECT=="SanPedroySanPabloTeposcolula1600Mixtec" ~ 22324,
                        TRUE ~ ID))
# check again
corrections_add_clean %>%
  get_dupes(ID)

# finish clean up
corrections_add_clean <- corrections_add_clean %>%
  mutate(SOURCE_ORIGINAL = if_else(is.na(SOURCE_ORIGINAL), SOURCE_ORTHOGRAPHIC, SOURCE_ORIGINAL)) %>%
  mutate(TOKENS = if_else(is.na(TOKENS), TOKENS_SOURCE, TOKENS))

# write out
write_tsv(corrections_add_clean, "mixtecan_cognate_db.tsv")
