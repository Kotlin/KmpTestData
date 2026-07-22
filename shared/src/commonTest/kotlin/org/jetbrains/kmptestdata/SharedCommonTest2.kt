package org.jetbrains.kmptestdata

import kotlin.test.Test
import kotlin.test.assertContains
import kotlin.test.assertEquals

class SharedCommonTest2_A {

    @Test
    fun example_A() {
        assertEquals(3, 1 + 2)
    }

    @Test
    fun exampleIos_A() {
        assertContains(Greeting().greet(), "iOS")
    }

    @Test
    fun testExampleAndroid_A() {
        assertContains(Greeting().greet(), "Android")
    }

    @Test
    fun testExampleJava_A() {
        assertContains(Greeting().greet(), "Java")
    }

    @Test
    fun testExampleWasm_A() {
        assertContains(Greeting().greet(), "Web with Kotlin/Wasm")
    }

    @Test
    fun testExampleJs_A() {
        assertContains(Greeting().greet(), "Web with Kotlin/JS")
    }
}

class SharedCommonTest2_B {

    @Test
    fun example_B() {
        assertEquals(3, 1 + 2)
    }

    @Test
    fun exampleIos_B() {
        assertContains(Greeting().greet(), "iOS")
    }

    @Test
    fun testExampleAndroid_B() {
        assertContains(Greeting().greet(), "Android")
    }

    @Test
    fun testExampleJava_B() {
        assertContains(Greeting().greet(), "Java")
    }

    @Test
    fun testExampleWasm_B() {
        assertContains(Greeting().greet(), "Web with Kotlin/Wasm")
    }

    @Test
    fun testExampleJs_B() {
        assertContains(Greeting().greet(), "Web with Kotlin/JS")
    }
}