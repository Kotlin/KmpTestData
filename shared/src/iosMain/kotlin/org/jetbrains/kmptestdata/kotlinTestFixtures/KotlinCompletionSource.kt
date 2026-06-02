package org.jetbrains.kmptestdata.kotlinTestFixtures

fun existingKotlinTopLevelFunction(): String {
    return "topLevel"
}

class ExistingKotlinSourceType {
    val existingKotlinMemberValue: String = "member"

    fun existingKotlinMemberFunction(): String {
        return existingKotlinMemberValue
    }
}

interface ExistingKotlinSourceContract {
    fun existingKotlinContractFunction(): String
}

enum class ExistingKotlinSourceMode {
    READY,
    PAUSED
}
