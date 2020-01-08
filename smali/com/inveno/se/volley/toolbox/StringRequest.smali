.class public Lcom/inveno/se/volley/toolbox/StringRequest;
.super Lcom/inveno/se/volley/Request;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/inveno/se/volley/Request",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final mListener:Lcom/inveno/se/volley/Response$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/inveno/se/volley/Response$Listener",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mMap:Ljava/util/Map;
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
.method public constructor <init>(ILjava/lang/String;Lcom/inveno/se/volley/Response$Listener;Lcom/inveno/se/volley/Response$ErrorListener;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/inveno/se/volley/Response$Listener",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/inveno/se/volley/Response$ErrorListener;",
            "Ljava/util/Map;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p4}, Lcom/inveno/se/volley/Request;-><init>(ILjava/lang/String;Lcom/inveno/se/volley/Response$ErrorListener;)V

    iput-object p3, p0, Lcom/inveno/se/volley/toolbox/StringRequest;->mListener:Lcom/inveno/se/volley/Response$Listener;

    iput-object p5, p0, Lcom/inveno/se/volley/toolbox/StringRequest;->mMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/inveno/se/volley/Response$Listener;Lcom/inveno/se/volley/Response$ErrorListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/inveno/se/volley/Response$Listener",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/inveno/se/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/inveno/se/volley/toolbox/StringRequest;-><init>(ILjava/lang/String;Lcom/inveno/se/volley/Response$Listener;Lcom/inveno/se/volley/Response$ErrorListener;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic deliverResponse(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/inveno/se/volley/toolbox/StringRequest;->deliverResponse(Ljava/lang/String;)V

    return-void
.end method

.method protected deliverResponse(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/volley/toolbox/StringRequest;->mListener:Lcom/inveno/se/volley/Response$Listener;

    invoke-interface {v0, p1}, Lcom/inveno/se/volley/Response$Listener;->onResponse(Ljava/lang/Object;)V

    return-void
.end method

.method public getHeaders()Ljava/util/Map;
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

    iget-object v0, p0, Lcom/inveno/se/volley/toolbox/StringRequest;->mMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inveno/se/volley/toolbox/StringRequest;->mMap:Ljava/util/Map;

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/inveno/se/volley/Request;->getHeaders()Ljava/util/Map;

    move-result-object v0

    goto :goto_0
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
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/inveno/se/volley/NetworkResponse;->data:[B

    iget-object v2, p1, Lcom/inveno/se/volley/NetworkResponse;->headers:Ljava/util/Map;

    invoke-static {v2}, Lcom/inveno/se/volley/toolbox/HttpHeaderParser;->parseCharset(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {p1}, Lcom/inveno/se/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/inveno/se/volley/NetworkResponse;)Lcom/inveno/se/volley/Cache$Entry;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inveno/se/volley/Response;->success(Ljava/lang/Object;Lcom/inveno/se/volley/Cache$Entry;)Lcom/inveno/se/volley/Response;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/inveno/se/volley/NetworkResponse;->data:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method
