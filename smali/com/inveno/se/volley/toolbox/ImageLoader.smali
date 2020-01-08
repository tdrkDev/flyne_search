.class public Lcom/inveno/se/volley/toolbox/ImageLoader;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inveno/se/volley/toolbox/ImageLoader$BatchedImageRequest;,
        Lcom/inveno/se/volley/toolbox/ImageLoader$ImageContainer;,
        Lcom/inveno/se/volley/toolbox/ImageLoader$ImageListener;,
        Lcom/inveno/se/volley/toolbox/ImageLoader$ImageCache;
    }
.end annotation


# instance fields
.field private mBatchResponseDelayMs:I

.field private final mBatchedResponses:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/inveno/se/volley/toolbox/ImageLoader$BatchedImageRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mCache:Lcom/inveno/se/volley/toolbox/ImageLoader$ImageCache;

.field private final mHandler:Landroid/os/Handler;

.field private final mInFlightRequests:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/inveno/se/volley/toolbox/ImageLoader$BatchedImageRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mRequestQueue:Lcom/inveno/se/volley/RequestQueue;

.field private mRunnable:Ljava/lang/Runnable;

.field private saveToSD:Z


# direct methods
.method public constructor <init>(Lcom/inveno/se/volley/RequestQueue;Lcom/inveno/se/volley/toolbox/ImageLoader$ImageCache;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    iput v0, p0, Lcom/inveno/se/volley/toolbox/ImageLoader;->mBatchResponseDelayMs:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/inveno/se/volley/toolbox/ImageLoader;->mInFlightRequests:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/inveno/se/volley/toolbox/ImageLoader;->mBatchedResponses:Ljava/util/HashMap;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/inveno/se/volley/toolbox/ImageLoader;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/inveno/se/volley/toolbox/ImageLoader;->mRequestQueue:Lcom/inveno/se/volley/RequestQueue;

    iput-object p2, p0, Lcom/inveno/se/volley/toolbox/ImageLoader;->mCache:Lcom/inveno/se/volley/toolbox/ImageLoader$ImageCache;

    return-void
.end method

.method static synthetic access$000(Lcom/inveno/se/volley/toolbox/ImageLoader;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/inveno/se/volley/toolbox/ImageLoader;->onGetImageSuccess(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$100(Lcom/inveno/se/volley/toolbox/ImageLoader;Ljava/lang/String;Lcom/inveno/se/volley/VolleyError;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/inveno/se/volley/toolbox/ImageLoader;->onGetImageError(Ljava/lang/String;Lcom/inveno/se/volley/VolleyError;)V

    return-void
.end method

.method static synthetic access$200(Lcom/inveno/se/volley/toolbox/ImageLoader;)Lcom/inveno/se/volley/toolbox/ImageLoader$ImageCache;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/volley/toolbox/ImageLoader;->mCache:Lcom/inveno/se/volley/toolbox/ImageLoader$ImageCache;

    return-object v0
.end method

.method static synthetic access$400(Lcom/inveno/se/volley/toolbox/ImageLoader;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/volley/toolbox/ImageLoader;->mInFlightRequests:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/inveno/se/volley/toolbox/ImageLoader;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/volley/toolbox/ImageLoader;->mBatchedResponses:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$902(Lcom/inveno/se/volley/toolbox/ImageLoader;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/volley/toolbox/ImageLoader;->mRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method private batchResponse(Ljava/lang/String;Lcom/inveno/se/volley/toolbox/ImageLoader$BatchedImageRequest;Lcom/inveno/se/volley/VolleyError;)V
    .locals 4

    iget-object v0, p0, Lcom/inveno/se/volley/toolbox/ImageLoader;->mBatchedResponses:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/inveno/se/volley/toolbox/ImageLoader;->mRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    new-instance v0, Lcom/inveno/se/volley/toolbox/ImageLoader$5;

    invoke-direct {v0, p0, p3}, Lcom/inveno/se/volley/toolbox/ImageLoader$5;-><init>(Lcom/inveno/se/volley/toolbox/ImageLoader;Lcom/inveno/se/volley/VolleyError;)V

    iput-object v0, p0, Lcom/inveno/se/volley/toolbox/ImageLoader;->mRunnable:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/inveno/se/volley/toolbox/ImageLoader;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/inveno/se/volley/toolbox/ImageLoader;->mRunnable:Ljava/lang/Runnable;

    iget v2, p0, Lcom/inveno/se/volley/toolbox/ImageLoader;->mBatchResponseDelayMs:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public static getCacheKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/inveno/se/tools/GetFileMD5;->getMD5Str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCacheKey(Ljava/lang/String;II)Ljava/lang/String;
    .locals 0

    return-object p0
.end method

.method public static getImageListener(Landroid/widget/ImageView;II)Lcom/inveno/se/volley/toolbox/ImageLoader$ImageListener;
    .locals 1

    new-instance v0, Lcom/inveno/se/volley/toolbox/ImageLoader$1;

    invoke-direct {v0, p2, p0, p1}, Lcom/inveno/se/volley/toolbox/ImageLoader$1;-><init>(ILandroid/widget/ImageView;I)V

    return-object v0
.end method

.method private onGetImageError(Ljava/lang/String;Lcom/inveno/se/volley/VolleyError;)V
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/volley/toolbox/ImageLoader;->mInFlightRequests:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/se/volley/toolbox/ImageLoader$BatchedImageRequest;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, v0, p2}, Lcom/inveno/se/volley/toolbox/ImageLoader;->batchResponse(Ljava/lang/String;Lcom/inveno/se/volley/toolbox/ImageLoader$BatchedImageRequest;Lcom/inveno/se/volley/VolleyError;)V

    :cond_0
    return-void
.end method

.method private onGetImageSuccess(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lcom/inveno/se/volley/toolbox/ImageLoader;->mCache:Lcom/inveno/se/volley/toolbox/ImageLoader$ImageCache;

    new-instance v1, Lcom/inveno/se/volley/lrucache/RecyclingBitmapDrawable;

    invoke-direct {v1, p2}, Lcom/inveno/se/volley/lrucache/RecyclingBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-interface {v0, p1, v1}, Lcom/inveno/se/volley/toolbox/ImageLoader$ImageCache;->putBitmap(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)V

    iget-object v0, p0, Lcom/inveno/se/volley/toolbox/ImageLoader;->mInFlightRequests:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/se/volley/toolbox/ImageLoader$BatchedImageRequest;

    if-eqz v0, :cond_0

    invoke-static {v0, p2}, Lcom/inveno/se/volley/toolbox/ImageLoader$BatchedImageRequest;->access$302(Lcom/inveno/se/volley/toolbox/ImageLoader$BatchedImageRequest;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/inveno/se/volley/toolbox/ImageLoader;->batchResponse(Ljava/lang/String;Lcom/inveno/se/volley/toolbox/ImageLoader$BatchedImageRequest;Lcom/inveno/se/volley/VolleyError;)V

    :cond_0
    return-void
.end method

.method private throwIfNotOnMainThread()V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ImageLoader must be invoked from the main thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public cancelBitmapRequest(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lcom/inveno/se/volley/toolbox/ImageLoader;->getCacheKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/inveno/se/volley/toolbox/ImageLoader;->mInFlightRequests:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/inveno/se/volley/toolbox/ImageLoader;->mInFlightRequests:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/inveno/se/volley/toolbox/ImageLoader;->mInFlightRequests:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/se/volley/toolbox/ImageLoader$BatchedImageRequest;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/inveno/se/volley/toolbox/ImageLoader$BatchedImageRequest;->removeAndStop()V

    :cond_0
    return-void
.end method

.method public clearImageCache()V
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/volley/toolbox/ImageLoader;->mCache:Lcom/inveno/se/volley/toolbox/ImageLoader$ImageCache;

    invoke-interface {v0}, Lcom/inveno/se/volley/toolbox/ImageLoader$ImageCache;->clearCache()V

    return-void
.end method

.method public get(Ljava/lang/String;Lcom/inveno/se/volley/toolbox/ImageLoader$ImageListener;)Lcom/inveno/se/volley/toolbox/ImageLoader$ImageContainer;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/inveno/se/volley/toolbox/ImageLoader;->get(Ljava/lang/String;Lcom/inveno/se/volley/toolbox/ImageLoader$ImageListener;II)Lcom/inveno/se/volley/toolbox/ImageLoader$ImageContainer;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;Lcom/inveno/se/volley/toolbox/ImageLoader$ImageListener;II)Lcom/inveno/se/volley/toolbox/ImageLoader$ImageContainer;
    .locals 16

    invoke-direct/range {p0 .. p0}, Lcom/inveno/se/volley/toolbox/ImageLoader;->throwIfNotOnMainThread()V

    move-object/from16 v0, p1

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-static {v0, v1, v2}, Lcom/inveno/se/volley/toolbox/ImageLoader;->getCacheKey(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v7

    const-string v3, "bitmap"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "requestUrl:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " cacheKey:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, Lcom/inveno/se/tools/StringTools;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lcom/inveno/se/volley/toolbox/ImageLoader$ImageContainer;

    const/4 v5, 0x0

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    move-object/from16 v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/inveno/se/volley/toolbox/ImageLoader$ImageContainer;-><init>(Lcom/inveno/se/volley/toolbox/ImageLoader;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lcom/inveno/se/volley/toolbox/ImageLoader$ImageListener;)V

    const/4 v4, 0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v3, v4}, Lcom/inveno/se/volley/toolbox/ImageLoader$ImageListener;->onResponse(Lcom/inveno/se/volley/toolbox/ImageLoader$ImageContainer;Z)V

    :goto_0
    return-object v3

    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/inveno/se/volley/toolbox/ImageLoader;->mCache:Lcom/inveno/se/volley/toolbox/ImageLoader$ImageCache;

    invoke-interface {v3, v7}, Lcom/inveno/se/volley/toolbox/ImageLoader$ImageCache;->getBitmap(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_1

    new-instance v3, Lcom/inveno/se/volley/toolbox/ImageLoader$ImageContainer;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    invoke-direct/range {v3 .. v8}, Lcom/inveno/se/volley/toolbox/ImageLoader$ImageContainer;-><init>(Lcom/inveno/se/volley/toolbox/ImageLoader;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lcom/inveno/se/volley/toolbox/ImageLoader$ImageListener;)V

    const/4 v4, 0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v3, v4}, Lcom/inveno/se/volley/toolbox/ImageLoader$ImageListener;->onResponse(Lcom/inveno/se/volley/toolbox/ImageLoader$ImageContainer;Z)V

    goto :goto_0

    :cond_1
    new-instance v3, Lcom/inveno/se/volley/toolbox/ImageLoader$ImageContainer;

    const/4 v5, 0x0

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    move-object/from16 v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/inveno/se/volley/toolbox/ImageLoader$ImageContainer;-><init>(Lcom/inveno/se/volley/toolbox/ImageLoader;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lcom/inveno/se/volley/toolbox/ImageLoader$ImageListener;)V

    const/4 v4, 0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v3, v4}, Lcom/inveno/se/volley/toolbox/ImageLoader$ImageListener;->onResponse(Lcom/inveno/se/volley/toolbox/ImageLoader$ImageContainer;Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/inveno/se/volley/toolbox/ImageLoader;->mInFlightRequests:Ljava/util/HashMap;

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/inveno/se/volley/toolbox/ImageLoader$BatchedImageRequest;

    if-eqz v4, :cond_2

    invoke-virtual {v4, v3}, Lcom/inveno/se/volley/toolbox/ImageLoader$BatchedImageRequest;->addContainer(Lcom/inveno/se/volley/toolbox/ImageLoader$ImageContainer;)V

    goto :goto_0

    :cond_2
    new-instance v8, Lcom/inveno/se/volley/toolbox/ImageRequest;

    new-instance v10, Lcom/inveno/se/volley/toolbox/ImageLoader$2;

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v7}, Lcom/inveno/se/volley/toolbox/ImageLoader$2;-><init>(Lcom/inveno/se/volley/toolbox/ImageLoader;Ljava/lang/String;)V

    sget-object v13, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    new-instance v14, Lcom/inveno/se/volley/toolbox/ImageLoader$3;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v7}, Lcom/inveno/se/volley/toolbox/ImageLoader$3;-><init>(Lcom/inveno/se/volley/toolbox/ImageLoader;Ljava/lang/String;)V

    new-instance v15, Lcom/inveno/se/volley/toolbox/ImageLoader$4;

    invoke-direct/range {v15 .. v16}, Lcom/inveno/se/volley/toolbox/ImageLoader$4;-><init>(Lcom/inveno/se/volley/toolbox/ImageLoader;)V

    move-object/from16 v9, p1

    move/from16 v11, p3

    move/from16 v12, p4

    invoke-direct/range {v8 .. v15}, Lcom/inveno/se/volley/toolbox/ImageRequest;-><init>(Ljava/lang/String;Lcom/inveno/se/volley/Response$Listener;IILandroid/graphics/Bitmap$Config;Lcom/inveno/se/volley/Response$ErrorListener;Lcom/inveno/se/volley/toolbox/ImageRequest$DoparseBitmapListener;)V

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/inveno/se/volley/toolbox/ImageLoader;->saveToSD:Z

    invoke-virtual {v8, v4}, Lcom/inveno/se/volley/Request;->setShouldCache(Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/inveno/se/volley/toolbox/ImageLoader;->mRequestQueue:Lcom/inveno/se/volley/RequestQueue;

    invoke-virtual {v4, v8}, Lcom/inveno/se/volley/RequestQueue;->add(Lcom/inveno/se/volley/Request;)Lcom/inveno/se/volley/Request;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/inveno/se/volley/toolbox/ImageLoader;->mInFlightRequests:Ljava/util/HashMap;

    new-instance v5, Lcom/inveno/se/volley/toolbox/ImageLoader$BatchedImageRequest;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v8, v3}, Lcom/inveno/se/volley/toolbox/ImageLoader$BatchedImageRequest;-><init>(Lcom/inveno/se/volley/toolbox/ImageLoader;Lcom/inveno/se/volley/Request;Lcom/inveno/se/volley/toolbox/ImageLoader$ImageContainer;)V

    invoke-virtual {v4, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method public isCached(Ljava/lang/String;II)Z
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/inveno/se/volley/toolbox/ImageLoader;->throwIfNotOnMainThread()V

    invoke-static {p1, p2, p3}, Lcom/inveno/se/volley/toolbox/ImageLoader;->getCacheKey(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inveno/se/tools/StringTools;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/inveno/se/volley/toolbox/ImageLoader;->mCache:Lcom/inveno/se/volley/toolbox/ImageLoader$ImageCache;

    invoke-interface {v2, v1}, Lcom/inveno/se/volley/toolbox/ImageLoader$ImageCache;->getBitmap(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setBatchedResponseDelay(I)V
    .locals 0

    iput p1, p0, Lcom/inveno/se/volley/toolbox/ImageLoader;->mBatchResponseDelayMs:I

    return-void
.end method

.method public setSaveToSD(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/inveno/se/volley/toolbox/ImageLoader;->saveToSD:Z

    return-void
.end method
