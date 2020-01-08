.class public Lcom/meizu/advertise/api/BannerView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 23
    invoke-direct {p0, p1}, Lcom/meizu/advertise/api/BannerView;->a(Landroid/content/Context;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    invoke-direct {p0, p1}, Lcom/meizu/advertise/api/BannerView;->a(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    invoke-direct {p0, p1}, Lcom/meizu/advertise/api/BannerView;->a(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 38
    :try_start_0
    invoke-static {}, Lcom/meizu/advertise/api/AdManager;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 39
    const-string v1, "com.meizu.advertise.plugin.views.BannerView"

    invoke-static {v0, v1}, Lcom/meizu/b/b;->a(Ljava/lang/ClassLoader;Ljava/lang/String;)Lcom/meizu/b/a$a;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Landroid/content/Context;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Landroid/view/ViewGroup;

    aput-object v3, v1, v2

    .line 40
    invoke-interface {v0, v1}, Lcom/meizu/b/a$a;->a([Ljava/lang/Class;)Lcom/meizu/b/a$b;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 41
    invoke-static {p1}, Lcom/meizu/advertise/api/AdManager;->newPluginContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    invoke-interface {v0, v1}, Lcom/meizu/b/a$b;->a([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/advertise/api/BannerView;->a:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :goto_0
    return-void

    .line 42
    :catch_0
    move-exception v0

    .line 43
    invoke-static {v0}, Lcom/meizu/advertise/api/AdManager;->handleException(Ljava/lang/Exception;)V

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 140
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 141
    iget-object v0, p0, Lcom/meizu/advertise/api/BannerView;->a:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 152
    :goto_0
    return-void

    .line 145
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/meizu/advertise/api/AdManager;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 146
    const-string v1, "com.meizu.advertise.plugin.views.BannerView"

    invoke-static {v0, v1}, Lcom/meizu/b/b;->a(Ljava/lang/ClassLoader;Ljava/lang/String;)Lcom/meizu/b/a$a;

    move-result-object v0

    const-string v1, "onAttachedToWindow"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    .line 147
    invoke-interface {v0, v1, v2}, Lcom/meizu/b/a$a;->a(Ljava/lang/String;[Ljava/lang/Class;)Lcom/meizu/b/a$d;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/advertise/api/BannerView;->a:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 148
    invoke-interface {v0, v1, v2}, Lcom/meizu/b/a$d;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 149
    :catch_0
    move-exception v0

    .line 150
    invoke-static {v0}, Lcom/meizu/advertise/api/AdManager;->handleException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 156
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 157
    iget-object v0, p0, Lcom/meizu/advertise/api/BannerView;->a:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 168
    :goto_0
    return-void

    .line 161
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/meizu/advertise/api/AdManager;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 162
    const-string v1, "com.meizu.advertise.plugin.views.BannerView"

    invoke-static {v0, v1}, Lcom/meizu/b/b;->a(Ljava/lang/ClassLoader;Ljava/lang/String;)Lcom/meizu/b/a$a;

    move-result-object v0

    const-string v1, "onDetachedFromWindow"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    .line 163
    invoke-interface {v0, v1, v2}, Lcom/meizu/b/a$a;->a(Ljava/lang/String;[Ljava/lang/Class;)Lcom/meizu/b/a$d;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/advertise/api/BannerView;->a:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 164
    invoke-interface {v0, v1, v2}, Lcom/meizu/b/a$d;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 165
    :catch_0
    move-exception v0

    .line 166
    invoke-static {v0}, Lcom/meizu/advertise/api/AdManager;->handleException(Ljava/lang/Exception;)V

    goto :goto_0
.end method
