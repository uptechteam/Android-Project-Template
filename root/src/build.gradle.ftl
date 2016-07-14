/*
 * Gets current branch name and commits count for it
 */
def getVersionCodeFromGit = { ->
    def currentBranch = new ByteArrayOutputStream()
    exec {
        commandLine 'git', "rev-parse", "--abbrev-ref", "HEAD"
        standardOutput = currentBranch
    }

    def codeVersion = new ByteArrayOutputStream()
    exec {
        commandLine 'git', "rev-list", "--count", currentBranch.toString().trim()
        standardOutput = codeVersion
    }
    return codeVersion.toString().toInteger()
}
android {
	apply plugin: 'com.neenbedankt.android-apt'
	dependencies {
	    provided 'org.glassfish:javax.annotation:10.0-b28'
	    apt 'com.google.dagger:dagger-compiler:2.0.1'
	    compile 'com.google.dagger:dagger:2.0.1'
	}
}

dependencies {
	androidTestCompile 'com.android.support.test:runner:0.4'
    // Set this dependency to use JUnit 4 rules
    androidTestCompile 'com.android.support.test:rules:0.4'
    // Set this dependency to build and run Espresso tests
    androidTestCompile 'com.android.support.test.espresso:espresso-core:2.2.1'
    // Set this dependency to build and run UI Automator tests
    androidTestCompile 'com.android.support.test.uiautomator:uiautomator-v18:2.1.2'

    testCompile 'com.android.support.test:runner:0.4'
    // Set this dependency to use JUnit 4 rules
    testCompile 'com.android.support.test:rules:0.4'
    testCompile "org.mockito:mockito-core:1.10.19"
    // Set this dependency to build and run Espresso tests
    testCompile 'com.android.support.test.espresso:espresso-core:2.2.1'
    // Set this dependency to build and run UI Automator tests
    testCompile 'com.android.support.test.uiautomator:uiautomator-v18:2.1.2'

    androidTestCompile 'com.android.support:support-annotations:23.3.0'
    testCompile 'com.android.support:support-annotations:23.3.0'
    compile 'com.android.support:support-annotations:23.3.0'
}