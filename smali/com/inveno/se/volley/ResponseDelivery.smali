.class public interface abstract Lcom/inveno/se/volley/ResponseDelivery;
.super Ljava/lang/Object;


# virtual methods
.method public abstract postError(Lcom/inveno/se/volley/Request;Lcom/inveno/se/volley/VolleyError;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inveno/se/volley/Request",
            "<*>;",
            "Lcom/inveno/se/volley/VolleyError;",
            ")V"
        }
    .end annotation
.end method

.method public abstract postResponse(Lcom/inveno/se/volley/Request;Lcom/inveno/se/volley/Response;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inveno/se/volley/Request",
            "<*>;",
            "Lcom/inveno/se/volley/Response",
            "<*>;)V"
        }
    .end annotation
.end method

.method public abstract postResponse(Lcom/inveno/se/volley/Request;Lcom/inveno/se/volley/Response;Ljava/lang/Runnable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inveno/se/volley/Request",
            "<*>;",
            "Lcom/inveno/se/volley/Response",
            "<*>;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation
.end method
