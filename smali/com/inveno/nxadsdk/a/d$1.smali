.class Lcom/inveno/nxadsdk/a/d$1;
.super Lcom/inveno/se/callback/DownloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inveno/nxadsdk/a/d;->a(Ljava/lang/String;Lcom/inveno/nxadsdk/b/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/inveno/se/callback/DownloadCallback",
        "<",
        "Lcom/inveno/se/adapi/model/adconfig/AdSdkConfigModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/inveno/nxadsdk/b/a;

.field final synthetic b:Lcom/inveno/nxadsdk/a/d;


# direct methods
.method constructor <init>(Lcom/inveno/nxadsdk/a/d;Lcom/inveno/nxadsdk/b/a;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/nxadsdk/a/d$1;->b:Lcom/inveno/nxadsdk/a/d;

    iput-object p2, p0, Lcom/inveno/nxadsdk/a/d$1;->a:Lcom/inveno/nxadsdk/b/a;

    invoke-direct {p0}, Lcom/inveno/se/callback/DownloadCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/inveno/se/adapi/model/adconfig/AdSdkConfigModel;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/inveno/nxadsdk/a/d$1;->b:Lcom/inveno/nxadsdk/a/d;

    invoke-virtual {v0, p1}, Lcom/inveno/nxadsdk/a/d;->a(Lcom/inveno/se/adapi/model/adconfig/AdSdkConfigModel;)V

    iget-object v0, p0, Lcom/inveno/nxadsdk/a/d$1;->a:Lcom/inveno/nxadsdk/b/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inveno/nxadsdk/a/d$1;->a:Lcom/inveno/nxadsdk/b/a;

    invoke-interface {v0, p1}, Lcom/inveno/nxadsdk/b/a;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/inveno/nxadsdk/a/d$1;->a:Lcom/inveno/nxadsdk/b/a;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/inveno/nxadsdk/a/d$1;->a:Lcom/inveno/nxadsdk/b/a;

    const-string v2, ""

    invoke-interface {v1, v2}, Lcom/inveno/nxadsdk/b/a;->a(Ljava/lang/String;)V

    :cond_1
    const-string v1, "nx_ad_sdk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getConfig  onSuccess   catch:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onFailure(Ljava/lang/String;)V
    .locals 3

    const-string v0, "nx_ad_sdk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getConfig  onFailure   s:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inveno/nxadsdk/a/d$1;->a:Lcom/inveno/nxadsdk/b/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inveno/nxadsdk/a/d$1;->a:Lcom/inveno/nxadsdk/b/a;

    invoke-interface {v0, p1}, Lcom/inveno/nxadsdk/b/a;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/inveno/se/adapi/model/adconfig/AdSdkConfigModel;

    invoke-virtual {p0, p1}, Lcom/inveno/nxadsdk/a/d$1;->a(Lcom/inveno/se/adapi/model/adconfig/AdSdkConfigModel;)V

    return-void
.end method
