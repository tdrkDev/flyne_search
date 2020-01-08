.class public final Lcom/meizu/flyme/media/news/helper/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Landroid/content/Context;

.field private static b:Landroid/os/Handler;

.field private static c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/meizu/common/app/SlideNotice;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 92
    new-instance v0, Lcom/meizu/flyme/media/news/helper/f$1;

    invoke-direct {v0}, Lcom/meizu/flyme/media/news/helper/f$1;-><init>()V

    sput-object v0, Lcom/meizu/flyme/media/news/helper/f;->d:Ljava/lang/Runnable;

    .line 296
    const/4 v0, 0x0

    sput-object v0, Lcom/meizu/flyme/media/news/helper/f;->a:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/view/View;)I
    .locals 3

    .prologue
    .line 143
    const/4 v0, 0x0

    .line 144
    if-eqz p1, :cond_0

    .line 146
    const-string v0, "window"

    .line 147
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 148
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 149
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 150
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 151
    iget v0, v1, Landroid/graphics/Point;->y:I

    .line 153
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 154
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 155
    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    .line 156
    sub-int/2addr v0, v1

    .line 158
    :cond_0
    return v0
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Context;
    .locals 2

    .prologue
    .line 305
    sget-object v0, Lcom/meizu/flyme/media/news/helper/f;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 308
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/meizu/flyme/sdk/b;->a(Landroid/content/Context;ZZ)Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/meizu/flyme/media/news/helper/f;->a:Landroid/content/Context;

    .line 310
    :cond_0
    sget-object v0, Lcom/meizu/flyme/media/news/helper/f;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static a(FFFF)Landroid/view/animation/Interpolator;
    .locals 2

    .prologue
    .line 34
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 35
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 37
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/meizu/common/interpolator/PathInterpolatorCompat;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/meizu/common/interpolator/PathInterpolatorCompat;-><init>(FFFF)V

    goto :goto_0
.end method

.method private static a(Ljava/lang/ref/WeakReference;)Lcom/meizu/common/app/SlideNotice;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/meizu/common/app/SlideNotice;",
            ">;)",
            "Lcom/meizu/common/app/SlideNotice;"
        }
    .end annotation

    .prologue
    .line 100
    if-eqz p0, :cond_0

    .line 101
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/app/SlideNotice;

    .line 103
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 42
    if-nez p0, :cond_0

    .line 63
    :goto_0
    return-void

    .line 45
    :cond_0
    sget-object v0, Lcom/meizu/flyme/media/news/helper/f;->c:Ljava/lang/ref/WeakReference;

    invoke-static {v0}, Lcom/meizu/flyme/media/news/helper/f;->a(Ljava/lang/ref/WeakReference;)Lcom/meizu/common/app/SlideNotice;

    move-result-object v0

    .line 46
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/meizu/common/app/SlideNotice;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 47
    invoke-virtual {v0}, Lcom/meizu/common/app/SlideNotice;->cancelWithoutAnim()V

    .line 49
    :cond_1
    if-nez v0, :cond_2

    .line 50
    new-instance v0, Lcom/meizu/common/app/SlideNotice;

    invoke-direct {v0, p0}, Lcom/meizu/common/app/SlideNotice;-><init>(Landroid/content/Context;)V

    .line 53
    :cond_2
    new-instance v1, Lcom/meizu/common/widget/ContentToastLayout;

    invoke-direct {v1, p0}, Lcom/meizu/common/widget/ContentToastLayout;-><init>(Landroid/content/Context;)V

    .line 54
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/meizu/common/widget/ContentToastLayout;->setToastType(I)V

    .line 55
    invoke-virtual {v1, p1}, Lcom/meizu/common/widget/ContentToastLayout;->setText(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v0, v1}, Lcom/meizu/common/app/SlideNotice;->setCustomView(Landroid/view/View;)V

    .line 57
    if-lez p2, :cond_3

    .line 58
    invoke-virtual {v0, p2}, Lcom/meizu/common/app/SlideNotice;->setYOffset(I)V

    .line 60
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meizu/common/app/SlideNotice;->showNotice(Z)V

    .line 61
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/meizu/flyme/media/news/helper/f;->c:Ljava/lang/ref/WeakReference;

    goto :goto_0
.end method

.method public static a(Landroid/view/View;IIIII)V
    .locals 7

    .prologue
    .line 263
    if-nez p0, :cond_0

    .line 294
    :goto_0
    return-void

    .line 266
    :cond_0
    new-instance v0, Lcom/meizu/flyme/media/news/helper/f$2;

    move-object v1, p0

    move v2, p3

    move v3, p1

    move v4, p4

    move v5, p2

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/meizu/flyme/media/news/helper/f$2;-><init>(Landroid/view/View;IIIII)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static a()Z
    .locals 3

    .prologue
    .line 82
    sget-object v0, Lcom/meizu/flyme/media/news/helper/f;->c:Ljava/lang/ref/WeakReference;

    invoke-static {v0}, Lcom/meizu/flyme/media/news/helper/f;->a(Ljava/lang/ref/WeakReference;)Lcom/meizu/common/app/SlideNotice;

    move-result-object v0

    .line 83
    const/4 v1, 0x0

    sput-object v1, Lcom/meizu/flyme/media/news/helper/f;->c:Ljava/lang/ref/WeakReference;

    .line 84
    if-eqz v0, :cond_0

    .line 85
    invoke-static {}, Lcom/meizu/flyme/media/news/helper/f;->c()Landroid/os/Handler;

    move-result-object v1

    sget-object v2, Lcom/meizu/flyme/media/news/helper/f;->d:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 86
    invoke-virtual {v0}, Lcom/meizu/common/app/SlideNotice;->cancelNotice()V

    .line 87
    const/4 v0, 0x1

    .line 89
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b()V
    .locals 1

    .prologue
    .line 318
    sget-object v0, Lcom/meizu/flyme/media/news/helper/f;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 319
    const/4 v0, 0x0

    sput-object v0, Lcom/meizu/flyme/media/news/helper/f;->a:Landroid/content/Context;

    .line 321
    :cond_0
    return-void
.end method

.method private static c()Landroid/os/Handler;
    .locals 2

    .prologue
    .line 107
    sget-object v0, Lcom/meizu/flyme/media/news/helper/f;->b:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/meizu/flyme/media/news/helper/f;->b:Landroid/os/Handler;

    .line 110
    :cond_0
    sget-object v0, Lcom/meizu/flyme/media/news/helper/f;->b:Landroid/os/Handler;

    return-object v0
.end method
