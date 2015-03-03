grails.project.work.dir = 'target'

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
        grailsCentral()
        mavenLocal()
        mavenCentral()
    }

    dependencies {
        compile 'org.apache.poi:poi:3.11'
    }

    plugins {
        build(":release:3.0.1",
              ":rest-client-builder:1.0.3") {
            export = false
        }
    }
}
