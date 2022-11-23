;Fichero db.zeppelinux.net
$TTL 1D
@                         IN      SOA     ns1.angelcaamal.com.     administrador.angelcaamal.com. (
                                2020011301      ; Serial
                                    604800      ; Refresh (7 días)
                                     86400      ; Retry (24 horas)
                                   2419200      ; Expire (28 días)
                                     10800 )    ; Negative cache TTL (3 horas)
 
; Servidor DNS del dominio
                          IN      NS      ns1.angelcaamal.com.
 
; Hosts
ns1                       IN      A       192.168.57.153
mipagina.angelcaamal.com. IN      A       192.168.57.100
miservidorftp             IN      A       192.168.57.101
miservidorcorreo          IN      A       192.168.57.102
 
; Alias
www                       IN      CNAME   mipagina
ftp                       IN      CNAME   miservidorftp
mail                      IN      CNAME   miservidorcorreo
 
; Servidores de correo (MTA)
@                         IN      MX 10   miservidorcorreo
