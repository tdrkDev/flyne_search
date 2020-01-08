.class public final Lcn/com/xy/sms/sdk/util/J;
.super Ljava/lang/Thread;


# static fields
.field private static b:Z

.field private static d:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Z


# instance fields
.field private a:I

.field private c:Lcn/com/xy/sms/sdk/db/entity/v;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcn/com/xy/sms/sdk/util/J;->d:Ljava/util/HashSet;

    const/4 v0, 0x0

    sput-boolean v0, Lcn/com/xy/sms/sdk/util/J;->e:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcn/com/xy/sms/sdk/util/J;->a:I

    return-void
.end method

.method private static declared-synchronized a()Lcn/com/xy/sms/sdk/db/entity/v;
    .locals 5

    const-class v2, Lcn/com/xy/sms/sdk/util/J;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lcn/com/xy/sms/sdk/util/J;->d:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v0, 0x0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_1
    sget-object v1, Lcn/com/xy/sms/sdk/util/J;->d:Ljava/util/HashSet;

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v0

    :cond_1
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/db/entity/w;->c(Ljava/lang/String;)Lcn/com/xy/sms/sdk/db/entity/v;

    move-result-object v1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_2

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method private a(Lcn/com/xy/sms/sdk/db/entity/v;)V
    .locals 7

    const/4 v6, 0x2

    const/4 v0, 0x0

    invoke-static {v6}, Lcn/com/xy/sms/sdk/net/NetUtil;->checkAccessNetWork(I)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_6

    :try_start_0
    iput-object p1, p0, Lcn/com/xy/sms/sdk/util/J;->c:Lcn/com/xy/sms/sdk/db/entity/v;

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "ziptemp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_1
    new-instance v2, Ljava/io/File;

    iget-object v3, p1, Lcn/com/xy/sms/sdk/db/entity/v;->c:Ljava/lang/String;

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_2
    sget-boolean v1, Lcn/com/xy/sms/sdk/log/LogManager;->debug:Z

    :goto_1
    iget v1, p0, Lcn/com/xy/sms/sdk/util/J;->a:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge v1, v6, :cond_3

    if-eqz v0, :cond_5

    :cond_3
    if-eqz v0, :cond_4

    :try_start_1
    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getDRAWBLE_PATH()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/com/xy/sms/sdk/util/XyUtil;->upZipFile(Ljava/io/File;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/com/xy/sms/sdk/util/J;->c:Lcn/com/xy/sms/sdk/db/entity/v;

    iget-wide v0, v0, Lcn/com/xy/sms/sdk/db/entity/v;->a:J

    const/4 v3, 0x1

    iget-object v4, p0, Lcn/com/xy/sms/sdk/util/J;->c:Lcn/com/xy/sms/sdk/db/entity/v;

    iget-object v4, v4, Lcn/com/xy/sms/sdk/db/entity/v;->c:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lcn/com/xy/sms/sdk/db/entity/w;->a(JI)V

    invoke-static {v2}, Lcn/com/xy/sms/sdk/util/f;->a(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/util/zip/ZipException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    :goto_2
    const-wide/16 v0, 0x7d0

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_7

    :goto_3
    invoke-static {}, Lcn/com/xy/sms/sdk/util/J;->b()Lcn/com/xy/sms/sdk/db/entity/v;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/com/xy/sms/sdk/util/J;->a(Lcn/com/xy/sms/sdk/db/entity/v;)V

    goto/16 :goto_0

    :cond_5
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/com/xy/sms/sdk/net/NetUtil;->prex:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcn/com/xy/sms/sdk/db/entity/v;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v2}, Lcn/com/xy/sms/sdk/util/J;->a(Ljava/lang/String;Ljava/io/File;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v0

    :goto_4
    :try_start_4
    iget v1, p0, Lcn/com/xy/sms/sdk/util/J;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcn/com/xy/sms/sdk/util/J;->a:I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget v1, p0, Lcn/com/xy/sms/sdk/util/J;->a:I

    mul-int/lit16 v1, v1, 0xfa0

    int-to-long v4, v1

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_6
    invoke-static {v2}, Lcn/com/xy/sms/sdk/util/f;->a(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    :catch_2
    move-exception v0

    const-wide/16 v0, 0x7d0

    :try_start_7
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_5

    :goto_5
    invoke-static {}, Lcn/com/xy/sms/sdk/util/J;->b()Lcn/com/xy/sms/sdk/db/entity/v;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/com/xy/sms/sdk/util/J;->a(Lcn/com/xy/sms/sdk/db/entity/v;)V

    goto/16 :goto_0

    :catch_3
    move-exception v0

    :try_start_8
    invoke-static {v2}, Lcn/com/xy/sms/sdk/util/f;->a(Ljava/io/File;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    const-wide/16 v2, 0x7d0

    :try_start_9
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_6

    :goto_6
    invoke-static {}, Lcn/com/xy/sms/sdk/util/J;->b()Lcn/com/xy/sms/sdk/db/entity/v;

    move-result-object v1

    invoke-direct {p0, v1}, Lcn/com/xy/sms/sdk/util/J;->a(Lcn/com/xy/sms/sdk/db/entity/v;)V

    throw v0

    :catch_4
    move-exception v0

    :try_start_a
    invoke-static {v2}, Lcn/com/xy/sms/sdk/util/f;->a(Ljava/io/File;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_2

    :cond_6
    sput-boolean v0, Lcn/com/xy/sms/sdk/util/J;->e:Z

    goto/16 :goto_0

    :catch_5
    move-exception v0

    goto :goto_5

    :catch_6
    move-exception v1

    goto :goto_6

    :catch_7
    move-exception v0

    goto :goto_3

    :catch_8
    move-exception v1

    goto :goto_4
.end method

.method public static declared-synchronized a(Ljava/lang/String;)V
    .locals 2

    const-class v1, Lcn/com/xy/sms/sdk/util/J;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcn/com/xy/sms/sdk/util/J;->d:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcn/com/xy/sms/sdk/util/J;->d:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(Z)V
    .locals 2

    const-class v1, Lcn/com/xy/sms/sdk/util/J;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcn/com/xy/sms/sdk/util/J;->e:Z

    if-nez v0, :cond_0

    new-instance v0, Lcn/com/xy/sms/sdk/util/J;

    invoke-direct {v0}, Lcn/com/xy/sms/sdk/util/J;-><init>()V

    invoke-virtual {v0}, Lcn/com/xy/sms/sdk/util/J;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Ljava/lang/String;Ljava/io/File;)Z
    .locals 11

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "https"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "HTTPS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcn/com/xy/sms/sdk/net/b;->a(Ljava/lang/String;I)Ljavax/net/ssl/HttpsURLConnection;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_b
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v4

    :goto_0
    if-nez v4, :cond_3

    if-eqz v4, :cond_1

    :try_start_1
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    move v0, v1

    :goto_2
    return v0

    :cond_2
    :try_start_2
    new-instance v0, Ljava/net/URL;

    invoke-static {p1}, Lcn/com/xy/sms/sdk/net/NetUtil;->getUrlWithPara(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/16 v4, 0x1388

    :try_start_3
    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const v4, 0x15f90

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string v4, "GET"

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v4, "clientKey"

    const-string v5, "360_c"

    invoke-virtual {v0, v4, v5}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "reqVersion"

    const-string v5, "5.2.2.1015"

    invoke-virtual {v0, v4, v5}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    sget-boolean v4, Lcn/com/xy/sms/sdk/log/LogManager;->debug:Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_c
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object v4, v0

    goto :goto_0

    :cond_3
    :try_start_4
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v5, 0xc8

    if-eq v0, v5, :cond_4

    const/16 v5, 0xce

    if-ne v0, v5, :cond_f

    :cond_4
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    int-to-long v6, v0

    sget-boolean v0, Lcn/com/xy/sms/sdk/log/LogManager;->debug:Z

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-nez v0, :cond_7

    iget-object v0, p0, Lcn/com/xy/sms/sdk/util/J;->c:Lcn/com/xy/sms/sdk/db/entity/v;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcn/com/xy/sms/sdk/util/J;->c:Lcn/com/xy/sms/sdk/db/entity/v;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/16 v2, 0x12

    const-wide/32 v8, 0x5265c00

    invoke-static {v2, v8, v9}, Lcn/com/xy/sms/sdk/dex/DexUtil;->getUpdateCycleByType(IJ)J

    move-result-wide v8

    add-long/2addr v6, v8

    invoke-static {v0, v6, v7}, Lcn/com/xy/sms/sdk/db/entity/w;->a(Lcn/com/xy/sms/sdk/db/entity/v;J)V

    :cond_5
    invoke-static {p2}, Lcn/com/xy/sms/sdk/util/f;->a(Ljava/io/File;)V

    const/4 v0, 0x4

    iput v0, p0, Lcn/com/xy/sms/sdk/util/J;->a:I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_d
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v4, :cond_6

    :try_start_5
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    :cond_6
    :goto_3
    move v0, v1

    goto :goto_2

    :cond_7
    :try_start_6
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_d
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-result-object v1

    const/16 v0, 0x400

    :try_start_7
    new-array v0, v0, [B

    new-instance v5, Ljava/io/RandomAccessFile;

    const-string v6, "rwd"

    invoke-direct {v5, p2, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_e
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    if-eqz v1, :cond_8

    const-wide/16 v6, 0x0

    :try_start_8
    invoke-virtual {v5, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    :goto_4
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    move-result v3

    const/4 v6, -0x1

    if-ne v3, v6, :cond_b

    :cond_8
    :try_start_9
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    :goto_5
    if-eqz v1, :cond_9

    :try_start_a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    :cond_9
    :goto_6
    if-eqz v4, :cond_a

    :try_start_b
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_a

    :cond_a
    :goto_7
    sget-boolean v0, Lcn/com/xy/sms/sdk/log/LogManager;->debug:Z

    move v0, v2

    goto/16 :goto_2

    :cond_b
    const/4 v6, 0x0

    :try_start_c
    invoke-virtual {v5, v0, v6, v3}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v3, v1

    move-object v2, v5

    move-object v1, v4

    :goto_8
    :try_start_d
    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :catchall_0
    move-exception v0

    move-object v4, v1

    move-object v5, v2

    :goto_9
    if-eqz v5, :cond_c

    :try_start_e
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5

    :cond_c
    :goto_a
    if-eqz v3, :cond_d

    :try_start_f
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_6

    :cond_d
    :goto_b
    if-eqz v4, :cond_e

    :try_start_10
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_7

    :cond_e
    :goto_c
    throw v0

    :cond_f
    const/16 v2, 0x194

    if-ne v0, v2, :cond_12

    :try_start_11
    iget-object v0, p0, Lcn/com/xy/sms/sdk/util/J;->c:Lcn/com/xy/sms/sdk/db/entity/v;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcn/com/xy/sms/sdk/util/J;->c:Lcn/com/xy/sms/sdk/db/entity/v;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/16 v2, 0x12

    const-wide/32 v8, 0x5265c00

    invoke-static {v2, v8, v9}, Lcn/com/xy/sms/sdk/dex/DexUtil;->getUpdateCycleByType(IJ)J

    move-result-wide v8

    add-long/2addr v6, v8

    invoke-static {v0, v6, v7}, Lcn/com/xy/sms/sdk/db/entity/w;->a(Lcn/com/xy/sms/sdk/db/entity/v;J)V

    :cond_10
    invoke-static {p2}, Lcn/com/xy/sms/sdk/util/f;->a(Ljava/io/File;)V

    const/4 v0, 0x4

    iput v0, p0, Lcn/com/xy/sms/sdk/util/J;->a:I
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_d
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    if-eqz v4, :cond_11

    :try_start_12
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_3

    :cond_11
    :goto_d
    move v0, v1

    goto/16 :goto_2

    :cond_12
    if-eqz v4, :cond_13

    :try_start_13
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_4

    :cond_13
    :goto_e
    move v0, v1

    goto/16 :goto_2

    :catch_1
    move-exception v0

    goto/16 :goto_1

    :catch_2
    move-exception v0

    goto/16 :goto_3

    :catch_3
    move-exception v0

    goto :goto_d

    :catch_4
    move-exception v0

    goto :goto_e

    :catch_5
    move-exception v1

    goto :goto_a

    :catch_6
    move-exception v1

    goto :goto_b

    :catch_7
    move-exception v1

    goto :goto_c

    :catch_8
    move-exception v0

    goto :goto_5

    :catch_9
    move-exception v0

    goto :goto_6

    :catch_a
    move-exception v0

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object v4, v3

    move-object v5, v3

    goto :goto_9

    :catchall_2
    move-exception v1

    move-object v4, v0

    move-object v5, v3

    move-object v0, v1

    goto :goto_9

    :catchall_3
    move-exception v0

    move-object v5, v3

    goto :goto_9

    :catchall_4
    move-exception v0

    move-object v5, v3

    move-object v3, v1

    goto :goto_9

    :catchall_5
    move-exception v0

    move-object v3, v1

    goto :goto_9

    :catch_b
    move-exception v0

    move-object v1, v3

    move-object v2, v3

    goto :goto_8

    :catch_c
    move-exception v1

    move-object v2, v3

    move-object v10, v0

    move-object v0, v1

    move-object v1, v10

    goto :goto_8

    :catch_d
    move-exception v0

    move-object v1, v4

    move-object v2, v3

    goto :goto_8

    :catch_e
    move-exception v0

    move-object v2, v3

    move-object v3, v1

    move-object v1, v4

    goto :goto_8

    :cond_14
    move-object v4, v3

    goto/16 :goto_0
.end method

.method private static declared-synchronized b()Lcn/com/xy/sms/sdk/db/entity/v;
    .locals 2

    const-class v1, Lcn/com/xy/sms/sdk/util/J;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcn/com/xy/sms/sdk/util/J;->a()Lcn/com/xy/sms/sdk/db/entity/v;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcn/com/xy/sms/sdk/db/entity/w;->b()Lcn/com/xy/sms/sdk/db/entity/v;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :cond_0
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b(Lcn/com/xy/sms/sdk/db/entity/v;)V
    .locals 9

    const/4 v0, 0x0

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "ziptemp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance v2, Ljava/io/File;

    iget-object v3, p1, Lcn/com/xy/sms/sdk/db/entity/v;->c:Ljava/lang/String;

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_1
    sget-boolean v1, Lcn/com/xy/sms/sdk/log/LogManager;->debug:Z

    :goto_0
    iget v1, p0, Lcn/com/xy/sms/sdk/util/J;->a:I

    const/4 v3, 0x2

    if-ge v1, v3, :cond_2

    if-eqz v0, :cond_4

    :cond_2
    if-eqz v0, :cond_3

    :try_start_0
    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getDRAWBLE_PATH()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/com/xy/sms/sdk/util/XyUtil;->upZipFile(Ljava/io/File;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/com/xy/sms/sdk/util/J;->c:Lcn/com/xy/sms/sdk/db/entity/v;

    iget-wide v0, v0, Lcn/com/xy/sms/sdk/db/entity/v;->a:J

    iget-object v3, p0, Lcn/com/xy/sms/sdk/util/J;->c:Lcn/com/xy/sms/sdk/db/entity/v;

    iget-object v3, v3, Lcn/com/xy/sms/sdk/db/entity/v;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/zip/ZipException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "status"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "tb_res_download"

    const-string v5, "id = ? "

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v7

    invoke-static {v4, v3, v5, v6}, Lcn/com/xy/sms/sdk/db/DBManager;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/util/zip/ZipException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    invoke-static {v2}, Lcn/com/xy/sms/sdk/util/f;->a(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/util/zip/ZipException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    :cond_3
    :goto_2
    return-void

    :cond_4
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/com/xy/sms/sdk/net/NetUtil;->prex:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcn/com/xy/sms/sdk/db/entity/v;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v2}, Lcn/com/xy/sms/sdk/util/J;->a(Ljava/lang/String;Ljava/io/File;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_5

    move-result v0

    :goto_3
    iget v1, p0, Lcn/com/xy/sms/sdk/util/J;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcn/com/xy/sms/sdk/util/J;->a:I

    :try_start_4
    iget v1, p0, Lcn/com/xy/sms/sdk/util/J;->a:I

    mul-int/lit16 v1, v1, 0xfa0

    int-to-long v4, v1

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v2}, Lcn/com/xy/sms/sdk/util/f;->a(Ljava/io/File;)V

    goto :goto_2

    :catch_2
    move-exception v0

    invoke-static {v2}, Lcn/com/xy/sms/sdk/util/f;->a(Ljava/io/File;)V

    goto :goto_2

    :catch_3
    move-exception v0

    invoke-static {v2}, Lcn/com/xy/sms/sdk/util/f;->a(Ljava/io/File;)V

    goto :goto_2

    :catch_4
    move-exception v0

    goto :goto_1

    :catch_5
    move-exception v1

    goto :goto_3
.end method

.method private static declared-synchronized b(Ljava/lang/String;)V
    .locals 2

    const-class v1, Lcn/com/xy/sms/sdk/util/J;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcn/com/xy/sms/sdk/util/J;->d:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized b(Z)V
    .locals 2

    const-class v0, Lcn/com/xy/sms/sdk/util/J;

    monitor-enter v0

    :try_start_0
    sput-boolean p0, Lcn/com/xy/sms/sdk/util/J;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static c()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "ziptemp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static c(Lcn/com/xy/sms/sdk/db/entity/v;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcn/com/xy/sms/sdk/db/entity/v;->c:Ljava/lang/String;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    sget-boolean v0, Lcn/com/xy/sms/sdk/util/J;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/J;->b(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    const-wide/16 v0, 0xbb8

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    :try_start_2
    invoke-static {}, Lcn/com/xy/sms/sdk/util/J;->b()Lcn/com/xy/sms/sdk/db/entity/v;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/com/xy/sms/sdk/util/J;->a(Lcn/com/xy/sms/sdk/db/entity/v;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/J;->b(Z)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method
