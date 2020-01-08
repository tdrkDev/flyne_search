.class public Lcom/inveno/se/model/InitConfigModel;
.super Ljava/lang/Object;


# instance fields
.field private appkey:Ljava/lang/String;

.field private appsecret:Ljava/lang/String;

.field private pikey:Ljava/lang/String;

.field private productid:Ljava/lang/String;

.field private promotion:Ljava/lang/String;

.field private zzHost:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/inveno/se/model/InitConfigModel;
    .locals 4

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/inveno/se/tools/StringTools;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/inveno/se/model/InitConfigModel;

    invoke-direct {v1}, Lcom/inveno/se/model/InitConfigModel;-><init>()V

    const-string v3, "zzHost"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "zzHost"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/inveno/se/model/InitConfigModel;->setZzHost(Ljava/lang/String;)V

    :cond_1
    const-string v3, "productid"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "productid"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/inveno/se/model/InitConfigModel;->setProductid(Ljava/lang/String;)V

    :cond_2
    const-string v3, "promotion"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "promotion"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/inveno/se/model/InitConfigModel;->setPromotion(Ljava/lang/String;)V

    :cond_3
    const-string v3, "appkey"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "appkey"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/inveno/se/model/InitConfigModel;->setAppkey(Ljava/lang/String;)V

    :cond_4
    const-string v3, "appsecret"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "appsecret"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/inveno/se/model/InitConfigModel;->setAppsecret(Ljava/lang/String;)V

    :cond_5
    const-string v3, "pikey"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "pikey"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/inveno/se/model/InitConfigModel;->setPikey(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const-class v2, Lcom/inveno/se/model/InitConfigModel;

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public getAppkey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/model/InitConfigModel;->appkey:Ljava/lang/String;

    return-object v0
.end method

.method public getAppsecret()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/model/InitConfigModel;->appsecret:Ljava/lang/String;

    return-object v0
.end method

.method public getPikey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/model/InitConfigModel;->pikey:Ljava/lang/String;

    return-object v0
.end method

.method public getProductid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/model/InitConfigModel;->productid:Ljava/lang/String;

    return-object v0
.end method

.method public getPromotion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/model/InitConfigModel;->promotion:Ljava/lang/String;

    return-object v0
.end method

.method public getZzHost()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/model/InitConfigModel;->zzHost:Ljava/lang/String;

    return-object v0
.end method

.method public setAppkey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/model/InitConfigModel;->appkey:Ljava/lang/String;

    return-void
.end method

.method public setAppsecret(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/model/InitConfigModel;->appsecret:Ljava/lang/String;

    return-void
.end method

.method public setPikey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/model/InitConfigModel;->pikey:Ljava/lang/String;

    return-void
.end method

.method public setProductid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/model/InitConfigModel;->productid:Ljava/lang/String;

    return-void
.end method

.method public setPromotion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/model/InitConfigModel;->promotion:Ljava/lang/String;

    return-void
.end method

.method public setZzHost(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/model/InitConfigModel;->zzHost:Ljava/lang/String;

    return-void
.end method

.method public toJsonObject()Ljava/lang/String;
    .locals 3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/inveno/se/model/InitConfigModel;->zzHost:Ljava/lang/String;

    invoke-static {v1}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "zzHost"

    iget-object v2, p0, Lcom/inveno/se/model/InitConfigModel;->zzHost:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    iget-object v1, p0, Lcom/inveno/se/model/InitConfigModel;->productid:Ljava/lang/String;

    invoke-static {v1}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "productid"

    iget-object v2, p0, Lcom/inveno/se/model/InitConfigModel;->productid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    iget-object v1, p0, Lcom/inveno/se/model/InitConfigModel;->promotion:Ljava/lang/String;

    invoke-static {v1}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "promotion"

    iget-object v2, p0, Lcom/inveno/se/model/InitConfigModel;->promotion:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    iget-object v1, p0, Lcom/inveno/se/model/InitConfigModel;->appkey:Ljava/lang/String;

    invoke-static {v1}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "appkey"

    iget-object v2, p0, Lcom/inveno/se/model/InitConfigModel;->appkey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    iget-object v1, p0, Lcom/inveno/se/model/InitConfigModel;->appsecret:Ljava/lang/String;

    invoke-static {v1}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "appsecret"

    iget-object v2, p0, Lcom/inveno/se/model/InitConfigModel;->appsecret:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    iget-object v1, p0, Lcom/inveno/se/model/InitConfigModel;->pikey:Ljava/lang/String;

    invoke-static {v1}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "pikey"

    iget-object v2, p0, Lcom/inveno/se/model/InitConfigModel;->pikey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_5
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method
