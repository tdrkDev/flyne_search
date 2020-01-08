.class public Lcn/com/xy/sms/sdk/util/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field protected a:J

.field private b:J

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/com/xy/sms/sdk/util/b;->b:J

    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcn/com/xy/sms/sdk/util/b;->a:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/com/xy/sms/sdk/util/b;->c:Ljava/util/Map;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/com/xy/sms/sdk/util/b;->d:Z

    return-void
.end method

.method private a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcn/com/xy/sms/sdk/util/b;->c:Ljava/util/Map;

    return-object v0
.end method

.method private a(J)V
    .locals 1

    iput-wide p1, p0, Lcn/com/xy/sms/sdk/util/b;->a:J

    return-void
.end method

.method private a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/com/xy/sms/sdk/util/b;->c:Ljava/util/Map;

    return-void
.end method

.method private static d()Z
    .locals 1

    const/4 v0, 0x2

    invoke-static {v0}, Lcn/com/xy/sms/sdk/net/NetUtil;->checkAccessNetWork(I)Z

    move-result v0

    return v0
.end method

.method private e()Z
    .locals 4

    iget-wide v0, p0, Lcn/com/xy/sms/sdk/util/b;->b:J

    iget-wide v2, p0, Lcn/com/xy/sms/sdk/util/b;->a:J

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private g()Z
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0}, Lcn/com/xy/sms/sdk/util/b;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcn/com/xy/sms/sdk/util/b;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    const/4 v1, 0x2

    :try_start_1
    invoke-static {v1}, Lcn/com/xy/sms/sdk/net/NetUtil;->checkAccessNetWork(I)Z

    move-result v1

    if-nez v1, :cond_2

    monitor-exit p0

    goto :goto_0

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/com/xy/sms/sdk/util/b;->b:J

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public b()V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    const/16 v0, 0x13

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    return-void
.end method

.method public final f()Z
    .locals 1

    iget-boolean v0, p0, Lcn/com/xy/sms/sdk/util/b;->d:Z

    return v0
.end method

.method public final run()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcn/com/xy/sms/sdk/util/b;->d:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcn/com/xy/sms/sdk/util/b;->d:Z

    if-eqz v0, :cond_1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcn/com/xy/sms/sdk/util/b;->d:Z

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, Lcn/com/xy/sms/sdk/util/b;->c()V

    invoke-direct {p0}, Lcn/com/xy/sms/sdk/util/b;->g()Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lcn/com/xy/sms/sdk/util/b;->d:Z

    goto :goto_0

    :cond_2
    :try_start_3
    invoke-virtual {p0}, Lcn/com/xy/sms/sdk/util/b;->b()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    iput-boolean v1, p0, Lcn/com/xy/sms/sdk/util/b;->d:Z

    goto :goto_0

    :catch_0
    move-exception v0

    iput-boolean v1, p0, Lcn/com/xy/sms/sdk/util/b;->d:Z

    goto :goto_0

    :catchall_1
    move-exception v0

    iput-boolean v1, p0, Lcn/com/xy/sms/sdk/util/b;->d:Z

    throw v0
.end method
