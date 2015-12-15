package com.mattdickeydesign.whattowatch;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;


//Define a new object For a Netflix Movie that contains data parsed from the jsoup API via IMDB page.

public class NetflixMovie {

    public String rottenTomatoesURL;
    private String movieTitle;
    private String movieYear;
    private String movieRating;
    private String movieBlurb;

    //Define the webpage that is retrieved via rottentomatoes
    private Document moviePage = Jsoup.connect(rottenTomatoesURL).get();


    //Parse the data from the page
    Elements webTitle = moviePage.select("#movie-title");
    Elements webYear = moviePage.select(".h3 year");
    Elements webRating = moviePage.select("ratingvalue");
    Elements webBlurb = moviePage.select(".critic-consensus");

    //Assign the data to the appropriate parameter

    public void setMovieTitle(String movieTitle) {
        this.movieTitle = webTitle.toString();
    }

    public void setMovieYear(String movieYear) {
        this.movieYear = webYear.toString();
    }

    public void setMovieRating(float movieRating) {
        this.movieRating = webRating.toString();
    }

    public void setMovieBlurb(String movieBlurb) {
        this.movieBlurb = webBlurb.toString();
    }

    public String getMovieTitle() {
        return movieTitle;
    }

    public String getMovieYear() {
        return movieYear;
    }

    public String getMovieRating() {
        return movieRating;
    }

    public String getMovieBlurb() {
        return movieBlurb;
    }
}


