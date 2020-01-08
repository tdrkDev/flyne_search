.class public Lcom/meizu/cloud/pushsdk/networking/internal/ANImageLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/cloud/pushsdk/networking/internal/ANImageLoader$BatchedImageRequest;,
        Lcom/meizu/cloud/pushsdk/networking/internal/ANImageLoader$ImageContainer;,
        Lcom/meizu/cloud/pushsdk/networking/internal/ANImageLoader$ImageListener;,
        Lcom/meizu/cloud/pushsdk/networking/internal/ANImageLoader$ImageCache;
    }
.end annotation


# static fields
.field private static final cacheSize:I

.field private static final maxMemory:I

.field private static sInstance:Lcom/meizu/cloud/pushsdk/networking/internal/ANImageLoader;


# instance fields
.field private mBatchResponseDelayMs:I

.field private final mBatchedResponses:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/meizu/cloud/pushsdk/networking/internal/ANImageLoader$BatchedImageRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mCache:Lcom/meizu/cloud/pushsdk/networking/internal/ANImageLoader$ImageCache;

.field private final mHandler:Landroid/os/Handler;

.field private final mInFlightRequests:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/meizu/cloud/pushsdk/networking/internal/ANImageLoader$BatchedImageRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 43
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    long-to-int v0, v0

    sput v0, Lcom/meizu/cloud/pushsdk/networking/internal/ANImageLoader;->maxMemory:I

    .line 46
    sget v0, Lcom/meizu/cloud/pushsdk/networking/internal/ANImageLoader;->maxMemory:I

    div-int/lit8 v0, v0, 0x8

    sput v0, Lcom/meizu/cloud/pushsdk/networking/internal/ANImageLoader;->cacheSize:I

    return-void
.end method

.method public constructor <init>(Lcom/meizu/cloud/pushsdk/networking/internal/ANImageLoader$ImageCache;)V
    .locals 2

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/16 v0, 0x64

    iput v0, p0, Lcom/meizu/cloud/pushsdk/networking/internal/ANImageLoader;->mBatchResponseDelayMs:I

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/internal/ANImageLoader;->mInFlightRequests:Ljava/util/HashMap;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/internal/ANImageLoader;->mBatchedResponses:Ljava/util/HashMap;

    .line 58
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/internal/ANImageLoader;->mHandler:Landroid/os/Handler;

    .line 90
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/networking/internal/ANImageLoader;->mCache:Lcom/meizu/cloud/pushsdk/networking/internal/ANImageLoader$ImageCache;

    .line 91
    return-void
.end method

