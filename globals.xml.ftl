<?xml version="1.0"?>
<globals>
    <global id="hasNoActionBar" type="boolean" value="false" />
    <global id="isLauncher" type="boolean" value="${isNewProject?string}" />
    <global id="topOut" value="." />
    <global id="projectOut" value="." />
    <global id="manifestOut" value="${manifestDir}" />
    <global id="srcOut" value="${srcDir}/${slashedPackageName(packageName)}" />
    <global id="mavenUrl" value="mavenCentral" />
    <global id="srcFolder" value="${srcDir}" />
    <#include "../common/common_globals.xml.ftl" />
    <global id="gradlePluginVersion" value="0.6.+" />
    <global id="junitVersion" value="4.12" />
    <global id="unitTestsSupported" type="boolean" value="${(compareVersions(gradlePluginVersion, '1.1.0') >= 0)?string}" />
</globals>
