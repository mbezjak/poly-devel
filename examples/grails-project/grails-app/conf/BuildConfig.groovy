grails.project.work.dir = 'target'

grails.servlet.version = '3.0'
grails.project.target.level = 1.7
grails.project.source.level = 1.7

grails.project.fork = [
    test    : [maxMemory: 768, minMemory: 64, debug: false, maxPerm: 256, daemon:true],
    run     : [maxMemory: 768, minMemory: 64, debug: false, maxPerm: 256, forkReserve:false],
    war     : [maxMemory: 768, minMemory: 64, debug: false, maxPerm: 256, forkReserve:false],
    console : [maxMemory: 768, minMemory: 64, debug: false, maxPerm: 256]
]

grails.project.dependency.resolver   = 'maven'
grails.project.dependency.resolution = {
    inherits 'global'
    log 'warn'

    repositories {
        inherits true

        grailsPlugins()
        grailsHome()
        mavenLocal()
        grailsCentral()
        mavenCentral()
    }

    dependencies {
        compile 'org.apache.poi:poi:3.11'
        test "org.grails:grails-datastore-test-support:1.0.2-grails-2.4"
    }

    plugins {
        build ":tomcat:7.0.55"

        compile ":scaffolding:2.1.2"
        compile ':cache:1.1.8'
        compile ":asset-pipeline:1.9.9"

        runtime ":hibernate4:4.3.6.1"
        runtime ":database-migration:1.4.0"
        runtime ":jquery:1.11.1"
    }
}
