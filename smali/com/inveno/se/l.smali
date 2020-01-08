.class Lcom/inveno/se/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/inveno/reportsdk/q;


# instance fields
.field final synthetic a:Lcom/inveno/se/callback/DownloadCallback;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/inveno/se/a;


# direct methods
.method constructor <init>(Lcom/inveno/se/a;Lcom/inveno/se/callback/DownloadCallback;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/l;->c:Lcom/inveno/se/a;

    iput-object p2, p0, Lcom/inveno/se/l;->a:Lcom/inveno/se/callback/DownloadCallback;

    iput-object p3, p0, Lcom/inveno/se/l;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/inveno/se/l;->a:Lcom/inveno/se/callback/DownloadCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inveno/se/l;->a:Lcom/inveno/se/callback/DownloadCallback;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get news error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inveno/se/callback/DownloadCallback;->onFailure(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 4

    :try_start_0
    invoke-static {p1}, Lcom/inveno/se/model/ZZNews;->parse(Lorg/json/JSONObject;)Lcom/inveno/se/model/ZZNews;

    move-result-object v2

    iget-object v0, p0, Lcom/inveno/se/l;->a:Lcom/inveno/se/callback/DownloadCallback;

    instance-of v0, v0, Lcom/inveno/se/callback/ZZReuqestListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inveno/se/l;->a:Lcom/inveno/se/callback/DownloadCallback;

    check-cast v0, Lcom/inveno/se/callback/ZZReuqestListener;

    invoke-virtual {v2}, Lcom/inveno/se/model/ZZNews;->getReset()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "1"

    invoke-virtual {v2}, Lcom/inveno/se/model/ZZNews;->getReset()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v2, v1}, Lcom/inveno/se/callback/ZZReuqestListener;->onSuccess(Ljava/lang/Object;Z)V

    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "upack"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "upack"

    const-string v1, "upack"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/inveno/se/l;->b:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/inveno/se/tools/Tools;->setInformain(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    const-string v0, "upack"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/reportsdk/XZSDKManager;->setUpack(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/inveno/se/l;->a:Lcom/inveno/se/callback/DownloadCallback;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/inveno/se/l;->a:Lcom/inveno/se/callback/DownloadCallback;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get news error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/inveno/se/callback/DownloadCallback;->onFailure(Ljava/lang/String;)V

    goto :goto_1
.end method
