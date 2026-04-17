# Oracle XE Install Notes

Had note kat3awnk tinstall Oracle XE b sor3a.
Khalih simple w step by step.

## Steps
1. Download Oracle XE mn official site.
2. Run setup as Administrator.
3. Ikhtar installation folder.
4. Set strong password l users bhal SYSTEM.
5. Sali install w verify service khdama.

## Quick Checks
- Listener port khaso ykon 1521.
- Service name ghaliban `XEPDB1`.
- Ila ma tconnectitich, check firewall/service status.

## Test Connection (SQL*Plus)

```sql
sqlplus system/YourPassword@localhost:1521/XEPDB1
```

Ila ban lik SQL prompt, kolchi mzyan.
