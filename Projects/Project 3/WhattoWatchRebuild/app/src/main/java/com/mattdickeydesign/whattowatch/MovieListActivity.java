package com.mattdickeydesign.whattowatch;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;

import org.w3c.dom.Text;


public class MovieListActivity extends AppCompatActivity {

    public String genreName;


    public void openIMDBPage(View view) {

        Intent intent = new Intent(Intent.ACTION_VIEW, Uri.parse("http://www.imdb.com/title/tt0196229/"));
        startActivity(intent);
    }


    @Override
    protected void onCreate(Bundle savedInstanceState) {

        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_movie_list);



        TextView chosenGenreTextView = (TextView) findViewById(R.id.chosenGenreTextView);

        TextView movie1TitleTextView = (TextView) findViewById(R.id.movie1Title);
        TextView movie2TitleTextView = (TextView) findViewById(R.id.movie2Title);
        TextView movie3TitleTextView = (TextView) findViewById(R.id.movie3Title);
        TextView movie4TitleTextView = (TextView) findViewById(R.id.movie4Title);
        TextView movie5TitleTextView = (TextView) findViewById(R.id.movie5Title);

        TextView movie1YearTextView = (TextView) findViewById(R.id.movie1Year);
        TextView movie2YearTextView = (TextView) findViewById(R.id.movie2Year);
        TextView movie3YearTextView = (TextView) findViewById(R.id.movie3Year);
        TextView movie4YearTextView = (TextView) findViewById(R.id.movie4Year);
        TextView movie5YearTextView = (TextView) findViewById(R.id.movie5Year);

        TextView movie1DescriptionTextView = (TextView) findViewById(R.id.movie1Description);
        TextView movie2DescriptionTextView = (TextView) findViewById(R.id.movie2Description);
        TextView movie3DescriptionTextView = (TextView) findViewById(R.id.movie3Description);
        TextView movie4DescriptionTextView = (TextView) findViewById(R.id.movie4Description);
        TextView movie5DescriptionTextView = (TextView) findViewById(R.id.movie5Description);

        ImageView movie1PosterImageView = (ImageView) findViewById(R.id.movie1Poster);
        ImageView movie2PosterImageView = (ImageView) findViewById(R.id.movie2Poster);
        ImageView movie3PosterImageView = (ImageView) findViewById(R.id.movie3Poster);
        ImageView movie4PosterImageView = (ImageView) findViewById(R.id.movie4Poster);
        ImageView movie5PosterImageView = (ImageView) findViewById(R.id.movie5Poster);




        Intent intent = getIntent();
        genreName = intent.getStringExtra("movieGenre");
        System.out.println(genreName + " is the selected Genre in MovieListActivity.OnCreate");

        chosenGenreTextView.setText(genreName);


