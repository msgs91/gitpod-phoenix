#!/bin/bash

#init db
psql --command "CREATE ROLE postgres LOGIN CREATEDB;" 

#reset app 
#gp env PHX_APP=""
#eval $(gp env -e) 
