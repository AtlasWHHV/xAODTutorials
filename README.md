# xAODTutorials
Some scripts to get started with basic things

## Introduction

Scripts in here are meant to be stand alone and do some very simple thing.

## Setting up a standard RootCore directory

In order to access a xAOD file you need a RootCore release. This script builds
one from scratch. It is meant to be run from a machine similar to the tev
machines.

Usage:

    source access_xAOD_from_command_line.sh ../RootCoreDir

You should run from a new shell. It will leave your shell setup and ready.
You can then type:

     root -l $ROOTCOREDIR/scripts/load_packages.C DAOD_TRUTH0.testmeout.pool.root

The load_packages.C configures ROOT for accessing the xAOD file. If that ran successfully you'll get no errors.