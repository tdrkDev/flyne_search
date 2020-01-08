.class final Lcn/com/xy/sms/sdk/number/B;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/com/xy/sms/sdk/Iservice/XyCallBack;


# instance fields
.field private synthetic a:Lcn/com/xy/sms/sdk/number/A;

.field private final synthetic b:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;

.field private final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/com/xy/sms/sdk/number/A;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lcn/com/xy/sms/sdk/number/B;->b:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;

    iput-object p3, p0, Lcn/com/xy/sms/sdk/number/B;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    instance-of v1, p1, Lorg/json/JSONArray;

    if-eqz v1, :cond_0

    check-cast p1, Lorg/json/JSONArray;

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method public final varargs execute([Ljava/lang/Object;)V
    .locals 10

    const/4 v4, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v0, 0x2

    aget-object v0, p1, v0

    if-eq v3, v4, :cond_0

    iget-object v4, p0, Lcn/com/xy/sms/sdk/number/B;->b:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v6

    const/4 v3, 0x1

    iget-object v6, p0, Lcn/com/xy/sms/sdk/number/B;->c:Ljava/lang/String;

    aput-object v6, v5, v3

    const/4 v3, 0x2

    aput-object v0, v5, v3

    invoke-static {v4, v5}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcn/com/xy/sms/sdk/number/B;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    instance-of v4, v0, Lorg/json/JSONArray;

    if-eqz v4, :cond_2

    check-cast v0, Lorg/json/JSONArray;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/com/xy/sms/sdk/number/B;->c:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lcn/com/xy/sms/sdk/number/k;->a(Ljava/lang/String;I)V

    :cond_1
    iget-object v0, p0, Lcn/com/xy/sms/sdk/number/B;->b:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcn/com/xy/sms/sdk/number/B;->c:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v3, p0, Lcn/com/xy/sms/sdk/number/B;->b:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;

    new-array v4, v9, [Ljava/lang/Object;

    const/16 v5, -0xa

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    iget-object v2, p0, Lcn/com/xy/sms/sdk/number/B;->c:Ljava/lang/String;

    aput-object v2, v4, v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    invoke-static {v3, v4}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method
