package comf.example.sumit.codeforgood;

import android.support.v7.app.ActionBarActivity;
import android.os.Bundle;
import android.widget.VideoView;
import android.widget.MediaController;


public class popwindow extends ActionBarActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.popwindow);

        final VideoView sumitsVideoView = (VideoView) findViewById(R.id.sumitsvideoview);
        sumitsVideoView.setVideoPath("http://www.ebookfrenzy.com/android_book/movie.mp4");

        sumitsVideoView.start();
    }
}
