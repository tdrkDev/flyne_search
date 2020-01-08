.class public Lcom/meizu/flyme/media/news/lite/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/flyme/media/news/lite/a$a;
    }
.end annotation


# static fields
.field private static d:Landroid/content/Context;


# instance fields
.field public a:Landroid/widget/RelativeLayout;

.field public b:Lcom/meizu/flyme/media/news/lite/f$b;

.field private c:Landroid/content/Context;

.field private e:Landroid/view/LayoutInflater;

.field private f:Landroid/view/View;

.field private g:Lcom/meizu/flyme/media/news/widget/NewsRecyclerView;

.field private h:Lflyme/support/v7/widget/LinearLayoutManager;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/view/View;

.field private l:Landroid/widget/ImageView;

.field private m:Landroid/widget/ImageView;

.field private n:Lcom/meizu/common/widget/LoadingView;

.field private o:Lcom/meizu/flyme/media/news/lite/b;

.field private p:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private q:Lcom/meizu/flyme/media/news/protocol/a;

.field private r:Lcom/meizu/flyme/media/news/lite/i;

.field private s:I

.field private t:Landroid/os/Handler;

.field private u:Z

.field private final v:Lcom/meizu/flyme/media/news/protocol/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/meizu/flyme/media/news/protocol/b",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;",
            ">;>;"
        }
    .end annotation
.end field

.field private w:Lcom/meizu/flyme/media/news/lite/a$a;

.field private x:Landroid/net/ConnectivityManager$NetworkCallback;

.field private y:Landroid/view/View$OnApplyWindowInsetsListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/meizu/flyme/media/news/lite/i;I)V
    .locals 2

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/meizu/flyme/media/news/lite/a;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 71
    new-instance v0, Lcom/meizu/flyme/media/news/lite/a$1;

    invoke-direct {v0, p0}, Lcom/meizu/flyme/media/news/lite/a$1;-><init>(Lcom/meizu/flyme/media/news/lite/a;)V

    iput-object v0, p0, Lcom/meizu/flyme/media/news/lite/a;->t:Landroid/os/Handler;

    .line 220
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/flyme/media/news/lite/a;->u:Z

    .line 222
    new-instance v0, Lcom/meizu/flyme/media/news/lite/a$5;

    invoke-direct {v0, p0}, Lcom/meizu/flyme/media/news/lite/a$5;-><init>(Lcom/meizu/flyme/media/news/lite/a;)V

    iput-object v0, p0, Lcom/meizu/flyme/media/news/lite/a;->v:Lcom/meizu/flyme/media/news/protocol/b;

    .line 514
    new-instance v0, Lcom/meizu/flyme/media/news/lite/a$9;

    invoke-direct {v0, p0}, Lcom/meizu/flyme/media/news/lite/a$9;-><init>(Lcom/meizu/flyme/media/news/lite/a;)V

    iput-object v0, p0, Lcom/meizu/flyme/media/news/lite/a;->x:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 569
    new-instance v0, Lcom/meizu/flyme/media/news/lite/a$2;

    invoke-direct {v0, p0}, Lcom/meizu/flyme/media/news/lite/a$2;-><init>(Lcom/meizu/flyme/media/news/lite/a;)V

    iput-object v0, p0, Lcom/meizu/flyme/media/news/lite/a;->y:Landroid/view/View$OnApplyWindowInsetsListener;

    .line 88
    iput-object p1, p0, Lcom/meizu/flyme/media/news/lite/a;->c:Landroid/content/Context;

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/meizu/flyme/media/news/lite/a;->d:Landroid/content/Context;

    .line 90
    iput-object p2, p0, Lcom/meizu/flyme/media/news/lite/a;->r:Lcom/meizu/flyme/media/news/lite/i;

    .line 91
    iput p3, p0, Lcom/meizu/flyme/media/news/lite/a;->s:I

    .line 92
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/a;->c:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/flyme/media/news/lite/a;->e:Landroid/view/LayoutInflater;

    .line 93
    return-void
.end method

