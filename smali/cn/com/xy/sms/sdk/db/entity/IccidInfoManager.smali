.class public Lcn/com/xy/sms/sdk/db/entity/IccidInfoManager;
.super Ljava/lang/Object;


# static fields
.field public static final ADD_SIM_INDEX:Ljava/lang/String; = "ALTER TABLE tb_phone_info ADD COLUMN sim_index INTEGER DEFAULT -1 "

.field public static final ADD_USER_AREACODE:Ljava/lang/String; = "ALTER TABLE tb_phone_info ADD COLUMN user_areacode TEXT "

.field public static final ADD_USER_OPERATOR:Ljava/lang/String; = "ALTER TABLE tb_phone_info ADD COLUMN user_operator TEXT "

.field public static final ADD_USER_PROVINCES:Ljava/lang/String; = "ALTER TABLE tb_phone_info ADD COLUMN user_provinces TEXT "

.field public static final AREACODE:Ljava/lang/String; = "areacode"

.field public static final CITY:Ljava/lang/String; = "city"

.field public static final CNUM:Ljava/lang/String; = "cnum"

.field public static final CREATE_TABLE:Ljava/lang/String; = "create table  if not exists tb_phone_info (id INTEGER PRIMARY KEY,iccid TEXT ,city TEXT,provinces TEXT,operator TEXT,areacode TEXT,ispost INTEGER DEFAULT 0,num TEXT,cnum TEXT,updateTime LONG,deft  INTEGER DEFAULT 0,net_updateTime LONG DEFAULT 0,user_provinces TEXT,user_areacode TEXT,user_operator TEXT,sim_index INTEGER DEFAULT -1)"

.field public static final DEFT:Ljava/lang/String; = "deft"

.field public static final DROP_TABLE:Ljava/lang/String; = " DROP TABLE IF EXISTS tb_phone_info"

.field public static final ICCID:Ljava/lang/String; = "iccid"

.field public static final ID:Ljava/lang/String; = "id"

.field public static final ISPOST:Ljava/lang/String; = "ispost"

.field public static final NET_UPDATE_TIME:Ljava/lang/String; = "net_updateTime"

.field public static final NUM:Ljava/lang/String; = "num"

.field public static final OPERATOR:Ljava/lang/String; = "operator"

.field public static final PROVINCES:Ljava/lang/String; = "provinces"

.field public static final SIM_INDEX:Ljava/lang/String; = "sim_index"

.field public static final TABLE_NAME:Ljava/lang/String; = "tb_phone_info"

.field public static final UPDATE_TIME:Ljava/lang/String; = "updateTime"

.field public static final USER_AREACODE:Ljava/lang/String; = "user_areacode"

.field public static final USER_OPERATOR:Ljava/lang/String; = "user_operator"

