### create user CSE1B_34 identified by soumabha;

To alter a table structure in **Oracle SQL 21c**, you use the `ALTER TABLE` statement. Depending on the specific change you need to make, the syntax varies. Here are some common use cases:

```json
{
  "connectionString": "localhost/XEPDB1",
  "user": "SoumabhaSaha",
  "password": "15092003"
}
```

### 1. **Add a New Column**

```sql
ALTER TABLE table_name
ADD column_name data_type;
```

Example:

```sql
ALTER TABLE employees
ADD department_id NUMBER;
```

### 2. **Modify an Existing Column (Data Type, Size, Nullability)**

```sql
ALTER TABLE table_name
MODIFY column_name new_data_type;
```

Example:

```sql
ALTER TABLE employees
MODIFY department_id VARCHAR2(10);
```

- To make a column `NULL` or `NOT NULL`:

```sql
ALTER TABLE employees
MODIFY department_id NOT NULL;
```

### 3. **Drop a Column**

```sql
ALTER TABLE table_name
DROP COLUMN column_name;
```

Example:

```sql
ALTER TABLE employees
DROP COLUMN department_id;
```

### 4. **Rename a Column**

```sql
ALTER TABLE table_name
RENAME COLUMN old_column_name TO new_column_name;
```

Example:

```sql
ALTER TABLE employees
RENAME COLUMN department_id TO dept_id;
```

### 5. **Add a Primary Key Constraint**

```sql
ALTER TABLE table_name
ADD CONSTRAINT constraint_name PRIMARY KEY (column_name);
```

Example:

```sql
ALTER TABLE employees
ADD CONSTRAINT emp_pk PRIMARY KEY (emp_id);
```

### 6. **Add a Foreign Key Constraint**

```sql
ALTER TABLE table_name
ADD CONSTRAINT constraint_name FOREIGN KEY (column_name) REFERENCES other_table(column_name);
```

Example:

```sql
ALTER TABLE employees
ADD CONSTRAINT dept_fk FOREIGN KEY (dept_id) REFERENCES departments(dept_id);
```

### 7. **Drop a Constraint**

```sql
ALTER TABLE table_name
DROP CONSTRAINT constraint_name;
```

Example:

```sql
ALTER TABLE employees
DROP CONSTRAINT dept_fk;
```

### 8. **Rename the Table**

```sql
ALTER TABLE old_table_name
RENAME TO new_table_name;
```

Example:

```sql
ALTER TABLE employees
RENAME TO staff;
```

Make sure to carefully consider the implications of altering table structures, as these changes can affect existing data and application functionality. Always back up data before making structural modifications.
