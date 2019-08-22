if(!require("pacman")) install.packages("pacman")
pacman::p_load(readtext, cld3)

filepath_to_docs <- "data/"
docs_df <- readtext(paste0(filepath_to_docs,"/*"))

docs_df$language <- cld3::detect_language(docs_df$text)
docs_df$text <- NULL

write.csv(docs_df, file = "output/languages_per_filename.csv")
