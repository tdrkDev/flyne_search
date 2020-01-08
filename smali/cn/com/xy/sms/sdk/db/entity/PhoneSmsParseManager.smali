.class public Lcn/com/xy/sms/sdk/db/entity/PhoneSmsParseManager;
.super Ljava/lang/Object;


# static fields
.field public static final DROP_TABLE:Ljava/lang/String; = " DROP TABLE IF EXISTS tb_phone_bubble_cache"

.field public static final TABLE_NAME:Ljava/lang/String; = "tb_phone_bubble_cache"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addInsertQueue(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static/range {p0 .. p5}, Lcn/com/xy/sms/sdk/db/entity/PhoneSmsParseManager;->saveOrUpdateObject(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    return-void
.end method

.method public static findObjectByPhone(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 8

    const/4 v0, 0x0

    const/4 v6, 0x1

    const/4 v1, 0x7

    :try_start_0
    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "id"

    aput-object v3, v2, v1

    const/4 v1, 0x1

    const-string v3, "phone"

    aput-object v3, v2, v1

    const/4 v1, 0x2

    const-string v3, "minReceiveTime"

    aput-object v3, v2, v1

    const/4 v1, 0x3

    const-string v3, "maxReceiveTime"

    aput-object v3, v2, v1

    const/4 v1, 0x4

    const-string v3, "useBubbleViews"

    aput-object v3, v2, v1

    const/4 v1, 0x5

    const-string v3, "useBubbleLogoName"

    aput-object v3, v2, v1

    const/4 v1, 0x6

    const-string v3, "extend"

    aput-object v3, v2, v1

    const-string v1, "tb_phone_bubble_cache"

    const-string v3, "phone = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcn/com/xy/sms/sdk/db/DBManager;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcn/com/xy/sms/sdk/db/XyCursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :try_start_1
    invoke-static {v2, v1}, Lcn/com/xy/sms/sdk/db/base/BaseManager;->loadSingleDataFromCursor([Ljava/lang/String;Lcn/com/xy/sms/sdk/db/XyCursor;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    invoke-static {v1, v6}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    move-object v1, v0

    :goto_1
    invoke-static {v1, v6}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    :goto_2
    invoke-static {v1, v6}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public static getCreateTableSql()Ljava/lang/String;
    .locals 1

    const-string v0, "create table  if not exists tb_phone_bubble_cache (  id INTEGER PRIMARY KEY, phone TEXT UNIQUE, minReceiveTime LONG default 0, maxReceiveTime LONG default 0, useBubbleViews TEXT, useBubbleLogoName TEXT, extend TEXT)"

    return-object v0
.end method

.method public static reSetAllDataTime(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "minReceiveTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "maxReceiveTime"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :try_start_0
    const-string v1, "tb_phone_bubble_cache"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lcn/com/xy/sms/sdk/db/DBManager;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static saveOrUpdateObject(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 13

    const-wide/16 v8, 0x0

    const/4 v4, 0x0

    const-wide/16 v2, -0x1

    :try_start_0
    invoke-static {p0}, Lcn/com/xy/sms/sdk/db/entity/PhoneSmsParseManager;->findObjectByPhone(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    if-nez v5, :cond_3

    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    invoke-static/range {p3 .. p3}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v6, v4, v0}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    :cond_0
    cmp-long v4, p1, v8

    if-lez v4, :cond_2

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    :goto_0
    const/4 v7, 0x0

    const/4 v8, 0x1

    const/16 v9, 0xc

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "phone"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object p0, v9, v10

    const/4 v10, 0x2

    const-string v11, "minReceiveTime"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    aput-object v5, v9, v10

    const/4 v5, 0x4

    const-string v10, "maxReceiveTime"

    aput-object v10, v9, v5

    const/4 v5, 0x5

    aput-object v4, v9, v5

    const/4 v4, 0x6

    const-string v5, "useBubbleViews"

    aput-object v5, v9, v4

    const/4 v4, 0x7

    invoke-virtual {v6}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v9, v4

    const/16 v4, 0x8

    const-string v5, "useBubbleLogoName"

    aput-object v5, v9, v4

    const/16 v4, 0x9

    aput-object p4, v9, v4

    const/16 v4, 0xa

    const-string v5, "extend"

    aput-object v5, v9, v4

    const/16 v4, 0xb

    aput-object p5, v9, v4

    invoke-static {v7, v8, v9}, Lcn/com/xy/sms/sdk/db/base/BaseManager;->getContentValues(Landroid/content/ContentValues;Z[Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v5, "tb_phone_bubble_cache"

    invoke-static {v5, v4}, Lcn/com/xy/sms/sdk/db/DBManager;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    :cond_1
    :goto_1
    return-wide v2

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/32 v8, 0x7fffffff

    add-long/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    goto :goto_0

    :cond_3
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    cmp-long v7, p1, v8

    if-lez v7, :cond_4

    const-string v7, "maxReceiveTime"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v7, p1, v8

    if-gez v7, :cond_8

    const-string v7, "maxReceiveTime"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_4
    :goto_2
    invoke-static/range {p4 .. p4}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "useBubbleLogoName"

    move-object/from16 v0, p4

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-static/range {p5 .. p5}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6

    const-string v7, "extend"

    move-object/from16 v0, p5

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    invoke-static/range {p3 .. p3}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7

    const-string v7, "useBubbleViews"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    const/4 v7, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v4, v7, v0}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    :cond_7
    :goto_3
    invoke-virtual {v6}, Landroid/content/ContentValues;->size()I

    move-result v4

    if-lez v4, :cond_1

    const-string v4, "tb_phone_bubble_cache"

    const-string v7, "phone=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object p0, v8, v9

    invoke-static {v4, v6, v7, v8}, Lcn/com/xy/sms/sdk/db/DBManager;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v4, "id"

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto/16 :goto_1

    :cond_8
    const-string v7, "minReceiveTime"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v7, p1, v8

    if-lez v7, :cond_4

    const-string v7, "minReceiveTime"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_2

    :catch_0
    move-exception v4

    goto/16 :goto_1

    :cond_9
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8, v7}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v7

    :goto_4
    if-lt v4, v7, :cond_b

    :cond_a
    if-ne v4, v7, :cond_7

    move-object/from16 v0, p3

    invoke-virtual {v8, v7, v0}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    const-string v4, "useBubbleViews"

    invoke-virtual {v8}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_b
    invoke-virtual {v8, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    if-nez v9, :cond_a

    add-int/lit8 v4, v4, 0x1

    goto :goto_4
.end method
