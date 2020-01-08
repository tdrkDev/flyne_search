.class public Lcom/inveno/nxadsdk/a/c;
.super Ljava/lang/Object;


# static fields
.field private static volatile f:Lcom/inveno/nxadsdk/a/c;


# instance fields
.field private a:Lcom/inveno/nxadsdk/a/d;

.field private b:Lcom/inveno/nxadsdk/a/b;

.field private c:Landroid/content/Context;

.field private d:Lcom/inveno/se/adapi/AdApiMgr;

.field private e:Lcom/inveno/nxadsdk/a/a;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/inveno/nxadsdk/a/c;->c:Landroid/content/Context;

    invoke-static {}, Lcom/inveno/se/NContext;->getInstance()Lcom/inveno/se/NContext;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/inveno/se/NContext;->initConfig(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/inveno/se/tools/DeviceConfig;->getOsLocaleLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inveno/se/tools/DeviceConfig;->country:Ljava/lang/String;

    invoke-static {p1}, Lcom/inveno/se/adapi/AdApiMgr;->getInstance(Landroid/content/Context;)Lcom/inveno/se/adapi/AdApiMgr;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/nxadsdk/a/c;->d:Lcom/inveno/se/adapi/AdApiMgr;

    new-instance v0, Lcom/inveno/nxadsdk/a/b;

    invoke-direct {v0, p1}, Lcom/inveno/nxadsdk/a/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/inveno/nxadsdk/a/c;->b:Lcom/inveno/nxadsdk/a/b;

    invoke-static {p1}, Lcom/inveno/nxadsdk/a/a;->a(Landroid/content/Context;)Lcom/inveno/nxadsdk/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/nxadsdk/a/c;->e:Lcom/inveno/nxadsdk/a/a;

    const-string v0, "https://malacca.inveno.com/malacca/sdkPullAds.do"

    invoke-static {v0}, Lcom/inveno/se/config/HostConfig;->setINVENO_AD_API_URL(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inveno/nxadsdk/a/c;->e:Lcom/inveno/nxadsdk/a/a;

    invoke-virtual {v0}, Lcom/inveno/nxadsdk/a/a;->a()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/inveno/nxadsdk/a/c;
    .locals 2

    sget-object v0, Lcom/inveno/nxadsdk/a/c;->f:Lcom/inveno/nxadsdk/a/c;

    if-nez v0, :cond_1

    const-class v1, Lcom/inveno/nxadsdk/a/c;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/inveno/nxadsdk/a/c;->f:Lcom/inveno/nxadsdk/a/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/inveno/nxadsdk/a/c;

    invoke-direct {v0, p0}, Lcom/inveno/nxadsdk/a/c;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/inveno/nxadsdk/a/c;->f:Lcom/inveno/nxadsdk/a/c;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/inveno/nxadsdk/a/c;->f:Lcom/inveno/nxadsdk/a/c;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(Lcom/inveno/nxadinf/config/NxGps;)Lcom/inveno/se/adapi/model/adreq/Gps;
    .locals 4

    if-eqz p1, :cond_0

    new-instance v0, Lcom/inveno/se/adapi/model/adreq/Gps;

    invoke-direct {v0}, Lcom/inveno/se/adapi/model/adreq/Gps;-><init>()V

    invoke-virtual {p1}, Lcom/inveno/nxadinf/config/NxGps;->c()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/inveno/se/adapi/model/adreq/Gps;->setLatitude(D)V

    invoke-virtual {p1}, Lcom/inveno/nxadinf/config/NxGps;->b()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/inveno/se/adapi/model/adreq/Gps;->setLongitude(D)V

    invoke-virtual {p1}, Lcom/inveno/nxadinf/config/NxGps;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/inveno/se/adapi/model/adreq/Gps;->setType(I)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/inveno/se/adapi/model/adconfig/AdSdkConfigModel;)Ljava/util/ArrayList;
    .locals 4
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

    const/4 v2, 0x0

    const-string v0, "nx_ad_sdk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRules get scenario:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "   adConfig:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/inveno/se/adapi/model/adconfig/AdSdkConfigModel;->getAdSdkRuleMap()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inveno/se/adapi/model/adconfig/AdSdkRuleListItem;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/inveno/se/adapi/model/adconfig/AdSdkRuleListItem;->getRules()Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "default"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/se/adapi/model/adconfig/AdSdkRuleListItem;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/inveno/se/adapi/model/adconfig/AdSdkRuleListItem;->getRules()Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "nx_ad_sdk"

    const-string v2, "getRules get default"

    invoke-static {v1, v2}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v0, v2

    goto :goto_0
.end method

.method private a(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/inveno/nxadinf/config/NxAdspace;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/inveno/se/adapi/model/adreq/Adspace;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    new-instance v3, Lcom/inveno/se/adapi/model/adreq/Adspace;

    invoke-direct {v3}, Lcom/inveno/se/adapi/model/adreq/Adspace;-><init>()V

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/nxadinf/config/NxAdspace;

    invoke-virtual {v0}, Lcom/inveno/nxadinf/config/NxAdspace;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/inveno/se/adapi/model/adreq/Adspace;->setAdspace_id(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/inveno/nxadinf/config/NxAdspace;->d()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/inveno/se/adapi/model/adreq/Adspace;->setAllowed_html(Ljava/lang/Boolean;)V

    invoke-virtual {v0}, Lcom/inveno/nxadinf/config/NxAdspace;->e()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/inveno/se/adapi/model/adreq/Adspace;->setWidth(I)V

    invoke-virtual {v0}, Lcom/inveno/nxadinf/config/NxAdspace;->f()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/inveno/se/adapi/model/adreq/Adspace;->setHeight(I)V

    invoke-virtual {v0}, Lcom/inveno/nxadinf/config/NxAdspace;->g()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/inveno/se/adapi/model/adreq/Adspace;->setImpression_num(I)V

    invoke-virtual {v0}, Lcom/inveno/nxadinf/config/NxAdspace;->h()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/inveno/se/adapi/model/adreq/Adspace;->setOpen_type(I)V

    invoke-virtual {v0}, Lcom/inveno/nxadinf/config/NxAdspace;->i()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/inveno/se/adapi/model/adreq/Adspace;->setInteraction_type(Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/inveno/nxadinf/config/NxAdspace;->j()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/inveno/se/adapi/model/adreq/Adspace;->setAssets(Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/inveno/nxadinf/config/NxAdspace;->k()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/inveno/se/adapi/model/adreq/Adspace;->setImpression_time(I)V

    invoke-virtual {v0}, Lcom/inveno/nxadinf/config/NxAdspace;->c()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/inveno/se/adapi/model/adreq/Adspace;->setAdspace_type(I)V

    invoke-virtual {v0}, Lcom/inveno/nxadinf/config/NxAdspace;->a()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/inveno/se/adapi/model/adreq/Adspace;->setSupport_deeplink(I)V

    invoke-virtual {v0}, Lcom/inveno/nxadinf/config/NxAdspace;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/inveno/se/adapi/model/adreq/Adspace;->setKey_words(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/inveno/nxadsdk/a/c;->a:Lcom/inveno/nxadsdk/a/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inveno/nxadsdk/a/c;->a:Lcom/inveno/nxadsdk/a/d;

    invoke-virtual {v0}, Lcom/inveno/nxadsdk/a/d;->a()V

    :cond_0
    iput-object v1, p0, Lcom/inveno/nxadsdk/a/c;->d:Lcom/inveno/se/adapi/AdApiMgr;

    iget-object v0, p0, Lcom/inveno/nxadsdk/a/c;->b:Lcom/inveno/nxadsdk/a/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inveno/nxadsdk/a/c;->b:Lcom/inveno/nxadsdk/a/b;

    invoke-virtual {v0}, Lcom/inveno/nxadsdk/a/b;->a()V

    :cond_1
    iput-object v1, p0, Lcom/inveno/nxadsdk/a/c;->b:Lcom/inveno/nxadsdk/a/b;

    sput-object v1, Lcom/inveno/nxadsdk/a/c;->f:Lcom/inveno/nxadsdk/a/c;

    iput-object v1, p0, Lcom/inveno/nxadsdk/a/c;->c:Landroid/content/Context;

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/inveno/nxadinf/config/NxGps;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZLcom/inveno/nxadsdk/b/a;Ljava/util/ArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    iget-object v1, p0, Lcom/inveno/nxadsdk/a/c;->b:Lcom/inveno/nxadsdk/a/b;

    invoke-direct {p0, p2}, Lcom/inveno/nxadsdk/a/c;->a(Lcom/inveno/nxadinf/config/NxGps;)Lcom/inveno/se/adapi/model/adreq/Gps;

    move-result-object v3

    sget-object v4, Lcom/inveno/nxadsdk/a/e;->a:Ljava/lang/String;

    move-object/from16 v0, p5

    invoke-direct {p0, v0}, Lcom/inveno/nxadsdk/a/c;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    new-instance v9, Lcom/inveno/nxadsdk/a/c$1;

    move-object/from16 v0, p7

    invoke-direct {v9, p0, v0}, Lcom/inveno/nxadsdk/a/c$1;-><init>(Lcom/inveno/nxadsdk/a/c;Lcom/inveno/nxadsdk/b/a;)V

    move-object v2, p1

    move-object v5, p3

    move-object v6, p4

    move/from16 v8, p6

    move-object/from16 v10, p8

    invoke-virtual/range {v1 .. v10}, Lcom/inveno/nxadsdk/a/b;->a(Ljava/lang/String;Lcom/inveno/se/adapi/model/adreq/Gps;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZLcom/inveno/nxadsdk/b/a;Ljava/util/ArrayList;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/inveno/nxadsdk/b/a;)V
    .locals 3

    const-string v0, "nx_ad_sdk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "1  getConfig  appid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inveno/nxadsdk/a/c;->a:Lcom/inveno/nxadsdk/a/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/inveno/nxadsdk/a/d;

    iget-object v1, p0, Lcom/inveno/nxadsdk/a/c;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/inveno/nxadsdk/a/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/inveno/nxadsdk/a/c;->a:Lcom/inveno/nxadsdk/a/d;

    :cond_0
    iget-object v0, p0, Lcom/inveno/nxadsdk/a/c;->a:Lcom/inveno/nxadsdk/a/d;

    if-eqz v0, :cond_2

    const-string v0, "nx_ad_sdk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "2  getConfig  appid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inveno/nxadsdk/a/c;->a:Lcom/inveno/nxadsdk/a/d;

    new-instance v1, Lcom/inveno/nxadsdk/a/c$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/inveno/nxadsdk/a/c$2;-><init>(Lcom/inveno/nxadsdk/a/c;Ljava/lang/String;Lcom/inveno/nxadsdk/b/a;)V

    invoke-virtual {v0, p1, v1}, Lcom/inveno/nxadsdk/a/d;->a(Ljava/lang/String;Lcom/inveno/nxadsdk/b/a;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-eqz p2, :cond_1

    const-string v0, "no ad"

    invoke-interface {p2, v0}, Lcom/inveno/nxadsdk/b/a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
