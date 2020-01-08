.class public Lcn/com/xy/sms/sdk/number/d;
.super Lcn/com/xy/sms/sdk/util/b;


# static fields
.field private static b:Lcn/com/xy/sms/sdk/util/b;

.field private static c:Landroid/os/HandlerThread;

.field private static d:Landroid/os/Handler;

.field private static e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcn/com/xy/sms/sdk/number/d;->b:Lcn/com/xy/sms/sdk/util/b;

    sput-object v0, Lcn/com/xy/sms/sdk/number/d;->c:Landroid/os/HandlerThread;

    sput-object v0, Lcn/com/xy/sms/sdk/number/d;->d:Landroid/os/Handler;

    const/4 v0, 0x1

    sput-boolean v0, Lcn/com/xy/sms/sdk/number/d;->e:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcn/com/xy/sms/sdk/util/b;-><init>()V

    const-wide/32 v0, 0x124f80

    iput-wide v0, p0, Lcn/com/xy/sms/sdk/number/d;->a:J

    return-void
.end method

.method public static a()Lcn/com/xy/sms/sdk/util/b;
    .locals 2

    const-class v1, Lcn/com/xy/sms/sdk/number/d;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcn/com/xy/sms/sdk/number/d;->b:Lcn/com/xy/sms/sdk/util/b;

    if-nez v0, :cond_0

    new-instance v0, Lcn/com/xy/sms/sdk/number/d;

    invoke-direct {v0}, Lcn/com/xy/sms/sdk/number/d;-><init>()V

    sput-object v0, Lcn/com/xy/sms/sdk/number/d;->b:Lcn/com/xy/sms/sdk/util/b;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcn/com/xy/sms/sdk/number/d;->b:Lcn/com/xy/sms/sdk/util/b;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Z)V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcn/com/xy/sms/sdk/number/d;->e:Z

    return-void
.end method

.method static synthetic d()Z
    .locals 1

    sget-boolean v0, Lcn/com/xy/sms/sdk/number/d;->e:Z

    return v0
.end method

.method static synthetic e()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcn/com/xy/sms/sdk/number/d;->d:Landroid/os/Handler;

    return-object v0
.end method

.method private g()V
    .locals 2

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "LocationHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/com/xy/sms/sdk/number/d;->c:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcn/com/xy/sms/sdk/number/e;

    sget-object v1, Lcn/com/xy/sms/sdk/number/d;->c:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcn/com/xy/sms/sdk/number/e;-><init>(Lcn/com/xy/sms/sdk/number/d;Landroid/os/Looper;)V

    sput-object v0, Lcn/com/xy/sms/sdk/number/d;->d:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 3

    :try_start_0
    sget-object v0, Lcn/com/xy/sms/sdk/number/d;->d:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "LocationHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/com/xy/sms/sdk/number/d;->c:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcn/com/xy/sms/sdk/number/e;

    sget-object v1, Lcn/com/xy/sms/sdk/number/d;->c:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcn/com/xy/sms/sdk/number/e;-><init>(Lcn/com/xy/sms/sdk/number/d;Landroid/os/Looper;)V

    sput-object v0, Lcn/com/xy/sms/sdk/number/d;->d:Landroid/os/Handler;

    :cond_0
    invoke-static {}, Lcn/com/xy/sms/sdk/util/DuoquUtils;->getSdkDoAction()Lcn/com/xy/sms/sdk/action/AbsSdkDoAction;

    move-result-object v0

    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcn/com/xy/sms/sdk/number/d;->d:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcn/com/xy/sms/sdk/action/AbsSdkDoAction;->getLocation(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final c()V
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    return-void
.end method
