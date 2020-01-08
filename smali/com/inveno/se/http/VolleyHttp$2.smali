.class Lcom/inveno/se/http/VolleyHttp$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/inveno/se/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/inveno/se/volley/Response$Listener",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/inveno/se/http/VolleyHttp;

.field final synthetic val$paramIRequestListener:Lcom/inveno/reportsdk/q;


# direct methods
.method constructor <init>(Lcom/inveno/se/http/VolleyHttp;Lcom/inveno/reportsdk/q;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/http/VolleyHttp$2;->this$0:Lcom/inveno/se/http/VolleyHttp;

    iput-object p2, p0, Lcom/inveno/se/http/VolleyHttp$2;->val$paramIRequestListener:Lcom/inveno/reportsdk/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/inveno/se/http/VolleyHttp$2;->onResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONObject;)V
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/http/VolleyHttp$2;->val$paramIRequestListener:Lcom/inveno/reportsdk/q;

    invoke-interface {v0, p1}, Lcom/inveno/reportsdk/q;->a(Lorg/json/JSONObject;)V

    return-void
.end method
