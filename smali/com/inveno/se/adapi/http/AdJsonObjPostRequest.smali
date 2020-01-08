.class public Lcom/inveno/se/adapi/http/AdJsonObjPostRequest;
.super Lcom/inveno/se/http/JsonObjPostRequest;


# instance fields
.field private body:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/inveno/se/volley/Response$Listener;Lcom/inveno/se/volley/Response$ErrorListener;Ljava/lang/String;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/inveno/se/volley/Response$Listener",
            "<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lcom/inveno/se/volley/Response$ErrorListener;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/inveno/se/http/JsonObjPostRequest;-><init>(Ljava/lang/String;Lcom/inveno/se/volley/Response$Listener;Lcom/inveno/se/volley/Response$ErrorListener;Ljava/util/Map;Z)V

    iput-object p4, p0, Lcom/inveno/se/adapi/http/AdJsonObjPostRequest;->body:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBody()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inveno/se/volley/AuthFailureError;
        }
    .end annotation

    const-string v0, "lhc"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AdJsonObjPostRequest getBody:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/inveno/se/adapi/http/AdJsonObjPostRequest;->body:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inveno/se/adapi/http/AdJsonObjPostRequest;->body:Ljava/lang/String;

    invoke-static {v0}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inveno/se/adapi/http/AdJsonObjPostRequest;->body:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/inveno/se/http/JsonObjPostRequest;->getBody()[B

    move-result-object v0

    goto :goto_0
.end method

.method public getBodyContentType()Ljava/lang/String;
    .locals 1

    const-string v0, "text/plain; charset=utf-8"

    return-object v0
.end method

.method protected parseNetworkResponse(Lcom/inveno/se/volley/NetworkResponse;)Lcom/inveno/se/volley/Response;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inveno/se/volley/NetworkResponse;",
            ")",
            "Lcom/inveno/se/volley/Response",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    iget-object v0, p1, Lcom/inveno/se/volley/NetworkResponse;->headers:Ljava/util/Map;

    const-string v1, "Content-Type"

    invoke-virtual {p0}, Lcom/inveno/se/adapi/http/AdJsonObjPostRequest;->getBodyContentType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-super {p0, p1}, Lcom/inveno/se/http/JsonObjPostRequest;->parseNetworkResponse(Lcom/inveno/se/volley/NetworkResponse;)Lcom/inveno/se/volley/Response;

    move-result-object v0

    return-object v0
.end method
