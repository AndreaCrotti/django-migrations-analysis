BEGIN;

CREATE TABLE "django_migrations"
("id" integer, "app" varchar(255) NOT NULL, "name" varchar(255) NOT NULL, "applied" timestamp NOT NULL);
CREATE TABLE "django_content_type" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "name" varchar(100) NOT NULL, "app_label" varchar(100) NOT NULL, "model" varchar(100) NOT NULL);
CREATE UNIQUE INDEX "django_content_type_app_label_76bd3d3b_uniq" ON "django_content_type" ("app_label", "model");
CREATE TABLE "auth_permission" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "name" varchar(50) NOT NULL, "content_type_id" integer NOT NULL REFERENCES "django_content_type" ("id"), "codename" varchar(100) NOT NULL);
CREATE TABLE "auth_group" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "name" varchar(80) NOT NULL UNIQUE);
CREATE TABLE "auth_group_permissions" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "group_id" integer NOT NULL REFERENCES "auth_group" ("id"), "permission_id" integer NOT NULL REFERENCES "auth_permission" ("id"));
CREATE TABLE "auth_user" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "password" varchar(128) NOT NULL, "last_login" datetime NOT NULL, "is_superuser" bool NOT NULL, "username" varchar(30) NOT NULL UNIQUE, "first_name" varchar(30) NOT NULL, "last_name" varchar(30) NOT NULL, "email" varchar(75) NOT NULL, "is_staff" bool NOT NULL, "is_active" bool NOT NULL, "date_joined" datetime NOT NULL);
CREATE TABLE "auth_user_groups" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"), "group_id" integer NOT NULL REFERENCES "auth_group" ("id"));
CREATE TABLE "auth_user_user_permissions" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"), "permission_id" integer NOT NULL REFERENCES "auth_permission" ("id"));
CREATE UNIQUE INDEX "auth_permission_content_type_id_01ab375a_uniq" ON "auth_permission" ("content_type_id", "codename");
CREATE INDEX "auth_permission_417f1b1c" ON "auth_permission" ("content_type_id");
CREATE UNIQUE INDEX "auth_group_permissions_group_id_0cd325b0_uniq" ON "auth_group_permissions" ("group_id", "permission_id");
CREATE INDEX "auth_group_permissions_0e939a4f" ON "auth_group_permissions" ("group_id");
CREATE INDEX "auth_group_permissions_8373b171" ON "auth_group_permissions" ("permission_id");
CREATE UNIQUE INDEX "auth_user_groups_user_id_94350c0c_uniq" ON "auth_user_groups" ("user_id", "group_id");
CREATE INDEX "auth_user_groups_e8701ad4" ON "auth_user_groups" ("user_id");
CREATE INDEX "auth_user_groups_0e939a4f" ON "auth_user_groups" ("group_id");
CREATE UNIQUE INDEX "auth_user_user_permissions_user_id_14a6b632_uniq" ON "auth_user_user_permissions" ("user_id", "permission_id");
CREATE INDEX "auth_user_user_permissions_e8701ad4" ON "auth_user_user_permissions" ("user_id");
CREATE INDEX "auth_user_user_permissions_8373b171" ON "auth_user_user_permissions" ("permission_id");
CREATE TABLE "django_admin_log" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "action_time" datetime NOT NULL, "object_id" text NULL, "object_repr" varchar(200) NOT NULL, "action_flag" smallint unsigned NOT NULL, "change_message" text NOT NULL, "content_type_id" integer NULL REFERENCES "django_content_type" ("id"), "user_id" integer NOT NULL REFERENCES "auth_user" ("id"));
CREATE INDEX "django_admin_log_417f1b1c" ON "django_admin_log" ("content_type_id");
CREATE INDEX "django_admin_log_e8701ad4" ON "django_admin_log" ("user_id");
CREATE TABLE "all_models_modelwithforeignkeytouser0" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "value" integer NOT NULL, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"));
CREATE TABLE "all_models_modelwithforeignkeytouser1" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "value" integer NOT NULL, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"));
CREATE TABLE "all_models_modelwithforeignkeytouser10" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "value" integer NOT NULL, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"));
CREATE TABLE "all_models_modelwithforeignkeytouser11" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "value" integer NOT NULL, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"));
CREATE TABLE "all_models_modelwithforeignkeytouser12" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "value" integer NOT NULL, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"));
CREATE TABLE "all_models_modelwithforeignkeytouser13" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "value" integer NOT NULL, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"));
CREATE TABLE "all_models_modelwithforeignkeytouser14" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "value" integer NOT NULL, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"));
CREATE TABLE "all_models_modelwithforeignkeytouser15" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "value" integer NOT NULL, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"));
CREATE TABLE "all_models_modelwithforeignkeytouser16" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "value" integer NOT NULL, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"));
CREATE TABLE "all_models_modelwithforeignkeytouser17" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "value" integer NOT NULL, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"));
CREATE TABLE "all_models_modelwithforeignkeytouser18" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "value" integer NOT NULL, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"));
CREATE TABLE "all_models_modelwithforeignkeytouser19" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "value" integer NOT NULL, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"));
CREATE TABLE "all_models_modelwithforeignkeytouser2" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "value" integer NOT NULL, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"));
CREATE TABLE "all_models_modelwithforeignkeytouser20" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "value" integer NOT NULL, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"));
CREATE TABLE "all_models_modelwithforeignkeytouser21" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "value" integer NOT NULL, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"));
CREATE TABLE "all_models_modelwithforeignkeytouser22" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "value" integer NOT NULL, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"));
CREATE TABLE "all_models_modelwithforeignkeytouser23" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "value" integer NOT NULL, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"));
CREATE TABLE "all_models_modelwithforeignkeytouser24" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "value" integer NOT NULL, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"));
CREATE TABLE "all_models_modelwithforeignkeytouser25" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "value" integer NOT NULL, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"));
CREATE TABLE "all_models_modelwithforeignkeytouser26" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "value" integer NOT NULL, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"));
CREATE TABLE "all_models_modelwithforeignkeytouser27" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "value" integer NOT NULL, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"));
CREATE TABLE "all_models_modelwithforeignkeytouser28" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "value" integer NOT NULL, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"));
CREATE TABLE "all_models_modelwithforeignkeytouser29" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "value" integer NOT NULL, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"));
CREATE TABLE "all_models_modelwithforeignkeytouser3" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "value" integer NOT NULL, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"));
CREATE TABLE "all_models_modelwithforeignkeytouser30" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "value" integer NOT NULL, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"));
CREATE TABLE "all_models_modelwithforeignkeytouser31" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "value" integer NOT NULL, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"));
CREATE TABLE "all_models_modelwithforeignkeytouser32" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "value" integer NOT NULL, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"));
CREATE TABLE "all_models_modelwithforeignkeytouser33" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "value" integer NOT NULL, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"));
CREATE TABLE "all_models_modelwithforeignkeytouser34" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "value" integer NOT NULL, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"));
CREATE TABLE "all_models_modelwithforeignkeytouser35" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "value" integer NOT NULL, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"));
CREATE TABLE "all_models_modelwithforeignkeytouser36" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "value" integer NOT NULL, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"));
CREATE TABLE "all_models_modelwithforeignkeytouser37" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "value" integer NOT NULL, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"));
CREATE TABLE "all_models_modelwithforeignkeytouser38" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "value" integer NOT NULL, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"));
CREATE TABLE "all_models_modelwithforeignkeytouser39" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "value" integer NOT NULL, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"));
CREATE TABLE "all_models_modelwithforeignkeytouser4" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "value" integer NOT NULL, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"));
CREATE TABLE "all_models_modelwithforeignkeytouser40" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "value" integer NOT NULL, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"));
CREATE TABLE "all_models_modelwithforeignkeytouser41" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "value" integer NOT NULL, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"));
CREATE TABLE "all_models_modelwithforeignkeytouser42" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "value" integer NOT NULL, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"));
CREATE TABLE "all_models_modelwithforeignkeytouser43" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "value" integer NOT NULL, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"));
CREATE TABLE "all_models_modelwithforeignkeytouser44" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "value" integer NOT NULL, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"));
CREATE TABLE "all_models_modelwithforeignkeytouser45" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "value" integer NOT NULL, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"));
CREATE TABLE "all_models_modelwithforeignkeytouser46" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "value" integer NOT NULL, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"));
CREATE TABLE "all_models_modelwithforeignkeytouser47" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "value" integer NOT NULL, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"));
CREATE TABLE "all_models_modelwithforeignkeytouser48" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "value" integer NOT NULL, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"));
CREATE TABLE "all_models_modelwithforeignkeytouser49" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "value" integer NOT NULL, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"));
CREATE TABLE "all_models_modelwithforeignkeytouser5" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "value" integer NOT NULL, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"));
CREATE TABLE "all_models_modelwithforeignkeytouser50" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "value" integer NOT NULL, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"));
CREATE TABLE "all_models_modelwithforeignkeytouser51" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "value" integer NOT NULL, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"));
CREATE TABLE "all_models_modelwithforeignkeytouser52" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "value" integer NOT NULL, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"));
CREATE TABLE "all_models_modelwithforeignkeytouser53" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "value" integer NOT NULL, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"));
CREATE TABLE "all_models_modelwithforeignkeytouser54" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "value" integer NOT NULL, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"));
CREATE TABLE "all_models_modelwithforeignkeytouser55" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "value" integer NOT NULL, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"));
CREATE TABLE "all_models_modelwithforeignkeytouser56" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "value" integer NOT NULL, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"));
CREATE TABLE "all_models_modelwithforeignkeytouser57" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "value" integer NOT NULL, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"));
CREATE TABLE "all_models_modelwithforeignkeytouser58" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "value" integer NOT NULL, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"));
CREATE TABLE "all_models_modelwithforeignkeytouser59" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "value" integer NOT NULL, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"));
CREATE TABLE "all_models_modelwithforeignkeytouser6" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "value" integer NOT NULL, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"));
CREATE TABLE "all_models_modelwithforeignkeytouser60" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "value" integer NOT NULL, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"));
CREATE TABLE "all_models_modelwithforeignkeytouser61" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "value" integer NOT NULL, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"));
CREATE TABLE "all_models_modelwithforeignkeytouser62" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "value" integer NOT NULL, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"));
CREATE TABLE "all_models_modelwithforeignkeytouser63" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "value" integer NOT NULL, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"));
CREATE TABLE "all_models_modelwithforeignkeytouser64" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "value" integer NOT NULL, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"));
CREATE TABLE "all_models_modelwithforeignkeytouser65" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "value" integer NOT NULL, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"));
CREATE TABLE "all_models_modelwithforeignkeytouser66" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "value" integer NOT NULL, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"));
CREATE TABLE "all_models_modelwithforeignkeytouser67" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "value" integer NOT NULL, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"));
CREATE TABLE "all_models_modelwithforeignkeytouser68" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "value" integer NOT NULL, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"));
CREATE TABLE "all_models_modelwithforeignkeytouser69" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "value" integer NOT NULL, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"));
CREATE TABLE "all_models_modelwithforeignkeytouser7" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "value" integer NOT NULL, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"));
CREATE TABLE "all_models_modelwithforeignkeytouser70" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "value" integer NOT NULL, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"));
CREATE TABLE "all_models_modelwithforeignkeytouser71" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "value" integer NOT NULL, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"));
CREATE TABLE "all_models_modelwithforeignkeytouser72" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "value" integer NOT NULL, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"));
CREATE TABLE "all_models_modelwithforeignkeytouser73" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "value" integer NOT NULL, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"));
CREATE TABLE "all_models_modelwithforeignkeytouser74" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "value" integer NOT NULL, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"));
CREATE TABLE "all_models_modelwithforeignkeytouser75" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "value" integer NOT NULL, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"));
CREATE TABLE "all_models_modelwithforeignkeytouser76" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "value" integer NOT NULL, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"));
CREATE TABLE "all_models_modelwithforeignkeytouser77" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "value" integer NOT NULL, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"));
CREATE TABLE "all_models_modelwithforeignkeytouser78" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "value" integer NOT NULL, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"));
CREATE TABLE "all_models_modelwithforeignkeytouser79" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "value" integer NOT NULL, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"));
CREATE TABLE "all_models_modelwithforeignkeytouser8" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "value" integer NOT NULL, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"));
CREATE TABLE "all_models_modelwithforeignkeytouser80" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "value" integer NOT NULL, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"));
CREATE TABLE "all_models_modelwithforeignkeytouser81" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "value" integer NOT NULL, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"));
CREATE TABLE "all_models_modelwithforeignkeytouser82" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "value" integer NOT NULL, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"));
CREATE TABLE "all_models_modelwithforeignkeytouser83" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "value" integer NOT NULL, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"));
CREATE TABLE "all_models_modelwithforeignkeytouser84" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "value" integer NOT NULL, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"));
CREATE TABLE "all_models_modelwithforeignkeytouser85" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "value" integer NOT NULL, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"));
CREATE TABLE "all_models_modelwithforeignkeytouser86" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "value" integer NOT NULL, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"));
CREATE TABLE "all_models_modelwithforeignkeytouser87" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "value" integer NOT NULL, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"));
CREATE TABLE "all_models_modelwithforeignkeytouser88" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "value" integer NOT NULL, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"));
CREATE TABLE "all_models_modelwithforeignkeytouser89" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "value" integer NOT NULL, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"));
CREATE TABLE "all_models_modelwithforeignkeytouser9" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "value" integer NOT NULL, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"));
CREATE TABLE "all_models_modelwithforeignkeytouser90" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "value" integer NOT NULL, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"));
CREATE TABLE "all_models_modelwithforeignkeytouser91" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "value" integer NOT NULL, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"));
CREATE TABLE "all_models_modelwithforeignkeytouser92" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "value" integer NOT NULL, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"));
CREATE TABLE "all_models_modelwithforeignkeytouser93" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "value" integer NOT NULL, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"));
CREATE TABLE "all_models_modelwithforeignkeytouser94" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "value" integer NOT NULL, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"));
CREATE TABLE "all_models_modelwithforeignkeytouser95" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "value" integer NOT NULL, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"));
CREATE TABLE "all_models_modelwithforeignkeytouser96" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "value" integer NOT NULL, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"));
CREATE TABLE "all_models_modelwithforeignkeytouser97" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "value" integer NOT NULL, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"));
CREATE TABLE "all_models_modelwithforeignkeytouser98" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "value" integer NOT NULL, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"));
CREATE TABLE "all_models_modelwithforeignkeytouser99" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "value" integer NOT NULL, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"));
CREATE INDEX "all_models_modelwithforeignkeytouser0_e8701ad4" ON "all_models_modelwithforeignkeytouser0" ("user_id");
CREATE INDEX "all_models_modelwithforeignkeytouser1_e8701ad4" ON "all_models_modelwithforeignkeytouser1" ("user_id");
CREATE INDEX "all_models_modelwithforeignkeytouser10_e8701ad4" ON "all_models_modelwithforeignkeytouser10" ("user_id");
CREATE INDEX "all_models_modelwithforeignkeytouser11_e8701ad4" ON "all_models_modelwithforeignkeytouser11" ("user_id");
CREATE INDEX "all_models_modelwithforeignkeytouser12_e8701ad4" ON "all_models_modelwithforeignkeytouser12" ("user_id");
CREATE INDEX "all_models_modelwithforeignkeytouser13_e8701ad4" ON "all_models_modelwithforeignkeytouser13" ("user_id");
CREATE INDEX "all_models_modelwithforeignkeytouser14_e8701ad4" ON "all_models_modelwithforeignkeytouser14" ("user_id");
CREATE INDEX "all_models_modelwithforeignkeytouser15_e8701ad4" ON "all_models_modelwithforeignkeytouser15" ("user_id");
CREATE INDEX "all_models_modelwithforeignkeytouser16_e8701ad4" ON "all_models_modelwithforeignkeytouser16" ("user_id");
CREATE INDEX "all_models_modelwithforeignkeytouser17_e8701ad4" ON "all_models_modelwithforeignkeytouser17" ("user_id");
CREATE INDEX "all_models_modelwithforeignkeytouser18_e8701ad4" ON "all_models_modelwithforeignkeytouser18" ("user_id");
CREATE INDEX "all_models_modelwithforeignkeytouser19_e8701ad4" ON "all_models_modelwithforeignkeytouser19" ("user_id");
CREATE INDEX "all_models_modelwithforeignkeytouser2_e8701ad4" ON "all_models_modelwithforeignkeytouser2" ("user_id");
CREATE INDEX "all_models_modelwithforeignkeytouser20_e8701ad4" ON "all_models_modelwithforeignkeytouser20" ("user_id");
CREATE INDEX "all_models_modelwithforeignkeytouser21_e8701ad4" ON "all_models_modelwithforeignkeytouser21" ("user_id");
CREATE INDEX "all_models_modelwithforeignkeytouser22_e8701ad4" ON "all_models_modelwithforeignkeytouser22" ("user_id");
CREATE INDEX "all_models_modelwithforeignkeytouser23_e8701ad4" ON "all_models_modelwithforeignkeytouser23" ("user_id");
CREATE INDEX "all_models_modelwithforeignkeytouser24_e8701ad4" ON "all_models_modelwithforeignkeytouser24" ("user_id");
CREATE INDEX "all_models_modelwithforeignkeytouser25_e8701ad4" ON "all_models_modelwithforeignkeytouser25" ("user_id");
CREATE INDEX "all_models_modelwithforeignkeytouser26_e8701ad4" ON "all_models_modelwithforeignkeytouser26" ("user_id");
CREATE INDEX "all_models_modelwithforeignkeytouser27_e8701ad4" ON "all_models_modelwithforeignkeytouser27" ("user_id");
CREATE INDEX "all_models_modelwithforeignkeytouser28_e8701ad4" ON "all_models_modelwithforeignkeytouser28" ("user_id");
CREATE INDEX "all_models_modelwithforeignkeytouser29_e8701ad4" ON "all_models_modelwithforeignkeytouser29" ("user_id");
CREATE INDEX "all_models_modelwithforeignkeytouser3_e8701ad4" ON "all_models_modelwithforeignkeytouser3" ("user_id");
CREATE INDEX "all_models_modelwithforeignkeytouser30_e8701ad4" ON "all_models_modelwithforeignkeytouser30" ("user_id");
CREATE INDEX "all_models_modelwithforeignkeytouser31_e8701ad4" ON "all_models_modelwithforeignkeytouser31" ("user_id");
CREATE INDEX "all_models_modelwithforeignkeytouser32_e8701ad4" ON "all_models_modelwithforeignkeytouser32" ("user_id");
CREATE INDEX "all_models_modelwithforeignkeytouser33_e8701ad4" ON "all_models_modelwithforeignkeytouser33" ("user_id");
CREATE INDEX "all_models_modelwithforeignkeytouser34_e8701ad4" ON "all_models_modelwithforeignkeytouser34" ("user_id");
CREATE INDEX "all_models_modelwithforeignkeytouser35_e8701ad4" ON "all_models_modelwithforeignkeytouser35" ("user_id");
CREATE INDEX "all_models_modelwithforeignkeytouser36_e8701ad4" ON "all_models_modelwithforeignkeytouser36" ("user_id");
CREATE INDEX "all_models_modelwithforeignkeytouser37_e8701ad4" ON "all_models_modelwithforeignkeytouser37" ("user_id");
CREATE INDEX "all_models_modelwithforeignkeytouser38_e8701ad4" ON "all_models_modelwithforeignkeytouser38" ("user_id");
CREATE INDEX "all_models_modelwithforeignkeytouser39_e8701ad4" ON "all_models_modelwithforeignkeytouser39" ("user_id");
CREATE INDEX "all_models_modelwithforeignkeytouser4_e8701ad4" ON "all_models_modelwithforeignkeytouser4" ("user_id");
CREATE INDEX "all_models_modelwithforeignkeytouser40_e8701ad4" ON "all_models_modelwithforeignkeytouser40" ("user_id");
CREATE INDEX "all_models_modelwithforeignkeytouser41_e8701ad4" ON "all_models_modelwithforeignkeytouser41" ("user_id");
CREATE INDEX "all_models_modelwithforeignkeytouser42_e8701ad4" ON "all_models_modelwithforeignkeytouser42" ("user_id");
CREATE INDEX "all_models_modelwithforeignkeytouser43_e8701ad4" ON "all_models_modelwithforeignkeytouser43" ("user_id");
CREATE INDEX "all_models_modelwithforeignkeytouser44_e8701ad4" ON "all_models_modelwithforeignkeytouser44" ("user_id");
CREATE INDEX "all_models_modelwithforeignkeytouser45_e8701ad4" ON "all_models_modelwithforeignkeytouser45" ("user_id");
CREATE INDEX "all_models_modelwithforeignkeytouser46_e8701ad4" ON "all_models_modelwithforeignkeytouser46" ("user_id");
CREATE INDEX "all_models_modelwithforeignkeytouser47_e8701ad4" ON "all_models_modelwithforeignkeytouser47" ("user_id");
CREATE INDEX "all_models_modelwithforeignkeytouser48_e8701ad4" ON "all_models_modelwithforeignkeytouser48" ("user_id");
CREATE INDEX "all_models_modelwithforeignkeytouser49_e8701ad4" ON "all_models_modelwithforeignkeytouser49" ("user_id");
CREATE INDEX "all_models_modelwithforeignkeytouser5_e8701ad4" ON "all_models_modelwithforeignkeytouser5" ("user_id");
CREATE INDEX "all_models_modelwithforeignkeytouser50_e8701ad4" ON "all_models_modelwithforeignkeytouser50" ("user_id");
CREATE INDEX "all_models_modelwithforeignkeytouser51_e8701ad4" ON "all_models_modelwithforeignkeytouser51" ("user_id");
CREATE INDEX "all_models_modelwithforeignkeytouser52_e8701ad4" ON "all_models_modelwithforeignkeytouser52" ("user_id");
CREATE INDEX "all_models_modelwithforeignkeytouser53_e8701ad4" ON "all_models_modelwithforeignkeytouser53" ("user_id");
CREATE INDEX "all_models_modelwithforeignkeytouser54_e8701ad4" ON "all_models_modelwithforeignkeytouser54" ("user_id");
CREATE INDEX "all_models_modelwithforeignkeytouser55_e8701ad4" ON "all_models_modelwithforeignkeytouser55" ("user_id");
CREATE INDEX "all_models_modelwithforeignkeytouser56_e8701ad4" ON "all_models_modelwithforeignkeytouser56" ("user_id");
CREATE INDEX "all_models_modelwithforeignkeytouser57_e8701ad4" ON "all_models_modelwithforeignkeytouser57" ("user_id");
CREATE INDEX "all_models_modelwithforeignkeytouser58_e8701ad4" ON "all_models_modelwithforeignkeytouser58" ("user_id");
CREATE INDEX "all_models_modelwithforeignkeytouser59_e8701ad4" ON "all_models_modelwithforeignkeytouser59" ("user_id");
CREATE INDEX "all_models_modelwithforeignkeytouser6_e8701ad4" ON "all_models_modelwithforeignkeytouser6" ("user_id");
CREATE INDEX "all_models_modelwithforeignkeytouser60_e8701ad4" ON "all_models_modelwithforeignkeytouser60" ("user_id");
CREATE INDEX "all_models_modelwithforeignkeytouser61_e8701ad4" ON "all_models_modelwithforeignkeytouser61" ("user_id");
CREATE INDEX "all_models_modelwithforeignkeytouser62_e8701ad4" ON "all_models_modelwithforeignkeytouser62" ("user_id");
CREATE INDEX "all_models_modelwithforeignkeytouser63_e8701ad4" ON "all_models_modelwithforeignkeytouser63" ("user_id");
CREATE INDEX "all_models_modelwithforeignkeytouser64_e8701ad4" ON "all_models_modelwithforeignkeytouser64" ("user_id");
CREATE INDEX "all_models_modelwithforeignkeytouser65_e8701ad4" ON "all_models_modelwithforeignkeytouser65" ("user_id");
CREATE INDEX "all_models_modelwithforeignkeytouser66_e8701ad4" ON "all_models_modelwithforeignkeytouser66" ("user_id");
CREATE INDEX "all_models_modelwithforeignkeytouser67_e8701ad4" ON "all_models_modelwithforeignkeytouser67" ("user_id");
CREATE INDEX "all_models_modelwithforeignkeytouser68_e8701ad4" ON "all_models_modelwithforeignkeytouser68" ("user_id");
CREATE INDEX "all_models_modelwithforeignkeytouser69_e8701ad4" ON "all_models_modelwithforeignkeytouser69" ("user_id");
CREATE INDEX "all_models_modelwithforeignkeytouser7_e8701ad4" ON "all_models_modelwithforeignkeytouser7" ("user_id");
CREATE INDEX "all_models_modelwithforeignkeytouser70_e8701ad4" ON "all_models_modelwithforeignkeytouser70" ("user_id");
CREATE INDEX "all_models_modelwithforeignkeytouser71_e8701ad4" ON "all_models_modelwithforeignkeytouser71" ("user_id");
CREATE INDEX "all_models_modelwithforeignkeytouser72_e8701ad4" ON "all_models_modelwithforeignkeytouser72" ("user_id");
CREATE INDEX "all_models_modelwithforeignkeytouser73_e8701ad4" ON "all_models_modelwithforeignkeytouser73" ("user_id");
CREATE INDEX "all_models_modelwithforeignkeytouser74_e8701ad4" ON "all_models_modelwithforeignkeytouser74" ("user_id");
CREATE INDEX "all_models_modelwithforeignkeytouser75_e8701ad4" ON "all_models_modelwithforeignkeytouser75" ("user_id");
CREATE INDEX "all_models_modelwithforeignkeytouser76_e8701ad4" ON "all_models_modelwithforeignkeytouser76" ("user_id");
CREATE INDEX "all_models_modelwithforeignkeytouser77_e8701ad4" ON "all_models_modelwithforeignkeytouser77" ("user_id");
CREATE INDEX "all_models_modelwithforeignkeytouser78_e8701ad4" ON "all_models_modelwithforeignkeytouser78" ("user_id");
CREATE INDEX "all_models_modelwithforeignkeytouser79_e8701ad4" ON "all_models_modelwithforeignkeytouser79" ("user_id");
CREATE INDEX "all_models_modelwithforeignkeytouser8_e8701ad4" ON "all_models_modelwithforeignkeytouser8" ("user_id");
CREATE INDEX "all_models_modelwithforeignkeytouser80_e8701ad4" ON "all_models_modelwithforeignkeytouser80" ("user_id");
CREATE INDEX "all_models_modelwithforeignkeytouser81_e8701ad4" ON "all_models_modelwithforeignkeytouser81" ("user_id");
CREATE INDEX "all_models_modelwithforeignkeytouser82_e8701ad4" ON "all_models_modelwithforeignkeytouser82" ("user_id");
CREATE INDEX "all_models_modelwithforeignkeytouser83_e8701ad4" ON "all_models_modelwithforeignkeytouser83" ("user_id");
CREATE INDEX "all_models_modelwithforeignkeytouser84_e8701ad4" ON "all_models_modelwithforeignkeytouser84" ("user_id");
CREATE INDEX "all_models_modelwithforeignkeytouser85_e8701ad4" ON "all_models_modelwithforeignkeytouser85" ("user_id");
CREATE INDEX "all_models_modelwithforeignkeytouser86_e8701ad4" ON "all_models_modelwithforeignkeytouser86" ("user_id");
CREATE INDEX "all_models_modelwithforeignkeytouser87_e8701ad4" ON "all_models_modelwithforeignkeytouser87" ("user_id");
CREATE INDEX "all_models_modelwithforeignkeytouser88_e8701ad4" ON "all_models_modelwithforeignkeytouser88" ("user_id");
CREATE INDEX "all_models_modelwithforeignkeytouser89_e8701ad4" ON "all_models_modelwithforeignkeytouser89" ("user_id");
CREATE INDEX "all_models_modelwithforeignkeytouser9_e8701ad4" ON "all_models_modelwithforeignkeytouser9" ("user_id");
CREATE INDEX "all_models_modelwithforeignkeytouser90_e8701ad4" ON "all_models_modelwithforeignkeytouser90" ("user_id");
CREATE INDEX "all_models_modelwithforeignkeytouser91_e8701ad4" ON "all_models_modelwithforeignkeytouser91" ("user_id");
CREATE INDEX "all_models_modelwithforeignkeytouser92_e8701ad4" ON "all_models_modelwithforeignkeytouser92" ("user_id");
CREATE INDEX "all_models_modelwithforeignkeytouser93_e8701ad4" ON "all_models_modelwithforeignkeytouser93" ("user_id");
CREATE INDEX "all_models_modelwithforeignkeytouser94_e8701ad4" ON "all_models_modelwithforeignkeytouser94" ("user_id");
CREATE INDEX "all_models_modelwithforeignkeytouser95_e8701ad4" ON "all_models_modelwithforeignkeytouser95" ("user_id");
CREATE INDEX "all_models_modelwithforeignkeytouser96_e8701ad4" ON "all_models_modelwithforeignkeytouser96" ("user_id");
CREATE INDEX "all_models_modelwithforeignkeytouser97_e8701ad4" ON "all_models_modelwithforeignkeytouser97" ("user_id");
CREATE INDEX "all_models_modelwithforeignkeytouser98_e8701ad4" ON "all_models_modelwithforeignkeytouser98" ("user_id");
CREATE INDEX "all_models_modelwithforeignkeytouser99_e8701ad4" ON "all_models_modelwithforeignkeytouser99" ("user_id");
CREATE TABLE "django_session" ("session_key" varchar(40) NOT NULL PRIMARY KEY, "session_data" text NOT NULL, "expire_date" datetime NOT NULL);
CREATE INDEX "django_session_de54fa62" ON "django_session" ("expire_date");

COMMIT;
