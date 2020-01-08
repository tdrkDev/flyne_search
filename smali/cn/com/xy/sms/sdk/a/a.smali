.class public final Lcn/com/xy/sms/sdk/a/a;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/util/concurrent/ExecutorService; = null

.field public static final b:Ljava/util/concurrent/ExecutorService;

.field public static c:Ljava/util/concurrent/ExecutorService; = null

.field public static d:Ljava/util/concurrent/ExecutorService; = null

.field public static final e:Ljava/util/concurrent/ExecutorService;

.field public static f:Ljava/util/concurrent/ExecutorService; = null

.field public static g:Ljava/util/concurrent/ExecutorService; = null

.field public static h:Ljava/util/concurrent/ExecutorService; = null

.field private static i:Ljava/lang/String; = "xy_update_pubinfo_1"

.field private static j:Ljava/lang/String; = "xy_query_pubinfo_1"

.field private static k:Ljava/util/concurrent/ExecutorService; = null

.field private static l:Ljava/lang/String; = "xy_logo_1"

.field private static m:Ljava/lang/String; = "xy_richpool_1"

.field private static n:Ljava/util/concurrent/ExecutorService; = null

.field private static o:Ljava/lang/String; = "xy_msgUrlPool_1"

.field private static p:Ljava/lang/String; = "xy_local_bg_1"

.field private static q:Ljava/lang/String; = "xy_net_bg_1"

.field private static r:Ljava/lang/String; = "xy_dexutil_pool_1"

.field private static s:Ljava/lang/String; = "xy_baseparse_1"

.field private static t:Ljava/util/concurrent/ExecutorService; = null

.field private static u:Ljava/lang/String; = "xy_feature_parse_1"

.field private static v:Ljava/lang/String; = "xy_service_data_query"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcn/com/xy/sms/sdk/a/a;->a:Ljava/util/concurrent/ExecutorService;

    invoke-static {v3}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcn/com/xy/sms/sdk/a/a;->b:Ljava/util/concurrent/ExecutorService;

    sput-object v2, Lcn/com/xy/sms/sdk/a/a;->k:Ljava/util/concurrent/ExecutorService;

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcn/com/xy/sms/sdk/a/a;->c:Ljava/util/concurrent/ExecutorService;

    sput-object v2, Lcn/com/xy/sms/sdk/a/a;->n:Ljava/util/concurrent/ExecutorService;

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcn/com/xy/sms/sdk/a/a;->d:Ljava/util/concurrent/ExecutorService;

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcn/com/xy/sms/sdk/a/a;->e:Ljava/util/concurrent/ExecutorService;

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcn/com/xy/sms/sdk/a/a;->f:Ljava/util/concurrent/ExecutorService;

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcn/com/xy/sms/sdk/a/a;->g:Ljava/util/concurrent/ExecutorService;

    sput-object v2, Lcn/com/xy/sms/sdk/a/a;->t:Ljava/util/concurrent/ExecutorService;

    invoke-static {v3}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcn/com/xy/sms/sdk/a/a;->h:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Ljava/util/concurrent/ExecutorService;
    .locals 2

    const-class v1, Lcn/com/xy/sms/sdk/a/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcn/com/xy/sms/sdk/a/a;->t:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcn/com/xy/sms/sdk/a/a;->t:Ljava/util/concurrent/ExecutorService;

    :cond_0
    sget-object v0, Lcn/com/xy/sms/sdk/a/a;->t:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Ljava/lang/String;I)V
    .locals 3

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static declared-synchronized b()Ljava/util/concurrent/ExecutorService;
    .locals 2

    const-class v1, Lcn/com/xy/sms/sdk/a/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcn/com/xy/sms/sdk/a/a;->k:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcn/com/xy/sms/sdk/a/a;->k:Ljava/util/concurrent/ExecutorService;

    :cond_0
    sget-object v0, Lcn/com/xy/sms/sdk/a/a;->k:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized c()Ljava/util/concurrent/ExecutorService;
    .locals 2

    const-class v1, Lcn/com/xy/sms/sdk/a/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcn/com/xy/sms/sdk/a/a;->n:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcn/com/xy/sms/sdk/a/a;->n:Ljava/util/concurrent/ExecutorService;

    :cond_0
    sget-object v0, Lcn/com/xy/sms/sdk/a/a;->n:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
