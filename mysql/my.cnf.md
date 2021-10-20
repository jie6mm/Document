# my.cnf

```
# 客户端连接超时配置，默认八小时(60*60*8=28800)，最大值只允许2147483（24天左右）
wait_timeout=28800
# 每次事务的redo log都直接持久化到磁盘，保证MySQL异常重启之后数据不丢失
innodb_flush_log_at_trx_commit=1
# 每次事务的binlog都持久化到磁盘，保证MySQL异常重启之后binlog不丢失
sync_binlog=1
# 设置事物隔离级别，MySql默认可重复读，Oracle默认读已提交
transaction-isolation=REPEATABLE-READ
```