.class public Lcom/inveno/nxadsdk/d/a;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/inveno/se/adapi/model/adconfig/AdSdkConfigModel;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/inveno/se/adapi/model/adconfig/AdSdkConfigModel;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/inveno/se/adapi/model/adconfig/AdSdkRules;",
            ">;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/inveno/nxadsdk/a/c;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inveno/se/adapi/model/adconfig/AdSdkConfigModel;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    invoke-static {p0}, Lcom/inveno/nxadsdk/a/c;->a(Landroid/content/Context;)Lcom/inveno/nxadsdk/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/nxadsdk/a/c;->a()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/inveno/nxadinf/config/NxGps;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZLcom/inveno/nxadsdk/b/a;Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/inveno/nxadinf/config/NxGps;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/inveno/nxadinf/config/NxAdspace;",
            ">;Z",
            "Lcom/inveno/nxadsdk/b/a",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/inveno/nxadsdk/model/NativeRegularAd;",
            ">;>;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/inveno/se/adapi/model/adconfig/AdSdkRule;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/inveno/nxadsdk/a/c;->a(Landroid/content/Context;)Lcom/inveno/nxadsdk/a/c;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/inveno/nxadsdk/a/c;->a(Ljava/lang/String;Lcom/inveno/nxadinf/config/NxGps;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZLcom/inveno/nxadsdk/b/a;Ljava/util/ArrayList;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "nx_ad_sdk"

    const-string v1, " loadAdMap   context is null "

    invoke-static {v0, v1}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/inveno/nxadsdk/b/a;)V
    .locals 2

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/inveno/nxadsdk/a/c;->a(Landroid/content/Context;)Lcom/inveno/nxadsdk/a/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/inveno/nxadsdk/a/c;->a(Ljava/lang/String;Lcom/inveno/nxadsdk/b/a;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "nx_ad_sdk"

    const-string v1, " getConfig   context is null "

    invoke-static {v0, v1}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Z)V
    .locals 1

    sput-boolean p0, Lcom/inveno/nxadsdk/c/a;->b:Z

    if-eqz p0, :cond_0

    const-string v0, "http://192.168.1.238/"

    sput-object v0, Lcom/inveno/se/config/HostConfig;->OPERATE_HOST:Ljava/lang/String;

    const-string v0, "https://192.168.1.28:48119/malacca/sdkPullAds.do"

    invoke-static {v0}, Lcom/inveno/se/config/HostConfig;->setINVENO_AD_API_URL(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
