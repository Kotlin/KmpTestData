package org.jetbrains.kmptestdata

import kotlin.test.Test
import kotlin.test.assertContains
import kotlin.test.assertEquals

class SharedLogicWebTest2_A {

    @Test
    fun example_A() {
        assertEquals(3, 1 + 2)
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

class SharedLogicWebTest2_B {

    @Test
    fun example_B() {
        assertEquals(3, 1 + 2)
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