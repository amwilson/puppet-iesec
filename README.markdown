#iesec

####Table of Contents

1. [Overview](#overview)
2. [Module Description - What the module does and why it is useful](#module-description)
3. [Setup - The basics of getting started with iesec](#setup)
    * [What iesec affects](#what-iesec-affects)
    * [Setup requirements](#setup-requirements)
4. [Usage - Configuration options and additional functionality](#usage)
5. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
5. [Limitations - OS compatibility, etc.](#limitations)
6. [Development - Guide for contributing to the module](#development)

##Overview

Manage Internet Explorer Enhanced Security (IESEC) on Microsoft Windows

##Module Description

IESEC on Windows Server can affect the browsing experience and not allow
important sites to load.  This module will allow you to control the settings for IESEC.

##Setup

###What iesec affects

* If enabled, activex and scripting are disabled
* If disabled, activex and scripting are enabled

###Setup Requirements

Depends on the following modules:

[puppetlabs/registry](https://forge.puppetlabs.com/puppetlabs/registry)

[puppetlabs/stdlib](https://forge.puppetlabs.com/puppetlabs/stdlib)

##Usage

Class: iesec

        class { 'iesec':
          iesec_admin => false,
          iesec_users => true,
        }

Parameters:
  $iesec_admin
  $iesec_users

Both parameters accept boolean true and false

##Reference

Here, list the classes, types, providers, facts, etc contained in your module. This section should include all of the under-the-hood workings of your module so people know what the module is touching on their system but don't need to mess with things. (We are working on automating this section!)

##Limitations

Supported on Windows Server 2008R2.  Testing for Server 2012 will be needed.

##Development

##Release Notes/Contributors/Etc

Contributors:

        Thomas Linkin <tom@puppetlabs.com>
