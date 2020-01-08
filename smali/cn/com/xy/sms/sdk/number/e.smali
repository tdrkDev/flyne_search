.class final Lcn/com/xy/sms/sdk/number/e;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcn/com/xy/sms/sdk/number/d;


# direct methods
.method constructor <init>(Lcn/com/xy/sms/sdk/number/d;Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private static a(Landroid/os/Bundle;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "latitude"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "longitude"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 8

    const/4 v0, 0x0

    const-wide/16 v6, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "latitude"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "longitude"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    if-eqz v0, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const-string v0, "latitude"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    const-string v0, "longitude"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    cmpl-double v4, v2, v6

    if-nez v4, :cond_3

    cmpl-double v4, v0, v6

    if-nez v4, :cond_3

    invoke-static {}, Lcn/com/xy/sms/sdk/number/d;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/number/d;->a(Z)V

    const-wide/16 v0, 0x1388

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    invoke-static {}, Lcn/com/xy/sms/sdk/util/DuoquUtils;->getSdkDoAction()Lcn/com/xy/sms/sdk/action/AbsSdkDoAction;

    move-result-object v0

    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcn/com/xy/sms/sdk/number/d;->e()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/com/xy/sms/sdk/action/AbsSdkDoAction;->getLocation(Landroid/content/Context;Landroid/os/Handler;)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_3
    invoke-static {v2, v3, v0, v1}, Lcn/com/xy/sms/sdk/util/XyUtil;->setLoactionInfo(DD)V

    invoke-static {}, Lcn/com/xy/sms/sdk/util/XyUtil;->removeAreaCodeInfo()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method