.field public static final USER_PROVINCES:Ljava/lang/String; = "user_provinces"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 8

    const-wide/16 v6, 0x1

    :try_start_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "iccid"

    invoke-virtual {v2, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sim_index"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {p3}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "user_provinces"

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "updateTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_0
    invoke-static {p4}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "user_areacode"

    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-static {p5}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "user_operator"

    invoke-virtual {v2, v0, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-static {p1}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "tb_phone_info"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "sim_index = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " AND (iccid"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " IS NULL OR iccid"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "=\'\' )"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    :cond_2
    :goto_1
    cmp-long v3, v0, v6

    if-gez v3, :cond_3

    const-string v0, "tb_phone_info"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    :cond_3
    :goto_2
    return-wide v0

    :cond_4
    const-string v0, "user_areacode"

    invoke-static {p3}, Lcn/com/xy/sms/sdk/db/entity/IccidInfoManager;->getProviceCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    const-wide/16 v0, -0x1

    goto :goto_2

    :cond_5
    const-string v0, "tb_phone_info"

    const-string v1, "iccid = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {p0, v0, v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    cmp-long v3, v0, v6

    if-gez v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "UPDATE tb_phone_info SET sim_index= -1 WHERE sim_index="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND iccid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " IS NOT NULL"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static deleteIccidInfo(Ljava/lang/String;I)I
    .locals 4

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "iccid=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "user_provinces"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "user_areacode"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "user_operator"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "tb_phone_info"

    const/4 v3, 0x0

    invoke-static {v2, v1, v0, v3}, Lcn/com/xy/sms/sdk/db/DBManager;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    return v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(iccid IS NULL OR iccid=\'\' ) AND sim_index=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static getHead(Lcn/com/xy/sms/sdk/db/entity/IccidInfo;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    iget v0, p0, Lcn/com/xy/sms/sdk/db/entity/IccidInfo;->isPost:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/com/xy/sms/sdk/db/entity/IccidInfo;->iccid:Ljava/lang/String;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/com/xy/sms/sdk/db/entity/IccidInfo;->num:Ljava/lang/String;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/com/xy/sms/sdk/db/entity/IccidInfo;->cnum:Ljava/lang/String;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/com/xy/sms/sdk/db/entity/IccidInfo;->num:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/com/xy/sms/sdk/db/entity/IccidInfo;->cnum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/com/xy/sms/sdk/db/entity/IccidInfo;->iccid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static getProviceCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/16 v7, 0x22

    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-array v4, v7, [[Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string v3, "\u5317\u4eac"

    aput-object v3, v0, v2

    const-string v3, "BJ"

    aput-object v3, v0, v1

    aput-object v0, v4, v2

    new-array v0, v6, [Ljava/lang/String;

    const-string v3, "\u4e0a\u6d77"

    aput-object v3, v0, v2

    const-string v3, "SH"

    aput-object v3, v0, v1

    aput-object v0, v4, v1

    new-array v0, v6, [Ljava/lang/String;

    const-string v3, "\u5929\u6d25"

    aput-object v3, v0, v2

    const-string v3, "TJ"

    aput-object v3, v0, v1

    aput-object v0, v4, v6

    const/4 v0, 0x3

    new-array v3, v6, [Ljava/lang/String;

    const-string v5, "\u91cd\u5e86"

    aput-object v5, v3, v2

    const-string v5, "CQ"

    aput-object v5, v3, v1

    aput-object v3, v4, v0

    const/4 v0, 0x4

    new-array v3, v6, [Ljava/lang/String;

    const-string v5, "\u9ed1\u9f99\u6c5f"

    aput-object v5, v3, v2

    const-string v5, "HL"

    aput-object v5, v3, v1

    aput-object v3, v4, v0

    const/4 v0, 0x5

    new-array v3, v6, [Ljava/lang/String;

    const-string v5, "\u5409\u6797"

    aput-object v5, v3, v2

    const-string v5, "JL"

    aput-object v5, v3, v1

    aput-object v3, v4, v0

    const/4 v0, 0x6

    new-array v3, v6, [Ljava/lang/String;

    const-string v5, "\u8fbd\u5b81"

    aput-object v5, v3, v2

    const-string v5, "LN"

    aput-object v5, v3, v1

    aput-object v3, v4, v0

    const/4 v0, 0x7

    new-array v3, v6, [Ljava/lang/String;

    const-string v5, "\u65b0\u7586"

    aput-object v5, v3, v2

    const-string v5, "XJ"

    aput-object v5, v3, v1

    aput-object v3, v4, v0

    const/16 v0, 0x8

    new-array v3, v6, [Ljava/lang/String;

    const-string v5, "\u897f\u85cf"

    aput-object v5, v3, v2

    const-string v5, "XZ"

    aput-object v5, v3, v1

    aput-object v3, v4, v0

    const/16 v0, 0x9

    new-array v3, v6, [Ljava/lang/String;

    const-string v5, "\u5185\u8499\u53e4"

    aput-object v5, v3, v2

    const-string v5, "NM"

    aput-object v5, v3, v1

    aput-object v3, v4, v0

    const/16 v0, 0xa

    new-array v3, v6, [Ljava/lang/String;

    const-string v5, "\u7518\u8083"

    aput-object v5, v3, v2

    const-string v5, "GS"

    aput-object v5, v3, v1

    aput-object v3, v4, v0

    const/16 v0, 0xb

    new-array v3, v6, [Ljava/lang/String;

    const-string v5, "\u9752\u6d77"

    aput-object v5, v3, v2

    const-string v5, "QH"

    aput-object v5, v3, v1

    aput-object v3, v4, v0

    const/16 v0, 0xc

    new-array v3, v6, [Ljava/lang/String;

    const-string v5, "\u9655\u897f"

    aput-object v5, v3, v2

    const-string v5, "XA"

    aput-object v5, v3, v1

    aput-object v3, v4, v0

    const/16 v0, 0xd

    new-array v3, v6, [Ljava/lang/String;

    const-string v5, "\u5b81\u590f"

    aput-object v5, v3, v2

    const-string v5, "NX"

    aput-object v5, v3, v1

    aput-object v3, v4, v0

    const/16 v0, 0xe

    new-array v3, v6, [Ljava/lang/String;

    const-string v5, "\u5c71\u897f"

    aput-object v5, v3, v2

    const-string v5, "SX"

    aput-object v5, v3, v1

    aput-object v3, v4, v0

    const/16 v0, 0xf

    new-array v3, v6, [Ljava/lang/String;

    const-string v5, "\u5c71\u4e1c"

    aput-object v5, v3, v2

    const-string v5, "SD"

    aput-object v5, v3, v1

    aput-object v3, v4, v0

    const/16 v0, 0x10

    new-array v3, v6, [Ljava/lang/String;

    const-string v5, "\u5b89\u5fbd"

    aput-object v5, v3, v2

    const-string v5, "AW"

    aput-object v5, v3, v1

    aput-object v3, v4, v0

    const/16 v0, 0x11

    new-array v3, v6, [Ljava/lang/String;

    const-string v5, "\u6cb3\u5357"

    aput-object v5, v3, v2

    const-string v5, "HN"

    aput-object v5, v3, v1

    aput-object v3, v4, v0

    const/16 v0, 0x12

    new-array v3, v6, [Ljava/lang/String;

    const-string v5, "\u6cb3\u5317"

    aput-object v5, v3, v2

    const-string v5, "HB"

    aput-object v5, v3, v1

    aput-object v3, v4, v0

    const/16 v0, 0x13

    new-array v3, v6, [Ljava/lang/String;

    const-string v5, "\u6d59\u6c5f"

    aput-object v5, v3, v2

    const-string v5, "ZJ"

    aput-object v5, v3, v1

    aput-object v3, v4, v0

    const/16 v0, 0x14

    new-array v3, v6, [Ljava/lang/String;

    const-string v5, "\u6c5f\u82cf"

    aput-object v5, v3, v2

    const-string v5, "JS"

    aput-object v5, v3, v1

    aput-object v3, v4, v0

    const/16 v0, 0x15

    new-array v3, v6, [Ljava/lang/String;

    const-string v5, "\u6e56\u5357"

    aput-object v5, v3, v2

    const-string v5, "CS"

    aput-object v5, v3, v1

    aput-object v3, v4, v0

    const/16 v0, 0x16

    new-array v3, v6, [Ljava/lang/String;

    const-string v5, "\u6e56\u5317"

    aput-object v5, v3, v2

    const-string v5, "WH"

    aput-object v5, v3, v1

    aput-object v3, v4, v0

    const/16 v0, 0x17

    new-array v3, v6, [Ljava/lang/String;

    const-string v5, "\u8d35\u5dde"

    aput-object v5, v3, v2

    const-string v5, "GZ"

    aput-object v5, v3, v1

    aput-object v3, v4, v0

    const/16 v0, 0x18

    new-array v3, v6, [Ljava/lang/String;

    const-string v5, "\u56db\u5ddd"

    aput-object v5, v3, v2

    const-string v5, "SC"

    aput-object v5, v3, v1

    aput-object v3, v4, v0

    const/16 v0, 0x19

    new-array v3, v6, [Ljava/lang/String;

    const-string v5, "\u6c5f\u897f"

    aput-object v5, v3, v2

    const-string v5, "JX"

    aput-object v5, v3, v1

    aput-object v3, v4, v0

    const/16 v0, 0x1a

    new-array v3, v6, [Ljava/lang/String;

    const-string v5, "\u4e91\u5357"

    aput-object v5, v3, v2

    const-string v5, "YN"

    aput-object v5, v3, v1

    aput-object v3, v4, v0

    const/16 v0, 0x1b

    new-array v3, v6, [Ljava/lang/String;

    const-string v5, "\u5e7f\u4e1c"

    aput-object v5, v3, v2

    const-string v5, "GD"

    aput-object v5, v3, v1

    aput-object v3, v4, v0

    const/16 v0, 0x1c

    new-array v3, v6, [Ljava/lang/String;

    const-string v5, "\u5e7f\u897f"

    aput-object v5, v3, v2

    const-string v5, "GX"

    aput-object v5, v3, v1

    aput-object v3, v4, v0

    const/16 v0, 0x1d

    new-array v3, v6, [Ljava/lang/String;

    const-string v5, "\u798f\u5efa"

    aput-object v5, v3, v2

    const-string v5, "FJ"

    aput-object v5, v3, v1

    aput-object v3, v4, v0

    const/16 v0, 0x1e

    new-array v3, v6, [Ljava/lang/String;

    const-string v5, "\u6d77\u5357"

    aput-object v5, v3, v2

    const-string v5, "HK"

    aput-object v5, v3, v1

    aput-object v3, v4, v0

    const/16 v0, 0x1f

    new-array v3, v6, [Ljava/lang/String;

    const-string v5, "\u9999\u6e2f"

    aput-object v5, v3, v2

    const-string v5, "XG"

    aput-object v5, v3, v1

    aput-object v3, v4, v0

    const/16 v0, 0x20

    new-array v3, v6, [Ljava/lang/String;

    const-string v5, "\u6fb3\u95e8"

    aput-object v5, v3, v2

    const-string v5, "OM"

    aput-object v5, v3, v1

    aput-object v3, v4, v0

    const/16 v0, 0x21

    new-array v3, v6, [Ljava/lang/String;

    const-string v5, "\u53f0\u6e7e"

    aput-object v5, v3, v2

    const-string v5, "TW"

    aput-object v5, v3, v1

    aput-object v3, v4, v0

    move v3, v2

    :goto_0
    if-lt v3, v7, :cond_0

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    aget-object v0, v4, v3

    aget-object v0, v0, v2

    if-eqz p0, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v5, -0x1

    if-eq v0, v5, :cond_1

    move v0, v1

    :goto_2
    if-eqz v0, :cond_2

    aget-object v0, v4, v3

    aget-object v0, v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0
.end method

.method public static insertIccid(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)J
    .locals 10

    const-wide/16 v8, -0x1

    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "iccid"

    invoke-virtual {v1, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, ";"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_5

    invoke-static {p2}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "provinces"

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "updateTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_0
    invoke-static {p3}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "areacode"

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-static {p4}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "city"

    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-static {p5}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "operator"

    invoke-virtual {v1, v0, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    if-eqz p1, :cond_3

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "deft"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "tb_phone_info"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v0, v3, v4}, Lcn/com/xy/sms/sdk/db/DBManager;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_3
    const-string v2, "deft"

    if-eqz p1, :cond_7

    const/4 v0, 0x1

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "tb_phone_info"

    const-string v2, "iccid = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcn/com/xy/sms/sdk/db/DBManager;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    int-to-long v8, v0

    const-wide/16 v2, 0x1

    cmp-long v0, v8, v2

    if-gez v0, :cond_8

    const-string v0, "sim_index"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "tb_phone_info"

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/db/DBManager;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v8

    const-string v0, "areacode"

    invoke-virtual {v1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p5

    invoke-static/range {v0 .. v6}, Lcn/com/xy/sms/sdk/iccid/IccidLocationUtil;->putIccidAreaCodeToCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    move-wide v0, v8

    :goto_3
    return-wide v0

    :cond_4
    const-string v0, "areacode"

    invoke-static {p2}, Lcn/com/xy/sms/sdk/db/entity/IccidInfoManager;->getProviceCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    move-wide v0, v8

    goto :goto_3

    :cond_5
    invoke-static {p2}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, ";"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    if-lez v2, :cond_6

    const-string v2, "provinces"

    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "updateTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "areacode"

    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-static {v3}, Lcn/com/xy/sms/sdk/db/entity/IccidInfoManager;->getProviceCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    array-length v2, v0

    const/4 v3, 0x2

    if-lt v2, v3, :cond_2

    const-string v2, "city"

    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_2

    :cond_8
    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0}, Lcn/com/xy/sms/sdk/db/entity/IccidInfoManager;->queryIccidInfo(Ljava/lang/String;Landroid/content/Context;)Lcn/com/xy/sms/sdk/db/entity/IccidInfo;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v1, v0, Lcn/com/xy/sms/sdk/db/entity/IccidInfo;->areaCode:Ljava/lang/String;

    iget-object v2, v0, Lcn/com/xy/sms/sdk/db/entity/IccidInfo;->operator:Ljava/lang/String;

    iget-object v3, v0, Lcn/com/xy/sms/sdk/db/entity/IccidInfo;->userAreacode:Ljava/lang/String;

    iget-object v4, v0, Lcn/com/xy/sms/sdk/db/entity/IccidInfo;->userOperator:Ljava/lang/String;

    iget v5, v0, Lcn/com/xy/sms/sdk/db/entity/IccidInfo;->simIndex:I

    iget v6, v0, Lcn/com/xy/sms/sdk/db/entity/IccidInfo;->deft:I

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcn/com/xy/sms/sdk/iccid/IccidLocationUtil;->putIccidAreaCodeToCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v0, v8

    goto :goto_3

    :cond_9
    move-wide v0, v8

    goto :goto_3
.end method

.method public static insertOrUpdateIccid(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 8

    const/4 v6, 0x0

    if-ltz p1, :cond_0

    invoke-static {p2}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p4}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v6

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcn/com/xy/sms/sdk/db/DBManager;->getSQLiteDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-result-object v0

    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcn/com/xy/sms/sdk/db/entity/IccidInfoManager;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v1, v2, v4

    if-gez v1, :cond_4

    if-eqz v0, :cond_3

    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    invoke-static {v0}, Lcn/com/xy/sms/sdk/db/DBManager;->close(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_3
    :goto_1
    move v0, v6

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v0}, Lcn/com/xy/sms/sdk/db/DBManager;->close(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcn/com/xy/sms/sdk/db/DBManager;->close(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v1

    :cond_4
    :try_start_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    if-eqz v0, :cond_6

    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_5
    invoke-static {v0}, Lcn/com/xy/sms/sdk/db/DBManager;->close(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_6
    :goto_2
    const/4 v0, 0x1

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-static {v0}, Lcn/com/xy/sms/sdk/db/DBManager;->close(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_2

    :catchall_1
    move-exception v1

    invoke-static {v0}, Lcn/com/xy/sms/sdk/db/DBManager;->close(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v1

    :catch_2
    move-exception v1

    if-eqz v0, :cond_8

    :try_start_5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :cond_7
    invoke-static {v0}, Lcn/com/xy/sms/sdk/db/DBManager;->close(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_8
    :goto_3
    move v0, v6

    goto :goto_0

    :catch_3
    move-exception v1

    invoke-static {v0}, Lcn/com/xy/sms/sdk/db/DBManager;->close(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_3

    :catchall_2
    move-exception v1

    invoke-static {v0}, Lcn/com/xy/sms/sdk/db/DBManager;->close(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v1

    :catchall_3
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    :goto_4
    if-eqz v1, :cond_a

    :try_start_6
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :cond_9
    invoke-static {v1}, Lcn/com/xy/sms/sdk/db/DBManager;->close(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_a
    :goto_5
    throw v0

    :catch_4
    move-exception v2

    invoke-static {v1}, Lcn/com/xy/sms/sdk/db/DBManager;->close(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_5

    :catchall_4
    move-exception v0

    invoke-static {v1}, Lcn/com/xy/sms/sdk/db/DBManager;->close(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v0

    :catchall_5
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_4
.end method

.method public static queryDeftIccidInfo(Landroid/content/Context;)Lcn/com/xy/sms/sdk/db/entity/IccidInfo;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcn/com/xy/sms/sdk/db/entity/IccidInfoManager;->queryIccidInfo(Ljava/lang/String;Landroid/content/Context;)Lcn/com/xy/sms/sdk/db/entity/IccidInfo;

    move-result-object v0

    return-object v0
.end method

.method public static queryIccidInfo(Ljava/lang/String;I)Lcn/com/xy/sms/sdk/db/entity/IccidInfo;
    .locals 7

    const/4 v1, 0x0

    const/4 v6, 0x1

    :try_start_0
    invoke-static {p0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "iccid=\'"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v2, "tb_phone_info"

    const/16 v3, 0x10

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "city"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "provinces"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "updateTime"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "operator"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "ispost"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "num"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string v5, "cnum"

    aput-object v5, v3, v4

    const/16 v4, 0x8

    const-string v5, "net_updateTime"

    aput-object v5, v3, v4

    const/16 v4, 0x9

    const-string v5, "areacode"

    aput-object v5, v3, v4

    const/16 v4, 0xa

    const-string v5, "iccid"

    aput-object v5, v3, v4

    const/16 v4, 0xb

    const-string v5, "deft"

    aput-object v5, v3, v4

    const/16 v4, 0xc

    const-string v5, "user_provinces"

    aput-object v5, v3, v4

    const/16 v4, 0xd

    const-string v5, "user_areacode"

    aput-object v5, v3, v4

    const/16 v4, 0xe

    const-string v5, "user_operator"

    aput-object v5, v3, v4

    const/16 v4, 0xf

    const-string v5, "sim_index"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v4}, Lcn/com/xy/sms/sdk/db/DBManager;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcn/com/xy/sms/sdk/db/XyCursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_2

    :try_start_1
    invoke-virtual {v2}, Lcn/com/xy/sms/sdk/db/XyCursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcn/com/xy/sms/sdk/db/entity/IccidInfo;

    invoke-direct {v0}, Lcn/com/xy/sms/sdk/db/entity/IccidInfo;-><init>()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    const-string v1, "id"

    invoke-virtual {v2, v1}, Lcn/com/xy/sms/sdk/db/XyCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Lcn/com/xy/sms/sdk/db/XyCursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcn/com/xy/sms/sdk/db/entity/IccidInfo;->id:I

    const-string v1, "city"

    invoke-virtual {v2, v1}, Lcn/com/xy/sms/sdk/db/XyCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Lcn/com/xy/sms/sdk/db/XyCursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/com/xy/sms/sdk/db/entity/IccidInfo;->city:Ljava/lang/String;

    const-string v1, "operator"

    invoke-virtual {v2, v1}, Lcn/com/xy/sms/sdk/db/XyCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Lcn/com/xy/sms/sdk/db/XyCursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/com/xy/sms/sdk/db/entity/IccidInfo;->operator:Ljava/lang/String;

    const-string v1, "areacode"

    invoke-virtual {v2, v1}, Lcn/com/xy/sms/sdk/db/XyCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Lcn/com/xy/sms/sdk/db/XyCursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/com/xy/sms/sdk/db/entity/IccidInfo;->areaCode:Ljava/lang/String;

    const-string v1, "provinces"

    invoke-virtual {v2, v1}, Lcn/com/xy/sms/sdk/db/XyCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Lcn/com/xy/sms/sdk/db/XyCursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/com/xy/sms/sdk/db/entity/IccidInfo;->provinces:Ljava/lang/String;

    const-string v1, "updateTime"

    invoke-virtual {v2, v1}, Lcn/com/xy/sms/sdk/db/XyCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Lcn/com/xy/sms/sdk/db/XyCursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v0, Lcn/com/xy/sms/sdk/db/entity/IccidInfo;->updateTime:J

    const-string v1, "iccid"

    invoke-virtual {v2, v1}, Lcn/com/xy/sms/sdk/db/XyCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Lcn/com/xy/sms/sdk/db/XyCursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/com/xy/sms/sdk/db/entity/IccidInfo;->iccid:Ljava/lang/String;

    const-string v1, "ispost"

    invoke-virtual {v2, v1}, Lcn/com/xy/sms/sdk/db/XyCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Lcn/com/xy/sms/sdk/db/XyCursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcn/com/xy/sms/sdk/db/entity/IccidInfo;->isPost:I

    const-string v1, "num"

    invoke-virtual {v2, v1}, Lcn/com/xy/sms/sdk/db/XyCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Lcn/com/xy/sms/sdk/db/XyCursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/com/xy/sms/sdk/db/entity/IccidInfo;->num:Ljava/lang/String;

    const-string v1, "cnum"

    invoke-virtual {v2, v1}, Lcn/com/xy/sms/sdk/db/XyCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Lcn/com/xy/sms/sdk/db/XyCursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/com/xy/sms/sdk/db/entity/IccidInfo;->cnum:Ljava/lang/String;

    const-string v1, "net_updateTime"

    invoke-virtual {v2, v1}, Lcn/com/xy/sms/sdk/db/XyCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Lcn/com/xy/sms/sdk/db/XyCursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v0, Lcn/com/xy/sms/sdk/db/entity/IccidInfo;->netUpdateTime:J

    const-string v1, "deft"

    invoke-virtual {v2, v1}, Lcn/com/xy/sms/sdk/db/XyCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Lcn/com/xy/sms/sdk/db/XyCursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcn/com/xy/sms/sdk/db/entity/IccidInfo;->deft:I

    const-string v1, "user_provinces"

    invoke-virtual {v2, v1}, Lcn/com/xy/sms/sdk/db/XyCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Lcn/com/xy/sms/sdk/db/XyCursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/com/xy/sms/sdk/db/entity/IccidInfo;->userProvinces:Ljava/lang/String;

    const-string v1, "user_areacode"

    invoke-virtual {v2, v1}, Lcn/com/xy/sms/sdk/db/XyCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Lcn/com/xy/sms/sdk/db/XyCursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/com/xy/sms/sdk/db/entity/IccidInfo;->userAreacode:Ljava/lang/String;

    const-string v1, "user_operator"

    invoke-virtual {v2, v1}, Lcn/com/xy/sms/sdk/db/XyCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Lcn/com/xy/sms/sdk/db/XyCursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/com/xy/sms/sdk/db/entity/IccidInfo;->userOperator:Ljava/lang/String;

    const-string v1, "sim_index"

    invoke-virtual {v2, v1}, Lcn/com/xy/sms/sdk/db/XyCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Lcn/com/xy/sms/sdk/db/XyCursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcn/com/xy/sms/sdk/db/entity/IccidInfo;->simIndex:I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_1
    invoke-static {v2, v6}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    :goto_2
    return-object v0

    :cond_0
    if-ltz p1, :cond_1

    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "(iccid IS NULL OR iccid=\'\' ) AND sim_index=\'"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_1
    const-string v0, "deft=1"
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_3
    invoke-static {v1, v6}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_4
    invoke-static {v2, v6}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v0, v1

    move-object v1, v2

    goto :goto_3

    :catch_2
    move-exception v1

    move-object v1, v2

    goto :goto_3

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public static queryIccidInfo(Ljava/lang/String;Landroid/content/Context;)Lcn/com/xy/sms/sdk/db/entity/IccidInfo;
    .locals 1

    const/4 v0, -0x1

    invoke-static {p0, v0}, Lcn/com/xy/sms/sdk/db/entity/IccidInfoManager;->queryIccidInfo(Ljava/lang/String;I)Lcn/com/xy/sms/sdk/db/entity/IccidInfo;

    move-result-object v0

    return-object v0
.end method

.method public static updateIccidCnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 5

    :try_start_0
    invoke-static {p0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "10086"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "10010"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "10000"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "num"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cnum"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "tb_phone_info"

    const-string v2, "iccid = ? and ispost = 0"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v1, v0, v2, v3}, Lcn/com/xy/sms/sdk/db/DBManager;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