        switch (genreName) {

            case "action":
                movie1TitleTextView.setText("Inglorious Basterds");
                movie1YearTextView.setText("(2009)");
                movie1DescriptionTextView.setText("A classic Tarantino genre-blending thrill ride, Inglourious Basterds is violent, unrestrained, and thoroughly entertaining.");

                movie2TitleTextView.setText("Gladiator");
                movie2YearTextView.setText("(2000)");
                movie2DescriptionTextView.setText("An excellent cast successfully convey the intensity of Roman gladitorial combat as well as the political intrigue brewing beneath.");


                movie3TitleTextView.setText("Tomb Raider");
                movie3YearTextView.setText("(2001)");
                movie3DescriptionTextView.setText("Angelina Jolie is perfect for the role of Lara Croft, but even she can't save the movie from a senseless plot and action sequences with no emotional impact.");



                movie4TitleTextView.setText("Snowpiercer");
                movie4YearTextView.setText("(2014)");
                movie4DescriptionTextView.setText("Snowpiercer offers an audaciously ambitious action spectacular for filmgoers numb to effects-driven blockbusters.");



                movie5TitleTextView.setText("National Treasure");
                movie5YearTextView.setText("(2004)");
                movie5DescriptionTextView.setText("National Treasure is no treasure, but it's a fun ride for those who can forgive its highly improbable plot.");



                break;

            case "comedy":
                movie1TitleTextView.setText("Zoolander");
                movie1YearTextView.setText("(2001)");
                movie1DescriptionTextView.setText("A wacky satire on the fashion industry, Zoolander is one of those deliberately dumb comedies that can deliver genuine laughs.");

                movie2TitleTextView.setText("Tommy Boy");
                movie2YearTextView.setText("(1995)");
                movie2DescriptionTextView.setText("Though it benefits from the comic charms of its two leads, Tommy Boy too often feels like a familiar sketch stretched thin.");

                movie3TitleTextView.setText("Bruce Almighty");
                movie3YearTextView.setText("(2003)");
                movie3DescriptionTextView.setText("Carrey is hilarious in the slapstick scenes, but Bruce Almighty gets bogged down in treacle.");

                movie4TitleTextView.setText("Hot Rod");
                movie4YearTextView.setText("(2007)");
                movie4DescriptionTextView.setText("A few funny scenes can't save the disjointed Hot Rod, which is too silly and sloppy to hold up");

                movie5TitleTextView.setText("Big Daddy");
                movie5YearTextView.setText("(1997)");
                movie5DescriptionTextView.setText("A few funny scenes can't save the disjointed Hot Rod, which is too silly and sloppy to hold up.");

                break;


            case "documentary":
                movie1TitleTextView.setText("");
                movie1YearTextView.setText("");
                movie1DescriptionTextView.setText("");

                movie2TitleTextView.setText("");
                movie2YearTextView.setText("");
                movie2DescriptionTextView.setText("");

                movie3TitleTextView.setText("");
                movie3YearTextView.setText("");
                movie3DescriptionTextView.setText("");

                movie4TitleTextView.setText("");
                movie4YearTextView.setText("");
                movie4DescriptionTextView.setText("");

                movie5TitleTextView.setText("");
                movie5YearTextView.setText("");
                movie5DescriptionTextView.setText("");

                break;

            case "drama":
                movie1TitleTextView.setText("");
                movie1YearTextView.setText("");
                movie1DescriptionTextView.setText("");

                movie2TitleTextView.setText("");
                movie2YearTextView.setText("");
                movie2DescriptionTextView.setText("");

                movie3TitleTextView.setText("");
                movie3YearTextView.setText("");
                movie3DescriptionTextView.setText("");

                movie4TitleTextView.setText("");
                movie4YearTextView.setText("");
                movie4DescriptionTextView.setText("");

                movie5TitleTextView.setText("");
                movie5YearTextView.setText("");
                movie5DescriptionTextView.setText("");

                break;

            case "horror":
                movie1TitleTextView.setText("");
                movie1YearTextView.setText("");
                movie1DescriptionTextView.setText("");

                movie2TitleTextView.setText("");
                movie2YearTextView.setText("");
                movie2DescriptionTextView.setText("");

                movie3TitleTextView.setText("");
                movie3YearTextView.setText("");
                movie3DescriptionTextView.setText("");

                movie4TitleTextView.setText("");
                movie4YearTextView.setText("");
                movie4DescriptionTextView.setText("");

                movie5TitleTextView.setText("");
                movie5YearTextView.setText("");
                movie5DescriptionTextView.setText("");

                break;

            case "thriller":
                movie1TitleTextView.setText("");
                movie1YearTextView.setText("");
                movie1DescriptionTextView.setText("");

                movie2TitleTextView.setText("");
                movie2YearTextView.setText("");
                movie2DescriptionTextView.setText("");

                movie3TitleTextView.setText("");
                movie3YearTextView.setText("");
                movie3DescriptionTextView.setText("");

                movie4TitleTextView.setText("");
                movie4YearTextView.setText("");
                movie4DescriptionTextView.setText("");

                movie5TitleTextView.setText("");
                movie5YearTextView.setText("");
                movie5DescriptionTextView.setText("");

                break;

            default:
                break;
        }

    }

}
