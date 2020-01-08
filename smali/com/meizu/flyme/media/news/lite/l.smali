.class public Lcom/meizu/flyme/media/news/lite/l;
.super Lcom/meizu/flyme/media/news/base/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/flyme/media/news/lite/l$b;,
        Lcom/meizu/flyme/media/news/lite/l$a;
    }
.end annotation


# instance fields
.field private a:Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout;

.field private b:Lcom/meizu/common/recall/InstallView;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:I

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:I

.field private k:D

.field private l:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 26
    invoke-direct {p0}, Lcom/meizu/flyme/media/news/base/b;-><init>()V

    .line 40
    iput-wide v0, p0, Lcom/meizu/flyme/media/news/lite/l;->k:D

    iput-wide v0, p0, Lcom/meizu/flyme/media/news/lite/l;->l:D

    return-void
.end method

.method static synthetic a(Lcom/meizu/flyme/media/news/lite/l;D)D
    .locals 1

    .prologue
    .line 26
    iput-wide p1, p0, Lcom/meizu/flyme/media/news/lite/l;->k:D

    return-wide p1
.end method

.method static synthetic a(Lcom/meizu/flyme/media/news/lite/l;)I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/meizu/flyme/media/news/lite/l;->j:I

    return v0
.end method

.method static synthetic a(Lcom/meizu/flyme/media/news/lite/l;I)I
    .locals 0

    .prologue
    .line 26
    iput p1, p0, Lcom/meizu/flyme/media/news/lite/l;->f:I

    return p1
.end method

.method private a(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 148
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    const/4 v0, 0x0

    .line 151
    :goto_0
    return v0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/meizu/flyme/media/news/lite/l;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/meizu/flyme/media/news/lite/l;->c:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/meizu/flyme/media/news/lite/l;I)I
    .locals 0

    .prologue
    .line 26
    iput p1, p0, Lcom/meizu/flyme/media/news/lite/l;->g:I

    return p1
.end method

.method static synthetic b(Lcom/meizu/flyme/media/news/lite/l;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/l;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/meizu/flyme/media/news/lite/l;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/meizu/flyme/media/news/lite/l;->d:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/meizu/flyme/media/news/lite/l;I)I
    .locals 0

    .prologue
    .line 26
    iput p1, p0, Lcom/meizu/flyme/media/news/lite/l;->j:I

    return p1
.end method

.method private c()Ljava/lang/String;
    .locals 5

    .prologue
    .line 135
    iget-wide v0, p0, Lcom/meizu/flyme/media/news/lite/l;->l:D

    iget-wide v2, p0, Lcom/meizu/flyme/media/news/lite/l;->k:D

    sub-double/2addr v0, v2

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    .line 136
    const-string v2, "%.2f"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 137
    return-object v0
.end method

