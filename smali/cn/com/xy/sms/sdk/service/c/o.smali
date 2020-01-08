.class final Lcn/com/xy/sms/sdk/service/c/o;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/com/xy/sms/util/SdkCallBack;


# instance fields
.field private final synthetic a:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;

.field private final synthetic b:Ljava/util/Set;


# direct methods
.method constructor <init>(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;Ljava/util/Set;)V
    .locals 0

    iput-object p1, p0, Lcn/com/xy/sms/sdk/service/c/o;->a:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;

    iput-object p2, p0, Lcn/com/xy/sms/sdk/service/c/o;->b:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs execute([Ljava/lang/Object;)V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    aget-object v1, p1, v1

    if-eq v0, v7, :cond_0

    iget-object v2, p0, Lcn/com/xy/sms/sdk/service/c/o;->a:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    iget-object v4, p0, Lcn/com/xy/sms/sdk/service/c/o;->b:Ljava/util/Set;

    aput-object v4, v3, v0

    const/4 v0, 0x2

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {v1}, Lcn/com/xy/sms/sdk/service/c/n;->a(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v0

    iget-object v1, p0, Lcn/com/xy/sms/sdk/service/c/o;->a:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcn/com/xy/sms/sdk/service/c/o;->b:Ljava/util/Set;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcn/com/xy/sms/sdk/service/c/o;->a:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;

    new-array v2, v7, [Ljava/lang/Object;

    const/16 v3, -0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p0, Lcn/com/xy/sms/sdk/service/c/o;->b:Ljava/util/Set;

    aput-object v3, v2, v6

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v8

    invoke-static {v1, v2}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V

    goto :goto_0
.end method
