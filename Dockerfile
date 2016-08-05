FROM jpillora/chisel

ADD entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
