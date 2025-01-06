#für SQL-Server
setspn -s MSSQLSvc/sp1:1433 sample\sqlservice				
setspn -s MSSQLSvc/sp1.sample.local:1433 sample\sqlservice

#für Webanwendung
setspn -s HTTP/sp1 sample\sp-service 			
setspn -s HTTP/sp1.sample.local sample\sp-service

#für ZentralAdministration
setspn -s HTTP/s1:11111 sample\sp-farm 				
setspn -s HTTP/sp1.schulung.local:5331 sample\sp-farm

#für MysiteHost
#setspn -s HTTP/mysite svc-spmyapppool
#setspn -s HTTP/mysite.sample.local svc-spmyapppool

#In der ZA bei den Webanwendungen die Auth. auf "Kerberos" umstellen
#Danach prüfen, ob im IIS die Auth bei Windowsauth.-> Anbieter auf "Negotiate" steht!
#Mit klist prüfen ob Ticket ausgestellt wurde
#Mit klist purge Tickets löschen

#Eventlog IDs mit 4624 prüfen!