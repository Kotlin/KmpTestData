package org.jetbrains.kmptestdata

import android.os.Build
import androidx.test.platform.app.InstrumentationRegistry
import androidx.test.ext.junit.runners.AndroidJUnit4

import org.junit.Test
import org.junit.runner.RunWith

import org.junit.Assert.*

/**
 * Instrumented test, which will execute on an Android device.
 *
 * See [testing documentation](http://d.android.com/tools/testing).
 */
@RunWith(AndroidJUnit4::class)
class AndroidInstrumentedTest {
    @Test
    fun useAppContext1() {
        var a = Greeting().greet()
        val appContext = InstrumentationRegistry.getInstrumentation().targetContext
        assertEquals("test", appContext.packageName)
    }

    @Test
    fun useAppContext2() {
        var a = Greeting().greet()
        val appContext = InstrumentationRegistry.getInstrumentation().targetContext
        assertEquals("org.jetbrains.kmptestdata", appContext.packageName)
    }
}