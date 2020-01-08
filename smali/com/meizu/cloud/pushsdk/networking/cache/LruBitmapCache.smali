.class public Lcom/meizu/cloud/pushsdk/networking/cache/LruBitmapCache;
.super Lcom/meizu/cloud/pushsdk/networking/cache/LruCache;
.source "SourceFile"

# interfaces
.implements Lcom/meizu/cloud/pushsdk/networking/internal/ANImageLoader$ImageCache;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/meizu/cloud/pushsdk/networking/cache/LruCache",
        "<",
        "Ljava/lang/String;",
        "Landroid/graphics/Bitmap;",
        ">;",
        "Lcom/meizu/cloud/pushsdk/networking/internal/ANImageLoader$ImageCache;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/meizu/cloud/pushsdk/networking/cache/LruCache;-><init>(I)V

    .line 33
    return-void
.end method


# virtual methods
.method public evictAllBitmap()V
    .locals 0

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/networking/cache/LruBitmapCache;->evictAll()V

    .line 53
    return-void
.end method

.method public evictBitmap(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/meizu/cloud/pushsdk/networking/cache/LruBitmapCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    return-void
.end method

.method public getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/meizu/cloud/pushsdk/networking/cache/LruBitmapCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 57
    invoke-virtual {p0, p1, p2}, Lcom/meizu/cloud/pushsdk/networking/cache/LruBitmapCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    return-void
.end method

.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 28
    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/meizu/cloud/pushsdk/networking/cache/LruBitmapCache;->sizeOf(Ljava/lang/String;Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method protected sizeOf(Ljava/lang/String;Landroid/graphics/Bitmap;)I
    .locals 2

    .prologue
    .line 37
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method
