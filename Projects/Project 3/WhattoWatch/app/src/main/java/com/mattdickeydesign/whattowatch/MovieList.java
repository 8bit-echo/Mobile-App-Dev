package com.mattdickeydesign.whattowatch;

public class MovieList {


    private String movieListGenre;
    private String listItems;


    public void setMovieInfo(String chosenGenre){

        switch (chosenGenre) {
            case "action":
                movieListGenre = "Action";
                listItems = "Inglorious Basterds";
                break;
            case"comedy":
                movieListGenre = "Comedy";
                listItems = "Zoolander";
                break;
            default:
                movieListGenre = "none";
                listItems = "none";
                break;
        }
    }

    public void setMovieListGenre(String chosenGenre){
        setMovieInfo(chosenGenre);
    }
    public void setListItems(String chosenGenre){
        setMovieInfo(chosenGenre);
    }

    public String getListItems() {
        return listItems;
    }

    public String getMovieListGenre(){
        return movieListGenre;
    }
}

