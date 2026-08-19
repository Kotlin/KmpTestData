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
    fun testExample2() {
        assertContains(Greeting().greet(), "Chrome")
    }

    @Test
    fun testExample3_fail() {
        assertContains(Greeting().greet(), "Not Chrome")
    }
}