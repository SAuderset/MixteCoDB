# mixtecan-cognate-database

# metadata
Metadata of the language sample:
* DOCULECT = unique identifier for each Mixtec variety (containing only ASCII characters)
* VillageName	= name of the village where the variety is spoken
* Abbreviation / MapAbbr = abbreviations of the varieties used for more legible plotting
* AudersetGroup	/ AudersetGroupSub / AudersetGroupLow = (sub-)classification according to Auderset et al. 2023
* JosserandArea	/ JosserandAreaSub = dialect area classification according to Josserand 1983
* Latitude / Longitude = coordinates of the village
* Glottocode (if applicable)
* ISO639P3code (if applicable)
* JosserandCode (if applicable) = code used in Josserand 1983
* SOURCE = cite key of the source(s) of the data


# cognates
contains all the primary language data coded for cognacy:
* ID = a unique, arbitrary identifier for each entry (digits)
* MEANING	= gloss/meaning of the entry
* COGIDS_BROAD = unique identifier for cognate sets; each morpheme is assigned its own identifier, separated by a space (digits)
* DOCULECT = identifier for variety of the entry (see also: metadata)
* TOKENS = entry in standardized IPA representation, tokenized
* SOURCE_ORIGINAL = entry exactly as provided in the source
* SOURCE_ORTHOGRAPHIC = standardized entry as provided in source (stripped of special characters like brackets, etc.)
* TOKENS_SOURCE = entry in IPA representation as converted from SOURCE_ORTHOGRAPHIC without standardization
* COMMENT = comments and notes
* SOURCE = cite key of source document for the entry


# protoforms
contains the reconstructed proto-Mixtec forms (where reconstruction was possible), as well as information about earlier reconstructions:
* COGIDS_BROAD = unique identifier for cognate sets; each morpheme is assigned its own identifier, separated by a space (digits)
* MEANING	= gloss(es)/meaning(s) of the reconstructed form
* SPANISH = gloss(es)/meaning(s) in Spanish (for easier comparison with source material)
* PMX = reconstructed proto-Mixtec form
* COMMENT = further explanations
* PMX_Josserand1983 = reconstruction as given by Josserand 1983 (if available) - cite key:josserand1983mixtec
* JosserandID = number assigned to reconstructed form in Josserand 1983
* PMX_Durr1987 = reconstruction as given by Dürr 1987 (if available)
* DurrID = number assigned to reconstructed form in Dürr 1987 - cite key:durr1987preliminary
* PMX_SwantonMendoza2021 = reconstruction as given by Swanton & Mendoza Ruíz 2021 (if available) - cite key:swanton2021observaciones
* SwantonMendoza_ID = number assigned to reconstructed form in Swanton & Mendoza Ruíz 2021
* PMX_Swanton2021 = reconstruction as given by Swanton 2021 (if available) - cite key:swanton2021un-acercamiento
* SwantonID = number assigned to reconstructed form in Swanton 2021


# sources.bib
bibtex file with all the sources of the data and analyses