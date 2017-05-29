$TTL    604800
$ORIGIN example.com.
@       IN      SOA     example.com. root.example.com. (
                             10         ; Serial
                         604800         ; Refresh
                          86400         ; Retry
                        2419200         ; Expire
                         604800 )       ; Negative Cache TTL
;
@               IN      NS      example.com.
@               IN      A       10.1.1.2
 
gitlab          IN      A       10.1.1.50
haproxy         IN      A       10.1.1.100
cluster         IN      A       10.1.1.100
dns             IN      A       10.1.1.2
 
master-01       IN      A       10.1.1.101
master-02       IN      A       10.1.1.102
master-03       IN      A       10.1.1.103
 
etcd-01         IN      A       10.1.1.104
etcd-02         IN      A       10.1.1.105
etcd-03         IN      A       10.1.1.106
 
node-01         IN      A       10.1.1.111
node-02         IN      A       10.1.1.112
node-02         IN      A       10.1.1.113
 
management      IN      A       10.1.1.120

*               IN      A       10.1.1.200
                IN      A       10.1.1.201
                IN      A       10.1.1.202
                IN      A       10.1.1.203
