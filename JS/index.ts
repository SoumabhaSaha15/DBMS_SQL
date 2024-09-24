import fs from 'fs';
import { sql } from "drizzle-orm";
import { text, integer, sqliteTable, } from "drizzle-orm/sqlite-core";
import { drizzle } from 'drizzle-orm/better-sqlite3';
import Database from 'better-sqlite3';
// import { json } from 'drizzle-orm/mysql-core';
const user = sqliteTable('user', {
    id: integer('id').notNull().primaryKey(),
    Name: text("Name").notNull(),
    Email: text("Email").notNull().unique()
});

const sqlite = new Database('db.sqlite3');
const db = drizzle(sqlite);
const result = await db.select().from(user);
fs.writeFileSync('./user.db.json',JSON.stringify(result),"utf-8");
try {
    
    // let x = await db.insert(user).values({id:2,Name:"Soumabha Saha",Email:"soumabhasaha1509+test1@gmail.com"});
    // console.log(x);
} catch (error) {
    // console.error(error);
}