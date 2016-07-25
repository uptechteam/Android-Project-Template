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
buildTypes {
${releseBuildType}{
minifyEnabled false
proguardFiles getDefaultProguardFile('proguard-android.txt'), 'proguard-rules.pro'}
${debugBuildType}{
applicationIdSuffix ".dev"
minifyEnabled false}}
compileOptions {
        targetCompatibility 1.8
        sourceCompatibility 1.8
    }
apply plugin:'me.tatarka.retrolambda'
apply plugin:'realm-android'
apply plugin:'com.neenbedankt.android-apt'
apply from: '../config/quality.gradle'

//this dependencies can be moved to its usual place
dependencies{
provided 'org.glassfish:javax.annotation:10.0-b28'
apt 'com.google.dagger:dagger-compiler:2.0.1'
compile 'com.google.dagger:dagger:2.0.1'
}}