.class public Lcn/com/xy/sms/sdk/util/KeyInitUtil;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized dataDecrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-class v1, Lcn/com/xy/sms/sdk/util/KeyInitUtil;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcn/com/xy/sms/sdk/service/a/e;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :goto_0
    monitor-exit v1

    return-object v0

    :catch_0
    move-exception v0

    :try_start_1
    sget-object v0, Lcn/com/xy/sms/sdk/service/a/e;->d:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized dataEncrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-class v1, Lcn/com/xy/sms/sdk/util/KeyInitUtil;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcn/com/xy/sms/sdk/service/a/e;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :goto_0
    monitor-exit v1

    return-object v0

    :catch_0
    move-exception v0

    :try_start_1
    sget-object v0, Lcn/com/xy/sms/sdk/service/a/e;->d:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setKeyData([B)I
    .locals 5

    const/4 v1, 0x0

    const-class v2, Lcn/com/xy/sms/sdk/util/KeyInitUtil;

    monitor-enter v2

    :try_start_0
    array-length v0, p0

    new-array v0, v0, [B

    sput-object v0, Lcn/com/xy/sms/sdk/service/a/e;->a:[B

    move v0, v1

    :goto_0
    array-length v3, p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v0, v3, :cond_0

    monitor-exit v2

    return v1

    :cond_0
    :try_start_1
    sget-object v3, Lcn/com/xy/sms/sdk/service/a/e;->a:[B

    aget-byte v4, p0, v0

    aput-byte v4, v3, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static declared-synchronized setSDKInitData(Ljava/lang/String;I)I
    .locals 1

    const-class v0, Lcn/com/xy/sms/sdk/util/KeyInitUtil;

    monitor-enter v0

    monitor-exit v0

    return p1
.end method
