.class public Lcom/inveno/se/volley/toolbox/ImageLoader$ImageContainer;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inveno/se/volley/toolbox/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImageContainer"
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private final mCacheKey:Ljava/lang/String;

.field private final mListener:Lcom/inveno/se/volley/toolbox/ImageLoader$ImageListener;

.field private final mRequestUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/inveno/se/volley/toolbox/ImageLoader;


# direct methods
.method public constructor <init>(Lcom/inveno/se/volley/toolbox/ImageLoader;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lcom/inveno/se/volley/toolbox/ImageLoader$ImageListener;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/volley/toolbox/ImageLoader$ImageContainer;->this$0:Lcom/inveno/se/volley/toolbox/ImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/inveno/se/volley/toolbox/ImageLoader$ImageContainer;->mBitmap:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/inveno/se/volley/toolbox/ImageLoader$ImageContainer;->mRequestUrl:Ljava/lang/String;

    iput-object p4, p0, Lcom/inveno/se/volley/toolbox/ImageLoader$ImageContainer;->mCacheKey:Ljava/lang/String;

    iput-object p5, p0, Lcom/inveno/se/volley/toolbox/ImageLoader$ImageContainer;->mListener:Lcom/inveno/se/volley/toolbox/ImageLoader$ImageListener;

    return-void
.end method

.method static synthetic access$700(Lcom/inveno/se/volley/toolbox/ImageLoader$ImageContainer;)Lcom/inveno/se/volley/toolbox/ImageLoader$ImageListener;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/volley/toolbox/ImageLoader$ImageContainer;->mListener:Lcom/inveno/se/volley/toolbox/ImageLoader$ImageListener;

    return-object v0
.end method

.method static synthetic access$802(Lcom/inveno/se/volley/toolbox/ImageLoader$ImageContainer;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/volley/toolbox/ImageLoader$ImageContainer;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method


# virtual methods
.method public cancelRequest()V
    .locals 2

    iget-object v0, p0, Lcom/inveno/se/volley/toolbox/ImageLoader$ImageContainer;->mListener:Lcom/inveno/se/volley/toolbox/ImageLoader$ImageListener;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/inveno/se/volley/toolbox/ImageLoader$ImageContainer;->this$0:Lcom/inveno/se/volley/toolbox/ImageLoader;

    invoke-static {v0}, Lcom/inveno/se/volley/toolbox/ImageLoader;->access$400(Lcom/inveno/se/volley/toolbox/ImageLoader;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/inveno/se/volley/toolbox/ImageLoader$ImageContainer;->mCacheKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/se/volley/toolbox/ImageLoader$BatchedImageRequest;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Lcom/inveno/se/volley/toolbox/ImageLoader$BatchedImageRequest;->removeContainerAndCancelIfNecessary(Lcom/inveno/se/volley/toolbox/ImageLoader$ImageContainer;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inveno/se/volley/toolbox/ImageLoader$ImageContainer;->this$0:Lcom/inveno/se/volley/toolbox/ImageLoader;

    invoke-static {v0}, Lcom/inveno/se/volley/toolbox/ImageLoader;->access$400(Lcom/inveno/se/volley/toolbox/ImageLoader;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/inveno/se/volley/toolbox/ImageLoader$ImageContainer;->mCacheKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/inveno/se/volley/toolbox/ImageLoader$ImageContainer;->this$0:Lcom/inveno/se/volley/toolbox/ImageLoader;

    invoke-static {v0}, Lcom/inveno/se/volley/toolbox/ImageLoader;->access$500(Lcom/inveno/se/volley/toolbox/ImageLoader;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/inveno/se/volley/toolbox/ImageLoader$ImageContainer;->mCacheKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/se/volley/toolbox/ImageLoader$BatchedImageRequest;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/inveno/se/volley/toolbox/ImageLoader$BatchedImageRequest;->removeContainerAndCancelIfNecessary(Lcom/inveno/se/volley/toolbox/ImageLoader$ImageContainer;)Z

    invoke-static {v0}, Lcom/inveno/se/volley/toolbox/ImageLoader$BatchedImageRequest;->access$600(Lcom/inveno/se/volley/toolbox/ImageLoader$BatchedImageRequest;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/inveno/se/volley/toolbox/ImageLoader$ImageContainer;->this$0:Lcom/inveno/se/volley/toolbox/ImageLoader;

    invoke-static {v0}, Lcom/inveno/se/volley/toolbox/ImageLoader;->access$500(Lcom/inveno/se/volley/toolbox/ImageLoader;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/inveno/se/volley/toolbox/ImageLoader$ImageContainer;->mCacheKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/volley/toolbox/ImageLoader$ImageContainer;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getRequestUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/volley/toolbox/ImageLoader$ImageContainer;->mRequestUrl:Ljava/lang/String;

    return-object v0
.end method
