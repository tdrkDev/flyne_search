.class public Lcom/inveno/se/adapi/http/AdProtoPostRequest;
.super Lcom/inveno/se/volley/Request;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/inveno/se/volley/Request",
        "<[B>;"
    }
.end annotation


# instance fields
.field private body:[B

.field private mListener:Lcom/inveno/se/volley/Response$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/inveno/se/volley/Response$Listener",
            "<[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/inveno/se/volley/Response$Listener;Lcom/inveno/se/volley/Response$ErrorListener;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/inveno/se/volley/Response$Listener",
            "<[B>;",
            "Lcom/inveno/se/volley/Response$ErrorListener;",
            "[B)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p3}, Lcom/inveno/se/volley/Request;-><init>(ILjava/lang/String;Lcom/inveno/se/volley/Response$ErrorListener;)V

    iput-object p4, p0, Lcom/inveno/se/adapi/http/AdProtoPostRequest;->body:[B

    iput-object p2, p0, Lcom/inveno/se/adapi/http/AdProtoPostRequest;->mListener:Lcom/inveno/se/volley/Response$Listener;

    return-void
.end method


# virtual methods
.method protected bridge synthetic deliverResponse(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/inveno/se/adapi/http/AdProtoPostRequest;->deliverResponse([B)V

    return-void
.end method

.method protected deliverResponse([B)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/inveno/se/adapi/http/AdProtoPostRequest;->mListener:Lcom/inveno/se/volley/Response$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inveno/se/adapi/http/AdProtoPostRequest;->mListener:Lcom/inveno/se/volley/Response$Listener;

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

    const-string v2, "e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLogA(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getBody()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inveno/se/volley/AuthFailureError;
        }
    .end annotation

    iget-object v0, p0, Lcom/inveno/se/adapi/http/AdProtoPostRequest;->body:[B

    return-object v0
.end method

.method public getBodyContentType()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/inveno/se/volley/Request;->getBodyContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected parseNetworkResponse(Lcom/inveno/se/volley/NetworkResponse;)Lcom/inveno/se/volley/Response;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inveno/se/volley/NetworkResponse;",
            ")",
            "Lcom/inveno/se/volley/Response",
            "<[B>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/inveno/se/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/inveno/se/volley/NetworkResponse;)Lcom/inveno/se/volley/Cache$Entry;

    move-result-object v0

    iget-object v1, p1, Lcom/inveno/se/volley/NetworkResponse;->data:[B

    invoke-static {v1, v0}, Lcom/inveno/se/volley/Response;->success(Ljava/lang/Object;Lcom/inveno/se/volley/Cache$Entry;)Lcom/inveno/se/volley/Response;

    move-result-object v0

    return-object v0
.end method
