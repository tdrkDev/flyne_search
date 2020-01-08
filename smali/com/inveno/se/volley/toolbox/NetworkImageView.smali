.class public Lcom/inveno/se/volley/toolbox/NetworkImageView;
.super Landroid/widget/ImageView;


# instance fields
.field private mDefaultImageId:I

.field private mErrorImageId:I

.field private mImageContainer:Lcom/inveno/se/volley/toolbox/ImageLoader$ImageContainer;

.field private mImageLoader:Lcom/inveno/se/volley/toolbox/ImageLoader;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/inveno/se/volley/toolbox/NetworkImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/inveno/se/volley/toolbox/NetworkImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/inveno/se/volley/toolbox/NetworkImageView;)I
    .locals 1

    iget v0, p0, Lcom/inveno/se/volley/toolbox/NetworkImageView;->mErrorImageId:I

    return v0
.end method

.method static synthetic access$100(Lcom/inveno/se/volley/toolbox/NetworkImageView;)I
    .locals 1

    iget v0, p0, Lcom/inveno/se/volley/toolbox/NetworkImageView;->mDefaultImageId:I

    return v0
.end method

.method private loadImageIfNecessary(Z)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/inveno/se/volley/toolbox/NetworkImageView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/inveno/se/volley/toolbox/NetworkImageView;->getHeight()I

    move-result v1

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/inveno/se/volley/toolbox/NetworkImageView;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/inveno/se/volley/toolbox/NetworkImageView;->mImageContainer:Lcom/inveno/se/volley/toolbox/ImageLoader$ImageContainer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inveno/se/volley/toolbox/NetworkImageView;->mImageContainer:Lcom/inveno/se/volley/toolbox/ImageLoader$ImageContainer;

    invoke-virtual {v0}, Lcom/inveno/se/volley/toolbox/ImageLoader$ImageContainer;->cancelRequest()V

    iput-object v2, p0, Lcom/inveno/se/volley/toolbox/NetworkImageView;->mImageContainer:Lcom/inveno/se/volley/toolbox/ImageLoader$ImageContainer;

    :cond_1
    invoke-virtual {p0, v2}, Lcom/inveno/se/volley/toolbox/NetworkImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/inveno/se/volley/toolbox/NetworkImageView;->mImageContainer:Lcom/inveno/se/volley/toolbox/ImageLoader$ImageContainer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/inveno/se/volley/toolbox/NetworkImageView;->mImageContainer:Lcom/inveno/se/volley/toolbox/ImageLoader$ImageContainer;

    invoke-virtual {v0}, Lcom/inveno/se/volley/toolbox/ImageLoader$ImageContainer;->getRequestUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/inveno/se/volley/toolbox/NetworkImageView;->mImageContainer:Lcom/inveno/se/volley/toolbox/ImageLoader$ImageContainer;

    invoke-virtual {v0}, Lcom/inveno/se/volley/toolbox/ImageLoader$ImageContainer;->getRequestUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/inveno/se/volley/toolbox/NetworkImageView;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "bitmap"

    const-string v1, "equals"

    invoke-static {v0, v1}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inveno/se/volley/toolbox/NetworkImageView;->mImageContainer:Lcom/inveno/se/volley/toolbox/ImageLoader$ImageContainer;

    invoke-virtual {v0}, Lcom/inveno/se/volley/toolbox/ImageLoader$ImageContainer;->cancelRequest()V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/inveno/se/volley/toolbox/NetworkImageView;->mImageLoader:Lcom/inveno/se/volley/toolbox/ImageLoader;

    iget-object v1, p0, Lcom/inveno/se/volley/toolbox/NetworkImageView;->mUrl:Ljava/lang/String;

    new-instance v2, Lcom/inveno/se/volley/toolbox/NetworkImageView$1;

    invoke-direct {v2, p0, p1}, Lcom/inveno/se/volley/toolbox/NetworkImageView$1;-><init>(Lcom/inveno/se/volley/toolbox/NetworkImageView;Z)V

    invoke-virtual {v0, v1, v2}, Lcom/inveno/se/volley/toolbox/ImageLoader;->get(Ljava/lang/String;Lcom/inveno/se/volley/toolbox/ImageLoader$ImageListener;)Lcom/inveno/se/volley/toolbox/ImageLoader$ImageContainer;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/se/volley/toolbox/NetworkImageView;->mImageContainer:Lcom/inveno/se/volley/toolbox/ImageLoader$ImageContainer;

    goto :goto_0

    :cond_4
    const-string v0, "bitmap"

    const-string v1, "cancelRequest"

    invoke-static {v0, v1}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inveno/se/volley/toolbox/NetworkImageView;->mImageContainer:Lcom/inveno/se/volley/toolbox/ImageLoader$ImageContainer;

    invoke-virtual {v0}, Lcom/inveno/se/volley/toolbox/ImageLoader$ImageContainer;->cancelRequest()V

    invoke-virtual {p0, v2}, Lcom/inveno/se/volley/toolbox/NetworkImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 0

    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    invoke-virtual {p0}, Lcom/inveno/se/volley/toolbox/NetworkImageView;->invalidate()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/inveno/se/volley/toolbox/NetworkImageView;->mImageContainer:Lcom/inveno/se/volley/toolbox/ImageLoader$ImageContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inveno/se/volley/toolbox/NetworkImageView;->mImageContainer:Lcom/inveno/se/volley/toolbox/ImageLoader$ImageContainer;

    invoke-virtual {v0}, Lcom/inveno/se/volley/toolbox/ImageLoader$ImageContainer;->cancelRequest()V

    invoke-virtual {p0, v1}, Lcom/inveno/se/volley/toolbox/NetworkImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/inveno/se/volley/toolbox/NetworkImageView;->mImageContainer:Lcom/inveno/se/volley/toolbox/ImageLoader$ImageContainer;

    :cond_0
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/inveno/se/volley/toolbox/NetworkImageView;->loadImageIfNecessary(Z)V

    return-void
.end method

.method public setDefaultImageResId(I)V
    .locals 0

    iput p1, p0, Lcom/inveno/se/volley/toolbox/NetworkImageView;->mDefaultImageId:I

    return-void
.end method

.method public setErrorImageResId(I)V
    .locals 0

    iput p1, p0, Lcom/inveno/se/volley/toolbox/NetworkImageView;->mErrorImageId:I

    return-void
.end method

.method public setImageUrl(Ljava/lang/String;Lcom/inveno/se/volley/toolbox/ImageLoader;)V
    .locals 1

    iput-object p1, p0, Lcom/inveno/se/volley/toolbox/NetworkImageView;->mUrl:Ljava/lang/String;

    iput-object p2, p0, Lcom/inveno/se/volley/toolbox/NetworkImageView;->mImageLoader:Lcom/inveno/se/volley/toolbox/ImageLoader;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/inveno/se/volley/toolbox/NetworkImageView;->loadImageIfNecessary(Z)V

    return-void
.end method
