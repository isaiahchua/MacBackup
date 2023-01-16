## Purpose

For backup of files to an external hard disk drive within a MacOS environment.

## Requirements

A bash terminal with Rsync installed.

## Usage

If Rsync version is below 3.0.0 ensure that the ``--append`` flag is used.
Otherwise, ensure that the ``--append-verify`` flag is used.

Change the source (src) and destination (dest) locations to match the source and
target directories for backup for your system

## Notices

Currently, only a one-way update synchronization routine is supported. 
- Files are first updated from ``src`` to ``dest``
- Files that are present in ``dest`` but do not exist in ``src`` are deleted
- Files are updated from ``dest`` to ``src``
- Hidden files are excluded from synchronization
