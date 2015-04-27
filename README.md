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
 * [Voyage - Pharo repository](http://smalltalkhub.com/mc/estebanlm/Voyage/main)
 * [MongoDB website](https://www.mongodb.org/)
 * [Zinc SSO documentation](https://github.com/svenvc/docs/blob/master/zinc/zinc-sso-paper.md)


## Installing

The current version of **TMM** has been tested in
Pharo4.0

### Pharo
To install in **Pharo**:

```Smalltalk
((Smalltalk at: #ConfigurationOfTMM) project version: #'stable') load.
```
