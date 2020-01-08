.class public Lcom/inveno/se/model/ZZNews;
.super Ljava/util/ArrayList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/ArrayList",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private code:Ljava/lang/String;

.field private count:Ljava/lang/String;

.field private error:Z

.field private error_msg:Ljava/lang/String;

.field private orignalJson:Ljava/lang/String;

.field private reset:Ljava/lang/String;

.field private server_time:Ljava/lang/String;

.field private t_expire_c:Ljava/lang/String;

.field private upack:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/inveno/se/model/ZZNews;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/inveno/se/model/ZZNews",
            "<",
            "Lcom/inveno/se/model/ZZNewsinfo;",
            ">;"
        }
    .end annotation

    const/4 v7, 0x1

    new-instance v1, Lcom/inveno/se/model/ZZNews;

    invoke-direct {v1}, Lcom/inveno/se/model/ZZNews;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/inveno/se/model/ZZNews;->setOrignalJson(Ljava/lang/String;)V

    const-string v0, "code"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/inveno/se/model/ZZNews;->setCode(Ljava/lang/String;)V

    const-string v0, "error_msg"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/inveno/se/model/ZZNews;->setError_msg(Ljava/lang/String;)V

    const-string v0, "server_time"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/inveno/se/model/ZZNews;->setServer_time(Ljava/lang/String;)V

    const-string v0, "upack"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/inveno/se/model/ZZNews;->setUpack(Ljava/lang/String;)V

    const-string v0, "count"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "count"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/inveno/se/model/ZZNews;->setCount(Ljava/lang/String;)V

    :cond_0
    const-string v0, "t_expire_c"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "t_expire_c"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/inveno/se/model/ZZNews;->setT_expire_c(Ljava/lang/String;)V

    :cond_1
    const-string v0, "data"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "data"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_3

    const-string v4, "inveno"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ZZNews parse i"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4}, Lcom/inveno/se/model/ZZNewsinfo;->parse(Lorg/json/JSONObject;)Lcom/inveno/se/model/ZZNewsinfo;

    move-result-object v4

    if-eqz v4, :cond_2

    const-string v5, "server_time"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/inveno/se/model/ZZNewsinfo;->setServer_time(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/inveno/se/model/ZZNews;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/inveno/se/model/ZZNews;->setError(Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ex:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Lcom/inveno/se/model/ZZNews;->setError(Z)V

    :cond_3
    :try_start_1
    const-string v0, "reset"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "reset"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/inveno/se/model/ZZNews;->setReset(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_4
    :goto_2
    return-object v1

    :catch_1
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ex:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;)V

    goto :goto_2
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/model/ZZNews;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getCount()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/model/ZZNews;->count:Ljava/lang/String;

    return-object v0
.end method

.method public getError()Z
    .locals 1

    iget-boolean v0, p0, Lcom/inveno/se/model/ZZNews;->error:Z

    return v0
.end method

.method public getError_msg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/model/ZZNews;->error_msg:Ljava/lang/String;

    return-object v0
.end method

.method public getOrignalJson()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/model/ZZNews;->orignalJson:Ljava/lang/String;

    return-object v0
.end method

.method public getReset()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/model/ZZNews;->reset:Ljava/lang/String;

    return-object v0
.end method

.method public getServer_time()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/model/ZZNews;->server_time:Ljava/lang/String;

    return-object v0
.end method

.method public getT_expire_c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/model/ZZNews;->t_expire_c:Ljava/lang/String;

    return-object v0
.end method

.method public getUpack()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/model/ZZNews;->upack:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/model/ZZNews;->code:Ljava/lang/String;

    return-void
.end method

.method public setCount(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/model/ZZNews;->count:Ljava/lang/String;

    return-void
.end method

.method public setError(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/inveno/se/model/ZZNews;->error:Z

    return-void
.end method

.method public setError_msg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/model/ZZNews;->error_msg:Ljava/lang/String;

    return-void
.end method

.method public setOrignalJson(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/model/ZZNews;->orignalJson:Ljava/lang/String;

    return-void
.end method

.method public setReset(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/model/ZZNews;->reset:Ljava/lang/String;

    return-void
.end method

.method public setServer_time(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/model/ZZNews;->server_time:Ljava/lang/String;

    return-void
.end method

.method public setT_expire_c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/model/ZZNews;->t_expire_c:Ljava/lang/String;

    return-void
.end method

.method public setUpack(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/model/ZZNews;->upack:Ljava/lang/String;

    return-void
.end method
