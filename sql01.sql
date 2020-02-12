/*
開始學習 sql
*/
show databases;	-- 顯示目前所有資料庫
create database iii;
use class;
select * from students;
use iii;
create table tb1 (f1 int, f2 varchar(10));
use class;
create table iii.tb2 (f1 int, f2 varchar(10));
