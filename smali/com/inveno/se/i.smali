.class Lcom/inveno/se/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/inveno/reportsdk/q;


# instance fields
.field final synthetic a:Lcom/inveno/se/callback/ZZReuqestListener;

.field final synthetic b:Lcom/inveno/se/a;


# direct methods
.method constructor <init>(Lcom/inveno/se/a;Lcom/inveno/se/callback/ZZReuqestListener;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/i;->b:Lcom/inveno/se/a;

    iput-object p2, p0, Lcom/inveno/se/i;->a:Lcom/inveno/se/callback/ZZReuqestListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/i;->a:Lcom/inveno/se/callback/ZZReuqestListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inveno/se/i;->a:Lcom/inveno/se/callback/ZZReuqestListener;

    invoke-virtual {v0, p1}, Lcom/inveno/se/callback/ZZReuqestListener;->onFailure(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getZZSearchNews response:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/inveno/se/tools/LogTools;->showLogB(Ljava/lang/String;)V

    :try_start_0
    invoke-static {p1}, Lcom/inveno/se/model/ZZNews;->parse(Lorg/json/JSONObject;)Lcom/inveno/se/model/ZZNews;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v0, p0, Lcom/inveno/se/i;->a:Lcom/inveno/se/callback/ZZReuqestListener;

    const-string v1, "searchResult is null"

    invoke-virtual {v0, v1}, Lcom/inveno/se/callback/ZZReuqestListener;->onFailure(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v2}, Lcom/inveno/se/model/ZZNews;->getCode()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    iget-object v0, p0, Lcom/inveno/se/i;->a:Lcom/inveno/se/callback/ZZReuqestListener;

    const-string v1, "searchResult\'s code is null"

    invoke-virtual {v0, v1}, Lcom/inveno/se/callback/ZZReuqestListener;->onFailure(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/inveno/se/i;->a:Lcom/inveno/se/callback/ZZReuqestListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/inveno/se/i;->a:Lcom/inveno/se/callback/ZZReuqestListener;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/inveno/se/callback/ZZReuqestListener;->onFailure(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_1
    const-string v3, "200"

    invoke-virtual {v2}, Lcom/inveno/se/model/ZZNews;->getCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v0, p0, Lcom/inveno/se/i;->a:Lcom/inveno/se/callback/ZZReuqestListener;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "searchResult\'s code "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcom/inveno/se/model/ZZNews;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inveno/se/callback/ZZReuqestListener;->onFailure(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_3
    :try_start_2
    const-string v3, "no_more"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "no_more"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v3

    if-nez v3, :cond_4

    :goto_1
    :try_start_3
    iget-object v1, p0, Lcom/inveno/se/i;->a:Lcom/inveno/se/callback/ZZReuqestListener;

    invoke-virtual {v1, v2, v0}, Lcom/inveno/se/callback/ZZReuqestListener;->onSuccess(Ljava/lang/Object;Z)V

    goto :goto_0

    :cond_4
    if-ne v3, v0, :cond_5

    move v0, v1

    goto :goto_1

    :catch_1
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " ex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :cond_5
    move v0, v1

    goto :goto_1
.end method
