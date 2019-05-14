package org.libsdl.testgles;

import android.os.Bundle;
import android.util.Log;

import com.netvirta.testgles.generated.Hello;

import org.libsdl.app.SDLActivity;

public class testglesActivity extends SDLActivity
{
    public static final String TAG = testglesActivity.class.getSimpleName();

    static {
        System.loadLibrary("native_image_processor");
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Hello hello = Hello.create();
        Log.d(TAG, "onCreate: " + hello.setString("LOL"));
    }
}
