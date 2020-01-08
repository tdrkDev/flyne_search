.class final Lcn/com/xy/sms/sdk/db/entity/a/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Ljava/lang/String;

.field private final synthetic e:Ljava/lang/String;

.field private final synthetic f:Lcn/com/xy/sms/util/SdkCallBack;

.field private final synthetic g:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/com/xy/sms/util/SdkCallBack;Z)V
    .locals 0

    iput-object p1, p0, Lcn/com/xy/sms/sdk/db/entity/a/h;->a:Ljava/lang/String;

    iput-object p2, p0, Lcn/com/xy/sms/sdk/db/entity/a/h;->b:Ljava/lang/String;

    iput-object p3, p0, Lcn/com/xy/sms/sdk/db/entity/a/h;->c:Ljava/lang/String;

    iput-object p4, p0, Lcn/com/xy/sms/sdk/db/entity/a/h;->d:Ljava/lang/String;

    iput-object p5, p0, Lcn/com/xy/sms/sdk/db/entity/a/h;->e:Ljava/lang/String;

    iput-object p6, p0, Lcn/com/xy/sms/sdk/db/entity/a/h;->f:Lcn/com/xy/sms/util/SdkCallBack;

    iput-boolean p7, p0, Lcn/com/xy/sms/sdk/db/entity/a/h;->g:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    :try_start_0
    const-string v0, "xy_query_pubinfo_1"

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/a/a;->a(Ljava/lang/String;I)V

    invoke-static {}, Lcn/com/xy/sms/sdk/net/NetUtil;->isEnhance()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iget-object v1, p0, Lcn/com/xy/sms/sdk/db/entity/a/h;->a:Ljava/lang/String;

    iget-object v2, p0, Lcn/com/xy/sms/sdk/db/entity/a/h;->b:Ljava/lang/String;

    iget-object v3, p0, Lcn/com/xy/sms/sdk/db/entity/a/h;->c:Ljava/lang/String;

    iget-object v4, p0, Lcn/com/xy/sms/sdk/db/entity/a/h;->d:Ljava/lang/String;

    iget-object v5, p0, Lcn/com/xy/sms/sdk/db/entity/a/h;->e:Ljava/lang/String;

    iget-object v6, p0, Lcn/com/xy/sms/sdk/db/entity/a/h;->f:Lcn/com/xy/sms/util/SdkCallBack;

    const/4 v7, 0x1

    const/4 v8, 0x0

    iget-boolean v9, p0, Lcn/com/xy/sms/sdk/db/entity/a/h;->g:Z

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcn/com/xy/sms/sdk/service/f/b;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;IZZZ)V

    :cond_0
    :goto_0
    const/4 v0, 0x2

    invoke-static {v0}, Lcn/com/xy/sms/sdk/net/NetUtil;->checkAccessNetWork(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/com/xy/sms/sdk/db/entity/a/h;->c:Ljava/lang/String;

    iget-object v1, p0, Lcn/com/xy/sms/sdk/db/entity/a/h;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/service/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcn/com/xy/sms/sdk/db/entity/a/h;->f:Lcn/com/xy/sms/util/SdkCallBack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/xy/sms/sdk/db/entity/a/h;->f:Lcn/com/xy/sms/util/SdkCallBack;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcn/com/xy/sms/util/SdkCallBack;->execute([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    goto :goto_1
.end method
