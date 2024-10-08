# Mixtecan Cognate Database (MixteCoDB)

This database contains lexical entries from Mixtecan languages, which are cognate coded and standardized to IPA. It is a work in progress and continuously updated. For use in your own research and citation, please refer to the most recent release archived in Zenodo. The database is available under the Creative Commons Attribution Share Alike 4.0 International license.
Questions, comments, corrections, and the like are most welcome! Please [open an issue](https://github.com/SAuderset/mixtecan-cognate-database/issues/new/choose) for that.

## MixteCoDB 1.0
The initial creation of the database, which corresponds to its [first release (1.0)](https://github.com/SAuderset/mixtecan-cognate-database/releases/tag/v1.0) is explained in:
* Auderset, Sandra, Simon J., Greenhill, Christian T., DiCanio, Eric W., Campbell. 2023. Subgrouping in a `dialect continuum': A Bayesian phylogenetic analysis of the Mixtecan language family. *Journal of Language Evolution*. 8(1). https://doi.org/10.1093/jole/lzad004
* Auderset, Sandra, Simon J., Greenhill, Christian T., DiCanio, Eric W., Campbell. 2023. Supplementary Materials to "Subgrouping in a `dialect continuum': A Bayesian phylogenetic analysis of the Mixtecan language family." Available on *Zenodo* at [![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.7940497.svg)](https://doi.org/10.5281/zenodo.7940497)

### MixteCoDB 1.1 - November 2023
Updates including corrections of a few errors for the publication of the (linked) sound change database used in:
* Auderset, Sandra, and Eric W. Campbell. 2024. “A Mixtec Sound Change Database”. Journal of Open Humanities Data 10 (1). https://doi.org/10.5334/johd.184

### MixtecoDB 1.2 - October 2024
The protoforms now include tones (where this is possible to specify). Further explanation regarding the tonal reconstructions can be found in:
* Auderset, Sandra. 2024. Rates of change and phylogenetic signal in Mixtec tone. *Language dynamics and change* 14 (1)


## Files and content

### coding details
file explaining the conversion from orthography to IPA and other details regarding the standardization of segments

### coding details tone
file explaining the conversion from orthography to IPA and other details regarding the standardization of tone notation

### metadata
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


### mixtecan_cognate_database
contains all the primary language data coded for cognacy:
* ID = a unique, arbitrary identifier for each entry (digits)
* CONCEPT = concept (standardized meaning) of the entry
* GLOSS = gloss(es)/meaning(s) in Spanish
* COGIDS = unique identifier for cognate sets; each morpheme is assigned its own identifier, separated by a space (digits)
* DOCULECT = identifier for variety of the entry (see also: metadata)
* TOKENS = entry in standardized IPA representation, tokenized
* SOURCE_ORIGINAL = entry exactly as provided in the source
* SOURCE_ORTHOGRAPHIC = standardized entry as provided in source (stripped of special characters like brackets, etc.)
* TOKENS_SOURCE = entry in IPA representation as converted from SOURCE_ORTHOGRAPHIC without standardization
* COMMENT = comments and notes
* SOURCE = cite key of source document for the entry


### protoforms
contains the reconstructed proto-Mixtec forms (where reconstruction was possible) including tone, as well as information about earlier reconstructions:
* COGIDS_BROAD = unique identifier for cognate sets; each morpheme is assigned its own identifier, separated by a space (digits)
* CONCEPT = concept (standardized meaning) of the entry
* GLOSS = gloss(es)/meaning(s) in Spanish (for easier comparison with source material)
* PMX = reconstructed proto-Mixtec form with tone (where it is possible to reconstruct)
* TONE_GROUP = reconstructed tone group of the form (where it is possible to assign this)
* PMX_Josserand1983 = reconstruction as given by Josserand 1983 (if available) - cite key:josserand1983mixtec
* JosserandID = number assigned to reconstructed form in Josserand 1983
* PMX_Durr1987 = reconstruction as given by Dürr 1987 (if available)
* PMXTone_Durr1987 = tone reconstruction as given by Dürr 1987 (if available)
* DurrID = number assigned to reconstructed form in Dürr 1987 - cite key:durr1987preliminary
* PMX_SwantonMendoza2021 = reconstruction as given by Swanton & Mendoza Ruíz 2021 (if available) - cite key:swanton2021observaciones
* PMXTone_SwantonMendoza2021 = tone reconstruction as given by Swanton & Mendoza Ruíz 2021 (if available) - cite key:swanton2021observaciones
* SwantonMendoza_ID = number assigned to reconstructed form in Swanton & Mendoza Ruíz 2021
* PMX_Swanton2021 = reconstruction as given by Swanton 2021 (if available) - cite key:swanton2021un-acercamiento
* PMXTone_Swanton2021 = tone reconstruction as given by Swanton 2021 (if available) - cite key:swanton2021un-acercamiento
* SwantonID = number assigned to reconstructed form in Swanton 2021
* COMMENT = further explanations


### sources.bib
bibtex file with all the sources of the data

### wordlist_mesoamerica
a list of 209 concepts of basic vocabulary items tailored to the Mesoamerican cultural area, that was used to collect the lexical entries


[![CC BY-SA 4.0][cc-by-sa-image]][cc-by-sa]

[cc-by-sa]: http://creativecommons.org/licenses/by-sa/4.0/
[cc-by-sa-image]: https://licensebuttons.net/l/by-sa/4.0/88x31.png
[cc-by-sa-shield]: https://img.shields.io/badge/License-CC%20BY--SA%204.0-lightgrey.svg
