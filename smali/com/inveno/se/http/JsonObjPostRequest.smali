.class public Lcom/inveno/se/http/JsonObjPostRequest;
.super Lcom/inveno/se/volley/Request;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/inveno/se/volley/Request",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# static fields
.field private static INTERVAL:I


# instance fields
.field private encryption:Z

.field private mListener:Lcom/inveno/se/volley/Response$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/inveno/se/volley/Response$Listener",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private mMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x2bf20

    sput v0, Lcom/inveno/se/http/JsonObjPostRequest;->INTERVAL:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/inveno/se/volley/Response$Listener;Lcom/inveno/se/volley/Response$ErrorListener;Ljava/util/Map;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/inveno/se/volley/Response$Listener",
            "<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lcom/inveno/se/volley/Response$ErrorListener;",
            "Ljava/util/Map;",
            "Z)V"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p3}, Lcom/inveno/se/volley/Request;-><init>(ILjava/lang/String;Lcom/inveno/se/volley/Response$ErrorListener;)V

    iput-object p2, p0, Lcom/inveno/se/http/JsonObjPostRequest;->mListener:Lcom/inveno/se/volley/Response$Listener;

    iput-object p4, p0, Lcom/inveno/se/http/JsonObjPostRequest;->mMap:Ljava/util/Map;

    iput-boolean p5, p0, Lcom/inveno/se/http/JsonObjPostRequest;->encryption:Z

    invoke-static {p1}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "info/list"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/inveno/se/http/JsonObjPostRequest;->setShouldCache(Z)V

    :cond_0
    invoke-static {p1}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "report"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/inveno/se/http/JsonObjPostRequest;->setShouldCache(Z)V

    :cond_1
    invoke-static {p1}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "navigation.do"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/inveno/se/http/JsonObjPostRequest;->setShouldCache(Z)V

    :cond_2
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    return-void
.end method

