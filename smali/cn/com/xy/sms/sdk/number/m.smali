.class final Lcn/com/xy/sms/sdk/number/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Z

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;

.field private final synthetic d:Ljava/util/Map;


# direct methods
.method constructor <init>(ZLjava/lang/String;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;Ljava/util/Map;)V
    .locals 0

    iput-boolean p1, p0, Lcn/com/xy/sms/sdk/number/m;->a:Z

    iput-object p2, p0, Lcn/com/xy/sms/sdk/number/m;->b:Ljava/lang/String;

    iput-object p3, p0, Lcn/com/xy/sms/sdk/number/m;->c:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;

    iput-object p4, p0, Lcn/com/xy/sms/sdk/number/m;->d:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    const/4 v6, 0x2

    iget-boolean v0, p0, Lcn/com/xy/sms/sdk/number/m;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/com/xy/sms/sdk/number/m;->b:Ljava/lang/String;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/number/l;->b(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcn/com/xy/sms/sdk/number/m;->c:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;

    invoke-static {v1, v0}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {v6}, Lcn/com/xy/sms/sdk/net/NetUtil;->checkAccessNetWork(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/com/xy/sms/sdk/number/m;->b:Ljava/lang/String;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/number/l;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/com/xy/sms/sdk/number/m;->b:Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v0, v1, v2, v4, v5}, Lcn/com/xy/sms/sdk/db/entity/m;->a(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;J)J

    iget-object v0, p0, Lcn/com/xy/sms/sdk/number/m;->c:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/16 v3, -0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcn/com/xy/sms/sdk/number/m;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v2, "no network"

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcn/com/xy/sms/sdk/number/m;->b:Ljava/lang/String;

    iget-object v1, p0, Lcn/com/xy/sms/sdk/number/m;->d:Ljava/util/Map;

    iget-object v2, p0, Lcn/com/xy/sms/sdk/number/m;->c:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;

    invoke-static {v0, v1, v2}, Lcn/com/xy/sms/sdk/number/l;->a(Ljava/lang/String;Ljava/util/Map;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;)V

    goto :goto_0
.end method