.method static synthetic c(Lcom/meizu/flyme/media/news/lite/l;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/l;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/meizu/flyme/media/news/lite/l;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/meizu/flyme/media/news/lite/l;->e:Ljava/lang/String;

    return-object p1
.end method

.method private d()I
    .locals 4

    .prologue
    .line 142
    iget-wide v0, p0, Lcom/meizu/flyme/media/news/lite/l;->l:D

    iget-wide v2, p0, Lcom/meizu/flyme/media/news/lite/l;->k:D

    sub-double/2addr v0, v2

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    .line 143
    double-to-int v0, v0

    .line 144
    return v0
.end method

.method static synthetic d(Lcom/meizu/flyme/media/news/lite/l;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/meizu/flyme/media/news/lite/l;->a(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/meizu/flyme/media/news/lite/l;)Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/l;->a:Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout;

    return-object v0
.end method

.method static synthetic e(Lcom/meizu/flyme/media/news/lite/l;)I
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/meizu/flyme/media/news/lite/l;->d()I

    move-result v0

    return v0
.end method

.method static synthetic e(Lcom/meizu/flyme/media/news/lite/l;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/meizu/flyme/media/news/lite/l;->h:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic f(Lcom/meizu/flyme/media/news/lite/l;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/l;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/meizu/flyme/media/news/lite/l;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/meizu/flyme/media/news/lite/l;->i:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic g(Lcom/meizu/flyme/media/news/lite/l;)I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/meizu/flyme/media/news/lite/l;->f:I

    return v0
.end method

.method static synthetic h(Lcom/meizu/flyme/media/news/lite/l;)I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/meizu/flyme/media/news/lite/l;->g:I

    return v0
.end method

.method static synthetic i(Lcom/meizu/flyme/media/news/lite/l;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/l;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/meizu/flyme/media/news/lite/l;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/l;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k(Lcom/meizu/flyme/media/news/lite/l;)Lcom/meizu/common/recall/InstallView;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/l;->b:Lcom/meizu/common/recall/InstallView;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 44
    invoke-super {p0, p1, p2}, Lcom/meizu/flyme/media/news/base/b;->a(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 45
    sget v0, Lcom/meizu/flyme/media/news/lite/R$layout;->news_lite_activity_detail:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 46
    invoke-static {p1}, Lcom/meizu/flyme/media/news/a/j;->a(Landroid/app/Activity;)V

    .line 48
    sget v0, Lcom/meizu/flyme/media/news/lite/R$id;->news_lite_web_frame_layout:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout;

    iput-object v0, p0, Lcom/meizu/flyme/media/news/lite/l;->a:Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout;

    .line 49
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/l;->a:Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout;

    new-instance v1, Lcom/meizu/flyme/media/news/lite/l$a;

    invoke-direct {v1, p0}, Lcom/meizu/flyme/media/news/lite/l$a;-><init>(Lcom/meizu/flyme/media/news/lite/l;)V

    invoke-virtual {v0, v1}, Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout;->setWebChromeClient(Lcom/meizu/flyme/media/news/widget/b;)V

    .line 51
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 52
    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 54
    if-eqz v1, :cond_0

    .line 55
    sget v0, Lcom/meizu/flyme/media/news/lite/R$id;->news_lite_install_view:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/recall/InstallView;

    iput-object v0, p0, Lcom/meizu/flyme/media/news/lite/l;->b:Lcom/meizu/common/recall/InstallView;

    .line 56
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/l;->b:Lcom/meizu/common/recall/InstallView;

    new-instance v2, Lcom/meizu/flyme/media/news/lite/l$b;

    invoke-direct {v2, p0, v1}, Lcom/meizu/flyme/media/news/lite/l$b;-><init>(Lcom/meizu/flyme/media/news/lite/l;Landroid/net/Uri;)V

    invoke-virtual {v0, v2}, Lcom/meizu/common/recall/InstallView;->setOnInstallViewListener(Lcom/meizu/common/recall/InstallView$OnInstallViewListener;)V

    .line 57
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/l;->b:Lcom/meizu/common/recall/InstallView;

    new-instance v2, Lcom/meizu/flyme/media/news/lite/l$1;

    invoke-direct {v2, p0}, Lcom/meizu/flyme/media/news/lite/l$1;-><init>(Lcom/meizu/flyme/media/news/lite/l;)V

    invoke-virtual {v0, v2}, Lcom/meizu/common/recall/InstallView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/l;->a:Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout;

    new-instance v2, Lcom/meizu/flyme/media/news/lite/l$2;

    invoke-direct {v2, p0, v1}, Lcom/meizu/flyme/media/news/lite/l$2;-><init>(Lcom/meizu/flyme/media/news/lite/l;Landroid/net/Uri;)V

    invoke-virtual {v0, v2}, Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout;->a(Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout$c;)V

    .line 84
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/l;->a:Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout;

    const-string v2, "openUrl"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout;->a(Ljava/lang/String;)V

    .line 89
    :goto_0
    return-void

    .line 88
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public f(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 93
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/l;->a:Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout;

    invoke-virtual {v0}, Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout;->a()V

    .line 94
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-double v0, v0

    iput-wide v0, p0, Lcom/meizu/flyme/media/news/lite/l;->l:D

    .line 97
    invoke-direct {p0}, Lcom/meizu/flyme/media/news/lite/l;->c()Ljava/lang/String;

    move-result-object v0

    .line 98
    invoke-static {}, Lcom/meizu/flyme/media/news/lite/k;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    iget v1, p0, Lcom/meizu/flyme/media/news/lite/l;->j:I

    iget-object v2, p0, Lcom/meizu/flyme/media/news/lite/l;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/meizu/flyme/media/news/lite/l;->d:Ljava/lang/String;

    invoke-static {v1, v2, v3, v0}, Lcom/meizu/flyme/media/news/lite/k;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :cond_0
    new-instance v0, Lcom/meizu/flyme/media/news/lite/l$3;

    invoke-direct {v0, p0}, Lcom/meizu/flyme/media/news/lite/l$3;-><init>(Lcom/meizu/flyme/media/news/lite/l;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 130
    invoke-super {p0, p1}, Lcom/meizu/flyme/media/news/base/b;->f(Landroid/app/Activity;)V

    .line 131
    return-void
.end method
