.class public Lcn/com/xy/sms/sdk/number/p;
.super Lcn/com/xy/sms/sdk/util/b;


# static fields
.field private static final b:I = 0x14

.field private static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcn/com/xy/sms/sdk/util/b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcn/com/xy/sms/sdk/number/p;->c:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Lcn/com/xy/sms/sdk/util/b;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcn/com/xy/sms/sdk/number/p;->d:I

    iput p1, p0, Lcn/com/xy/sms/sdk/number/p;->d:I

    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcn/com/xy/sms/sdk/number/p;->a:J

    return-void
.end method

.method public static a(I)Lcn/com/xy/sms/sdk/util/b;
    .locals 4

    const-class v1, Lcn/com/xy/sms/sdk/number/p;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcn/com/xy/sms/sdk/number/p;->c:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/com/xy/sms/sdk/util/b;

    if-nez v0, :cond_0

    new-instance v0, Lcn/com/xy/sms/sdk/number/p;

    invoke-direct {v0, p0}, Lcn/com/xy/sms/sdk/number/p;-><init>(I)V

    sget-object v2, Lcn/com/xy/sms/sdk/number/p;->c:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    new-instance v1, Lcn/com/xy/sms/sdk/number/q;

    invoke-direct {v1}, Lcn/com/xy/sms/sdk/number/q;-><init>()V

    invoke-static {p0, v0, v1}, Lcn/com/xy/sms/sdk/service/c/a;->a(Ljava/util/Map;Ljava/util/Map;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 3

    iget v0, p0, Lcn/com/xy/sms/sdk/number/p;->d:I

    const/16 v1, 0x14

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/db/entity/m;->a(II)Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcn/com/xy/sms/sdk/number/q;

    invoke-direct {v2}, Lcn/com/xy/sms/sdk/number/q;-><init>()V

    invoke-static {v0, v1, v2}, Lcn/com/xy/sms/sdk/service/c/a;->a(Ljava/util/Map;Ljava/util/Map;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;)V

    return-void
.end method

.method public final c()V
    .locals 3

    const/4 v0, 0x1

    iget v1, p0, Lcn/com/xy/sms/sdk/number/p;->d:I

    if-ne v1, v0, :cond_0

    move v2, v0

    :goto_0
    if-eqz v2, :cond_1

    const/4 v0, 0x2

    move v1, v0

    :goto_1
    if-eqz v2, :cond_2

    const/16 v0, 0xa

    :goto_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Thread;->setPriority(I)V

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    return-void

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    goto :goto_0

    :cond_1
    move v1, v0

    goto :goto_1

    :cond_2
    const/16 v0, 0x13

    goto :goto_2
.end method
