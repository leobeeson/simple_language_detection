if(!require("pacman")) install.packages("pacman")
pacman::p_load(readtext, cld3)

filepath_to_docs <- "data/"
docs_df <- readtext(paste0(filepath_to_docs,"/*"))

output <- data.frame(doc_id=character(), first_lang=character(), first_prob=character(), first_rely=character(), first_prop=character(),
                     sec_lang=character(), sec_prob=character(), sec_rely=character(), sec_prop=character(),
                     third_lang=character(), third_prob=character(), third_rely=character(), sec_prop=character(), stringsAsFactors = FALSE)

for(doc_id in docs_df$doc_id){
  langs <- cld3::detect_language_mixed(docs_df$text[docs_df$doc_id == doc_id], size = 3)
  temp <- data.frame(doc_id=doc_id, first_lang=langs$language[1], first_prob=langs$probability[1], first_rely=langs$reliable[1], first_prop=langs$proportion[1],
                                    sec_lang=langs$language[2], sec_prob=langs$probability[2], sec_rely=langs$reliable[2], sec_prop=langs$proportion[2],
                                    third_lang=langs$language[3], third_prob=langs$probability[3], third_rely=langs$reliable[3], third_prop=langs$proportion[3], stringsAsFactors = FALSE)
  output <- rbind(output, temp)
}

write.csv(output, file = "output/multiple_languages_per_filename.csv")