.method static synthetic access$100(Lcom/meizu/cloud/pushsdk/networking/internal/ANImageLoader;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/internal/ANImageLoader;->mInFlightRequests:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/meizu/cloud/pushsdk/networking/internal/ANImageLoader;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/internal/ANImageLoader;->mBatchedResponses:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$602(Lcom/meizu/cloud/pushsdk/networking/internal/ANImageLoader;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/networking/internal/ANImageLoader;->mRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method private batchResponse(Ljava/lang/String;Lcom/meizu/cloud/pushsdk/networking/internal/ANImageLoader$BatchedImageRequest;)V
    .locals 4

    .prologue
    .line 326
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/internal/ANImageLoader;->mBatchedResponses:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/internal/ANImageLoader;->mRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 328
    new-instance v0, Lcom/meizu/cloud/pushsdk/networking/internal/ANImageLoader$3;

    invoke-direct {v0, p0}, Lcom/meizu/cloud/pushsdk/networking/internal/ANImageLoader$3;-><init>(Lcom/meizu/cloud/pushsdk/networking/internal/ANImageLoader;)V

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/internal/ANImageLoader;->mRunnable:Ljava/lang/Runnable;

    .line 349
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/internal/ANImageLoader;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/internal/ANImageLoader;->mRunnable:Ljava/lang/Runnable;

    iget v2, p0, Lcom/meizu/cloud/pushsdk/networking/internal/ANImageLoader;->mBatchResponseDelayMs:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 351
    :cond_0
    return-void
.end method

.method private static getCacheKey(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0xc

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "#W"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#H"

    .line 362
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#S"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 363
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 361
    return-object v0
.end method

.method public static getImageListener(Landroid/widget/ImageView;II)Lcom/meizu/cloud/pushsdk/networking/internal/ANImageLoader$ImageListener;
    .locals 1

    .prologue
    .line 100
    new-instance v0, Lcom/meizu/cloud/pushsdk/networking/internal/ANImageLoader$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/meizu/cloud/pushsdk/networking/internal/ANImageLoader$1;-><init>(Landroid/widget/ImageView;II)V

    return-object v0
.end method

.method public static getInstance()Lcom/meizu/cloud/pushsdk/networking/internal/ANImageLoader;
    .locals 4

    .prologue
    .line 69
    sget-object v0, Lcom/meizu/cloud/pushsdk/networking/internal/ANImageLoader;->sInstance:Lcom/meizu/cloud/pushsdk/networking/internal/ANImageLoader;

    if-nez v0, :cond_1

    .line 70
    const-class v1, Lcom/meizu/cloud/pushsdk/networking/internal/ANImageLoader;

    monitor-enter v1

    .line 71
    :try_start_0
    sget-object v0, Lcom/meizu/cloud/pushsdk/networking/internal/ANImageLoader;->sInstance:Lcom/meizu/cloud/pushsdk/networking/internal/ANImageLoader;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lcom/meizu/cloud/pushsdk/networking/internal/ANImageLoader;

    new-instance v2, Lcom/meizu/cloud/pushsdk/networking/cache/LruBitmapCache;

    sget v3, Lcom/meizu/cloud/pushsdk/networking/internal/ANImageLoader;->cacheSize:I

    invoke-direct {v2, v3}, Lcom/meizu/cloud/pushsdk/networking/cache/LruBitmapCache;-><init>(I)V

    invoke-direct {v0, v2}, Lcom/meizu/cloud/pushsdk/networking/internal/ANImageLoader;-><init>(Lcom/meizu/cloud/pushsdk/networking/internal/ANImageLoader$ImageCache;)V

    sput-object v0, Lcom/meizu/cloud/pushsdk/networking/internal/ANImageLoader;->sInstance:Lcom/meizu/cloud/pushsdk/networking/internal/ANImageLoader;

    .line 74
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    :cond_1
    sget-object v0, Lcom/meizu/cloud/pushsdk/networking/internal/ANImageLoader;->sInstance:Lcom/meizu/cloud/pushsdk/networking/internal/ANImageLoader;

    return-object v0

    .line 74
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static initialize()V
    .locals 0

    .prologue
    .line 65
    invoke-static {}, Lcom/meizu/cloud/pushsdk/networking/internal/ANImageLoader;->getInstance()Lcom/meizu/cloud/pushsdk/networking/internal/ANImageLoader;

    .line 66
    return-void
.end method

.method private throwIfNotOnMainThread()V
    .locals 2

    .prologue
    .line 354
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 355
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ImageLoader must be invoked from the main thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 357
    :cond_0
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;Lcom/meizu/cloud/pushsdk/networking/internal/ANImageLoader$ImageListener;)Lcom/meizu/cloud/pushsdk/networking/internal/ANImageLoader$ImageContainer;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 139
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/meizu/cloud/pushsdk/networking/internal/ANImageLoader;->get(Ljava/lang/String;Lcom/meizu/cloud/pushsdk/networking/internal/ANImageLoader$ImageListener;II)Lcom/meizu/cloud/pushsdk/networking/internal/ANImageLoader$ImageContainer;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;Lcom/meizu/cloud/pushsdk/networking/internal/ANImageLoader$ImageListener;II)Lcom/meizu/cloud/pushsdk/networking/internal/ANImageLoader$ImageContainer;
    .locals 6

    .prologue
    .line 145
    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/cloud/pushsdk/networking/internal/ANImageLoader;->get(Ljava/lang/String;Lcom/meizu/cloud/pushsdk/networking/internal/ANImageLoader$ImageListener;IILandroid/widget/ImageView$ScaleType;)Lcom/meizu/cloud/pushsdk/networking/internal/ANImageLoader$ImageContainer;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;Lcom/meizu/cloud/pushsdk/networking/internal/ANImageLoader$ImageListener;IILandroid/widget/ImageView$ScaleType;)Lcom/meizu/cloud/pushsdk/networking/internal/ANImageLoader$ImageContainer;
    .locals 14

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/meizu/cloud/pushsdk/networking/internal/ANImageLoader;->throwIfNotOnMainThread()V

    .line 154
    move/from16 v0, p3

    move/from16 v1, p4

    move-object/from16 v2, p5

    invoke-static {p1, v0, v1, v2}, Lcom/meizu/cloud/pushsdk/networking/internal/ANImageLoader;->getCacheKey(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;)Ljava/lang/String;

    move-result-object v7

    .line 156
    iget-object v3, p0, Lcom/meizu/cloud/pushsdk/networking/internal/ANImageLoader;->mCache:Lcom/meizu/cloud/pushsdk/networking/internal/ANImageLoader$ImageCache;

    invoke-interface {v3, v7}, Lcom/meizu/cloud/pushsdk/networking/internal/ANImageLoader$ImageCache;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 157
    if-eqz v5, :cond_0

    .line 158
    new-instance v3, Lcom/meizu/cloud/pushsdk/networking/internal/ANImageLoader$ImageContainer;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p0

    move-object v6, p1

    invoke-direct/range {v3 .. v8}, Lcom/meizu/cloud/pushsdk/networking/internal/ANImageLoader$ImageContainer;-><init>(Lcom/meizu/cloud/pushsdk/networking/internal/ANImageLoader;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lcom/meizu/cloud/pushsdk/networking/internal/ANImageLoader$ImageListener;)V

    .line 159
    const/4 v4, 0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v3, v4}, Lcom/meizu/cloud/pushsdk/networking/internal/ANImageLoader$ImageListener;->onResponse(Lcom/meizu/cloud/pushsdk/networking/internal/ANImageLoader$ImageContainer;Z)V

    .line 179
    :goto_0
    return-object v3

    .line 163
    :cond_0
    new-instance v3, Lcom/meizu/cloud/pushsdk/networking/internal/ANImageLoader$ImageContainer;

    const/4 v5, 0x0

    move-object v4, p0

    move-object v6, p1

    move-object/from16 v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/meizu/cloud/pushsdk/networking/internal/ANImageLoader$ImageContainer;-><init>(Lcom/meizu/cloud/pushsdk/networking/internal/ANImageLoader;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lcom/meizu/cloud/pushsdk/networking/internal/ANImageLoader$ImageListener;)V

    .line 166
    const/4 v4, 0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v3, v4}, Lcom/meizu/cloud/pushsdk/networking/internal/ANImageLoader$ImageListener;->onResponse(Lcom/meizu/cloud/pushsdk/networking/internal/ANImageLoader$ImageContainer;Z)V

    .line 168
    iget-object v4, p0, Lcom/meizu/cloud/pushsdk/networking/internal/ANImageLoader;->mInFlightRequests:Ljava/util/HashMap;

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meizu/cloud/pushsdk/networking/internal/ANImageLoader$BatchedImageRequest;

    .line 169
    if-eqz v4, :cond_1

    .line 170
    invoke-virtual {v4, v3}, Lcom/meizu/cloud/pushsdk/networking/internal/ANImageLoader$BatchedImageRequest;->addContainer(Lcom/meizu/cloud/pushsdk/networking/internal/ANImageLoader$ImageContainer;)V

    goto :goto_0

    :cond_1
    move-object v8, p0

    move-object v9, p1

    move/from16 v10, p3

    move/from16 v11, p4

    move-object/from16 v12, p5

    move-object v13, v7

    .line 174
    invoke-virtual/range {v8 .. v13}, Lcom/meizu/cloud/pushsdk/networking/internal/ANImageLoader;->makeImageRequest(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;

    move-result-object v4

    .line 177
    iget-object v5, p0, Lcom/meizu/cloud/pushsdk/networking/internal/ANImageLoader;->mInFlightRequests:Ljava/util/HashMap;

    new-instance v6, Lcom/meizu/cloud/pushsdk/networking/internal/ANImageLoader$BatchedImageRequest;

    invoke-direct {v6, p0, v4, v3}, Lcom/meizu/cloud/pushsdk/networking/internal/ANImageLoader$BatchedImageRequest;-><init>(Lcom/meizu/cloud/pushsdk/networking/internal/ANImageLoader;Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;Lcom/meizu/cloud/pushsdk/networking/internal/ANImageLoader$ImageContainer;)V

    invoke-virtual {v5, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getImageCache()Lcom/meizu/cloud/pushsdk/networking/internal/ANImageLoader$ImageCache;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/internal/ANImageLoader;->mCache:Lcom/meizu/cloud/pushsdk/networking/internal/ANImageLoader$ImageCache;

    return-object v0
.end method

.method public isCached(Ljava/lang/String;II)Z
    .locals 1

    .prologue
    .line 127
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/meizu/cloud/pushsdk/networking/internal/ANImageLoader;->isCached(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;)Z

    move-result v0

    return v0
.end method

.method public isCached(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;)Z
    .locals 2

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/meizu/cloud/pushsdk/networking/internal/ANImageLoader;->throwIfNotOnMainThread()V

    .line 134
    invoke-static {p1, p2, p3, p4}, Lcom/meizu/cloud/pushsdk/networking/internal/ANImageLoader;->getCacheKey(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;)Ljava/lang/String;

    move-result-object v0

    .line 135
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/internal/ANImageLoader;->mCache:Lcom/meizu/cloud/pushsdk/networking/internal/ANImageLoader$ImageCache;

    invoke-interface {v1, v0}, Lcom/meizu/cloud/pushsdk/networking/internal/ANImageLoader$ImageCache;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected makeImageRequest(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;
    .locals 2

    .prologue
    .line 184
    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/networking/AndroidNetworking;->get(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;

    move-result-object v0

    const-string v1, "ImageRequestTag"

    .line 185
    invoke-virtual {v0, v1}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;->setTag(Ljava/lang/Object;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;

    move-result-object v0

    .line 186
    invoke-virtual {v0, p3}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;->setBitmapMaxHeight(I)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;

    move-result-object v0

    .line 187
    invoke-virtual {v0, p2}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;->setBitmapMaxWidth(I)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;

    move-result-object v0

    .line 188
    invoke-virtual {v0, p4}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;->setImageScaleType(Landroid/widget/ImageView$ScaleType;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 189
    invoke-virtual {v0, v1}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;->setBitmapConfig(Landroid/graphics/Bitmap$Config;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;

    move-result-object v0

    .line 190
    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;->build()Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;

    move-result-object v0

    .line 192
    new-instance v1, Lcom/meizu/cloud/pushsdk/networking/internal/ANImageLoader$2;

    invoke-direct {v1, p0, p5}, Lcom/meizu/cloud/pushsdk/networking/internal/ANImageLoader$2;-><init>(Lcom/meizu/cloud/pushsdk/networking/internal/ANImageLoader;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->getAsBitmap(Lcom/meizu/cloud/pushsdk/networking/interfaces/BitmapRequestListener;)V

    .line 204
    return-object v0
.end method

.method protected onGetImageError(Ljava/lang/String;Lcom/meizu/cloud/pushsdk/networking/error/ANError;)V
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/internal/ANImageLoader;->mInFlightRequests:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/cloud/pushsdk/networking/internal/ANImageLoader$BatchedImageRequest;

    .line 228
    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {v0, p2}, Lcom/meizu/cloud/pushsdk/networking/internal/ANImageLoader$BatchedImageRequest;->setError(Lcom/meizu/cloud/pushsdk/networking/error/ANError;)V

    .line 230
    invoke-direct {p0, p1, v0}, Lcom/meizu/cloud/pushsdk/networking/internal/ANImageLoader;->batchResponse(Ljava/lang/String;Lcom/meizu/cloud/pushsdk/networking/internal/ANImageLoader$BatchedImageRequest;)V

    .line 232
    :cond_0
    return-void
.end method

.method protected onGetImageSuccess(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/internal/ANImageLoader;->mCache:Lcom/meizu/cloud/pushsdk/networking/internal/ANImageLoader$ImageCache;

    invoke-interface {v0, p1, p2}, Lcom/meizu/cloud/pushsdk/networking/internal/ANImageLoader$ImageCache;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 216
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/internal/ANImageLoader;->mInFlightRequests:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/cloud/pushsdk/networking/internal/ANImageLoader$BatchedImageRequest;

    .line 218
    if-eqz v0, :cond_0

    .line 219
    invoke-static {v0, p2}, Lcom/meizu/cloud/pushsdk/networking/internal/ANImageLoader$BatchedImageRequest;->access$002(Lcom/meizu/cloud/pushsdk/networking/internal/ANImageLoader$BatchedImageRequest;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 221
    invoke-direct {p0, p1, v0}, Lcom/meizu/cloud/pushsdk/networking/internal/ANImageLoader;->batchResponse(Ljava/lang/String;Lcom/meizu/cloud/pushsdk/networking/internal/ANImageLoader$BatchedImageRequest;)V

    .line 223
    :cond_0
    return-void
.end method

.method public setBatchedResponseDelay(I)V
    .locals 0

    .prologue
    .line 209
    iput p1, p0, Lcom/meizu/cloud/pushsdk/networking/internal/ANImageLoader;->mBatchResponseDelayMs:I

    .line 210
    return-void
.end method
