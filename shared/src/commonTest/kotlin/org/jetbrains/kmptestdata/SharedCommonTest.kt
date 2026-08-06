package org.jetbrains.kmptestdata

import kotlin.test.Test
import kotlin.test.assertContains
import kotlin.test.assertEquals

class SharedCommonTest {

    @Test
    fun example() {
        assertEquals(3, 1 + 2)
    }

    @Test
    fun exampleIos() {
        assertContains(Greeting().greet(), "iOS")
    }

    @Test
    fun testExampleAndroid() {
        assertContains(Greeting().greet(), "Android")
    }

    @Test
    fun testExampleJava() {
        assertContains(Greeting().greet(), "Java")
    }

    @Test
    fun testExampleWasm() {
        assertContains(Greeting().greet(), "Wasm")
    }

    @Test
    fun testExampleJs() {
        assertContains(Greeting().greet(), "Chrome")
    }
}