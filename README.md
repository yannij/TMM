#TMM
*TMM (Teapot, Mustache, Mongo) is a simple to use Web/CRUD framework built on Pharo Smalltalk.*

The main elements of the framework are:
 * Teapot - a micro web framework]
 * Mustache - a popular templating engine
 * Mongo - a key/value store (a.k.a. noSQL database)
 * Voyage - a small persistence framework for "mapping" to an object database
 * Magritte3 - a meta data framework
 * Zinc SSO - a single-sign-on framework

Some useful links:
 * [Teapot - Pharo repository](http://smalltalkhub.com/#!/~zeroflag/Teapot)
 * [Mustache - Pharo repository](http://smalltalkhub.com/#!/~NorbertHartl/Mustache)
 * [Mustache blog post](http://norbert.hartl.name/blog/2013/10/03/mustache-templates-for-smalltalk/)
 * [Mustache website](https://mustache.github.io/)
 * [Voyage/MongoDB blog post](http://tulipemoutarde.be/2012/05/24/mongodb-with-voyage-in-pharo.html)
 * [Voyage - Pharo repository](http://smalltalkhub.com/#!/~estebanlm/Voyage)
 * [MongoDB website](https://www.mongodb.org/)
 * [Zinc SSO documentation](https://github.com/svenvc/docs/blob/master/zinc/zinc-sso-paper.md)


## Installing

The current version of **TMM** has been tested in
Pharo4.0

### Pharo
To install in **Pharo**:

```
CodeImporter evaluateString:
  'https://raw.githubusercontent.com/yannij/TMM/master/ConfigurationOfTMM.st' asUrl retrieveContents.
```

```Smalltalk
((Smalltalk at: #ConfigurationOfTMM) project version: #'stable') load.
```

## Configure

Find the config-sample.json file in the git filetree. Copy the file to the image directory, and name it "config.json". Edit the value of "staticFilePath" - point it at the "files" directory in the git filetree.

## Run

After MongoDB is running, set up the demo repository using:
```
TMMFlowerStore setUpMongo.
```

Start the web server using:
```
TMMFlowerStore runLocal.
```

From a web browser, go to:

http://localhost:1701.

## TO DO
https://github.com/yannij/TMM/wiki
