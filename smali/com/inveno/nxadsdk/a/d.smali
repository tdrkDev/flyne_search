.class public Lcom/inveno/nxadsdk/a/d;
.super Ljava/lang/Object;


# instance fields
.field public a:Lcom/inveno/se/adapi/model/adconfig/AdSdkConfigModel;

.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/inveno/se/adapi/model/adconfig/AdSdkModel;",
            ">;>;"
        }
    .end annotation
.end field

.field private c:Landroid/content/Context;

.field private d:Lcom/inveno/se/adapi/AdApiMgr;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/inveno/nxadsdk/a/d;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/inveno/se/adapi/AdApiMgr;->getInstance(Landroid/content/Context;)Lcom/inveno/se/adapi/AdApiMgr;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/nxadsdk/a/d;->d:Lcom/inveno/se/adapi/AdApiMgr;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/inveno/nxadsdk/a/d;->b:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/inveno/nxadsdk/a/d;->b:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inveno/nxadsdk/a/d;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/inveno/nxadsdk/a/d;->a:Lcom/inveno/se/adapi/model/adconfig/AdSdkConfigModel;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/inveno/nxadsdk/a/d;->a:Lcom/inveno/se/adapi/model/adconfig/AdSdkConfigModel;

    invoke-virtual {v0}, Lcom/inveno/se/adapi/model/adconfig/AdSdkConfigModel;->getSdkAdList()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inveno/nxadsdk/a/d;->a:Lcom/inveno/se/adapi/model/adconfig/AdSdkConfigModel;

    invoke-virtual {v0}, Lcom/inveno/se/adapi/model/adconfig/AdSdkConfigModel;->getSdkAdList()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_1
    iget-object v0, p0, Lcom/inveno/nxadsdk/a/d;->a:Lcom/inveno/se/adapi/model/adconfig/AdSdkConfigModel;

    invoke-virtual {v0}, Lcom/inveno/se/adapi/model/adconfig/AdSdkConfigModel;->getAdvertList()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/inveno/nxadsdk/a/d;->a:Lcom/inveno/se/adapi/model/adconfig/AdSdkConfigModel;

    invoke-virtual {v0}, Lcom/inveno/se/adapi/model/adconfig/AdSdkConfigModel;->getAdvertList()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_2
    iget-object v0, p0, Lcom/inveno/nxadsdk/a/d;->a:Lcom/inveno/se/adapi/model/adconfig/AdSdkConfigModel;

    invoke-virtual {v0}, Lcom/inveno/se/adapi/model/adconfig/AdSdkConfigModel;->getAdSdkRuleMap()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/inveno/nxadsdk/a/d;->a:Lcom/inveno/se/adapi/model/adconfig/AdSdkConfigModel;

    invoke-virtual {v0}, Lcom/inveno/se/adapi/model/adconfig/AdSdkConfigModel;->getAdSdkRuleMap()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_3
    iput-object v1, p0, Lcom/inveno/nxadsdk/a/d;->a:Lcom/inveno/se/adapi/model/adconfig/AdSdkConfigModel;

    iput-object v1, p0, Lcom/inveno/nxadsdk/a/d;->d:Lcom/inveno/se/adapi/AdApiMgr;

    iput-object v1, p0, Lcom/inveno/nxadsdk/a/d;->c:Landroid/content/Context;

    return-void
.end method

.method public declared-synchronized a(Lcom/inveno/se/adapi/model/adconfig/AdSdkConfigModel;)V
    .locals 11

    const/4 v10, 0x1

    const/4 v4, 0x0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/inveno/nxadsdk/a/d;->a:Lcom/inveno/se/adapi/model/adconfig/AdSdkConfigModel;

    iget-object v0, p0, Lcom/inveno/nxadsdk/a/d;->a:Lcom/inveno/se/adapi/model/adconfig/AdSdkConfigModel;

    invoke-virtual {v0}, Lcom/inveno/se/adapi/model/adconfig/AdSdkConfigModel;->getSdkAdList()Ljava/util/HashMap;

    move-result-object v5

    iget-object v0, p0, Lcom/inveno/nxadsdk/a/d;->a:Lcom/inveno/se/adapi/model/adconfig/AdSdkConfigModel;

    invoke-virtual {v0}, Lcom/inveno/se/adapi/model/adconfig/AdSdkConfigModel;->getAdvertList()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "nx_ad_sdk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAdSdkConfigModel   advertList:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "inveno"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "nx_ad_sdk"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setAdSdkConfigModel   key:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/se/adapi/model/adconfig/AdSdkPmpModel;

    invoke-virtual {v0}, Lcom/inveno/se/adapi/model/adconfig/AdSdkPmpModel;->getIsOpen()I

    move-result v2

    if-ne v2, v10, :cond_0

    invoke-virtual {v0}, Lcom/inveno/se/adapi/model/adconfig/AdSdkPmpModel;->getAdvertId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/se/adapi/model/adconfig/AdSdkListItem;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/inveno/se/adapi/model/adconfig/AdSdkListItem;->getJoinlist()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v0}, Lcom/inveno/se/adapi/model/adconfig/AdSdkListItem;->getState()I

    move-result v0

    if-ne v0, v10, :cond_0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/se/adapi/model/adconfig/AdSdkModel;

    const-string v2, "inveno"

    invoke-virtual {v0}, Lcom/inveno/se/adapi/model/adconfig/AdSdkModel;->getJoinPlat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_5

    move v3, v4

    :goto_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_1

    invoke-virtual {v0}, Lcom/inveno/se/adapi/model/adconfig/AdSdkModel;->getPriority()I

    move-result v9

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/inveno/se/adapi/model/adconfig/AdSdkModel;

    invoke-virtual {v2}, Lcom/inveno/se/adapi/model/adconfig/AdSdkModel;->getPriority()I

    move-result v2

    if-le v9, v2, :cond_3

    if-lez v3, :cond_2

    add-int/lit8 v2, v3, -0x1

    invoke-virtual {v7, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v7, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v3, v2, :cond_4

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_2

    :cond_5
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/inveno/nxadsdk/a/d;->b:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :cond_7
    monitor-exit p0

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/inveno/nxadsdk/b/a;)V
    .locals 4

    const-string v0, "nx_ad_sdk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getConfig  appid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inveno/nxadsdk/a/d;->d:Lcom/inveno/se/adapi/AdApiMgr;

    new-instance v1, Lcom/inveno/nxadsdk/a/d$1;

    invoke-direct {v1, p0, p2}, Lcom/inveno/nxadsdk/a/d$1;-><init>(Lcom/inveno/nxadsdk/a/d;Lcom/inveno/nxadsdk/b/a;)V

    sget-object v2, Lcom/inveno/nxadsdk/a/e;->a:Ljava/lang/String;

    sget-object v3, Lcom/inveno/nxadsdk/c/a;->a:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/inveno/se/adapi/AdApiMgr;->getConfig(Ljava/lang/String;Lcom/inveno/se/callback/DownloadCallback;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
