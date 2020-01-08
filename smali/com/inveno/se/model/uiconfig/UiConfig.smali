.class public Lcom/inveno/se/model/uiconfig/UiConfig;
.super Ljava/lang/Object;


# instance fields
.field private code:I

.field private hash:I

.field private homePage:Lcom/inveno/se/model/uiconfig/HomePage;

.field private isError:Z

.field private json:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/inveno/se/model/uiconfig/UiConfig;
    .locals 3

    new-instance v0, Lcom/inveno/se/model/uiconfig/UiConfig;

    invoke-direct {v0}, Lcom/inveno/se/model/uiconfig/UiConfig;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inveno/se/model/uiconfig/UiConfig;->setJson(Ljava/lang/String;)V

    const-string v1, "code"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/inveno/se/model/uiconfig/UiConfig;->setCode(I)V

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    const-string v1, "hash"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/inveno/se/model/uiconfig/UiConfig;->setHash(I)V

    const-string v1, "data"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/inveno/se/model/uiconfig/HomePage;->parse(Lorg/json/JSONObject;)Lcom/inveno/se/model/uiconfig/HomePage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inveno/se/model/uiconfig/UiConfig;->setHomePage(Lcom/inveno/se/model/uiconfig/HomePage;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/inveno/se/model/uiconfig/UiConfig;->setError(Z)V

    goto :goto_0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    iget v0, p0, Lcom/inveno/se/model/uiconfig/UiConfig;->code:I

    return v0
.end method

.method public getHash()I
    .locals 1

    iget v0, p0, Lcom/inveno/se/model/uiconfig/UiConfig;->hash:I

    return v0
.end method

.method public getHomePage()Lcom/inveno/se/model/uiconfig/HomePage;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/model/uiconfig/UiConfig;->homePage:Lcom/inveno/se/model/uiconfig/HomePage;

    return-object v0
.end method

.method public isError()Z
    .locals 1

    iget-boolean v0, p0, Lcom/inveno/se/model/uiconfig/UiConfig;->isError:Z

    return v0
.end method

.method public setCode(I)V
    .locals 0

    iput p1, p0, Lcom/inveno/se/model/uiconfig/UiConfig;->code:I

    return-void
.end method

.method public setError(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/inveno/se/model/uiconfig/UiConfig;->isError:Z

    return-void
.end method

.method public setHash(I)V
    .locals 0

    iput p1, p0, Lcom/inveno/se/model/uiconfig/UiConfig;->hash:I

    return-void
.end method

.method public setHomePage(Lcom/inveno/se/model/uiconfig/HomePage;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/model/uiconfig/UiConfig;->homePage:Lcom/inveno/se/model/uiconfig/HomePage;

    return-void
.end method

.method public setJson(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/model/uiconfig/UiConfig;->json:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/model/uiconfig/UiConfig;->json:Ljava/lang/String;

    return-object v0
.end method
