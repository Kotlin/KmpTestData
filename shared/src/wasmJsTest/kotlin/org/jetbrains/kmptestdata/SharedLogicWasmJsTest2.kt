package org.jetbrains.kmptestdata

import kotlin.test.Test
import kotlin.test.assertContains
import kotlin.test.assertEquals

class SharedLogicWasmJsTest2_A {

    @Test
    fun example1() {
        assertEquals(3, 1 + 2)
    }

    @Test
    fun testExample2() {
        assertContains(Greeting().greet(), "Wasm")
    }

    @Test
    fun testExample3_fail() {
        assertContains(Greeting().greet(), "Not Wasm")
    }
}

class SharedLogicWasmJsTest2_B {

    @Test
    fun example_B() {
        assertEquals(3, 1 + 2)
    }

    @Test
    fun testExampleWasm_B() {
        assertContains(Greeting().greet(), "Wasm")
    }

    @Test
    fun testExampleJs_B() {
        assertContains(Greeting().greet(), "Not Wasm")
    }
}