.method private a(Landroid/view/View$OnApplyWindowInsetsListener;)V
    .locals 3

    .prologue
    .line 555
    invoke-virtual {p0}, Lcom/meizu/flyme/media/news/lite/a;->a()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 556
    invoke-virtual {p0}, Lcom/meizu/flyme/media/news/lite/a;->a()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 557
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 558
    invoke-static {v0}, Lcom/meizu/flyme/media/news/a/g;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 559
    if-eqz v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x14

    if-lt v0, v2, :cond_0

    .line 560
    invoke-virtual {v1, p1}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 564
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/meizu/flyme/media/news/lite/a;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/meizu/flyme/media/news/lite/a;->j()V

    return-void
.end method

.method static synthetic a(Lcom/meizu/flyme/media/news/lite/a;Z)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/meizu/flyme/media/news/lite/a;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/a;->i:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/a;->i:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/a;->j:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 306
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/a;->j:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 308
    :cond_1
    return-void
.end method

.method private a(II)Z
    .locals 1

    .prologue
    .line 433
    const/4 v0, 0x5

    .line 434
    sub-int v0, p2, v0

    if-lt p1, v0, :cond_0

    .line 435
    const/4 v0, 0x1

    .line 437
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/meizu/flyme/media/news/lite/a;II)Z
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/meizu/flyme/media/news/lite/a;->a(II)Z

    move-result v0

    return v0
.end method

.method public static b()Landroid/content/Context;
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lcom/meizu/flyme/media/news/lite/a;->d:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/meizu/flyme/media/news/lite/a;)Lcom/meizu/flyme/media/news/lite/i;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/a;->r:Lcom/meizu/flyme/media/news/lite/i;

    return-object v0
.end method

.method static synthetic b(Lcom/meizu/flyme/media/news/lite/a;Z)Z
    .locals 0

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/meizu/flyme/media/news/lite/a;->u:Z

    return p1
.end method

.method static synthetic c(Lcom/meizu/flyme/media/news/lite/a;)Lcom/meizu/flyme/media/news/lite/b;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/a;->o:Lcom/meizu/flyme/media/news/lite/b;

    return-object v0
.end method

.method static synthetic d(Lcom/meizu/flyme/media/news/lite/a;)I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/meizu/flyme/media/news/lite/a;->s:I

    return v0
.end method

