# spectrum-nz-db

Docker image with NZ spectrum database in sqlite format

## Usage

To get a shell: `docker run -it blairs/spectrum-nz-db`

The db file is /db/prism.sqlite3

```
root@8c4cc0d030b6:/db# sqlite3 prism.sqlite3 
SQLite version 3.11.0 2016-02-15 17:29:24
Enter ".help" for usage hints.
sqlite> select count(*) from spectrum;
77726
sqlite> 
root@8c4cc0d030b6:/db# sqlite3 prism.sqlite3 
SQLite version 3.11.0 2016-02-15 17:29:24
Enter ".help" for usage hints.
sqlite> .tables
associatedlicences     licence                radiationpattern     
clientname             licenceconditions      receiveconfiguration 
emission               licencetype            spectrum             
emissionlimit          location               transmitconfiguration
geographicreference    managementright      
issuingoffice          mapdistrict          
sqlite> select count(*) from spectrum;
77726
sqlite> 

```

