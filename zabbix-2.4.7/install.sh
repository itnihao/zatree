#!/bin/bash
#author: itnihao

wget zatree-2.4.7.patch
wget zatree.tar.gz
tar xvf zatree.tar.gz
patch  -Np0 <zatree-2.4.7.patch
