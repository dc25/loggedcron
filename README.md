NAME
====

**loggedcron.bash** — Wrapper script to log output from wrapped executable.  Intended to be used in cron jobs.

SYNOPSIS
========

**loggedcron.bash** \[worker\] \[arguments\]

DESCRIPTION
===========

Runs the worker and saves the output in file : ~/cron_logs/worker/\<_date_\> .  Also records the date/time of execution and the name of the worker script.

NOTES
=====

Worker can be executable or script.   Worker is expected to run w/o arguments.


