.class public interface abstract Lcom/inveno/se/volley/Network;
.super Ljava/lang/Object;


# virtual methods
.method public abstract performRequest(Lcom/inveno/se/volley/Request;)Lcom/inveno/se/volley/NetworkResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inveno/se/volley/Request",
            "<*>;)",
            "Lcom/inveno/se/volley/NetworkResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inveno/se/volley/VolleyError;
        }
    .end annotation
.end method

.method public abstract process(JJ)V
.end method
