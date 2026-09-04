package org.jetbrains.kmptestdata

import kotlin.test.Test
import kotlin.test.assertContains
import kotlin.test.assertEquals

class SharedLogicJsTest {

    @Test
    fun example1() {
        var a = Greeting().greet()
        assertEquals(3, 1 + 2)
    }

    @Test
    fun example2() {
        assertContains(Greeting().greet(), "Chrome")
    }

    @Test
    fun example3_fail() {
        assertContains(Greeting().greet(), "Not Chrome")
    }
}