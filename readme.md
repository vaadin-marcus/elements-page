# Vaadin Elements Page

## Development instructions. 

0. Install Liferay
1. Make sure you have a liferay profile set up in ~/.m2/settings.xml. Here is one that works:
``` 
<?xml version="1.0"?>
<settings xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns="http://maven.apache.org/SETTINGS/1.0.0" xsi:schemaLocation="http://maven.apache.org/SETTINGS/1.0.0 http://maven.apache.org/xsd/settings-1.0.0.xsd">

  <profiles>
    <profile>
      <id>liferay-config</id>
      <properties>
        <liferay.version>6.2.3</liferay.version>
        <liferay.maven.plugin.version>6.2.10.13</liferay.maven.plugin.version>
        <liferay.auto.deploy.dir>/path/to/liferay/deploy</liferay.auto.deploy.dir>
        <liferay.app.server.dir>/path/to/liferay/tomcat-7.0.42/webapps</liferay.app.server.dir>
        <liferay.app.server.deploy.dir>/path/to/liferay/tomcat-7.0.42/webapps</liferay.app.server.deploy.dir>
        <liferay.app.server.lib.global.dir>/path/to/liferay/tomcat-7.0.42/lib/ext</liferay.app.server.lib.global.dir>
        <liferay.app.server.portal.dir>/path/to/liferay/tomcat-7.0.42/webapps/ROOT</liferay.app.server.portal.dir>
      </properties>
    </profile>
  </profiles>

  <activeProfiles>
    <activeProfile>liferay-config</activeProfile>
  </activeProfiles>
</settings>
```

2. Make sure you have `npm`, `bower` and `vulcanize` installed
3. Run `bower install`
4. Run `./vulcanize.sh`
5. Run `mvn clean package liferay:deploy`