package org.jetbrains.kmptestdata

import kotlin.test.Test
import kotlin.test.assertContains
import kotlin.test.assertEquals

class SharedLogicDesktopTest {

    @Test
    fun example1() {
        assertEquals(3, 1 + 2)
    }

    @Test
    fun example2() {
        assertContains(Greeting().greet(), "Java")
    }

    @Test
    fun example3_fail() {
        assertContains(Greeting().greet(), "Not Java")
    }
}