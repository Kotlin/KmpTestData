package org.jetbrains.kmptestdata

import kotlin.test.Test
import kotlin.test.assertContains
import kotlin.test.assertEquals

class SharedLogicWebTest {

    @Test
    fun example() {
        var a = Greeting().greet()
        assertEquals(3, 1 + 2)
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