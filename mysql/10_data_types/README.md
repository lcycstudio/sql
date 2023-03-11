# Data Types

## CHAR VS VARCHAR
https://dev.mysql.com/doc/refman/8.0/en/char.html

| Value  | Char(4) | Storage | varchar(4) | Storage |
|--------|---------|---------|------------|---------|
| ''     | '   '   | 4 bytes | ''         | 1 byte  |
| 'ab'   | 'ab '   | 4 bytes | 'ab'       | 3 bytes |
| 'abcd' | 'abcd'  | 4 bytes | 'abcd'     | 5 bytes |

CHAR is faster for fixed length text
- State abbreviations: CA, NY
- Yes/No Flags: Y/N
- Zip codes: 59715, 94924
Otherwise, USE VARCHAR


## INTEGER
https://dev.mysql.com/doc/refman/8.0/en/integer-types.html

| Type      | Storage (Bytes) | Minimum Value Signed | Minimum Value Unsigned | Maximum Value Signed | Maximum Value Unsigned |
|-----------|-----------------|----------------------|------------------------|----------------------|------------------------|
| TINYINT   | 1               | -128                 | 0                      | 127                  | 255                    |
| SMALLINT  | 2               | -32768               | 0                      | 32767                | 65535                  |
| MEDIUMINT | 3               | -8388608             | 0                      | 8388607              | 1677215                |
| INT       | 4               | -2147483648          | 0                      | 2147483647           | 4294967295             |
| BIGINT    | 8               | -2^63                | 0                      | 2^63-1               | 2^64-1                 |

## FLOAT VS DOUBLE
https://dev.mysql.com/doc/refman/8.0/en/floating-point-types.html
https://dev.mysql.com/doc/refman/8.0/en/choosing-types.html

| Data Type | Memory Needed | Precision Issues |
|-----------|---------------|------------------|
| FLOAT     | 4 Bytes       | -7 digits        |
| DOUBLE    | 8 Bytes       | -15 digits       |