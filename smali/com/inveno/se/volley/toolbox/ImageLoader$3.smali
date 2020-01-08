.class Lcom/inveno/se/volley/toolbox/ImageLoader$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/inveno/se/volley/Response$ErrorListener;


# instance fields
.field final synthetic this$0:Lcom/inveno/se/volley/toolbox/ImageLoader;

.field final synthetic val$cacheKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/inveno/se/volley/toolbox/ImageLoader;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/volley/toolbox/ImageLoader$3;->this$0:Lcom/inveno/se/volley/toolbox/ImageLoader;

    iput-object p2, p0, Lcom/inveno/se/volley/toolbox/ImageLoader$3;->val$cacheKey:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/inveno/se/volley/VolleyError;)V
    .locals 2

    iget-object v0, p0, Lcom/inveno/se/volley/toolbox/ImageLoader$3;->this$0:Lcom/inveno/se/volley/toolbox/ImageLoader;

    iget-object v1, p0, Lcom/inveno/se/volley/toolbox/ImageLoader$3;->val$cacheKey:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/inveno/se/volley/toolbox/ImageLoader;->access$100(Lcom/inveno/se/volley/toolbox/ImageLoader;Ljava/lang/String;Lcom/inveno/se/volley/VolleyError;)V

    return-void
.end method
