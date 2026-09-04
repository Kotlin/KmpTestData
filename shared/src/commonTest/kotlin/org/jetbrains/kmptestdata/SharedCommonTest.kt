package org.jetbrains.kmptestdata

import kotlin.test.Test
import kotlin.test.assertContains
import kotlin.test.assertEquals

class SharedCommonTest {

    @Test
    fun example() {
        var a = Greeting().greet()
        assertEquals(3, 1 + 2)
    }

    @Test
    fun exampleIos() {
        assertContains(Greeting().greet(), "iOS")
    }

    @Test
    fun exampleAndroid() {
        assertContains(Greeting().greet(), "Android")
    }

    @Test
    fun exampleJava() {
        assertContains(Greeting().greet(), "Java")
    }

    @Test
    fun exampleWasm() {
        assertContains(Greeting().greet(), "Wasm")
    }

    @Test
    fun exampleJs() {
        assertContains(Greeting().greet(), "Chrome")
    }
}