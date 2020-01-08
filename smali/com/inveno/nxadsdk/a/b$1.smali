.class Lcom/inveno/nxadsdk/a/b$1;
.super Lcom/inveno/se/callback/DownloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inveno/nxadsdk/a/b;->a(Ljava/lang/String;Lcom/inveno/se/adapi/model/adreq/Gps;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZLcom/inveno/nxadsdk/b/a;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/inveno/se/callback/DownloadCallback",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/inveno/se/adapi/model/adstyle/FlowAds;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/inveno/nxadsdk/b/a;

.field final synthetic b:Ljava/util/ArrayList;

.field final synthetic c:Lcom/inveno/nxadsdk/a/b;


# direct methods
.method constructor <init>(Lcom/inveno/nxadsdk/a/b;Lcom/inveno/nxadsdk/b/a;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/nxadsdk/a/b$1;->c:Lcom/inveno/nxadsdk/a/b;

    iput-object p2, p0, Lcom/inveno/nxadsdk/a/b$1;->a:Lcom/inveno/nxadsdk/b/a;

    iput-object p3, p0, Lcom/inveno/nxadsdk/a/b$1;->b:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/inveno/se/callback/DownloadCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/inveno/se/adapi/model/adstyle/FlowAds;",
            ">;)V"
        }
    .end annotation

    const/4 v10, 0x5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/inveno/nxadsdk/a/b$1;->a:Lcom/inveno/nxadsdk/b/a;

    if-eqz v0, :cond_7

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_9

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v10}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/inveno/nxadsdk/a/b$1;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inveno/nxadsdk/a/b$1;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/inveno/nxadsdk/a/b$1;->b:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_6

    new-instance v7, Lcom/inveno/nxadsdk/model/NativeRegularAd;

    invoke-direct {v7}, Lcom/inveno/nxadsdk/model/NativeRegularAd;-><init>()V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/se/adapi/model/adstyle/FlowAds;

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    move v4, v3

    :goto_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v4, v1, :cond_1

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inveno/se/adapi/model/adconfig/AdSdkRule;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/inveno/se/adapi/model/adconfig/AdSdkRule;->getAdspace_id()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v1}, Lcom/inveno/se/adapi/model/adconfig/AdSdkRule;->getAdspace_id()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lcom/inveno/se/adapi/model/adstyle/FlowAds;->getAdspace_id()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v1}, Lcom/inveno/se/adapi/model/adconfig/AdSdkRule;->getAdspace_id()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/inveno/nxadsdk/model/NativeRegularAd;->a(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/inveno/se/adapi/model/adconfig/AdSdkRule;->getDisplay_type()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/inveno/nxadsdk/model/NativeRegularAd;->b(I)V

    invoke-virtual {v1}, Lcom/inveno/se/adapi/model/adconfig/AdSdkRule;->getWidth()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/inveno/nxadsdk/model/NativeRegularAd;->c(I)V

    invoke-virtual {v1}, Lcom/inveno/se/adapi/model/adconfig/AdSdkRule;->getHeight()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/inveno/nxadsdk/model/NativeRegularAd;->d(I)V

    invoke-virtual {v1}, Lcom/inveno/se/adapi/model/adconfig/AdSdkRule;->getPos()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/inveno/nxadsdk/model/NativeRegularAd;->a(I)V

    invoke-virtual {v1}, Lcom/inveno/se/adapi/model/adconfig/AdSdkRule;->getNum()I

    move-result v1

    invoke-virtual {v7, v1}, Lcom/inveno/nxadsdk/model/NativeRegularAd;->e(I)V

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1
    :goto_2
    invoke-virtual {v0}, Lcom/inveno/se/adapi/model/adstyle/FlowAds;->getFlowAdArrayList()Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v10}, Ljava/util/ArrayList;-><init>(I)V

    move v1, v3

    :goto_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/se/adapi/model/adstyle/FlowAd;

    iget-object v9, p0, Lcom/inveno/nxadsdk/a/b$1;->c:Lcom/inveno/nxadsdk/a/b;

    invoke-static {v9, v0}, Lcom/inveno/nxadsdk/a/b;->a(Lcom/inveno/nxadsdk/a/b;Lcom/inveno/se/adapi/model/adstyle/FlowAd;)Lcom/inveno/nxadsdk/model/NativeAd;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_2
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto/16 :goto_1

    :cond_3
    invoke-virtual {v0}, Lcom/inveno/se/adapi/model/adstyle/FlowAds;->getAdspace_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/inveno/nxadsdk/model/NativeRegularAd;->a(Ljava/lang/String;)V

    const-string v1, "rule_ad_test"

    const-string v4, "rulelisttemp.size()  0"

    invoke-static {v1, v4}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v7, v8}, Lcom/inveno/nxadsdk/model/NativeRegularAd;->a(Ljava/util/ArrayList;)V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_8

    :try_start_0
    new-instance v0, Lcom/inveno/nxadsdk/a/b$1$1;

    invoke-direct {v0, p0}, Lcom/inveno/nxadsdk/a/b$1$1;-><init>(Lcom/inveno/nxadsdk/a/b$1;)V

    invoke-static {v5, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    iget-object v0, p0, Lcom/inveno/nxadsdk/a/b$1;->a:Lcom/inveno/nxadsdk/b/a;

    invoke-interface {v0, v5}, Lcom/inveno/nxadsdk/b/a;->a(Ljava/lang/Object;)V

    :cond_7
    :goto_5
    return-void

    :cond_8
    iget-object v0, p0, Lcom/inveno/nxadsdk/a/b$1;->a:Lcom/inveno/nxadsdk/b/a;

    const-string v1, "nativeAegularAdArrayList size is 0"

    invoke-interface {v0, v1}, Lcom/inveno/nxadsdk/b/a;->a(Ljava/lang/String;)V

    goto :goto_5

    :cond_9
    iget-object v0, p0, Lcom/inveno/nxadsdk/a/b$1;->a:Lcom/inveno/nxadsdk/b/a;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/inveno/nxadsdk/a/b$1;->a:Lcom/inveno/nxadsdk/b/a;

    const-string v1, "ivn getFlowAdMap is null or size is 0"

    invoke-interface {v0, v1}, Lcom/inveno/nxadsdk/b/a;->a(Ljava/lang/String;)V

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_4
.end method

.method public onFailure(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/inveno/nxadsdk/a/b$1;->a:Lcom/inveno/nxadsdk/b/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inveno/nxadsdk/a/b$1;->a:Lcom/inveno/nxadsdk/b/a;

    invoke-interface {v0, p1}, Lcom/inveno/nxadsdk/b/a;->a(Ljava/lang/String;)V

    :cond_0
    const-string v0, "nx_ad_sdk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "1  getFlowAdMap   onFail:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/inveno/nxadsdk/a/b$1;->a(Ljava/util/ArrayList;)V

    return-void
.end method
