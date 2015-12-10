package com.mattdickeydesign.thefinalpizza;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.Spinner;
import android.widget.Switch;
import android.widget.TextView;
import android.widget.ToggleButton;

public class MainActivity extends AppCompatActivity {

    public void buildPizza(View view) {

        EditText textField = (EditText) findViewById(R.id.nameTextField);
        String pizzaName = textField.getText().toString();

        ToggleButton sauceToggle = (ToggleButton) findViewById(R.id.toggleButton);
        boolean sauceOn = sauceToggle.isChecked();
        String sauceText;

        Switch gf = (Switch) findViewById(R.id.gf);
        boolean isGF = gf.isActivated();
        String gfString;


        if (sauceOn) {
            sauceText = "red sauce";
        }else{
            sauceText = "white sauce";
        }

        if (isGF){
            gfString = "Gluten Free";
        }else{
            gfString = "";
        }

        CheckBox checkBox0 = (CheckBox) findViewById(R.id.checkBox0);
        boolean check0 = checkBox0.isChecked();
        CheckBox checkBox1 = (CheckBox) findViewById(R.id.checkBox1);
        boolean check1 = checkBox1.isChecked();
        CheckBox checkBox2 = (CheckBox) findViewById(R.id.checkBox2);
        boolean check2 = checkBox2.isChecked();
        CheckBox checkBox3 = (CheckBox) findViewById(R.id.checkBox3);
        boolean check3 = checkBox3.isChecked();

        String toppings = "it also has ";

        if(check0){
            toppings += checkBox0.getText() + " ";
        }
        if(check1){
            toppings += checkBox1.getText() + " ";
        }
        if(check2){
            toppings += checkBox2.getText() + " ";
        }
        if(check3){
            toppings += checkBox3.getText() + " ";
        }


        Spinner sizeSpinner  = (Spinner) findViewById(R.id.sizeSpinner);
        String selectedSize = sizeSpinner.getSelectedItem().toString();

        RadioGroup crustGroup = (RadioGroup) findViewById(R.id.crustgroup);
        String crustType;
        int crustID = crustGroup.getCheckedRadioButtonId();
        //switch(crustID);






        TextView product = (TextView) findViewById(R.id.productText);

        product.setText("This is the " + selectedSize + gfString + " " + pizzaName + " pizza. It has " + sauceText + "." + toppings + ". Check out the link below to get a pie like this one.");


    }



    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
    }
}
