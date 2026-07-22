package org.jetbrains.kmptestdata

import kotlin.test.Test
import kotlin.test.assertContains
import kotlin.test.assertEquals

class SharedLogicDesktopTest2_A {

    @Test
    fun example1_A() {
        assertEquals(3, 1 + 2)
    }

    @Test
    fun example2_A() {
        assertContains(Greeting().greet(), "Java")
    }

    @Test
    fun example3_fail_A() {
        assertContains(Greeting().greet(), "Not Java")
    }
}

class SharedLogicDesktopTest2_B {

    @Test
    fun example1_B() {
        assertEquals(3, 1 + 2)
    }

    @Test
    fun example2_B() {
        assertContains(Greeting().greet(), "Java")
    }

    @Test
    fun example3_fail_B() {
        assertContains(Greeting().greet(), "Not Java")
    }
}