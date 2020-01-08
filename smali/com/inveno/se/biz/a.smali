.class Lcom/inveno/se/biz/a;
.super Lcom/inveno/se/callback/DownloadCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/inveno/se/callback/DownloadCallback",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/inveno/se/callback/DownloadCallback;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/inveno/se/biz/UiConfigBiz;


# direct methods
.method constructor <init>(Lcom/inveno/se/biz/UiConfigBiz;Lcom/inveno/se/callback/DownloadCallback;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/biz/a;->c:Lcom/inveno/se/biz/UiConfigBiz;

    iput-object p2, p0, Lcom/inveno/se/biz/a;->a:Lcom/inveno/se/callback/DownloadCallback;

    iput-object p3, p0, Lcom/inveno/se/biz/a;->b:Landroid/content/Context;

    invoke-direct {p0}, Lcom/inveno/se/callback/DownloadCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)V
    .locals 4

    const-string v0, "hzj"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u83b7\u53d6\u5230\u7684RssInfos List:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/inveno/se/config/Result;->parse(Lorg/json/JSONObject;)Lcom/inveno/se/config/Result;

    move-result-object v0

    const/16 v1, 0xc8

    invoke-virtual {v0}, Lcom/inveno/se/config/Result;->getCode()I

    move-result v0

    if-ne v1, v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/inveno/se/biz/b;

    invoke-direct {v1, p0, p1}, Lcom/inveno/se/biz/b;-><init>(Lcom/inveno/se/biz/a;Lorg/json/JSONObject;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lcom/inveno/se/biz/a;->a:Lcom/inveno/se/callback/DownloadCallback;

    invoke-static {p1}, Lcom/inveno/se/model/uiconfig/UiConfig;->parse(Lorg/json/JSONObject;)Lcom/inveno/se/model/uiconfig/UiConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inveno/se/callback/DownloadCallback;->onSuccess(Ljava/lang/Object;)V

    const-string v0, "uiconfig_json_tm"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcom/inveno/se/biz/a;->b:Landroid/content/Context;

    invoke-static {v0, v2, v3, v1}, Lcom/inveno/se/tools/Tools;->setInformain(Ljava/lang/String;JLandroid/content/Context;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/inveno/se/biz/a;->a:Lcom/inveno/se/callback/DownloadCallback;

    const-string v1, "code worng"

    invoke-virtual {v0, v1}, Lcom/inveno/se/callback/DownloadCallback;->onFailure(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onFailure(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/biz/a;->a:Lcom/inveno/se/callback/DownloadCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inveno/se/biz/a;->a:Lcom/inveno/se/callback/DownloadCallback;

    invoke-virtual {v0, p1}, Lcom/inveno/se/callback/DownloadCallback;->onFailure(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/inveno/se/biz/a;->a(Lorg/json/JSONObject;)V

    return-void
.end method
