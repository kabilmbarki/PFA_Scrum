// This file contains the code to manage the selected languages.
List<String> selectedLangs = [];

void addLanguage(String language) {
  selectedLangs.add(language);
}

void removeLanguage(String language) {
  selectedLangs.remove(language);
}