package org.netvirta.my_sdl_app

import android.os.Bundle
import android.util.Log
import com.netvirta.testgles.generated.Hello
import org.libsdl.app.SDLActivity

class MainActivity : SDLActivity() {
    val TAG = MainActivity::class.java.simpleName

    companion object {
        init {
            System.loadLibrary("native_image_processor")
        }
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        val hello = Hello.create()
        Log.d(TAG, "onCreate: " + hello.setString("LOL"))
    }
}
