import sbt._
import Keys._
import play.Project._

object ApplicationBuild extends Build {

  val appName         = "foobar"
  val appVersion      = "0.1"

  val appDependencies = Seq(
    "org.scalaz" %% "scalaz-core" % "7.0.6"
  )

  val main = play.Project(appName, appVersion, appDependencies).settings(
    scalacOptions ++= Seq("-deprecation", "-feature")
  )

}
