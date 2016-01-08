package com.mattdickeydesign.whattowatch;

import android.app.ProgressDialog;
import android.os.AsyncTask;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;
import java.io.IOException;


//Define a new object For a Netflix Movie that contains data parsed from the jsoup API via IMDB page.

public class NetflixMovie {


    //variables defined by code
    public String rottenTomatoesURL;
    public int index;
    public String genre;


    //Constructor
    public NetflixMovie(String URL, String g, int i) {
        rottenTomatoesURL = URL;
        genre = g;
        index = i;
    }

    //variables parsed via jsoup
    public String movieTitle;
    public String movieDesc;

    //Methods as Subclasses
    public class Title extends AsyncTask<Void, Void, Void> {
        String title;


        @Override
        protected Void doInBackground(Void... params) {

            try {
                Document document = Jsoup.connect(rottenTomatoesURL).get();
                Elements webMovieTitle = document.select("#movie-title");
                String movieTitleAsString = webMovieTitle.text();
                title = movieTitleAsString;

                System.out.println("NetflixMovie.java is running doInBackgorund() and has returned " + title + " as the movie's Title.");

            } catch (IOException ex) {
                ex.printStackTrace();
            }

            return null;
        }

        @Override
        protected void onPostExecute(Void aVoid) {
            movieTitle = title;
        }
    }

    public class Description extends AsyncTask<Void, Void, Void> {
        String desc;


        @Override
        protected Void doInBackground(Void... params) {
            try {
                Document document = Jsoup.connect(rottenTomatoesURL).get();

                Elements description = document.select(".critic_consensus.tomato-info");
                String descAsString = description.text();

                desc = descAsString;

            } catch (IOException ex) {
                ex.printStackTrace();
            }

            return null;
        }

        @Override
        protected void onPostExecute(Void aVoid) {
            super.onPostExecute(aVoid);

            movieDesc = desc;
        }
    }




}