.method protected bridge synthetic deliverResponse(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/inveno/se/http/JsonObjPostRequest;->deliverResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method protected deliverResponse(Lorg/json/JSONObject;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/inveno/se/http/JsonObjPostRequest;->mListener:Lcom/inveno/se/volley/Response$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inveno/se/http/JsonObjPostRequest;->mListener:Lcom/inveno/se/volley/Response$Listener;

    invoke-interface {v0, p1}, Lcom/inveno/se/volley/Response$Listener;->onResponse(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getBody()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inveno/se/volley/AuthFailureError;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/inveno/se/http/JsonObjPostRequest;->getParams()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {p0}, Lcom/inveno/se/http/JsonObjPostRequest;->getParamsEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/inveno/se/http/JsonObjPostRequest;->encodeParameters(Ljava/util/Map;Ljava/lang/String;)[B

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBody  params tk :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "tk"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " encryption:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/inveno/se/http/JsonObjPostRequest;->encryption:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " orignalBody:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLogB(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/inveno/se/http/JsonObjPostRequest;->encryption:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/inveno/se/tools/Const;->SDK_VERSION:I

    const/4 v2, 0x5

    if-lt v0, v2, :cond_0

    sget-object v0, Lcom/inveno/se/http/security/b;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v1, v0}, Lcom/inveno/se/config/a;->a([B[B)[B

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBody Const.SDK_VERSION :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/inveno/se/tools/Const;->SDK_VERSION:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  enc:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inveno/se/tools/LogTools;->showLogB(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u89e3\u5bc6\u540e\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inveno/se/tools/LogTools;->showLogB(Ljava/lang/String;)V

    :goto_1
    return-object v0

    :cond_0
    const-string v0, "INV!@#$)(*!776sF"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v1, v0}, Lcom/inveno/se/config/a;->a([B[B)[B

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getBodyContentType()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getBodyContentType encryption:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/inveno/se/http/JsonObjPostRequest;->encryption:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " getBodyContentType():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lcom/inveno/se/volley/Request;->getBodyContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLogB(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/inveno/se/http/JsonObjPostRequest;->encryption:Z

    if-eqz v0, :cond_0

    const-string v0, "text/plain; charset=utf-8"

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/inveno/se/volley/Request;->getBodyContentType()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCacheEntry()Lcom/inveno/se/volley/Cache$Entry;
    .locals 1

    invoke-super {p0}, Lcom/inveno/se/volley/Request;->getCacheEntry()Lcom/inveno/se/volley/Cache$Entry;

    move-result-object v0

    return-object v0
.end method

.method public getCacheKey()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/inveno/se/volley/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inveno/se/volley/AuthFailureError;
        }
    .end annotation

    iget-object v0, p0, Lcom/inveno/se/http/JsonObjPostRequest;->mMap:Ljava/util/Map;

    return-object v0
.end method

.method protected parseNetworkResponse(Lcom/inveno/se/volley/NetworkResponse;)Lcom/inveno/se/volley/Response;
    .locals 6
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

    const/4 v4, 0x5

    :try_start_0
    iget-object v0, p1, Lcom/inveno/se/volley/NetworkResponse;->data:[B

    iget-object v1, p1, Lcom/inveno/se/volley/NetworkResponse;->headers:Ljava/util/Map;

    const-string v2, "Content-Encoding"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "deflate"

    iget-object v2, p1, Lcom/inveno/se/volley/NetworkResponse;->headers:Ljava/util/Map;

    const-string v3, "Content-Encoding"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "has Content-Encoding:deflate encryption:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/inveno/se/http/JsonObjPostRequest;->encryption:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Const.SDK_VERSION:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/inveno/se/tools/Const;->SDK_VERSION:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " KeysManager.KEY1:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/inveno/se/http/security/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " IOUtils.decompress(response.data):"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/inveno/se/volley/NetworkResponse;->data:[B

    invoke-static {v2}, Lcom/inveno/se/tools/c;->a([B)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " data:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    iget-object v3, p1, Lcom/inveno/se/volley/NetworkResponse;->headers:Ljava/util/Map;

    invoke-static {v3}, Lcom/inveno/se/volley/toolbox/HttpHeaderParser;->parseCharset(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLogB(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/inveno/se/http/JsonObjPostRequest;->encryption:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/inveno/se/tools/Const;->SDK_VERSION:I

    if-lt v0, v4, :cond_1

    iget-object v0, p1, Lcom/inveno/se/volley/NetworkResponse;->data:[B

    invoke-static {v0}, Lcom/inveno/se/tools/c;->a([B)[B

    move-result-object v0

    sget-object v1, Lcom/inveno/se/http/security/b;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inveno/se/config/a;->b([B[B)[B

    move-result-object v0

    move-object v1, v0

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "decrypt data:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLogB(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/String;

    iget-object v2, p1, Lcom/inveno/se/volley/NetworkResponse;->headers:Ljava/util/Map;

    invoke-static {v2}, Lcom/inveno/se/volley/toolbox/HttpHeaderParser;->parseCharset(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {p1}, Lcom/inveno/se/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/inveno/se/volley/NetworkResponse;)Lcom/inveno/se/volley/Cache$Entry;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u8fd4\u56deparseNetworkResponse jsonString:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/inveno/se/tools/LogTools;->showLogB(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u8fd4\u56deparseNetworkResponse response.data:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/inveno/se/volley/NetworkResponse;->data:[B

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " charset:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/inveno/se/volley/NetworkResponse;->headers:Ljava/util/Map;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/inveno/se/tools/LogTools;->showLogB(Ljava/lang/String;)V

    sget-object v4, Lcom/inveno/se/config/URLPath;->CONFIG:Ljava/lang/String;

    invoke-static {v4}, Lcom/inveno/se/tools/URLUtils;->getURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/inveno/se/http/JsonObjPostRequest;->getCacheKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget v4, Lcom/inveno/se/http/JsonObjPostRequest;->INTERVAL:I

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/inveno/se/volley/Cache$Entry;->softTtl:J

    iget-wide v2, v1, Lcom/inveno/se/volley/Cache$Entry;->softTtl:J

    iput-wide v2, v1, Lcom/inveno/se/volley/Cache$Entry;->ttl:J

    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v1}, Lcom/inveno/se/volley/Response;->success(Ljava/lang/Object;Lcom/inveno/se/volley/Cache$Entry;)Lcom/inveno/se/volley/Response;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_1
    iget-object v0, p1, Lcom/inveno/se/volley/NetworkResponse;->data:[B

    invoke-static {v0}, Lcom/inveno/se/tools/c;->a([B)[B

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_0

    :cond_2
    iget-boolean v1, p0, Lcom/inveno/se/http/JsonObjPostRequest;->encryption:Z

    if-eqz v1, :cond_3

    sget v1, Lcom/inveno/se/tools/Const;->SDK_VERSION:I

    if-lt v1, v4, :cond_3

    iget-object v0, p1, Lcom/inveno/se/volley/NetworkResponse;->data:[B

    sget-object v1, Lcom/inveno/se/http/security/b;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inveno/se/config/a;->b([B[B)[B

    move-result-object v0

    move-object v1, v0

    :goto_3
    new-instance v0, Ljava/lang/String;

    iget-object v2, p1, Lcom/inveno/se/volley/NetworkResponse;->headers:Ljava/util/Map;

    invoke-static {v2}, Lcom/inveno/se/volley/toolbox/HttpHeaderParser;->parseCharset(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/inveno/se/volley/ParseError;

    invoke-direct {v1, v0}, Lcom/inveno/se/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1}, Lcom/inveno/se/volley/Response;->error(Lcom/inveno/se/volley/VolleyError;)Lcom/inveno/se/volley/Response;

    move-result-object v0

    goto :goto_2

    :catch_1
    move-exception v0

    new-instance v1, Lcom/inveno/se/volley/ParseError;

    invoke-direct {v1, v0}, Lcom/inveno/se/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1}, Lcom/inveno/se/volley/Response;->error(Lcom/inveno/se/volley/VolleyError;)Lcom/inveno/se/volley/Response;

    move-result-object v0

    goto :goto_2

    :catch_2
    move-exception v0

    new-instance v1, Lcom/inveno/se/volley/ParseError;

    invoke-direct {v1, v0}, Lcom/inveno/se/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1}, Lcom/inveno/se/volley/Response;->error(Lcom/inveno/se/volley/VolleyError;)Lcom/inveno/se/volley/Response;

    move-result-object v0

    goto :goto_2

    :cond_3
    move-object v1, v0

    goto :goto_3
.end method
