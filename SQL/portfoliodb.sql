/*
Navicat PGSQL Data Transfer

Source Server         : postgres
Source Server Version : 90603
Source Host           : localhost:5432
Source Database       : portfoliodb
Source Schema         : public

Target Server Type    : PGSQL
Target Server Version : 90603
File Encoding         : 65001

Date: 2020-11-30 15:34:38
*/


-- ----------------------------
-- Sequence structure for auth_group_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."auth_group_id_seq";
CREATE SEQUENCE "public"."auth_group_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for auth_group_permissions_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."auth_group_permissions_id_seq";
CREATE SEQUENCE "public"."auth_group_permissions_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for auth_permission_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."auth_permission_id_seq";
CREATE SEQUENCE "public"."auth_permission_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 24
 CACHE 1;
SELECT setval('"public"."auth_permission_id_seq"', 24, true);

-- ----------------------------
-- Sequence structure for auth_user_groups_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."auth_user_groups_id_seq";
CREATE SEQUENCE "public"."auth_user_groups_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for auth_user_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."auth_user_id_seq";
CREATE SEQUENCE "public"."auth_user_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;
SELECT setval('"public"."auth_user_id_seq"', 1, true);

-- ----------------------------
-- Sequence structure for auth_user_user_permissions_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."auth_user_user_permissions_id_seq";
CREATE SEQUENCE "public"."auth_user_user_permissions_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for blog_blog_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."blog_blog_id_seq";
CREATE SEQUENCE "public"."blog_blog_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 2
 CACHE 1;
SELECT setval('"public"."blog_blog_id_seq"', 2, true);

-- ----------------------------
-- Sequence structure for django_admin_log_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."django_admin_log_id_seq";
CREATE SEQUENCE "public"."django_admin_log_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 14
 CACHE 1;
SELECT setval('"public"."django_admin_log_id_seq"', 14, true);

-- ----------------------------
-- Sequence structure for django_content_type_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."django_content_type_id_seq";
CREATE SEQUENCE "public"."django_content_type_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 8
 CACHE 1;
SELECT setval('"public"."django_content_type_id_seq"', 8, true);

-- ----------------------------
-- Sequence structure for django_migrations_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."django_migrations_id_seq";
CREATE SEQUENCE "public"."django_migrations_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 16
 CACHE 1;
SELECT setval('"public"."django_migrations_id_seq"', 16, true);

-- ----------------------------
-- Sequence structure for jobs_job_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."jobs_job_id_seq";
CREATE SEQUENCE "public"."jobs_job_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 3
 CACHE 1;
