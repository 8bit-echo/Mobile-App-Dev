package com.mattdickeydesign.whattowatch;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Spinner;
import android.R;




public class MainActivity extends AppCompatActivity {


//String arrays to handle different actions
    public String[] actionMovies = getResources().getStringArray(R.array.action);
    public String[] comedyMovies = getResources().getStringArray(R.array.comedy);
    public String[] documentaryMovies = getResources().getStringArray(R.array.documentary);
    public String[] dramaMovies = getResources().getStringArray(R.array.drama);
    public String[] horrorMovies = getResources().getStringArray(R.array.horror);
    public String[] thrillerMovies = getResources().getStringArray(R.array.thriller);

    private MovieList testMovieList = new MovieList();


    public void getLinks(View view) {

        Spinner genreSpinner = (Spinner) findViewById(R.id.spinner);
        String spinnerValue = String.valueOf(genreSpinner.getSelectedItem());

        testMovieList.setListItems(spinnerValue);
        String suggestedMovies = testMovieList.getMovieListGenre();
        String suggestedTitle = testMovieList.getListItems();

        System.out.println(suggestedMovies + " / " + suggestedTitle);


        Intent intent new Intent(this.MovieListActivity.class);

        intent.putExtra("movieGenre", suggestedMovies);
        intent.putExtra("movieName", suggestedTitle);


        startActivity(intent);

    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
    }
}
