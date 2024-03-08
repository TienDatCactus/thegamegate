/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Models;

import java.util.HashMap;
import java.util.Map;

/**
 *
 * @author Tiến_Đạt
 */
public class Language {

    int languageId;
    String language;

    public int getLanguageId() {
        return languageId;
    }

    public void setLanguageId(int languageId) {
        this.languageId = languageId;
    }

    public String getLanguage() {
        return languageMap.get(languageId);
    }

    public void setLanguage(String language) {
        this.language = language;
    }

    public Language() {
    }

    public Language(int languageId, String language) {
        this.languageId = languageId;
        this.language = language;
    }

    private static final Map<Integer, String> languageMap = new HashMap<>();

    static {
        languageMap.put(1, "English");
        languageMap.put(2, "Japanese");
        languageMap.put(3, "Chinese");
        languageMap.put(4, "Korean");
        languageMap.put(5, "French");
        languageMap.put(6, "Russian");
        languageMap.put(7, "German");
        languageMap.put(8, "Portuguese");
        languageMap.put(9, "Spanish");
        languageMap.put(10, "Vietnamese");

    }

    public static void main(String[] args) {
        Language lang = new Language(2, null);
        System.out.println("Lang : " + lang.getLanguage());
    }

    @Override
    public String toString() {
        return "Language{" + "languageId=" + languageId + ", language=" + language + '}';
    }
    
}
