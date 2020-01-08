.class Lcom/inveno/se/volley/toolbox/NetworkImageView$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/inveno/se/volley/toolbox/NetworkImageView$1;

.field final synthetic val$response:Lcom/inveno/se/volley/toolbox/ImageLoader$ImageContainer;


# direct methods
.method constructor <init>(Lcom/inveno/se/volley/toolbox/NetworkImageView$1;Lcom/inveno/se/volley/toolbox/ImageLoader$ImageContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/volley/toolbox/NetworkImageView$1$1;->this$1:Lcom/inveno/se/volley/toolbox/NetworkImageView$1;

    iput-object p2, p0, Lcom/inveno/se/volley/toolbox/NetworkImageView$1$1;->val$response:Lcom/inveno/se/volley/toolbox/ImageLoader$ImageContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/inveno/se/volley/toolbox/NetworkImageView$1$1;->this$1:Lcom/inveno/se/volley/toolbox/NetworkImageView$1;

    iget-object v1, p0, Lcom/inveno/se/volley/toolbox/NetworkImageView$1$1;->val$response:Lcom/inveno/se/volley/toolbox/ImageLoader$ImageContainer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/inveno/se/volley/toolbox/NetworkImageView$1;->onResponse(Lcom/inveno/se/volley/toolbox/ImageLoader$ImageContainer;Z)V

    return-void
.end method
