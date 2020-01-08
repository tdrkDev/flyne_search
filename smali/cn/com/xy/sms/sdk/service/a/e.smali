.class public final Lcn/com/xy/sms/sdk/service/a/e;
.super Ljava/lang/Object;


# static fields
.field public static a:[B

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field private static e:Z

.field private static f:Lcn/com/xy/sms/sdk/util/DataEnCipher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcn/com/xy/sms/sdk/service/a/e;->e:Z

    const/4 v0, 0x0

    sput-object v0, Lcn/com/xy/sms/sdk/service/a/e;->f:Lcn/com/xy/sms/sdk/util/DataEnCipher;

    const-string v0, "ERROR"

    sput-object v0, Lcn/com/xy/sms/sdk/service/a/e;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    :try_start_0
    invoke-static {}, Lcn/com/xy/sms/sdk/service/a/e;->d()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcn/com/xy/sms/sdk/service/a/e;->d:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    :try_start_1
    sget-object v0, Lcn/com/xy/sms/sdk/service/a/e;->f:Lcn/com/xy/sms/sdk/util/DataEnCipher;

    invoke-virtual {v0, p0}, Lcn/com/xy/sms/sdk/util/DataEnCipher;->xyBase64Decode2(Ljava/lang/String;)[B

    move-result-object v0

    sget-object v1, Lcn/com/xy/sms/sdk/service/a/e;->f:Lcn/com/xy/sms/sdk/util/DataEnCipher;

    array-length v2, v0

    sget-object v3, Lcn/com/xy/sms/sdk/service/a/e;->a:[B

    sget-object v4, Lcn/com/xy/sms/sdk/service/a/e;->a:[B

    array-length v4, v4

    invoke-virtual {v1, v0, v2, v3, v4}, Lcn/com/xy/sms/sdk/util/DataEnCipher;->xyDecrypt([BI[BI)[B
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    if-nez v1, :cond_2

    const-string v0, ""

    goto :goto_0

    :cond_2
    :try_start_2
    new-instance v0, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0
.end method

.method private static a([B)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcn/com/xy/sms/sdk/service/a/e;->f:Lcn/com/xy/sms/sdk/util/DataEnCipher;

    array-length v1, p0

    invoke-virtual {v0, p0, v1}, Lcn/com/xy/sms/sdk/util/DataEnCipher;->xyBase64Encode2([BI)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static a()V
    .locals 1

    :try_start_0
    const-string v0, "xy-algorithm"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcn/com/xy/sms/sdk/service/a/e;->e:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcn/com/xy/sms/sdk/service/a/e;->d()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v0, Lcn/com/xy/sms/sdk/service/a/e;->d:Ljava/lang/String;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, ""

    goto :goto_0

    :cond_2
    :try_start_1
    sget-object v1, Lcn/com/xy/sms/sdk/service/a/e;->a:[B

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    sget-object v2, Lcn/com/xy/sms/sdk/service/a/e;->f:Lcn/com/xy/sms/sdk/util/DataEnCipher;

    array-length v3, v1

    sget-object v4, Lcn/com/xy/sms/sdk/service/a/e;->a:[B

    sget-object v5, Lcn/com/xy/sms/sdk/service/a/e;->a:[B

    array-length v5, v5

    invoke-virtual {v2, v1, v3, v4, v5}, Lcn/com/xy/sms/sdk/util/DataEnCipher;->xyEncrypt([BI[BI)[B

    move-result-object v1

    if-nez v1, :cond_3

    const-string v0, ""

    goto :goto_0

    :cond_3
    sget-object v2, Lcn/com/xy/sms/sdk/service/a/e;->f:Lcn/com/xy/sms/sdk/util/DataEnCipher;

    array-length v3, v1

    invoke-virtual {v2, v1, v3}, Lcn/com/xy/sms/sdk/util/DataEnCipher;->xyBase64Encode2([BI)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static b()V
    .locals 3

    sget-boolean v0, Lcn/com/xy/sms/sdk/service/a/e;->e:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getPARSE_PATH()Ljava/lang/String;

    move-result-object v1

    const-string v2, "libxy-algorithm.so"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcn/com/xy/sms/sdk/service/a/e;->e:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    sput-boolean v0, Lcn/com/xy/sms/sdk/service/a/e;->e:Z

    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getPARSE_PATH()Ljava/lang/String;

    move-result-object v1

    const-string v2, "libxy-algorithm-64.so"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcn/com/xy/sms/sdk/service/a/e;->e:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_2
    const-string v0, "xy-algorithm"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcn/com/xy/sms/sdk/service/a/e;->e:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method private static declared-synchronized c()Lcn/com/xy/sms/sdk/util/DataEnCipher;
    .locals 2

    const-class v1, Lcn/com/xy/sms/sdk/service/a/e;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcn/com/xy/sms/sdk/service/a/e;->f:Lcn/com/xy/sms/sdk/util/DataEnCipher;

    if-nez v0, :cond_0

    new-instance v0, Lcn/com/xy/sms/sdk/util/DataEnCipher;

    invoke-direct {v0}, Lcn/com/xy/sms/sdk/util/DataEnCipher;-><init>()V

    sput-object v0, Lcn/com/xy/sms/sdk/service/a/e;->f:Lcn/com/xy/sms/sdk/util/DataEnCipher;

    :cond_0
    sget-object v0, Lcn/com/xy/sms/sdk/service/a/e;->f:Lcn/com/xy/sms/sdk/util/DataEnCipher;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized d()Z
    .locals 6

    const/4 v1, 0x0

    const/4 v0, 0x1

    const-class v2, Lcn/com/xy/sms/sdk/service/a/e;

    monitor-enter v2

    :try_start_0
    sget-object v3, Lcn/com/xy/sms/sdk/service/a/e;->a:[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    monitor-exit v2

    return v0

    :cond_1
    :try_start_1
    invoke-static {}, Lcn/com/xy/sms/sdk/service/a/e;->c()Lcn/com/xy/sms/sdk/util/DataEnCipher;

    sget-boolean v3, Lcn/com/xy/sms/sdk/service/a/e;->e:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_2

    :try_start_2
    new-instance v3, Ljava/io/File;

    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getPARSE_PATH()Ljava/lang/String;

    move-result-object v4

    const-string v5, "libxy-algorithm.so"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/System;->load(Ljava/lang/String;)V

    const/4 v3, 0x1

    sput-boolean v3, Lcn/com/xy/sms/sdk/service/a/e;->e:Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :goto_1
    :try_start_3
    sget-object v3, Lcn/com/xy/sms/sdk/service/a/e;->a:[B

    if-nez v3, :cond_3

    sget-object v3, Lcn/com/xy/sms/sdk/service/a/e;->f:Lcn/com/xy/sms/sdk/util/DataEnCipher;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcn/com/xy/sms/sdk/util/DataEnCipher;->getKeyData(I)Z

    :cond_3
    sget-object v3, Lcn/com/xy/sms/sdk/service/a/e;->f:Lcn/com/xy/sms/sdk/util/DataEnCipher;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcn/com/xy/sms/sdk/util/DataEnCipher;->getChannelData(I)Z

    sget-object v3, Lcn/com/xy/sms/sdk/service/a/e;->f:Lcn/com/xy/sms/sdk/util/DataEnCipher;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcn/com/xy/sms/sdk/util/DataEnCipher;->getChannelData(I)Z

    sget-object v3, Lcn/com/xy/sms/sdk/service/a/e;->a:[B

    if-nez v3, :cond_0

    :goto_2
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v3

    const/4 v3, 0x0

    sput-boolean v3, Lcn/com/xy/sms/sdk/service/a/e;->e:Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    new-instance v3, Ljava/io/File;

    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getPARSE_PATH()Ljava/lang/String;

    move-result-object v4

    const-string v5, "libxy-algorithm-64.so"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/System;->load(Ljava/lang/String;)V

    const/4 v3, 0x1

    sput-boolean v3, Lcn/com/xy/sms/sdk/service/a/e;->e:Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v3

    :try_start_5
    const-string v3, "xy-algorithm"

    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v3, 0x1

    sput-boolean v3, Lcn/com/xy/sms/sdk/service/a/e;->e:Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catch_2
    move-exception v3

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :catch_3
    move-exception v0

    goto :goto_2
.end method
