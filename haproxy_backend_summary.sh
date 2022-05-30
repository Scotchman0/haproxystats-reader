#!/bin/bash
haproxy_1=haproxy.config_default
haproxy_2=haproxy.config_shard

echo "default haproxy cluster totals Dynamic-cookie-key | server-template | be_http | be_tcp | be_sni | be_no_sni | be_edge_http"
cat $haproxy_1 |  grep dynamic-cookie-key | wc -l
cat $haproxy_1 | grep server-template | wc -l
cat $haproxy_1 | grep be_http | wc -l
cat $haproxy_1 | grep be_tcp | wc -l
cat $haproxy_1 | grep be_sni | wc -l
cat $haproxy_1 | grep be_no_sni | wc -l
cat $haproxy_1 | grep be_edge_http | wc -l

echo "sharded cluster totals Dynamic-cookie-key | server-template | be_http | be_tcp | be_sni | be_no_sni | be_edge_http"
cat $haproxy_2 | grep dynamic-cookie-key | wc -l
cat $haproxy_2 | grep server-template | wc -l
cat $haproxy_2 | grep be_http | wc -l
cat $haproxy_2 | grep be_tcp | wc -l
cat $haproxy_2 | grep be_sni | wc -l
cat $haproxy_2 | grep be_no_sni | wc -l
cat $haproxy_2 | grep be_edge_http | wc -l

