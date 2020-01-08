.class public final Lcn/com/xy/sms/sdk/number/r;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "status"

.field private static final b:Ljava/lang/String; = "url"

.field private static final c:Ljava/lang/String; = "dataDigest"

.field private static final d:Ljava/lang/String; = "dataVersion"

.field private static final e:I = 0xcc

.field private static final f:I = 0xc8

.field private static final g:I = 0x1f4

.field private static final h:I = 0x1

.field private static final i:I = 0x2

.field private static final j:I = 0x3

.field private static k:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcn/com/xy/sms/sdk/number/r;->k:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcn/com/xy/sms/sdk/number/r;->k:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcn/com/xy/sms/sdk/number/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;)V
    .locals 2

    sget-object v0, Lcn/com/xy/sms/sdk/util/E;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcn/com/xy/sms/sdk/number/s;

    invoke-direct {v1, p0}, Lcn/com/xy/sms/sdk/number/s;-><init>(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;ILjava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "upgrade callback:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-static {p0, v0}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;Lorg/json/JSONObject;)V
    .locals 4

    const-string v0, "url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "dataDigest"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "dataVersion"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcn/com/xy/sms/sdk/number/r;->k:Ljava/lang/String;

    sget-object v2, Lcn/com/xy/sms/sdk/util/E;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcn/com/xy/sms/sdk/number/t;

    invoke-direct {v3, v1, v0, p0}, Lcn/com/xy/sms/sdk/number/t;-><init>(Ljava/lang/String;Ljava/lang/String;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Ljava/io/InputStream;)V
    .locals 14

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v2, 0x0

    const/4 v11, 0x1

    :try_start_0
    invoke-static {}, Lcn/com/xy/sms/sdk/db/c;->a()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v3

    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Lcn/com/xy/sms/sdk/dex/DexUtil;->getNumberTagTypeMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    new-instance v1, Ljava/io/LineNumberReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v5}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    if-nez v2, :cond_1

    invoke-static {v3}, Lcn/com/xy/sms/sdk/db/c;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-static {v1}, Lcn/com/xy/sms/sdk/util/f;->a(Ljava/io/Closeable;)V

    invoke-static {p0}, Lcn/com/xy/sms/sdk/util/f;->a(Ljava/io/Closeable;)V

    :goto_1
    return-void

    :cond_1
    :try_start_3
    const-string v5, "\t"

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v2, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v5, "\t"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-ne v13, v6, :cond_2

    const-string v5, "tb_number_info"

    const-string v6, "num=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    aget-object v2, v2, v9

    aput-object v2, v7, v8

    invoke-static {v5, v6, v7}, Lcn/com/xy/sms/sdk/db/c;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v2, v3

    :goto_2
    :try_start_4
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "UpgradeEmbedNumber import db exception"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    invoke-static {v2}, Lcn/com/xy/sms/sdk/db/c;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-static {v1}, Lcn/com/xy/sms/sdk/util/f;->a(Ljava/io/Closeable;)V

    invoke-static {p0}, Lcn/com/xy/sms/sdk/util/f;->a(Ljava/io/Closeable;)V

    goto :goto_1

    :cond_2
    :try_start_5
    sget-object v5, Lcn/com/xy/sms/sdk/number/r;->k:Ljava/lang/String;

    invoke-static {v0, v4, v2, v5}, Lcn/com/xy/sms/util/b;->a(Lorg/json/JSONObject;Ljava/util/Map;[Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_0

    if-ne v12, v6, :cond_3

    const/4 v6, 0x0

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "num"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const/4 v9, 0x0

    aget-object v9, v2, v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string v9, "result"

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v8

    const/4 v5, 0x4

    const-string v8, "version"

    aput-object v8, v7, v5

    const/4 v5, 0x5

    sget-object v8, Lcn/com/xy/sms/sdk/number/r;->k:Ljava/lang/String;

    aput-object v8, v7, v5

    invoke-static {v6, v7}, Lcn/com/xy/sms/sdk/db/base/BaseManager;->getContentValues(Landroid/content/ContentValues;[Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v5

    const-string v6, "tb_number_info"

    const-string v7, "num=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    aget-object v2, v2, v10

    aput-object v2, v8, v9

    invoke-static {v6, v5, v7, v8}, Lcn/com/xy/sms/sdk/db/c;->a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    :goto_3
    invoke-static {v3}, Lcn/com/xy/sms/sdk/db/c;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-static {v1}, Lcn/com/xy/sms/sdk/util/f;->a(Ljava/io/Closeable;)V

    invoke-static {p0}, Lcn/com/xy/sms/sdk/util/f;->a(Ljava/io/Closeable;)V

    throw v0

    :cond_3
    if-ne v11, v6, :cond_0

    const/4 v6, 0x0

    :try_start_6
    aget-object v2, v2, v6

    sget-object v6, Lcn/com/xy/sms/sdk/number/r;->k:Ljava/lang/String;

    const-wide/16 v8, 0x0

    invoke-static {v2, v5, v6, v8, v9}, Lcn/com/xy/sms/sdk/db/entity/m;->a(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;J)J
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v1, v2

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v3, v2

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v1, v2

    goto/16 :goto_2

    :catch_2
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto/16 :goto_2
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-static {v1}, Lcn/com/xy/sms/sdk/util/o;->a(Ljava/io/File;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic b(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "version"

    invoke-static {}, Lcn/com/xy/sms/util/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    new-instance v2, Lcn/com/xy/sms/sdk/number/u;

    invoke-direct {v2, p0}, Lcn/com/xy/sms/sdk/number/u;-><init>(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;)V

    invoke-static {v0, v1, v2}, Lcn/com/xy/sms/sdk/service/c/l;->a(Ljava/util/Map;Ljava/util/Map;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;)V

    return-void
.end method

.method private static b(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;ILjava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "upgrade callback:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-static {p0, v0}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V

    return-void
.end method

.method private static b(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;Lorg/json/JSONObject;)V
    .locals 4

    const-string v0, "url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "dataDigest"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "dataVersion"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcn/com/xy/sms/sdk/number/r;->k:Ljava/lang/String;

    sget-object v2, Lcn/com/xy/sms/sdk/util/E;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcn/com/xy/sms/sdk/number/t;

    invoke-direct {v3, v1, v0, p0}, Lcn/com/xy/sms/sdk/number/t;-><init>(Ljava/lang/String;Ljava/lang/String;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static b(Ljava/io/InputStream;)V
    .locals 14

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v2, 0x0

    const/4 v11, 0x1

    :try_start_0
    invoke-static {}, Lcn/com/xy/sms/sdk/db/c;->a()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v3

    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Lcn/com/xy/sms/sdk/dex/DexUtil;->getNumberTagTypeMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    new-instance v1, Ljava/io/LineNumberReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v5}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    if-nez v2, :cond_1

    invoke-static {v3}, Lcn/com/xy/sms/sdk/db/c;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-static {v1}, Lcn/com/xy/sms/sdk/util/f;->a(Ljava/io/Closeable;)V

    invoke-static {p0}, Lcn/com/xy/sms/sdk/util/f;->a(Ljava/io/Closeable;)V

    :goto_1
    return-void

    :cond_1
    :try_start_3
    const-string v5, "\t"

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v2, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v5, "\t"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-ne v13, v6, :cond_2

    const-string v5, "tb_number_info"

    const-string v6, "num=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    aget-object v2, v2, v9

    aput-object v2, v7, v8

    invoke-static {v5, v6, v7}, Lcn/com/xy/sms/sdk/db/c;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v2, v3

    :goto_2
    :try_start_4
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "UpgradeEmbedNumber import db exception"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    invoke-static {v2}, Lcn/com/xy/sms/sdk/db/c;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-static {v1}, Lcn/com/xy/sms/sdk/util/f;->a(Ljava/io/Closeable;)V

    invoke-static {p0}, Lcn/com/xy/sms/sdk/util/f;->a(Ljava/io/Closeable;)V

    goto :goto_1

    :cond_2
    :try_start_5
    sget-object v5, Lcn/com/xy/sms/sdk/number/r;->k:Ljava/lang/String;

    invoke-static {v0, v4, v2, v5}, Lcn/com/xy/sms/util/b;->a(Lorg/json/JSONObject;Ljava/util/Map;[Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_0

    if-ne v12, v6, :cond_3

    const/4 v6, 0x0

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "num"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const/4 v9, 0x0

    aget-object v9, v2, v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string v9, "result"

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v8

    const/4 v5, 0x4

    const-string v8, "version"

    aput-object v8, v7, v5

    const/4 v5, 0x5

    sget-object v8, Lcn/com/xy/sms/sdk/number/r;->k:Ljava/lang/String;

    aput-object v8, v7, v5

    invoke-static {v6, v7}, Lcn/com/xy/sms/sdk/db/base/BaseManager;->getContentValues(Landroid/content/ContentValues;[Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v5

    const-string v6, "tb_number_info"

    const-string v7, "num=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    aget-object v2, v2, v10

    aput-object v2, v8, v9

    invoke-static {v6, v5, v7, v8}, Lcn/com/xy/sms/sdk/db/c;->a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    :goto_3
    invoke-static {v3}, Lcn/com/xy/sms/sdk/db/c;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-static {v1}, Lcn/com/xy/sms/sdk/util/f;->a(Ljava/io/Closeable;)V

    invoke-static {p0}, Lcn/com/xy/sms/sdk/util/f;->a(Ljava/io/Closeable;)V

    throw v0

    :cond_3
    if-ne v11, v6, :cond_0

    const/4 v6, 0x0

    :try_start_6
    aget-object v2, v2, v6

    sget-object v6, Lcn/com/xy/sms/sdk/number/r;->k:Ljava/lang/String;

    const-wide/16 v8, 0x0

    invoke-static {v2, v5, v6, v8, v9}, Lcn/com/xy/sms/sdk/db/entity/m;->a(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;J)J
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v1, v2

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v3, v2

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v1, v2

    goto/16 :goto_2

    :catch_2
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto/16 :goto_2
.end method

.method private static c(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "version"

    invoke-static {}, Lcn/com/xy/sms/util/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    new-instance v2, Lcn/com/xy/sms/sdk/number/u;

    invoke-direct {v2, p0}, Lcn/com/xy/sms/sdk/number/u;-><init>(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;)V

    invoke-static {v0, v1, v2}, Lcn/com/xy/sms/sdk/service/c/l;->a(Ljava/util/Map;Ljava/util/Map;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;)V

    return-void
.end method
