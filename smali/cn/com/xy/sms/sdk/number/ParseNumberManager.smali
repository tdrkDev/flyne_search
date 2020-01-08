.class public Lcn/com/xy/sms/sdk/number/ParseNumberManager;
.super Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcn/com/xy/sms/sdk/util/E;->f:Ljava/util/concurrent/ExecutorService;

    sget-object v1, Lcn/com/xy/sms/sdk/util/v;->e:Lcn/com/xy/sms/sdk/util/b;

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/v;->a(Ljava/util/concurrent/ExecutorService;Lcn/com/xy/sms/sdk/util/b;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findLogoFile(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcn/com/xy/sms/sdk/Iservice/XyCallBack;",
            ")",
            "Ljava/io/File;"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lcn/com/xy/sms/sdk/number/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static findUnionLogoFile(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcn/com/xy/sms/sdk/Iservice/XyCallBack;",
            ")",
            "Ljava/io/File;"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lcn/com/xy/sms/sdk/number/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getNumberSourceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcn/com/xy/sms/sdk/number/k;->g(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "src"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/dex/DexUtil;->getNumberSourceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static initEmbedNumber(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcn/com/xy/sms/sdk/number/b;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static queryByNum(Ljava/lang/String;Ljava/util/Map;ZLcn/com/xy/sms/sdk/Iservice/XyCallBack;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Lcn/com/xy/sms/sdk/Iservice/XyCallBack;",
            ")V"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lcn/com/xy/sms/sdk/number/l;->a(Ljava/lang/String;Ljava/util/Map;ZLcn/com/xy/sms/sdk/Iservice/XyCallBack;)V

    return-void
.end method

.method public static removeUserTag(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Lcn/com/xy/sms/sdk/db/entity/m;->a(Ljava/lang/String;)V

    invoke-static {p0}, Lcn/com/xy/sms/sdk/number/k;->f(Ljava/lang/String;)V

    return-void
.end method

.method public static upgradeEmbedNumber(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;)V
    .locals 0

    invoke-static {p0}, Lcn/com/xy/sms/sdk/number/r;->a(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;)V

    return-void
.end method

.method public static uploadUserTag(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcn/com/xy/sms/sdk/Iservice/XyCallBack;",
            ")V"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcn/com/xy/sms/sdk/db/entity/m;->a(Ljava/lang/String;Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/16 v2, -0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const/4 v1, 0x2

    const-string v2, "save user tag fail"

    aput-object v2, v0, v1

    invoke-static {p4, v0}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, v0}, Lcn/com/xy/sms/sdk/number/k;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-static {p0}, Lcn/com/xy/sms/sdk/number/k;->d(Ljava/lang/String;)V

    :try_start_0
    sget-object v6, Lcn/com/xy/sms/sdk/util/E;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcn/com/xy/sms/sdk/number/A;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcn/com/xy/sms/sdk/number/A;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/16 v3, -0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const/4 v2, 0x2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {p4, v1}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V

    goto :goto_0
.end method
