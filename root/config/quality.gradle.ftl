apply plugin: 'checkstyle'
apply plugin: 'findbugs'
apply plugin: 'pmd'

/*
 * Copyright 2015 Vincent Brison.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *    http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

// Add checkstyle, findbugs, pmd and lint to the check task.
check.dependsOn 'checkstyle', 'findbugs', 'pmd', 'lint'

task checkstyle(type: Checkstyle) {
    configFile file("${project.rootDir}/config/quality/checkstyle/checkstyle.xml")
    configProperties.checkstyleSuppressionsPath = file("${project.rootDir}/config/quality/checkstyle/suppressions.xml").absolutePath
    source 'src'
    include '**/*.java'
    exclude '**/gen/**'
    classpath = files()
}

task findbugs(type: FindBugs, dependsOn: assembleDebug) {
    ignoreFailures = false
    effort = "max"
    reportLevel = "high"
    excludeFilter = new File("${project.rootDir}/config/quality/findbugs/findbugs-filter.xml")
    classes = files("${project.rootDir}/app/build/intermediates/classes")

    source 'src'
    include '**/*.java'
    exclude '**/gen/**'

    reports {
        xml.enabled = false
        html.enabled = true
        xml {
            destination "$project.buildDir/reports/findbugs/findbugs.xml"
        }
        html {
            destination "$project.buildDir/reports/findbugs/findbugs.html"
        }
    }

    classpath = files()
}

task pmd(type: Pmd) {
    ignoreFailures = false
    ruleSetFiles = files("${project.rootDir}/config/quality/pmd/pmd-ruleset.xml")
    ruleSets = []

    source 'src'
    include '**/*.java'
    exclude '**/gen/**'

    reports {
        xml.enabled = false
        html.enabled = true
        xml {
            destination "$project.buildDir/reports/pmd/pmd.xml"
        }
        html {
            destination "$project.buildDir/reports/pmd/pmd.html"
        }
    }
}

android {
    lintOptions {
        abortOnError true
        xmlReport false
        htmlReport true
        lintConfig file("${project.rootDir}/config/quality/lint/lint.xml")
        htmlOutput file("$project.buildDir/reports/lint/lint-result.html")
        xmlOutput file("$project.buildDir/reports/lint/lint-result.xml")
    }
}
