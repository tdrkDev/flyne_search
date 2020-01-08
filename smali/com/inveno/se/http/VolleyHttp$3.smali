.class Lcom/inveno/se/http/VolleyHttp$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/inveno/se/volley/Response$ErrorListener;


# instance fields
.field final synthetic this$0:Lcom/inveno/se/http/VolleyHttp;

.field final synthetic val$paramIRequestListener:Lcom/inveno/reportsdk/q;


# direct methods
.method constructor <init>(Lcom/inveno/se/http/VolleyHttp;Lcom/inveno/reportsdk/q;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/http/VolleyHttp$3;->this$0:Lcom/inveno/se/http/VolleyHttp;

    iput-object p2, p0, Lcom/inveno/se/http/VolleyHttp$3;->val$paramIRequestListener:Lcom/inveno/reportsdk/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/inveno/se/volley/VolleyError;)V
    .locals 2

    iget-object v0, p0, Lcom/inveno/se/http/VolleyHttp$3;->val$paramIRequestListener:Lcom/inveno/reportsdk/q;

    invoke-virtual {p1}, Lcom/inveno/se/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/inveno/reportsdk/q;->a(Ljava/lang/String;)V

    return-void
.end method
