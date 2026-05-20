package org.jetbrains.kmptestdata

interface Platform {
    val name: String
}

expect fun getPlatform(): Platform