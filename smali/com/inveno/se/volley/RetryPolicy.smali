.class public interface abstract Lcom/inveno/se/volley/RetryPolicy;
.super Ljava/lang/Object;


# virtual methods
.method public abstract getCurrentRetryCount()I
.end method

.method public abstract getCurrentTimeout()I
.end method

.method public abstract retry(Lcom/inveno/se/volley/VolleyError;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inveno/se/volley/VolleyError;
        }
    .end annotation
.end method
