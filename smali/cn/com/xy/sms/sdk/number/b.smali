.class public final Lcn/com/xy/sms/sdk/number/b;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "duoqu_embed_number_version.txt"

.field private static final b:Ljava/lang/String; = "0"

.field private static final c:Ljava/lang/String; = "1"

.field private static final d:Ljava/lang/Object;

.field private static e:Z

.field private static f:Z

.field private static g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcn/com/xy/sms/sdk/number/b;->d:Ljava/lang/Object;

    sput-boolean v1, Lcn/com/xy/sms/sdk/number/b;->e:Z

    sput-boolean v1, Lcn/com/xy/sms/sdk/number/b;->f:Z

    const/4 v0, 0x0

    sput-object v0, Lcn/com/xy/sms/sdk/number/b;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lorg/json/JSONObject;[Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 14

    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0

    :cond_1
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    :try_start_0
    aget-object v8, p1, v0

    const/4 v0, 0x1

    aget-object v9, p1, v0

    const-string v0, "1"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x2

    aget-object v3, p1, v0

    array-length v0, p1

    const/4 v6, 0x4

    if-ne v0, v6, :cond_4

    const/4 v0, 0x1

    move v7, v0

    :goto_1
    invoke-static {}, Lcn/com/xy/sms/sdk/number/b;->c()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v0, 0x0

    move v13, v0

    move-object v0, v2

    move-object v2, v5

    move v5, v1

    move-object v1, v4

    move v4, v13

    :goto_2
    if-lt v4, v11, :cond_5

    :cond_2
    move-object v13, v0

    move-object v0, v1

    move-object v1, v13

    invoke-static {v2}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_3
    const-string v4, "src"

    invoke-virtual {p0, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "auth"

    const-string v4, "1"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_3
    invoke-virtual {p0, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "name"

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "logo"

    invoke-static {v3}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, ""

    :goto_4
    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_5
    const-string v0, "pubnum"

    invoke-virtual {p0, v0, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "numtype"

    invoke-virtual {p0, v0, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "version"

    invoke-static {}, Lcn/com/xy/sms/util/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 p0, 0x0

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    move v7, v0

    goto :goto_1

    :cond_5
    const/4 v6, 0x3

    :goto_6
    array-length v12, p1

    if-lt v6, v12, :cond_6

    :goto_7
    if-nez v5, :cond_2

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    aget-object v12, p1, v6

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_8

    aget-object v0, p1, v6

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aget-object v0, p1, v6

    const/4 v1, 0x1

    const/4 v12, 0x2

    invoke-virtual {v0, v1, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    aget-object v0, p1, v6

    const/4 v12, 0x2

    invoke-virtual {v0, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    if-nez v7, :cond_7

    add-int/lit8 v12, v4, 0x1

    invoke-virtual {v10, v4, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    :cond_7
    const/4 v5, 0x1

    goto :goto_7

    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_9
    const/4 v0, 0x0

    goto :goto_3

    :cond_a
    move-object v0, v3

    goto :goto_4

    :cond_b
    const/4 v0, 0x2

    aget-object v0, p1, v0

    const/4 v1, 0x3

    aget-object v1, p1, v1

    const-string v2, "tag"

    invoke-virtual {p0, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "amount"

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    sget-object v1, Lcn/com/xy/sms/sdk/number/b;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcn/com/xy/sms/sdk/number/b;->e:Z

    if-eqz v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcn/com/xy/sms/sdk/number/b;->e:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcn/com/xy/sms/sdk/util/E;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcn/com/xy/sms/sdk/number/c;

    invoke-direct {v1, p0}, Lcn/com/xy/sms/sdk/number/c;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Ljava/io/InputStream;)V
    .locals 10

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Lcn/com/xy/sms/sdk/db/c;->a()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v3

    :try_start_1
    const-string v0, "REPLACE INTO %s (%s,%s,%s)VALUES(?,?,?)"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "tb_number_info"

    aput-object v5, v1, v4

    const/4 v4, 0x1

    const-string v5, "num"

    aput-object v5, v1, v4

    const/4 v4, 0x2

    const-string v5, "result"

    aput-object v5, v1, v4

    const/4 v4, 0x3

    const-string v5, "version"

    aput-object v5, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Lcn/com/xy/sms/sdk/dex/DexUtil;->getNumberTagTypeMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    new-instance v1, Ljava/io/LineNumberReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v6}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-static {}, Lcn/com/xy/sms/util/b;->a()Ljava/lang/String;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_1

    :try_start_3
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    :cond_1
    :goto_1
    invoke-static {v3}, Lcn/com/xy/sms/sdk/db/c;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-static {v1}, Lcn/com/xy/sms/sdk/util/f;->a(Ljava/io/Closeable;)V

    invoke-static {p0}, Lcn/com/xy/sms/sdk/util/f;->a(Ljava/io/Closeable;)V

    return-void

    :cond_2
    :try_start_4
    const-string v7, "\t"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6, v2}, Lcn/com/xy/sms/util/b;->a(Lorg/json/JSONObject;Ljava/util/Map;[Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    if-eqz v7, :cond_0

    const/4 v8, 0x1

    const/4 v9, 0x0

    aget-object v6, v6, v9

    invoke-virtual {v0, v8, v6}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    const/4 v6, 0x2

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    const/4 v6, 0x3

    invoke-static {}, Lcn/com/xy/sms/util/b;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v3

    :goto_2
    if-eqz v2, :cond_3

    :try_start_5
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    :cond_3
    :goto_3
    invoke-static {v2}, Lcn/com/xy/sms/sdk/db/c;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-static {v1}, Lcn/com/xy/sms/sdk/util/f;->a(Ljava/io/Closeable;)V

    invoke-static {p0}, Lcn/com/xy/sms/sdk/util/f;->a(Ljava/io/Closeable;)V

    throw v0

    :catch_0
    move-exception v3

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_2
.end method

.method static synthetic a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "init_embed_number"

    invoke-static {v0, p0}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->setParam(Ljava/lang/String;Ljava/lang/String;)J

    return-void
.end method

.method static synthetic a(Z)V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcn/com/xy/sms/sdk/number/b;->e:Z

    return-void
.end method

.method public static a()Z
    .locals 1

    sget-boolean v0, Lcn/com/xy/sms/sdk/number/b;->f:Z

    return v0
.end method

.method private static b()Ljava/lang/String;
    .locals 4

    const-string v0, "REPLACE INTO %s (%s,%s,%s)VALUES(?,?,?)"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "tb_number_info"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "num"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "result"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "version"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/io/InputStream;)V
    .locals 10

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Lcn/com/xy/sms/sdk/db/c;->a()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v3

    :try_start_1
    const-string v0, "REPLACE INTO %s (%s,%s,%s)VALUES(?,?,?)"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "tb_number_info"

    aput-object v5, v1, v4

    const/4 v4, 0x1

    const-string v5, "num"

    aput-object v5, v1, v4

    const/4 v4, 0x2

    const-string v5, "result"

    aput-object v5, v1, v4

    const/4 v4, 0x3

    const-string v5, "version"

    aput-object v5, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Lcn/com/xy/sms/sdk/dex/DexUtil;->getNumberTagTypeMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    new-instance v1, Ljava/io/LineNumberReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v6}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-static {}, Lcn/com/xy/sms/util/b;->a()Ljava/lang/String;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_1

    :try_start_3
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    :cond_1
    :goto_1
    invoke-static {v3}, Lcn/com/xy/sms/sdk/db/c;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-static {v1}, Lcn/com/xy/sms/sdk/util/f;->a(Ljava/io/Closeable;)V

    invoke-static {p0}, Lcn/com/xy/sms/sdk/util/f;->a(Ljava/io/Closeable;)V

    return-void

    :cond_2
    :try_start_4
    const-string v7, "\t"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6, v2}, Lcn/com/xy/sms/util/b;->a(Lorg/json/JSONObject;Ljava/util/Map;[Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    if-eqz v7, :cond_0

    const/4 v8, 0x1

    const/4 v9, 0x0

    aget-object v6, v6, v9

    invoke-virtual {v0, v8, v6}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    const/4 v6, 0x2

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    const/4 v6, 0x3

    invoke-static {}, Lcn/com/xy/sms/util/b;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v3

    :goto_2
    if-eqz v2, :cond_3

    :try_start_5
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    :cond_3
    :goto_3
    invoke-static {v2}, Lcn/com/xy/sms/sdk/db/c;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-static {v1}, Lcn/com/xy/sms/sdk/util/f;->a(Ljava/io/Closeable;)V

    invoke-static {p0}, Lcn/com/xy/sms/sdk/util/f;->a(Ljava/io/Closeable;)V

    throw v0

    :catch_0
    move-exception v3

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_2
.end method

.method private static b(Ljava/lang/String;)V
    .locals 1

    const-string v0, "init_embed_number"

    invoke-static {v0, p0}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->setParam(Ljava/lang/String;Ljava/lang/String;)J

    return-void
.end method

.method static synthetic b(Z)V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcn/com/xy/sms/sdk/number/b;->f:Z

    return-void
.end method

.method static synthetic b(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x1

    const-string v1, "init_embed_number"

    invoke-static {p0, v1}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->getIntParam(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static c()Ljava/lang/String;
    .locals 4

    sget-object v0, Lcn/com/xy/sms/sdk/number/b;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcn/com/xy/sms/sdk/number/b;->g:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v2, 0x0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/com/xy/sms/sdk/number/a;->a:Lcn/com/xy/sms/sdk/number/a;

    invoke-virtual {v1}, Lcn/com/xy/sms/sdk/number/a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcn/com/xy/sms/sdk/number/a;->b:Lcn/com/xy/sms/sdk/number/a;

    invoke-virtual {v1}, Lcn/com/xy/sms/sdk/number/a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/com/xy/sms/sdk/number/a;->c:Lcn/com/xy/sms/sdk/number/a;

    invoke-virtual {v1}, Lcn/com/xy/sms/sdk/number/a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/com/xy/sms/sdk/number/a;->d:Lcn/com/xy/sms/sdk/number/a;

    invoke-virtual {v1}, Lcn/com/xy/sms/sdk/number/a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :try_start_1
    invoke-static {}, Lcn/com/xy/sms/sdk/number/b;->e()Landroid/util/Pair;

    move-result-object v1

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_1

    invoke-static {}, Lcn/com/xy/sms/util/v;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v1}, Lcn/com/xy/sms/sdk/util/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    if-nez v1, :cond_1

    :goto_1
    sput-object v0, Lcn/com/xy/sms/sdk/number/b;->g:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v2

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v0, v2

    goto :goto_1

    :cond_1
    move-object v0, v2

    goto :goto_1
.end method

.method private static c(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x1

    const-string v1, "init_embed_number"

    invoke-static {p0, v1}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->getIntParam(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static d()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/com/xy/sms/sdk/number/a;->a:Lcn/com/xy/sms/sdk/number/a;

    invoke-virtual {v1}, Lcn/com/xy/sms/sdk/number/a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcn/com/xy/sms/sdk/number/a;->b:Lcn/com/xy/sms/sdk/number/a;

    invoke-virtual {v1}, Lcn/com/xy/sms/sdk/number/a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/com/xy/sms/sdk/number/a;->c:Lcn/com/xy/sms/sdk/number/a;

    invoke-virtual {v1}, Lcn/com/xy/sms/sdk/number/a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/com/xy/sms/sdk/number/a;->d:Lcn/com/xy/sms/sdk/number/a;

    invoke-virtual {v1}, Lcn/com/xy/sms/sdk/number/a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static e()Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    :try_start_0
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v4, "unionpriority.properties"

    invoke-virtual {v1, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    :goto_0
    :try_start_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v2

    :goto_1
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v0, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    :cond_0
    :try_start_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v5, "_union"

    invoke-virtual {v1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v2

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v0, v2

    goto :goto_1
.end method

.method private static f()Ljava/util/Properties;
    .locals 3

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "unionpriority.properties"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    return-object v0
.end method
