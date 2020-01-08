.class Lcom/inveno/se/volley/toolbox/ImageLoader$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/inveno/se/volley/toolbox/ImageRequest$DoparseBitmapListener;


# instance fields
.field final synthetic this$0:Lcom/inveno/se/volley/toolbox/ImageLoader;


# direct methods
.method constructor <init>(Lcom/inveno/se/volley/toolbox/ImageLoader;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/volley/toolbox/ImageLoader$4;->this$0:Lcom/inveno/se/volley/toolbox/ImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doparseBitmapOptions(Landroid/graphics/BitmapFactory$Options;)V
    .locals 3

    const-string v0, "bitmap"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doparseBitmapOptions AndroidVersUtils.hasHoneycomb():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/inveno/se/tools/a;->a()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCache:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/inveno/se/volley/toolbox/ImageLoader$4;->this$0:Lcom/inveno/se/volley/toolbox/ImageLoader;

    invoke-static {v2}, Lcom/inveno/se/volley/toolbox/ImageLoader;->access$200(Lcom/inveno/se/volley/toolbox/ImageLoader;)Lcom/inveno/se/volley/toolbox/ImageLoader$ImageCache;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/inveno/se/tools/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    iget-object v0, p0, Lcom/inveno/se/volley/toolbox/ImageLoader$4;->this$0:Lcom/inveno/se/volley/toolbox/ImageLoader;

    invoke-static {v0}, Lcom/inveno/se/volley/toolbox/ImageLoader;->access$200(Lcom/inveno/se/volley/toolbox/ImageLoader;)Lcom/inveno/se/volley/toolbox/ImageLoader$ImageCache;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inveno/se/volley/toolbox/ImageLoader$4;->this$0:Lcom/inveno/se/volley/toolbox/ImageLoader;

    invoke-static {v0}, Lcom/inveno/se/volley/toolbox/ImageLoader;->access$200(Lcom/inveno/se/volley/toolbox/ImageLoader;)Lcom/inveno/se/volley/toolbox/ImageLoader$ImageCache;

    move-result-object v0

    check-cast v0, Lcom/inveno/se/volley/lrucache/LruBitmapCache;

    invoke-virtual {v0, p1}, Lcom/inveno/se/volley/lrucache/LruBitmapCache;->getBitmapFromReusableSet(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method
