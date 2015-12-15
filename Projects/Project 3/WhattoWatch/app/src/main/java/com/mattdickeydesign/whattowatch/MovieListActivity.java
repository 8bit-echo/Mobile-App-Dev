package com.mattdickeydesign.whattowatch;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import java.io.IOException;
import java.io.InputStream;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;

public class MovieListActivity extends AppCompatActivity{

    private String genreName;
    private String movieTitle;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_movie_list);

        Intent intent = getIntent();

        movieTitle = intent.getStringExtra("movieName");
        genreName = intent.getStringExtra("movieGenre");






    }
}