SELECT setval('"public"."jobs_job_id_seq"', 3, true);

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS "public"."auth_group";
CREATE TABLE "public"."auth_group" (
"id" int4 DEFAULT nextval('auth_group_id_seq'::regclass) NOT NULL,
"name" varchar(80) COLLATE "default" NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS "public"."auth_group_permissions";
CREATE TABLE "public"."auth_group_permissions" (
"id" int4 DEFAULT nextval('auth_group_permissions_id_seq'::regclass) NOT NULL,
"group_id" int4 NOT NULL,
"permission_id" int4 NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS "public"."auth_permission";
CREATE TABLE "public"."auth_permission" (
"id" int4 DEFAULT nextval('auth_permission_id_seq'::regclass) NOT NULL,
"name" varchar(255) COLLATE "default" NOT NULL,
"content_type_id" int4 NOT NULL,
"codename" varchar(100) COLLATE "default" NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO "public"."auth_permission" VALUES ('1', 'Can add blog', '1', 'add_blog');
INSERT INTO "public"."auth_permission" VALUES ('2', 'Can change blog', '1', 'change_blog');
INSERT INTO "public"."auth_permission" VALUES ('3', 'Can delete blog', '1', 'delete_blog');
INSERT INTO "public"."auth_permission" VALUES ('4', 'Can add job', '2', 'add_job');
INSERT INTO "public"."auth_permission" VALUES ('5', 'Can change job', '2', 'change_job');
INSERT INTO "public"."auth_permission" VALUES ('6', 'Can delete job', '2', 'delete_job');
INSERT INTO "public"."auth_permission" VALUES ('7', 'Can add log entry', '3', 'add_logentry');
INSERT INTO "public"."auth_permission" VALUES ('8', 'Can change log entry', '3', 'change_logentry');
INSERT INTO "public"."auth_permission" VALUES ('9', 'Can delete log entry', '3', 'delete_logentry');
INSERT INTO "public"."auth_permission" VALUES ('10', 'Can add permission', '4', 'add_permission');
INSERT INTO "public"."auth_permission" VALUES ('11', 'Can change permission', '4', 'change_permission');
INSERT INTO "public"."auth_permission" VALUES ('12', 'Can delete permission', '4', 'delete_permission');
INSERT INTO "public"."auth_permission" VALUES ('13', 'Can add group', '5', 'add_group');
INSERT INTO "public"."auth_permission" VALUES ('14', 'Can change group', '5', 'change_group');
INSERT INTO "public"."auth_permission" VALUES ('15', 'Can delete group', '5', 'delete_group');
INSERT INTO "public"."auth_permission" VALUES ('16', 'Can add user', '6', 'add_user');
INSERT INTO "public"."auth_permission" VALUES ('17', 'Can change user', '6', 'change_user');
INSERT INTO "public"."auth_permission" VALUES ('18', 'Can delete user', '6', 'delete_user');
INSERT INTO "public"."auth_permission" VALUES ('19', 'Can add content type', '7', 'add_contenttype');
INSERT INTO "public"."auth_permission" VALUES ('20', 'Can change content type', '7', 'change_contenttype');
INSERT INTO "public"."auth_permission" VALUES ('21', 'Can delete content type', '7', 'delete_contenttype');
INSERT INTO "public"."auth_permission" VALUES ('22', 'Can add session', '8', 'add_session');
INSERT INTO "public"."auth_permission" VALUES ('23', 'Can change session', '8', 'change_session');
INSERT INTO "public"."auth_permission" VALUES ('24', 'Can delete session', '8', 'delete_session');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS "public"."auth_user";
CREATE TABLE "public"."auth_user" (
"id" int4 DEFAULT nextval('auth_user_id_seq'::regclass) NOT NULL,
"password" varchar(128) COLLATE "default" NOT NULL,
"last_login" timestamptz(6),
"is_superuser" bool NOT NULL,
"username" varchar(150) COLLATE "default" NOT NULL,
"first_name" varchar(30) COLLATE "default" NOT NULL,
"last_name" varchar(150) COLLATE "default" NOT NULL,
"email" varchar(254) COLLATE "default" NOT NULL,
"is_staff" bool NOT NULL,
"is_active" bool NOT NULL,
"date_joined" timestamptz(6) NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
INSERT INTO "public"."auth_user" VALUES ('1', 'pbkdf2_sha256$100000$yZW0RYQGuwRF$o84dJ18ykJz5QoUgD9FAuMwzIawtWdr9nIpt+APn/Jc=', '2020-11-30 07:08:15.21059+05:45', 't', 'admin', 'Utsav', 'Joshi', 'admin@gmail.com', 't', 't', '2019-01-28 11:18:42+05:45');

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS "public"."auth_user_groups";
CREATE TABLE "public"."auth_user_groups" (
"id" int4 DEFAULT nextval('auth_user_groups_id_seq'::regclass) NOT NULL,
"user_id" int4 NOT NULL,
"group_id" int4 NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS "public"."auth_user_user_permissions";
CREATE TABLE "public"."auth_user_user_permissions" (
"id" int4 DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass) NOT NULL,
"user_id" int4 NOT NULL,
"permission_id" int4 NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for blog_blog
-- ----------------------------
DROP TABLE IF EXISTS "public"."blog_blog";
CREATE TABLE "public"."blog_blog" (
"id" int4 DEFAULT nextval('blog_blog_id_seq'::regclass) NOT NULL,
"title" varchar(255) COLLATE "default" NOT NULL,
"pub_date" timestamptz(6) NOT NULL,
"body" text COLLATE "default" NOT NULL,
"image" varchar(100) COLLATE "default" NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of blog_blog
-- ----------------------------
INSERT INTO "public"."blog_blog" VALUES ('1', 'My First Blog', '2019-01-28 11:26:05+05:45', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'images/blog-image1.jpg');
INSERT INTO "public"."blog_blog" VALUES ('2', 'My Second Blog', '2019-01-29 09:20:35+05:45', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.', 'images/pexels-photo-262508.jpeg');

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS "public"."django_admin_log";
CREATE TABLE "public"."django_admin_log" (
"id" int4 DEFAULT nextval('django_admin_log_id_seq'::regclass) NOT NULL,
"action_time" timestamptz(6) NOT NULL,
"object_id" text COLLATE "default",
"object_repr" varchar(200) COLLATE "default" NOT NULL,
"action_flag" int2 NOT NULL,
"change_message" text COLLATE "default" NOT NULL,
"content_type_id" int4,
"user_id" int4 NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
INSERT INTO "public"."django_admin_log" VALUES ('1', '2019-01-28 11:37:28.170033+05:45', '1', 'Blog object (1)', '1', '[{"added": {}}]', '1', '1');
INSERT INTO "public"."django_admin_log" VALUES ('2', '2019-01-28 15:05:49.780248+05:45', '1', 'Job object (1)', '1', '[{"added": {}}]', '2', '1');
INSERT INTO "public"."django_admin_log" VALUES ('3', '2019-01-28 15:07:29.879402+05:45', '2', 'Job object (2)', '1', '[{"added": {}}]', '2', '1');
INSERT INTO "public"."django_admin_log" VALUES ('4', '2019-01-28 15:08:52.364281+05:45', '1', 'Job object (1)', '2', '[{"changed": {"fields": ["summary"]}}]', '2', '1');
INSERT INTO "public"."django_admin_log" VALUES ('5', '2019-01-28 15:09:15.355206+05:45', '2', 'Job object (2)', '2', '[]', '2', '1');
INSERT INTO "public"."django_admin_log" VALUES ('6', '2019-01-28 15:15:40.481521+05:45', '1', 'Job object (1)', '2', '[{"changed": {"fields": ["image"]}}]', '2', '1');
INSERT INTO "public"."django_admin_log" VALUES ('7', '2019-01-28 15:15:43.375084+05:45', '2', 'Job object (2)', '2', '[]', '2', '1');
INSERT INTO "public"."django_admin_log" VALUES ('8', '2019-01-28 15:21:00.323481+05:45', '3', 'Job object (3)', '1', '[{"added": {}}]', '2', '1');
INSERT INTO "public"."django_admin_log" VALUES ('9', '2019-01-29 09:20:23.402467+05:45', '1', 'Blog object (1)', '2', '[]', '1', '1');
INSERT INTO "public"."django_admin_log" VALUES ('10', '2019-01-29 09:21:16.22172+05:45', '2', 'Blog object (2)', '1', '[{"added": {}}]', '1', '1');
INSERT INTO "public"."django_admin_log" VALUES ('11', '2019-01-29 11:25:44.259338+05:45', '2', 'My Second Blog', '2', '[]', '1', '1');
INSERT INTO "public"."django_admin_log" VALUES ('12', '2020-11-30 07:06:10.181416+05:45', '1', 'admin', '2', '[{"changed": {"fields": ["username", "first_name", "last_name", "email"]}}]', '6', '1');
INSERT INTO "public"."django_admin_log" VALUES ('13', '2020-11-30 07:07:44.042663+05:45', '1', 'admin', '2', '[{"changed": {"fields": ["password"]}}]', '6', '1');
INSERT INTO "public"."django_admin_log" VALUES ('14', '2020-11-30 07:07:50.654723+05:45', '1', 'admin', '2', '[]', '6', '1');

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS "public"."django_content_type";
CREATE TABLE "public"."django_content_type" (
"id" int4 DEFAULT nextval('django_content_type_id_seq'::regclass) NOT NULL,
"app_label" varchar(100) COLLATE "default" NOT NULL,
"model" varchar(100) COLLATE "default" NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO "public"."django_content_type" VALUES ('1', 'blog', 'blog');
INSERT INTO "public"."django_content_type" VALUES ('2', 'jobs', 'job');
INSERT INTO "public"."django_content_type" VALUES ('3', 'admin', 'logentry');
INSERT INTO "public"."django_content_type" VALUES ('4', 'auth', 'permission');
INSERT INTO "public"."django_content_type" VALUES ('5', 'auth', 'group');
INSERT INTO "public"."django_content_type" VALUES ('6', 'auth', 'user');
INSERT INTO "public"."django_content_type" VALUES ('7', 'contenttypes', 'contenttype');
INSERT INTO "public"."django_content_type" VALUES ('8', 'sessions', 'session');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS "public"."django_migrations";
CREATE TABLE "public"."django_migrations" (
"id" int4 DEFAULT nextval('django_migrations_id_seq'::regclass) NOT NULL,
"app" varchar(255) COLLATE "default" NOT NULL,
"name" varchar(255) COLLATE "default" NOT NULL,
"applied" timestamptz(6) NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO "public"."django_migrations" VALUES ('1', 'contenttypes', '0001_initial', '2019-01-28 11:14:26.421963+05:45');
INSERT INTO "public"."django_migrations" VALUES ('2', 'auth', '0001_initial', '2019-01-28 11:14:27.428024+05:45');
INSERT INTO "public"."django_migrations" VALUES ('3', 'admin', '0001_initial', '2019-01-28 11:14:27.697735+05:45');
INSERT INTO "public"."django_migrations" VALUES ('4', 'admin', '0002_logentry_remove_auto_add', '2019-01-28 11:14:27.732644+05:45');
INSERT INTO "public"."django_migrations" VALUES ('5', 'contenttypes', '0002_remove_content_type_name', '2019-01-28 11:14:27.802142+05:45');
INSERT INTO "public"."django_migrations" VALUES ('6', 'auth', '0002_alter_permission_name_max_length', '2019-01-28 11:14:27.822116+05:45');
INSERT INTO "public"."django_migrations" VALUES ('7', 'auth', '0003_alter_user_email_max_length', '2019-01-28 11:14:27.868925+05:45');
INSERT INTO "public"."django_migrations" VALUES ('8', 'auth', '0004_alter_user_username_opts', '2019-01-28 11:14:27.898848+05:45');
INSERT INTO "public"."django_migrations" VALUES ('9', 'auth', '0005_alter_user_last_login_null', '2019-01-28 11:14:27.937781+05:45');
INSERT INTO "public"."django_migrations" VALUES ('10', 'auth', '0006_require_contenttypes_0002', '2019-01-28 11:14:27.943724+05:45');
INSERT INTO "public"."django_migrations" VALUES ('11', 'auth', '0007_alter_validators_add_error_messages', '2019-01-28 11:14:27.977201+05:45');
INSERT INTO "public"."django_migrations" VALUES ('12', 'auth', '0008_alter_user_username_max_length', '2019-01-28 11:14:28.082473+05:45');
INSERT INTO "public"."django_migrations" VALUES ('13', 'auth', '0009_alter_user_last_name_max_length', '2019-01-28 11:14:28.115354+05:45');
INSERT INTO "public"."django_migrations" VALUES ('14', 'blog', '0001_initial', '2019-01-28 11:14:28.22146+05:45');
INSERT INTO "public"."django_migrations" VALUES ('15', 'jobs', '0001_initial', '2019-01-28 11:14:28.289035+05:45');
INSERT INTO "public"."django_migrations" VALUES ('16', 'sessions', '0001_initial', '2019-01-28 11:14:28.485377+05:45');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS "public"."django_session";
CREATE TABLE "public"."django_session" (
"session_key" varchar(40) COLLATE "default" NOT NULL,
"session_data" text COLLATE "default" NOT NULL,
"expire_date" timestamptz(6) NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO "public"."django_session" VALUES ('7umze8retf2cw6pbhiige0k4ydxmm46f', 'NzNmOWJlYTUyNmJkOTg0MDU3ZjkxZWMzMzZiNjcwZTdiZTFhMGRmYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2ZWI5OWUyYTFjMTNjZDlkMzU4ZmMzMDQzMjFlNzdiZDMzNjM4ZTRlIn0=', '2019-02-11 11:21:12.932326+05:45');

-- ----------------------------
-- Table structure for jobs_job
-- ----------------------------
DROP TABLE IF EXISTS "public"."jobs_job";
CREATE TABLE "public"."jobs_job" (
"id" int4 DEFAULT nextval('jobs_job_id_seq'::regclass) NOT NULL,
"image" varchar(100) COLLATE "default" NOT NULL,
"summary" varchar(200) COLLATE "default" NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of jobs_job
-- ----------------------------
INSERT INTO "public"."jobs_job" VALUES ('1', 'images/1_P7x-_0XfQz6CVmMY_QAv0w.png', 'My first job! In Angular 2.');
INSERT INTO "public"."jobs_job" VALUES ('2', 'images/New-Features-in-PHP-71-Banner.jpg', 'Hey! this is my second job, in PHP.');
INSERT INTO "public"."jobs_job" VALUES ('3', 'images/python.png', 'Hey! this is my third job, in Python');

-- ----------------------------
-- Alter Sequences Owned By 
-- ----------------------------
ALTER SEQUENCE "public"."auth_group_id_seq" OWNED BY "auth_group"."id";
ALTER SEQUENCE "public"."auth_group_permissions_id_seq" OWNED BY "auth_group_permissions"."id";
ALTER SEQUENCE "public"."auth_permission_id_seq" OWNED BY "auth_permission"."id";
ALTER SEQUENCE "public"."auth_user_groups_id_seq" OWNED BY "auth_user_groups"."id";
ALTER SEQUENCE "public"."auth_user_id_seq" OWNED BY "auth_user"."id";
ALTER SEQUENCE "public"."auth_user_user_permissions_id_seq" OWNED BY "auth_user_user_permissions"."id";
ALTER SEQUENCE "public"."blog_blog_id_seq" OWNED BY "blog_blog"."id";
ALTER SEQUENCE "public"."django_admin_log_id_seq" OWNED BY "django_admin_log"."id";
ALTER SEQUENCE "public"."django_content_type_id_seq" OWNED BY "django_content_type"."id";
ALTER SEQUENCE "public"."django_migrations_id_seq" OWNED BY "django_migrations"."id";
ALTER SEQUENCE "public"."jobs_job_id_seq" OWNED BY "jobs_job"."id";

-- ----------------------------
-- Indexes structure for table auth_group
-- ----------------------------
CREATE INDEX "auth_group_name_a6ea08ec_like" ON "public"."auth_group" USING btree ("name" "pg_catalog"."varchar_pattern_ops");

-- ----------------------------
-- Uniques structure for table auth_group
-- ----------------------------
ALTER TABLE "public"."auth_group" ADD UNIQUE ("name");

-- ----------------------------
-- Primary Key structure for table auth_group
-- ----------------------------
ALTER TABLE "public"."auth_group" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table auth_group_permissions
-- ----------------------------
CREATE INDEX "auth_group_permissions_group_id_b120cbf9" ON "public"."auth_group_permissions" USING btree ("group_id");
CREATE INDEX "auth_group_permissions_permission_id_84c5c92e" ON "public"."auth_group_permissions" USING btree ("permission_id");

-- ----------------------------
-- Uniques structure for table auth_group_permissions
-- ----------------------------
ALTER TABLE "public"."auth_group_permissions" ADD UNIQUE ("group_id", "permission_id");

-- ----------------------------
-- Primary Key structure for table auth_group_permissions
-- ----------------------------
ALTER TABLE "public"."auth_group_permissions" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table auth_permission
-- ----------------------------
CREATE INDEX "auth_permission_content_type_id_2f476e4b" ON "public"."auth_permission" USING btree ("content_type_id");

-- ----------------------------
-- Uniques structure for table auth_permission
-- ----------------------------
ALTER TABLE "public"."auth_permission" ADD UNIQUE ("content_type_id", "codename");

-- ----------------------------
-- Primary Key structure for table auth_permission
-- ----------------------------
ALTER TABLE "public"."auth_permission" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table auth_user
-- ----------------------------
CREATE INDEX "auth_user_username_6821ab7c_like" ON "public"."auth_user" USING btree ("username" "pg_catalog"."varchar_pattern_ops");

-- ----------------------------
-- Uniques structure for table auth_user
-- ----------------------------
ALTER TABLE "public"."auth_user" ADD UNIQUE ("username");

-- ----------------------------
-- Primary Key structure for table auth_user
-- ----------------------------
ALTER TABLE "public"."auth_user" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table auth_user_groups
-- ----------------------------
CREATE INDEX "auth_user_groups_user_id_6a12ed8b" ON "public"."auth_user_groups" USING btree ("user_id");
CREATE INDEX "auth_user_groups_group_id_97559544" ON "public"."auth_user_groups" USING btree ("group_id");

-- ----------------------------
-- Uniques structure for table auth_user_groups
-- ----------------------------
ALTER TABLE "public"."auth_user_groups" ADD UNIQUE ("user_id", "group_id");

-- ----------------------------
-- Primary Key structure for table auth_user_groups
-- ----------------------------
ALTER TABLE "public"."auth_user_groups" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table auth_user_user_permissions
-- ----------------------------
CREATE INDEX "auth_user_user_permissions_user_id_a95ead1b" ON "public"."auth_user_user_permissions" USING btree ("user_id");
CREATE INDEX "auth_user_user_permissions_permission_id_1fbb5f2c" ON "public"."auth_user_user_permissions" USING btree ("permission_id");

-- ----------------------------
-- Uniques structure for table auth_user_user_permissions
-- ----------------------------
ALTER TABLE "public"."auth_user_user_permissions" ADD UNIQUE ("user_id", "permission_id");

-- ----------------------------
-- Primary Key structure for table auth_user_user_permissions
-- ----------------------------
ALTER TABLE "public"."auth_user_user_permissions" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table blog_blog
-- ----------------------------
ALTER TABLE "public"."blog_blog" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table django_admin_log
-- ----------------------------
CREATE INDEX "django_admin_log_content_type_id_c4bce8eb" ON "public"."django_admin_log" USING btree ("content_type_id");
CREATE INDEX "django_admin_log_user_id_c564eba6" ON "public"."django_admin_log" USING btree ("user_id");

-- ----------------------------
-- Checks structure for table django_admin_log
-- ----------------------------
ALTER TABLE "public"."django_admin_log" ADD CHECK ((action_flag >= 0));

-- ----------------------------
-- Primary Key structure for table django_admin_log
-- ----------------------------
ALTER TABLE "public"."django_admin_log" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Uniques structure for table django_content_type
-- ----------------------------
ALTER TABLE "public"."django_content_type" ADD UNIQUE ("app_label", "model");

-- ----------------------------
-- Primary Key structure for table django_content_type
-- ----------------------------
ALTER TABLE "public"."django_content_type" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table django_migrations
-- ----------------------------
ALTER TABLE "public"."django_migrations" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table django_session
-- ----------------------------
CREATE INDEX "django_session_session_key_c0390e0f_like" ON "public"."django_session" USING btree ("session_key" "pg_catalog"."varchar_pattern_ops");
CREATE INDEX "django_session_expire_date_a5c62663" ON "public"."django_session" USING btree ("expire_date");

-- ----------------------------
-- Primary Key structure for table django_session
-- ----------------------------
ALTER TABLE "public"."django_session" ADD PRIMARY KEY ("session_key");

-- ----------------------------
-- Primary Key structure for table jobs_job
-- ----------------------------
ALTER TABLE "public"."jobs_job" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Foreign Key structure for table "public"."auth_group_permissions"
-- ----------------------------
ALTER TABLE "public"."auth_group_permissions" ADD FOREIGN KEY ("group_id") REFERENCES "public"."auth_group" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."auth_group_permissions" ADD FOREIGN KEY ("permission_id") REFERENCES "public"."auth_permission" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Key structure for table "public"."auth_permission"
-- ----------------------------
ALTER TABLE "public"."auth_permission" ADD FOREIGN KEY ("content_type_id") REFERENCES "public"."django_content_type" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Key structure for table "public"."auth_user_groups"
-- ----------------------------
ALTER TABLE "public"."auth_user_groups" ADD FOREIGN KEY ("user_id") REFERENCES "public"."auth_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."auth_user_groups" ADD FOREIGN KEY ("group_id") REFERENCES "public"."auth_group" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Key structure for table "public"."auth_user_user_permissions"
-- ----------------------------
ALTER TABLE "public"."auth_user_user_permissions" ADD FOREIGN KEY ("user_id") REFERENCES "public"."auth_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."auth_user_user_permissions" ADD FOREIGN KEY ("permission_id") REFERENCES "public"."auth_permission" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Key structure for table "public"."django_admin_log"
-- ----------------------------
ALTER TABLE "public"."django_admin_log" ADD FOREIGN KEY ("content_type_id") REFERENCES "public"."django_content_type" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."django_admin_log" ADD FOREIGN KEY ("user_id") REFERENCES "public"."auth_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
