.class final Lcn/com/xy/sms/util/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Ljava/util/Map;

.field private final synthetic b:Lcn/com/xy/sms/util/SdkCallBack;


# direct methods
.method constructor <init>(Ljava/util/Map;Lcn/com/xy/sms/util/SdkCallBack;)V
    .locals 0

    iput-object p1, p0, Lcn/com/xy/sms/util/h;->a:Ljava/util/Map;

    iput-object p2, p0, Lcn/com/xy/sms/util/h;->b:Lcn/com/xy/sms/util/SdkCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/4 v3, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "xiaoyuan_pool_netutil"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    sget v0, Lcn/com/xy/sms/sdk/queue/i;->b:I

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lcn/com/xy/sms/util/h;->a:Ljava/util/Map;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/net/NetUtil;->checkAccessNetWork(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/com/xy/sms/util/h;->b:Lcn/com/xy/sms/util/SdkCallBack;

    const-string v1, "-1"

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBack(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    sput-boolean v3, Lcn/com/xy/sms/util/ParseManager;->isupdateData:Z

    :goto_1
    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lcn/com/xy/sms/sdk/db/ParseItemManager;->isInitData()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/com/xy/sms/util/h;->b:Lcn/com/xy/sms/util/SdkCallBack;

    const-string v1, "2"

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBack(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    sput-boolean v3, Lcn/com/xy/sms/util/ParseManager;->isupdateData:Z

    goto :goto_1

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcn/com/xy/sms/util/h;->a:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/service/f/g;->a(Ljava/util/Map;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;)V

    invoke-static {}, Lcn/com/xy/sms/sdk/db/i;->c()Lcn/com/xy/sms/sdk/db/entity/j;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/db/i;->c(Lcn/com/xy/sms/sdk/db/entity/j;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcn/com/xy/sms/util/h;->a:Ljava/util/Map;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcn/com/xy/sms/sdk/util/k;->b(ZZ)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_2
    invoke-static {v0}, Lcn/com/xy/sms/sdk/db/i;->c(Lcn/com/xy/sms/sdk/db/entity/j;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v0}, Lcn/com/xy/sms/sdk/db/i;->a(Lcn/com/xy/sms/sdk/db/entity/j;)V

    :cond_3
    iget-object v0, p0, Lcn/com/xy/sms/util/h;->a:Ljava/util/Map;

    invoke-static {}, Lcn/com/xy/sms/sdk/util/k;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcn/com/xy/sms/util/h;->a:Ljava/util/Map;

    iget-object v1, p0, Lcn/com/xy/sms/util/h;->b:Lcn/com/xy/sms/util/SdkCallBack;

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/k;->a(Ljava/util/Map;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sput-boolean v3, Lcn/com/xy/sms/util/ParseManager;->isupdateData:Z

    throw v0

    :cond_4
    :try_start_3
    invoke-static {}, Lcn/com/xy/sms/sdk/db/i;->c()Lcn/com/xy/sms/sdk/db/entity/j;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/db/i;->c(Lcn/com/xy/sms/sdk/db/entity/j;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcn/com/xy/sms/util/h;->b:Lcn/com/xy/sms/util/SdkCallBack;

    const-string v1, "0"

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBack(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcn/com/xy/sms/util/h;->b:Lcn/com/xy/sms/util/SdkCallBack;

    const-string v1, "1"

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBack(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcn/com/xy/sms/util/h;->b:Lcn/com/xy/sms/util/SdkCallBack;

    const-string v1, "2"

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBack(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method
