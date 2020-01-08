.class public Lcom/inveno/se/volley/ExecutorDelivery;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/inveno/se/volley/ResponseDelivery;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inveno/se/volley/ExecutorDelivery$ResponseDeliveryRunnable;
    }
.end annotation


# instance fields
.field private final mResponsePoster:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/inveno/se/volley/ExecutorDelivery$1;

    invoke-direct {v0, p0, p1}, Lcom/inveno/se/volley/ExecutorDelivery$1;-><init>(Lcom/inveno/se/volley/ExecutorDelivery;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/inveno/se/volley/ExecutorDelivery;->mResponsePoster:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/inveno/se/volley/ExecutorDelivery;->mResponsePoster:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public postError(Lcom/inveno/se/volley/Request;Lcom/inveno/se/volley/VolleyError;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inveno/se/volley/Request",
            "<*>;",
            "Lcom/inveno/se/volley/VolleyError;",
            ")V"
        }
    .end annotation

    const-string v0, "post-error"

    invoke-virtual {p1, v0}, Lcom/inveno/se/volley/Request;->addMarker(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/inveno/se/volley/Response;->error(Lcom/inveno/se/volley/VolleyError;)Lcom/inveno/se/volley/Response;

    move-result-object v0

    iget-object v1, p0, Lcom/inveno/se/volley/ExecutorDelivery;->mResponsePoster:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/inveno/se/volley/ExecutorDelivery$ResponseDeliveryRunnable;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v0, v3}, Lcom/inveno/se/volley/ExecutorDelivery$ResponseDeliveryRunnable;-><init>(Lcom/inveno/se/volley/ExecutorDelivery;Lcom/inveno/se/volley/Request;Lcom/inveno/se/volley/Response;Ljava/lang/Runnable;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public postResponse(Lcom/inveno/se/volley/Request;Lcom/inveno/se/volley/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inveno/se/volley/Request",
            "<*>;",
            "Lcom/inveno/se/volley/Response",
            "<*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/inveno/se/volley/ExecutorDelivery;->postResponse(Lcom/inveno/se/volley/Request;Lcom/inveno/se/volley/Response;Ljava/lang/Runnable;)V

    return-void
.end method

.method public postResponse(Lcom/inveno/se/volley/Request;Lcom/inveno/se/volley/Response;Ljava/lang/Runnable;)V
    .locals 2
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

    invoke-virtual {p1}, Lcom/inveno/se/volley/Request;->markDelivered()V

    const-string v0, "post-response"

    invoke-virtual {p1, v0}, Lcom/inveno/se/volley/Request;->addMarker(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inveno/se/volley/ExecutorDelivery;->mResponsePoster:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/inveno/se/volley/ExecutorDelivery$ResponseDeliveryRunnable;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/inveno/se/volley/ExecutorDelivery$ResponseDeliveryRunnable;-><init>(Lcom/inveno/se/volley/ExecutorDelivery;Lcom/inveno/se/volley/Request;Lcom/inveno/se/volley/Response;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
