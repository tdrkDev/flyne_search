.class public Lcom/meizu/common/widget/VideoTextureView;
.super Landroid/view/TextureView;
.source "SourceFile"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/VideoTextureView$PlayerVideo;
    }
.end annotation


# instance fields
.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mPlayerVideo:Lcom/meizu/common/widget/VideoTextureView$PlayerVideo;

.field private mSurface:Landroid/view/Surface;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 27
    invoke-direct {p0}, Lcom/meizu/common/widget/VideoTextureView;->init()V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    invoke-direct {p0}, Lcom/meizu/common/widget/VideoTextureView;->init()V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    invoke-direct {p0}, Lcom/meizu/common/widget/VideoTextureView;->init()V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 42
    invoke-direct {p0}, Lcom/meizu/common/widget/VideoTextureView;->init()V

    .line 43
    return-void
.end method

.method static synthetic access$100(Lcom/meizu/common/widget/VideoTextureView;)Landroid/media/MediaPlayer;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/meizu/common/widget/VideoTextureView;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$102(Lcom/meizu/common/widget/VideoTextureView;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lcom/meizu/common/widget/VideoTextureView;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$200(Lcom/meizu/common/widget/VideoTextureView;)Landroid/view/Surface;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/meizu/common/widget/VideoTextureView;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method static synthetic access$300(Lcom/meizu/common/widget/VideoTextureView;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/meizu/common/widget/VideoTextureView;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method private init()V
    .locals 0

    .prologue
    .line 47
    invoke-virtual {p0, p0}, Lcom/meizu/common/widget/VideoTextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 49
    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    .prologue
    .line 69
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/meizu/common/widget/VideoTextureView;->mSurface:Landroid/view/Surface;

    .line 70
    iget-object v0, p0, Lcom/meizu/common/widget/VideoTextureView;->mPlayerVideo:Lcom/meizu/common/widget/VideoTextureView$PlayerVideo;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Lcom/meizu/common/widget/VideoTextureView$PlayerVideo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/meizu/common/widget/VideoTextureView$PlayerVideo;-><init>(Lcom/meizu/common/widget/VideoTextureView;Lcom/meizu/common/widget/VideoTextureView$1;)V

    iput-object v0, p0, Lcom/meizu/common/widget/VideoTextureView;->mPlayerVideo:Lcom/meizu/common/widget/VideoTextureView$PlayerVideo;

    .line 72
    iget-object v0, p0, Lcom/meizu/common/widget/VideoTextureView;->mPlayerVideo:Lcom/meizu/common/widget/VideoTextureView$PlayerVideo;

    invoke-virtual {v0}, Lcom/meizu/common/widget/VideoTextureView$PlayerVideo;->start()V

    .line 74
    :cond_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/meizu/common/widget/VideoTextureView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 84
    iget-object v0, p0, Lcom/meizu/common/widget/VideoTextureView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/common/widget/VideoTextureView;->mPlayerVideo:Lcom/meizu/common/widget/VideoTextureView$PlayerVideo;

    .line 86
    const/4 v0, 0x1

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .prologue
    .line 79
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .prologue
    .line 91
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/meizu/common/widget/VideoTextureView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 118
    return-void
.end method

.method public setSourceUri(Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/meizu/common/widget/VideoTextureView;->mUri:Landroid/net/Uri;

    .line 53
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/meizu/common/widget/VideoTextureView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 122
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/meizu/common/widget/VideoTextureView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 126
    return-void
.end method

.method public updateSourceUri(Landroid/net/Uri;)V
    .locals 2

    .prologue
    .line 59
    iput-object p1, p0, Lcom/meizu/common/widget/VideoTextureView;->mUri:Landroid/net/Uri;

    .line 60
    iget-object v0, p0, Lcom/meizu/common/widget/VideoTextureView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 61
    iget-object v0, p0, Lcom/meizu/common/widget/VideoTextureView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 62
    new-instance v0, Lcom/meizu/common/widget/VideoTextureView$PlayerVideo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/meizu/common/widget/VideoTextureView$PlayerVideo;-><init>(Lcom/meizu/common/widget/VideoTextureView;Lcom/meizu/common/widget/VideoTextureView$1;)V

    iput-object v0, p0, Lcom/meizu/common/widget/VideoTextureView;->mPlayerVideo:Lcom/meizu/common/widget/VideoTextureView$PlayerVideo;

    .line 63
    iget-object v0, p0, Lcom/meizu/common/widget/VideoTextureView;->mPlayerVideo:Lcom/meizu/common/widget/VideoTextureView$PlayerVideo;

    invoke-virtual {v0}, Lcom/meizu/common/widget/VideoTextureView$PlayerVideo;->start()V

    .line 64
    return-void
.end method
