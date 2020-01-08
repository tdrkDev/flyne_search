.class Lcom/meizu/common/widget/SmoothCornerView$BitmapCache;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/SmoothCornerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BitmapCache"
.end annotation


# static fields
.field private static volatile sInstance:Lcom/meizu/common/widget/SmoothCornerView$BitmapCache;


# instance fields
.field private final mCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final mClearTask:Ljava/lang/Runnable;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/meizu/common/widget/SmoothCornerView$BitmapCache;->mHandler:Landroid/os/Handler;

    .line 135
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/SmoothCornerView$BitmapCache;->mCache:Ljava/util/Map;

    .line 136
    new-instance v0, Lcom/meizu/common/widget/SmoothCornerView$BitmapCache$1;

    invoke-direct {v0, p0}, Lcom/meizu/common/widget/SmoothCornerView$BitmapCache$1;-><init>(Lcom/meizu/common/widget/SmoothCornerView$BitmapCache;)V

    iput-object v0, p0, Lcom/meizu/common/widget/SmoothCornerView$BitmapCache;->mClearTask:Ljava/lang/Runnable;

    .line 143
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/common/widget/SmoothCornerView$BitmapCache;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/meizu/common/widget/SmoothCornerView$BitmapCache;->mCache:Ljava/util/Map;

    return-object v0
.end method

.method static getInstance()Lcom/meizu/common/widget/SmoothCornerView$BitmapCache;
    .locals 2

    .prologue
    .line 146
    sget-object v0, Lcom/meizu/common/widget/SmoothCornerView$BitmapCache;->sInstance:Lcom/meizu/common/widget/SmoothCornerView$BitmapCache;

    if-nez v0, :cond_1

    .line 147
    const-class v1, Lcom/meizu/common/widget/SmoothCornerView$BitmapCache;

    monitor-enter v1

    .line 148
    :try_start_0
    sget-object v0, Lcom/meizu/common/widget/SmoothCornerView$BitmapCache;->sInstance:Lcom/meizu/common/widget/SmoothCornerView$BitmapCache;

    if-nez v0, :cond_0

    .line 149
    new-instance v0, Lcom/meizu/common/widget/SmoothCornerView$BitmapCache;

    invoke-direct {v0}, Lcom/meizu/common/widget/SmoothCornerView$BitmapCache;-><init>()V

    sput-object v0, Lcom/meizu/common/widget/SmoothCornerView$BitmapCache;->sInstance:Lcom/meizu/common/widget/SmoothCornerView$BitmapCache;

    .line 151
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    :cond_1
    sget-object v0, Lcom/meizu/common/widget/SmoothCornerView$BitmapCache;->sInstance:Lcom/meizu/common/widget/SmoothCornerView$BitmapCache;

    return-object v0

    .line 151
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method get(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 167
    iget-object v0, p0, Lcom/meizu/common/widget/SmoothCornerView$BitmapCache;->mCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 168
    if-eqz v0, :cond_0

    .line 169
    const-string v1, "SmoothCornerView"

    const-string v2, "hit cache success"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_0
    return-object v0
.end method

.method saveTemporarily(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4

    .prologue
    .line 161
    iget-object v0, p0, Lcom/meizu/common/widget/SmoothCornerView$BitmapCache;->mCache:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    iget-object v0, p0, Lcom/meizu/common/widget/SmoothCornerView$BitmapCache;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 163
    iget-object v0, p0, Lcom/meizu/common/widget/SmoothCornerView$BitmapCache;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/meizu/common/widget/SmoothCornerView$BitmapCache;->mClearTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 164
    return-void
.end method
