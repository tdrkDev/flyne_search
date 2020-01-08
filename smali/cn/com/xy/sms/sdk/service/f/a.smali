.class public final Lcn/com/xy/sms/sdk/service/f/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static d:I = 0x1

.field private static e:I = 0x2


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Z

.field private f:I


# direct methods
.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcn/com/xy/sms/sdk/service/f/a;->a:Ljava/lang/String;

    iput-object v1, p0, Lcn/com/xy/sms/sdk/service/f/a;->b:Ljava/lang/String;

    iput-boolean v0, p0, Lcn/com/xy/sms/sdk/service/f/a;->c:Z

    iput v0, p0, Lcn/com/xy/sms/sdk/service/f/a;->f:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcn/com/xy/sms/sdk/service/f/a;->a:Ljava/lang/String;

    iput-object v1, p0, Lcn/com/xy/sms/sdk/service/f/a;->b:Ljava/lang/String;

    iput-boolean v0, p0, Lcn/com/xy/sms/sdk/service/f/a;->c:Z

    iput v0, p0, Lcn/com/xy/sms/sdk/service/f/a;->f:I

    iput p1, p0, Lcn/com/xy/sms/sdk/service/f/a;->f:I

    return-void
.end method

.method private a()V
    .locals 2

    const/4 v0, 0x2

    :try_start_0
    invoke-static {v0}, Lcn/com/xy/sms/sdk/net/NetUtil;->checkAccessNetWork(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/xy/sms/sdk/service/f/a;->b:Ljava/lang/String;

    iget-object v1, p0, Lcn/com/xy/sms/sdk/service/f/a;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/service/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcn/com/xy/sms/sdk/service/f/g;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    goto :goto_0
.end method

.method private b()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcn/com/xy/sms/sdk/service/f/a;->b:Ljava/lang/String;

    iget-object v1, p0, Lcn/com/xy/sms/sdk/service/f/a;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcn/com/xy/sms/sdk/service/f/g;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcn/com/xy/sms/sdk/service/f/a;->b:Ljava/lang/String;

    iget-object v1, p0, Lcn/com/xy/sms/sdk/service/f/a;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcn/com/xy/sms/sdk/service/f/g;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lcn/com/xy/sms/sdk/db/entity/a/f;->e()V

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    sput-boolean v0, Lcn/com/xy/sms/sdk/service/f/g;->b:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private c()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/com/xy/sms/sdk/service/f/a;->a:Ljava/lang/String;

    iput-object v0, p0, Lcn/com/xy/sms/sdk/service/f/a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/4 v3, 0x0

    const/16 v0, 0xa

    :try_start_0
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/com/xy/sms/sdk/service/f/a;->c:Z

    iget v0, p0, Lcn/com/xy/sms/sdk/service/f/a;->f:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    packed-switch v0, :pswitch_data_0

    :goto_0
    iput-boolean v3, p0, Lcn/com/xy/sms/sdk/service/f/a;->c:Z

    invoke-direct {p0}, Lcn/com/xy/sms/sdk/service/f/a;->c()V

    :goto_1
    return-void

    :pswitch_0
    :try_start_1
    iget-object v0, p0, Lcn/com/xy/sms/sdk/service/f/a;->b:Ljava/lang/String;

    iget-object v1, p0, Lcn/com/xy/sms/sdk/service/f/a;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcn/com/xy/sms/sdk/service/f/g;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcn/com/xy/sms/sdk/service/f/a;->b:Ljava/lang/String;

    iget-object v1, p0, Lcn/com/xy/sms/sdk/service/f/a;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcn/com/xy/sms/sdk/service/f/g;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lcn/com/xy/sms/sdk/db/entity/a/f;->e()V

    monitor-enter p0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v0, 0x0

    :try_start_2
    sput-boolean v0, Lcn/com/xy/sms/sdk/service/f/g;->b:Z

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0

    throw v0
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catch_0
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    iput-boolean v3, p0, Lcn/com/xy/sms/sdk/service/f/a;->c:Z

    invoke-direct {p0}, Lcn/com/xy/sms/sdk/service/f/a;->c()V

    goto :goto_1

    :pswitch_1
    const/4 v0, 0x2

    :try_start_5
    invoke-static {v0}, Lcn/com/xy/sms/sdk/net/NetUtil;->checkAccessNetWork(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/xy/sms/sdk/service/f/a;->b:Ljava/lang/String;

    iget-object v1, p0, Lcn/com/xy/sms/sdk/service/f/a;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/service/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcn/com/xy/sms/sdk/service/f/g;->a()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    iput-boolean v3, p0, Lcn/com/xy/sms/sdk/service/f/a;->c:Z

    invoke-direct {p0}, Lcn/com/xy/sms/sdk/service/f/a;->c()V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
