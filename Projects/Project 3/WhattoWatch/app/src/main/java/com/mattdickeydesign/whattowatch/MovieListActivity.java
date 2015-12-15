package com.mattdickeydesign.whattowatch;

import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;

public class MovieListActivity extends AppCompatActivity {

    private String genreName;
    private String movieTitle;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_movie_list);

        Intent intent = getIntent();

        movieTitle = intent.getStringExtra("movieName");
        genreName = intent.getStringExtra("movieGenre");



        NetflixMovie actionMovie1 = new NetflixMovie();
        NetflixMovie actionMovie2 = new NetflixMovie();
        NetflixMovie actionMovie3 = new NetflixMovie();
        NetflixMovie actionMovie4 = new NetflixMovie();
        NetflixMovie actionMovie5 = new NetflixMovie();

        actionMovie1.rottenTomatoesURL = "http://http://www.rottentomatoes.com/m/inglourious_basterds";
        actionMovie2.rottenTomatoesURL = "http://www.rottentomatoes.com/m/gladiator/";
        actionMovie3.rottenTomatoesURL = "http://www.rottentomatoes.com/m/lara_croft_tomb_raider/";
        actionMovie4.rottenTomatoesURL = "http://www.rottentomatoes.com/m/snowpiercer/";
        actionMovie5.rottenTomatoesURL = "http://www.rottentomatoes.com/m/national_treasure/";

        NetflixMovie comedyMovie1 = new NetflixMovie();
        NetflixMovie comedyMovie2 = new NetflixMovie();
        NetflixMovie comedyMovie3 = new NetflixMovie();
        NetflixMovie comedyMovie4 = new NetflixMovie();
        NetflixMovie comedyMovie5 = new NetflixMovie();

        NetflixMovie documentary1 = new NetflixMovie();
        NetflixMovie documentary2 = new NetflixMovie();
        NetflixMovie documentary3 = new NetflixMovie();
        NetflixMovie documentary4 = new NetflixMovie();
        NetflixMovie documentary5 = new NetflixMovie();

        NetflixMovie dramaMovie1 = new NetflixMovie();
        NetflixMovie dramaMovie2 = new NetflixMovie();
        NetflixMovie dramaMovie3 = new NetflixMovie();
        NetflixMovie dramaMovie4 = new NetflixMovie();
        NetflixMovie dramaMovie5 = new NetflixMovie();

        NetflixMovie horrorMovie1 = new NetflixMovie();
        NetflixMovie horrorMovie2 = new NetflixMovie();
        NetflixMovie horrorMovie3 = new NetflixMovie();
        NetflixMovie horrorMovie4 = new NetflixMovie();
        NetflixMovie horrorMovie5 = new NetflixMovie();

        NetflixMovie thrillerMovie1 = new NetflixMovie();
        NetflixMovie thrillerMovie2 = new NetflixMovie();
        NetflixMovie thrillerMovie3 = new NetflixMovie();
        NetflixMovie thrillerMovie4 = new NetflixMovie();
        NetflixMovie thrillerMovie5 = new NetflixMovie();


    }
}