.method static synthetic e(Lcom/meizu/flyme/media/news/lite/a;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/a;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic f(Lcom/meizu/flyme/media/news/lite/a;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/meizu/flyme/media/news/lite/a;->k()V

    return-void
.end method

.method static synthetic g(Lcom/meizu/flyme/media/news/lite/a;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/meizu/flyme/media/news/lite/a;->h()V

    return-void
.end method

.method static synthetic h(Lcom/meizu/flyme/media/news/lite/a;)Lcom/meizu/flyme/media/news/protocol/a;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/a;->q:Lcom/meizu/flyme/media/news/protocol/a;

    return-object v0
.end method

.method private h()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/16 v4, 0x8

    const/4 v5, 0x0

    .line 312
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/a;->f:Landroid/view/View;

    sget v1, Lcom/meizu/flyme/media/news/lite/R$id;->btn_change:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/flyme/media/news/lite/a;->i:Landroid/widget/TextView;

    .line 313
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/a;->f:Landroid/view/View;

    sget v1, Lcom/meizu/flyme/media/news/lite/R$id;->btn_more:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/flyme/media/news/lite/a;->j:Landroid/widget/TextView;

    .line 314
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/a;->f:Landroid/view/View;

    sget v1, Lcom/meizu/flyme/media/news/lite/R$id;->button_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/flyme/media/news/lite/a;->k:Landroid/view/View;

    .line 315
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/a;->f:Landroid/view/View;

    sget v1, Lcom/meizu/flyme/media/news/lite/R$id;->vertical_line:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/meizu/flyme/media/news/lite/a;->l:Landroid/widget/ImageView;

    .line 316
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/a;->f:Landroid/view/View;

    sget v1, Lcom/meizu/flyme/media/news/lite/R$id;->horizontal_line:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/meizu/flyme/media/news/lite/a;->m:Landroid/widget/ImageView;

    .line 318
    invoke-static {}, Lcom/meizu/flyme/media/news/lite/f;->h()Lcom/meizu/flyme/media/news/lite/f;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/flyme/media/news/lite/a;->r:Lcom/meizu/flyme/media/news/lite/i;

    invoke-virtual {v1}, Lcom/meizu/flyme/media/news/lite/i;->a()I

    move-result v1

    iget-object v2, p0, Lcom/meizu/flyme/media/news/lite/a;->r:Lcom/meizu/flyme/media/news/lite/i;

    invoke-virtual {v2}, Lcom/meizu/flyme/media/news/lite/i;->c()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/meizu/flyme/media/news/lite/f;->a(IZ)I

    move-result v1

    .line 321
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/a;->i:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 322
    if-ne v1, v6, :cond_3

    .line 323
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/a;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 324
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/a;->i:Landroid/widget/TextView;

    new-instance v2, Lcom/meizu/flyme/media/news/lite/a$6;

    invoke-direct {v2, p0}, Lcom/meizu/flyme/media/news/lite/a$6;-><init>(Lcom/meizu/flyme/media/news/lite/a;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 336
    :goto_0
    const/4 v0, 0x3

    if-ne v1, v0, :cond_4

    .line 337
    invoke-direct {p0}, Lcom/meizu/flyme/media/news/lite/a;->i()V

    .line 338
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/a;->o:Lcom/meizu/flyme/media/news/lite/b;

    invoke-virtual {v0, v6}, Lcom/meizu/flyme/media/news/lite/b;->a(Z)V

    .line 346
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/a;->r:Lcom/meizu/flyme/media/news/lite/i;

    invoke-virtual {v0}, Lcom/meizu/flyme/media/news/lite/i;->c()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 347
    const/4 v0, -0x1

    .line 354
    :goto_2
    iget-object v2, p0, Lcom/meizu/flyme/media/news/lite/a;->j:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 355
    if-ne v0, v6, :cond_6

    .line 356
    iget-object v2, p0, Lcom/meizu/flyme/media/news/lite/a;->j:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 359
    iget-object v2, p0, Lcom/meizu/flyme/media/news/lite/a;->j:Landroid/widget/TextView;

    new-instance v3, Lcom/meizu/flyme/media/news/lite/a$7;

    invoke-direct {v3, p0}, Lcom/meizu/flyme/media/news/lite/a$7;-><init>(Lcom/meizu/flyme/media/news/lite/a;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 380
    :cond_1
    :goto_3
    iget-object v2, p0, Lcom/meizu/flyme/media/news/lite/a;->j:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-eq v2, v4, :cond_2

    iget-object v2, p0, Lcom/meizu/flyme/media/news/lite/a;->i:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-ne v2, v4, :cond_8

    .line 381
    :cond_2
    iget-object v2, p0, Lcom/meizu/flyme/media/news/lite/a;->l:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 382
    iget-object v2, p0, Lcom/meizu/flyme/media/news/lite/a;->j:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-ne v2, v4, :cond_7

    iget-object v2, p0, Lcom/meizu/flyme/media/news/lite/a;->i:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-ne v2, v4, :cond_7

    .line 383
    iget-object v2, p0, Lcom/meizu/flyme/media/news/lite/a;->k:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 384
    iget-object v2, p0, Lcom/meizu/flyme/media/news/lite/a;->m:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 395
    :goto_4
    const-string v2, "NewsFlowViewDelegate"

    const-string v3, "isShowChange=%d isShowMore=%d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-static {v2, v3, v4}, Lcom/meizu/flyme/media/news/helper/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 396
    return-void

    .line 332
    :cond_3
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/a;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 340
    :cond_4
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/a;->o:Lcom/meizu/flyme/media/news/lite/b;

    invoke-virtual {v0, v5}, Lcom/meizu/flyme/media/news/lite/b;->a(Z)V

    goto :goto_1

    .line 349
    :cond_5
    invoke-static {}, Lcom/meizu/flyme/media/news/lite/f;->h()Lcom/meizu/flyme/media/news/lite/f;

    move-result-object v0

    iget-object v2, p0, Lcom/meizu/flyme/media/news/lite/a;->r:Lcom/meizu/flyme/media/news/lite/i;

    invoke-virtual {v2}, Lcom/meizu/flyme/media/news/lite/i;->a()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/meizu/flyme/media/news/lite/f;->b(I)I

    move-result v0

    goto :goto_2

    .line 376
    :cond_6
    iget-object v2, p0, Lcom/meizu/flyme/media/news/lite/a;->j:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 386
    :cond_7
    iget-object v2, p0, Lcom/meizu/flyme/media/news/lite/a;->k:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 387
    iget-object v2, p0, Lcom/meizu/flyme/media/news/lite/a;->m:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    .line 390
    :cond_8
    iget-object v2, p0, Lcom/meizu/flyme/media/news/lite/a;->l:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 391
    iget-object v2, p0, Lcom/meizu/flyme/media/news/lite/a;->k:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 392
    iget-object v2, p0, Lcom/meizu/flyme/media/news/lite/a;->m:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4
.end method

.method static synthetic i(Lcom/meizu/flyme/media/news/lite/a;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/a;->c:Landroid/content/Context;

    return-object v0
.end method

.method private i()V
    .locals 2

    .prologue
    .line 399
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/a;->g:Lcom/meizu/flyme/media/news/widget/NewsRecyclerView;

    if-nez v0, :cond_0

    .line 423
    :goto_0
    return-void

    .line 402
    :cond_0
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/a;->g:Lcom/meizu/flyme/media/news/widget/NewsRecyclerView;

    new-instance v1, Lcom/meizu/flyme/media/news/lite/a$8;

    invoke-direct {v1, p0}, Lcom/meizu/flyme/media/news/lite/a$8;-><init>(Lcom/meizu/flyme/media/news/lite/a;)V

    invoke-virtual {v0, v1}, Lcom/meizu/flyme/media/news/widget/NewsRecyclerView;->setOnScrollListener(Lflyme/support/v7/widget/RecyclerView$OnScrollListener;)V

    goto :goto_0
.end method

.method static synthetic j(Lcom/meizu/flyme/media/news/lite/a;)Lflyme/support/v7/widget/LinearLayoutManager;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/a;->h:Lflyme/support/v7/widget/LinearLayoutManager;

    return-object v0
.end method

.method private j()V
    .locals 5

    .prologue
    .line 459
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/a;->a:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/a;->a:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 461
    invoke-static {}, Lcom/meizu/flyme/media/news/lite/NewsFlowView;->getLoadingPaddingTop()I

    move-result v0

    .line 462
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 463
    iget-object v1, p0, Lcom/meizu/flyme/media/news/lite/a;->a:Landroid/widget/RelativeLayout;

    const/16 v2, 0x30

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 464
    iget-object v1, p0, Lcom/meizu/flyme/media/news/lite/a;->a:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/meizu/flyme/media/news/lite/a;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getPaddingLeft()I

    move-result v2

    iget-object v3, p0, Lcom/meizu/flyme/media/news/lite/a;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lcom/meizu/flyme/media/news/lite/a;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 469
    :cond_0
    :goto_0
    return-void

    .line 466
    :cond_1
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/a;->a:Landroid/widget/RelativeLayout;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setGravity(I)V

    goto :goto_0
.end method

.method private k()V
    .locals 2

    .prologue
    .line 472
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/a;->a:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/a;->a:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 474
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/a;->n:Lcom/meizu/common/widget/LoadingView;

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/a;->n:Lcom/meizu/common/widget/LoadingView;

    invoke-virtual {v0}, Lcom/meizu/common/widget/LoadingView;->stopAnimator()V

    .line 478
    :cond_0
    return-void
.end method

.method static synthetic k(Lcom/meizu/flyme/media/news/lite/a;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/meizu/flyme/media/news/lite/a;->n()V

    return-void
.end method

.method static synthetic l(Lcom/meizu/flyme/media/news/lite/a;)Lcom/meizu/flyme/media/news/widget/NewsRecyclerView;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/a;->g:Lcom/meizu/flyme/media/news/widget/NewsRecyclerView;

    return-object v0
.end method

.method private l()V
    .locals 3

    .prologue
    .line 487
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_2

    .line 488
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/a;->w:Lcom/meizu/flyme/media/news/lite/a$a;

    if-nez v0, :cond_0

    .line 489
    new-instance v0, Lcom/meizu/flyme/media/news/lite/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/meizu/flyme/media/news/lite/a$a;-><init>(Lcom/meizu/flyme/media/news/lite/a;Lcom/meizu/flyme/media/news/lite/a$1;)V

    iput-object v0, p0, Lcom/meizu/flyme/media/news/lite/a;->w:Lcom/meizu/flyme/media/news/lite/a$a;

    .line 491
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 492
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 493
    iget-object v1, p0, Lcom/meizu/flyme/media/news/lite/a;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/meizu/flyme/media/news/lite/a;->w:Lcom/meizu/flyme/media/news/lite/a$a;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 500
    :cond_1
    :goto_0
    return-void

    .line 495
    :cond_2
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/a;->c:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 496
    if-eqz v0, :cond_1

    .line 497
    iget-object v1, p0, Lcom/meizu/flyme/media/news/lite/a;->x:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    goto :goto_0
.end method

.method private m()V
    .locals 2

    .prologue
    .line 503
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_1

    .line 504
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/a;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/meizu/flyme/media/news/lite/a;->w:Lcom/meizu/flyme/media/news/lite/a$a;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 511
    :cond_0
    :goto_0
    return-void

    .line 506
    :cond_1
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/a;->c:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 507
    if-eqz v0, :cond_0

    .line 508
    iget-object v1, p0, Lcom/meizu/flyme/media/news/lite/a;->x:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    goto :goto_0
.end method

.method private n()V
    .locals 2

    .prologue
    .line 543
    iget-boolean v0, p0, Lcom/meizu/flyme/media/news/lite/a;->u:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/a;->f:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 544
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/flyme/media/news/lite/a;->u:Z

    .line 545
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/a;->f:Landroid/view/View;

    new-instance v1, Lcom/meizu/flyme/media/news/lite/a$10;

    invoke-direct {v1, p0}, Lcom/meizu/flyme/media/news/lite/a$10;-><init>(Lcom/meizu/flyme/media/news/lite/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 552
    :cond_0
    return-void
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/a;->c:Landroid/content/Context;

    return-object v0
.end method

.method protected final a(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 111
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/a;->e:Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 112
    if-eqz p3, :cond_0

    if-eqz p2, :cond_0

    .line 113
    invoke-virtual {p2, v0, v2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 116
    :cond_0
    return-object v0
.end method

.method public a(Lcom/meizu/flyme/media/news/protocol/a;)V
    .locals 3
    .param p1    # Lcom/meizu/flyme/media/news/protocol/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 202
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/a;->r:Lcom/meizu/flyme/media/news/lite/i;

    if-nez v0, :cond_0

    .line 203
    const-string v0, "NewsFlowViewDelegate"

    const-string v1, "request data is null"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/meizu/flyme/media/news/helper/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 215
    :goto_0
    return-void

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/a;->t:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 207
    const-string v0, "NewsFlowViewDelegate"

    const-string v1, "requestData handler is null"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/meizu/flyme/media/news/helper/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 210
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/flyme/media/news/lite/a;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/flyme/media/news/lite/f;->a(Landroid/content/Context;)Lcom/meizu/flyme/media/news/lite/f$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/flyme/media/news/lite/f$a;->a()V

    .line 211
    invoke-static {}, Lcom/meizu/flyme/media/news/lite/f;->h()Lcom/meizu/flyme/media/news/lite/f;

    move-result-object v0

    iget v1, p0, Lcom/meizu/flyme/media/news/lite/a;->s:I

    iget-object v2, p0, Lcom/meizu/flyme/media/news/lite/a;->o:Lcom/meizu/flyme/media/news/lite/b;

    invoke-virtual {v0, v1, v2}, Lcom/meizu/flyme/media/news/lite/f;->a(ILcom/meizu/flyme/media/news/lite/b;)V

    .line 212
    invoke-static {}, Lcom/meizu/flyme/media/news/lite/f;->h()Lcom/meizu/flyme/media/news/lite/f;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/flyme/media/news/lite/a;->r:Lcom/meizu/flyme/media/news/lite/i;

    iget-object v2, p0, Lcom/meizu/flyme/media/news/lite/a;->b:Lcom/meizu/flyme/media/news/lite/f$b;

    invoke-virtual {v0, v1, v2}, Lcom/meizu/flyme/media/news/lite/f;->a(Lcom/meizu/flyme/media/news/lite/i;Lcom/meizu/flyme/media/news/lite/f$b;)V

    .line 213
    invoke-static {}, Lcom/meizu/flyme/media/news/lite/f;->h()Lcom/meizu/flyme/media/news/lite/f;

    move-result-object v0

    invoke-static {}, Lcom/meizu/flyme/media/news/lite/a;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/flyme/media/news/lite/f;->b(Landroid/content/Context;)V

    .line 214
    iput-object p1, p0, Lcom/meizu/flyme/media/news/lite/a;->q:Lcom/meizu/flyme/media/news/protocol/a;

    goto :goto_0
.end method

.method public c()Landroid/view/View;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/a;->f:Landroid/view/View;

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/a;->f:Landroid/view/View;

    return-object v0
.end method

.method protected d()Landroid/view/View;
    .locals 3

    .prologue
    .line 120
    sget v0, Lcom/meizu/flyme/media/news/lite/R$layout;->news_flow_layout:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/meizu/flyme/media/news/lite/a;->a(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public e()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 127
    invoke-virtual {p0}, Lcom/meizu/flyme/media/news/lite/a;->a()Landroid/content/Context;

    move-result-object v1

    .line 128
    invoke-virtual {p0}, Lcom/meizu/flyme/media/news/lite/a;->d()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/flyme/media/news/lite/a;->f:Landroid/view/View;

    .line 129
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/a;->f:Landroid/view/View;

    sget v2, Lcom/meizu/flyme/media/news/lite/R$id;->news_recycle_view:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/flyme/media/news/widget/NewsRecyclerView;

    iput-object v0, p0, Lcom/meizu/flyme/media/news/lite/a;->g:Lcom/meizu/flyme/media/news/widget/NewsRecyclerView;

    .line 131
    new-instance v0, Lflyme/support/v7/widget/LinearLayoutManager;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, Lflyme/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/meizu/flyme/media/news/lite/a;->h:Lflyme/support/v7/widget/LinearLayoutManager;

    .line 132
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/a;->g:Lcom/meizu/flyme/media/news/widget/NewsRecyclerView;

    iget-object v2, p0, Lcom/meizu/flyme/media/news/lite/a;->h:Lflyme/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, v2}, Lcom/meizu/flyme/media/news/widget/NewsRecyclerView;->setLayoutManager(Lflyme/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 134
    new-instance v0, Lflyme/support/v7/widget/MzItemDecoration;

    invoke-direct {v0, v1}, Lflyme/support/v7/widget/MzItemDecoration;-><init>(Landroid/content/Context;)V

    .line 165
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/flyme/media/news/lite/R$dimen;->news_lite_list_item_divider_height_hide:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lflyme/support/v7/widget/MzItemDecoration;->setDividerHeight(I)V

    .line 166
    iget-object v1, p0, Lcom/meizu/flyme/media/news/lite/a;->g:Lcom/meizu/flyme/media/news/widget/NewsRecyclerView;

    invoke-virtual {v1, v0}, Lcom/meizu/flyme/media/news/widget/NewsRecyclerView;->addItemDecoration(Lflyme/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 168
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/a;->g:Lcom/meizu/flyme/media/news/widget/NewsRecyclerView;

    invoke-virtual {v0, v3}, Lcom/meizu/flyme/media/news/widget/NewsRecyclerView;->setItemViewCacheSize(I)V

    .line 169
    new-instance v0, Lcom/meizu/flyme/media/news/lite/b;

    invoke-virtual {p0}, Lcom/meizu/flyme/media/news/lite/a;->a()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/flyme/media/news/lite/a;->r:Lcom/meizu/flyme/media/news/lite/i;

    invoke-direct {v0, v1, v2}, Lcom/meizu/flyme/media/news/lite/b;-><init>(Landroid/content/Context;Lcom/meizu/flyme/media/news/lite/i;)V

    iput-object v0, p0, Lcom/meizu/flyme/media/news/lite/a;->o:Lcom/meizu/flyme/media/news/lite/b;

    .line 170
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/a;->g:Lcom/meizu/flyme/media/news/widget/NewsRecyclerView;

    iget-object v1, p0, Lcom/meizu/flyme/media/news/lite/a;->o:Lcom/meizu/flyme/media/news/lite/b;

    invoke-virtual {v0, v1}, Lcom/meizu/flyme/media/news/widget/NewsRecyclerView;->setAdapter(Lflyme/support/v7/widget/RecyclerView$Adapter;)V

    .line 171
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/a;->o:Lcom/meizu/flyme/media/news/lite/b;

    iget-object v1, p0, Lcom/meizu/flyme/media/news/lite/a;->g:Lcom/meizu/flyme/media/news/widget/NewsRecyclerView;

    invoke-virtual {v0, v1}, Lcom/meizu/flyme/media/news/lite/b;->a(Landroid/view/View;)V

    .line 173
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/a;->o:Lcom/meizu/flyme/media/news/lite/b;

    new-instance v1, Lcom/meizu/flyme/media/news/lite/a$3;

    invoke-direct {v1, p0}, Lcom/meizu/flyme/media/news/lite/a$3;-><init>(Lcom/meizu/flyme/media/news/lite/a;)V

    invoke-virtual {v0, v1}, Lcom/meizu/flyme/media/news/lite/b;->a(Lcom/meizu/flyme/media/news/lite/b$c;)V

    .line 179
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/a;->g:Lcom/meizu/flyme/media/news/widget/NewsRecyclerView;

    new-instance v1, Lcom/meizu/flyme/media/news/lite/a$4;

    invoke-direct {v1, p0}, Lcom/meizu/flyme/media/news/lite/a$4;-><init>(Lcom/meizu/flyme/media/news/lite/a;)V

    invoke-virtual {v0, v1}, Lcom/meizu/flyme/media/news/widget/NewsRecyclerView;->setOnItemClickListener(Lflyme/support/v7/widget/MzRecyclerView$OnItemClickListener;)V

    .line 188
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/a;->f:Landroid/view/View;

    sget v1, Lcom/meizu/flyme/media/news/lite/R$id;->news_loading_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/meizu/flyme/media/news/lite/a;->a:Landroid/widget/RelativeLayout;

    .line 189
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/a;->f:Landroid/view/View;

    sget v1, Lcom/meizu/flyme/media/news/lite/R$id;->news_refresh_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/widget/LoadingView;

    iput-object v0, p0, Lcom/meizu/flyme/media/news/lite/a;->n:Lcom/meizu/common/widget/LoadingView;

    .line 190
    invoke-static {}, Lcom/meizu/flyme/media/news/lite/NewsFlowView;->getLoadingColor()I

    move-result v0

    .line 191
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 192
    invoke-virtual {p0}, Lcom/meizu/flyme/media/news/lite/a;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/flyme/media/news/lite/R$color;->mz_theme_color_blue:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 194
    :cond_0
    iget-object v1, p0, Lcom/meizu/flyme/media/news/lite/a;->n:Lcom/meizu/common/widget/LoadingView;

    invoke-virtual {v1, v0}, Lcom/meizu/common/widget/LoadingView;->setBarColor(I)V

    .line 195
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/a;->n:Lcom/meizu/common/widget/LoadingView;

    invoke-virtual {p0}, Lcom/meizu/flyme/media/news/lite/a;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/flyme/media/news/lite/R$color;->mc_loading_view_background_light:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/LoadingView;->setBarBackgroundColor(I)V

    .line 196
    new-instance v0, Lcom/meizu/flyme/media/news/lite/f$b;

    iget-object v1, p0, Lcom/meizu/flyme/media/news/lite/a;->v:Lcom/meizu/flyme/media/news/protocol/b;

    iget v2, p0, Lcom/meizu/flyme/media/news/lite/a;->s:I

    invoke-direct {v0, v1, v2}, Lcom/meizu/flyme/media/news/lite/f$b;-><init>(Lcom/meizu/flyme/media/news/protocol/b;I)V

    iput-object v0, p0, Lcom/meizu/flyme/media/news/lite/a;->b:Lcom/meizu/flyme/media/news/lite/f$b;

    .line 197
    invoke-direct {p0}, Lcom/meizu/flyme/media/news/lite/a;->l()V

    .line 198
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/a;->y:Landroid/view/View$OnApplyWindowInsetsListener;

    invoke-direct {p0, v0}, Lcom/meizu/flyme/media/news/lite/a;->a(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 199
    return-void
.end method

.method public f()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 442
    const-string v0, "NewsFlowViewDelegate"

    const-string v1, "onDestroy"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/meizu/flyme/media/news/helper/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 443
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/a;->b:Lcom/meizu/flyme/media/news/lite/f$b;

    if-eqz v0, :cond_0

    .line 444
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/a;->b:Lcom/meizu/flyme/media/news/lite/f$b;

    iget-object v1, p0, Lcom/meizu/flyme/media/news/lite/a;->v:Lcom/meizu/flyme/media/news/protocol/b;

    invoke-virtual {v0, v1}, Lcom/meizu/flyme/media/news/lite/f$b;->a(Lcom/meizu/flyme/media/news/protocol/b;)V

    .line 445
    iput-object v3, p0, Lcom/meizu/flyme/media/news/lite/a;->b:Lcom/meizu/flyme/media/news/lite/f$b;

    .line 447
    :cond_0
    invoke-direct {p0}, Lcom/meizu/flyme/media/news/lite/a;->m()V

    .line 448
    invoke-static {}, Lcom/meizu/flyme/media/news/lite/f;->h()Lcom/meizu/flyme/media/news/lite/f;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/flyme/media/news/lite/a;->r:Lcom/meizu/flyme/media/news/lite/i;

    invoke-virtual {v1}, Lcom/meizu/flyme/media/news/lite/i;->a()I

    move-result v1

    iget-object v2, p0, Lcom/meizu/flyme/media/news/lite/a;->r:Lcom/meizu/flyme/media/news/lite/i;

    invoke-virtual {v2}, Lcom/meizu/flyme/media/news/lite/i;->c()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/meizu/flyme/media/news/lite/f;->b(IZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 449
    invoke-virtual {p0}, Lcom/meizu/flyme/media/news/lite/a;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/flyme/media/news/helper/b;->c(Landroid/content/Context;)V

    .line 450
    invoke-static {}, Lcom/meizu/flyme/media/news/lite/f;->h()Lcom/meizu/flyme/media/news/lite/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/flyme/media/news/lite/f;->i()Z

    .line 452
    :cond_1
    iput-object v3, p0, Lcom/meizu/flyme/media/news/lite/a;->q:Lcom/meizu/flyme/media/news/protocol/a;

    .line 453
    invoke-static {}, Lcom/meizu/flyme/media/news/lite/f;->h()Lcom/meizu/flyme/media/news/lite/f;

    move-result-object v0

    iget v1, p0, Lcom/meizu/flyme/media/news/lite/a;->s:I

    invoke-virtual {v0, v1}, Lcom/meizu/flyme/media/news/lite/f;->n(I)V

    .line 454
    invoke-virtual {p0}, Lcom/meizu/flyme/media/news/lite/a;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/flyme/media/news/a/f;->a(Landroid/content/Context;)V

    .line 455
    invoke-static {}, Lcom/meizu/flyme/media/news/helper/f;->b()V

    .line 456
    return-void
.end method

.method public g()Landroid/view/View;
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/a;->g:Lcom/meizu/flyme/media/news/widget/NewsRecyclerView;

    return-object v0
.end method
