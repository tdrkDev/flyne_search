.class public final Lcn/com/xy/sms/sdk/queue/c;
.super Ljava/lang/Thread;


# static fields
.field private static a:I = 0x1

.field private static b:I = 0x2

.field private static c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcn/com/xy/sms/sdk/queue/c;->c:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()V
    .locals 2

    const-class v1, Lcn/com/xy/sms/sdk/queue/c;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Lcn/com/xy/sms/sdk/net/NetUtil;->checkAccessNetWork(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    :try_start_1
    sget-boolean v0, Lcn/com/xy/sms/sdk/queue/c;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcn/com/xy/sms/sdk/queue/c;->c:Z

    new-instance v0, Lcn/com/xy/sms/sdk/queue/c;

    invoke-direct {v0}, Lcn/com/xy/sms/sdk/queue/c;-><init>()V

    invoke-virtual {v0}, Lcn/com/xy/sms/sdk/queue/c;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(I)V
    .locals 7

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcn/com/xy/sms/sdk/util/KeyManager;->channel:Ljava/lang/String;

    sget-object v2, Lcn/com/xy/sms/sdk/net/NetUtil;->APPVERSION:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcn/com/xy/sms/sdk/dex/DexUtil;->queryLog(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-static {v1}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "[]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/net/NetUtil;->requestNewTokenIfNeed(Ljava/util/Map;)V

    invoke-static {}, Lcn/com/xy/sms/sdk/net/NetUtil;->getToken()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcn/com/xy/sms/sdk/queue/d;

    invoke-direct {v2, v1, v0, p0}, Lcn/com/xy/sms/sdk/queue/d;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "logserver"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcn/com/xy/sms/sdk/net/NetUtil;->executeNewServiceHttpRequest(Ljava/lang/String;Ljava/lang/String;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;ZZZLjava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static a(ILjava/lang/String;)V
    .locals 7

    :try_start_0
    invoke-static {p1}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "[]"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/net/NetUtil;->requestNewTokenIfNeed(Ljava/util/Map;)V

    invoke-static {}, Lcn/com/xy/sms/sdk/net/NetUtil;->getToken()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcn/com/xy/sms/sdk/queue/d;

    invoke-direct {v2, p1, v0, p0}, Lcn/com/xy/sms/sdk/queue/d;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "logserver"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lcn/com/xy/sms/sdk/net/NetUtil;->executeNewServiceHttpRequest(Ljava/lang/String;Ljava/lang/String;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;ZZZLjava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final run()V
    .locals 2

    const/4 v1, 0x0

    :try_start_0
    const-string v0, "xiaoyuan_ReportLogQueue"

    invoke-virtual {p0, v0}, Lcn/com/xy/sms/sdk/queue/c;->setName(Ljava/lang/String;)V

    invoke-static {}, Lcn/com/xy/sms/sdk/util/KeyManager;->initAppKey()V

    sget v0, Lcn/com/xy/sms/sdk/queue/i;->b:I

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcn/com/xy/sms/sdk/queue/c;->a(I)V

    const/4 v0, 0x2

    invoke-static {v0}, Lcn/com/xy/sms/sdk/queue/c;->a(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sput-boolean v1, Lcn/com/xy/sms/sdk/queue/c;->c:Z

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sput-boolean v1, Lcn/com/xy/sms/sdk/queue/c;->c:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    sput-boolean v1, Lcn/com/xy/sms/sdk/queue/c;->c:Z

    throw v0
.end method
