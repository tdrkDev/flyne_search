.class Lcom/inveno/se/volley/toolbox/NetworkImageView$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/inveno/se/volley/toolbox/ImageLoader$ImageListener;


# instance fields
.field final synthetic this$0:Lcom/inveno/se/volley/toolbox/NetworkImageView;

.field final synthetic val$isInLayoutPass:Z


# direct methods
.method constructor <init>(Lcom/inveno/se/volley/toolbox/NetworkImageView;Z)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/volley/toolbox/NetworkImageView$1;->this$0:Lcom/inveno/se/volley/toolbox/NetworkImageView;

    iput-boolean p2, p0, Lcom/inveno/se/volley/toolbox/NetworkImageView$1;->val$isInLayoutPass:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/inveno/se/volley/VolleyError;)V
    .locals 2

    iget-object v0, p0, Lcom/inveno/se/volley/toolbox/NetworkImageView$1;->this$0:Lcom/inveno/se/volley/toolbox/NetworkImageView;

    invoke-static {v0}, Lcom/inveno/se/volley/toolbox/NetworkImageView;->access$000(Lcom/inveno/se/volley/toolbox/NetworkImageView;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inveno/se/volley/toolbox/NetworkImageView$1;->this$0:Lcom/inveno/se/volley/toolbox/NetworkImageView;

    iget-object v1, p0, Lcom/inveno/se/volley/toolbox/NetworkImageView$1;->this$0:Lcom/inveno/se/volley/toolbox/NetworkImageView;

    invoke-static {v1}, Lcom/inveno/se/volley/toolbox/NetworkImageView;->access$000(Lcom/inveno/se/volley/toolbox/NetworkImageView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/inveno/se/volley/toolbox/NetworkImageView;->setImageResource(I)V

    :cond_0
    return-void
.end method

.method public onProgress(II)V
    .locals 0

    return-void
.end method

.method public onResponse(Lcom/inveno/se/volley/toolbox/ImageLoader$ImageContainer;Z)V
    .locals 3

    if-eqz p2, :cond_1

    iget-boolean v0, p0, Lcom/inveno/se/volley/toolbox/NetworkImageView$1;->val$isInLayoutPass:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inveno/se/volley/toolbox/NetworkImageView$1;->this$0:Lcom/inveno/se/volley/toolbox/NetworkImageView;

    new-instance v1, Lcom/inveno/se/volley/toolbox/NetworkImageView$1$1;

    invoke-direct {v1, p0, p1}, Lcom/inveno/se/volley/toolbox/NetworkImageView$1$1;-><init>(Lcom/inveno/se/volley/toolbox/NetworkImageView$1;Lcom/inveno/se/volley/toolbox/ImageLoader$ImageContainer;)V

    invoke-virtual {v0, v1}, Lcom/inveno/se/volley/toolbox/NetworkImageView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "bitmap"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "response  response bitmap:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/inveno/se/volley/toolbox/ImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/inveno/se/volley/toolbox/ImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/inveno/se/volley/toolbox/NetworkImageView$1;->this$0:Lcom/inveno/se/volley/toolbox/NetworkImageView;

    invoke-virtual {p1}, Lcom/inveno/se/volley/toolbox/ImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inveno/se/volley/toolbox/NetworkImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/inveno/se/volley/toolbox/NetworkImageView$1;->this$0:Lcom/inveno/se/volley/toolbox/NetworkImageView;

    invoke-static {v0}, Lcom/inveno/se/volley/toolbox/NetworkImageView;->access$100(Lcom/inveno/se/volley/toolbox/NetworkImageView;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inveno/se/volley/toolbox/NetworkImageView$1;->this$0:Lcom/inveno/se/volley/toolbox/NetworkImageView;

    iget-object v1, p0, Lcom/inveno/se/volley/toolbox/NetworkImageView$1;->this$0:Lcom/inveno/se/volley/toolbox/NetworkImageView;

    invoke-static {v1}, Lcom/inveno/se/volley/toolbox/NetworkImageView;->access$100(Lcom/inveno/se/volley/toolbox/NetworkImageView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/inveno/se/volley/toolbox/NetworkImageView;->setImageResource(I)V

    goto :goto_0
.end method
