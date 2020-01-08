.class public interface abstract Lcom/inveno/se/volley/toolbox/HttpStack;
.super Ljava/lang/Object;


# virtual methods
.method public abstract performRequest(Lcom/inveno/se/volley/Request;Ljava/util/Map;)Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inveno/se/volley/Request",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/http/HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/inveno/se/volley/AuthFailureError;
        }
    .end annotation
.end method
