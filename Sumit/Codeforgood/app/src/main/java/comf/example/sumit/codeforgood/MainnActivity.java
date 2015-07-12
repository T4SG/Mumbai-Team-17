package comf.example.sumit.codeforgood;

import android.content.Intent;
import android.support.v7.app.ActionBarActivity;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.content.Intent;
import android.view.View;

import java.security.KeyStore;


public class MainnActivity extends ActionBarActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_mainn);
          //Button b = (Button) findViewById(R.id.button3);
        //b.setOnClickListener(new View.OnClickListener() {

    }

    public void onClickme(View view) {
                startActivity(new Intent(MainnActivity.this, Pop.class));
                //Intent i = new Intent(this,MainActivity.class);
                //startActivity(i);
            }

        //startActivity(new Intent(MainnActivity.this, MainActivity.class ));





    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        // Inflate the menu; this adds items to the action bar if it is present.
        getMenuInflater().inflate(R.menu.menu_main, menu);
        return true;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        // Handle action bar item clicks here. The action bar will
        // automatically handle clicks on the Home/Up button, so long
        // as you specify a parent activity in AndroidManifest1.xml.
        int id = item.getItemId();

        //noinspection SimplifiableIfStatement
        if (id == R.id.action_settings) {
            return true;
        }

        return super.onOptionsItemSelected(item);
    }
}
