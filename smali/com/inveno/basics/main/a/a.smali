.class public Lcom/inveno/basics/main/a/a;
.super Lflyme/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inveno/basics/main/a/a$g;,
        Lcom/inveno/basics/main/a/a$a;,
        Lcom/inveno/basics/main/a/a$c;,
        Lcom/inveno/basics/main/a/a$e;,
        Lcom/inveno/basics/main/a/a$f;,
        Lcom/inveno/basics/main/a/a$b;,
        Lcom/inveno/basics/main/a/a$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lflyme/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lflyme/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/inveno/se/model/ZZNewsinfo;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/widget/RelativeLayout$LayoutParams;

.field private d:Landroid/widget/RelativeLayout$LayoutParams;

.field private e:Landroid/widget/LinearLayout$LayoutParams;

.field private f:Landroid/widget/LinearLayout$LayoutParams;

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:Ljava/lang/String;

.field private n:Lcom/inveno/basics/main/a/a$g;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/high16 v4, 0x40a00000    # 5.0f

    const/4 v3, 0x0

    .line 70
    invoke-direct {p0}, Lflyme/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 47
    iput v3, p0, Lcom/inveno/basics/main/a/a;->g:I

    .line 48
    iput v3, p0, Lcom/inveno/basics/main/a/a;->h:I

    .line 49
    iput v3, p0, Lcom/inveno/basics/main/a/a;->i:I

    .line 50
    iput v3, p0, Lcom/inveno/basics/main/a/a;->j:I

    .line 51
    iput v3, p0, Lcom/inveno/basics/main/a/a;->k:I

    .line 52
    iput v3, p0, Lcom/inveno/basics/main/a/a;->l:I

    .line 71
    iput-object p1, p0, Lcom/inveno/basics/main/a/a;->a:Landroid/content/Context;

    .line 72
    iput-object p2, p0, Lcom/inveno/basics/main/a/a;->m:Ljava/lang/String;

    .line 73
    invoke-direct {p0, p1}, Lcom/inveno/basics/main/a/a;->a(Landroid/content/Context;)V

    .line 75
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/inveno/basics/main/a/a;->g:I

    iget v2, p0, Lcom/inveno/basics/main/a/a;->h:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/inveno/basics/main/a/a;->c:Landroid/widget/RelativeLayout$LayoutParams;

    .line 76
    iget-object v0, p0, Lcom/inveno/basics/main/a/a;->c:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 77
    iget-object v0, p0, Lcom/inveno/basics/main/a/a;->c:Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, 0x3

    sget v2, Lcom/inveno/basics/R$id;->item_title:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 78
    iget-object v0, p0, Lcom/inveno/basics/main/a/a;->c:Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {p1, v1}, Lcom/inveno/se/tools/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 80
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/inveno/basics/main/a/a;->i:I

    iget v2, p0, Lcom/inveno/basics/main/a/a;->j:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/inveno/basics/main/a/a;->d:Landroid/widget/RelativeLayout$LayoutParams;

    .line 81
    iget-object v0, p0, Lcom/inveno/basics/main/a/a;->d:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 82
    iget-object v0, p0, Lcom/inveno/basics/main/a/a;->d:Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {p1, v1}, Lcom/inveno/se/tools/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 84
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/inveno/basics/main/a/a;->k:I

    iget v2, p0, Lcom/inveno/basics/main/a/a;->l:I

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/inveno/basics/main/a/a;->e:Landroid/widget/LinearLayout$LayoutParams;

    .line 86
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/inveno/basics/main/a/a;->k:I

    iget v2, p0, Lcom/inveno/basics/main/a/a;->l:I

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/inveno/basics/main/a/a;->f:Landroid/widget/LinearLayout$LayoutParams;

    .line 87
    iget-object v0, p0, Lcom/inveno/basics/main/a/a;->f:Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p1, v4}, Lcom/inveno/se/tools/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    .line 88
    invoke-static {p1, v4}, Lcom/inveno/se/tools/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    .line 87
    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 89
    return-void
.end method

.method static synthetic a(Lcom/inveno/basics/main/a/a;)Lcom/inveno/basics/main/a/a$g;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/inveno/basics/main/a/a;->n:Lcom/inveno/basics/main/a/a$g;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 638
    .line 639
    invoke-static {}, Lcom/inveno/se/tools/DeviceConfig;->getDeviceWidth()I

    move-result v0

    invoke-static {}, Lcom/inveno/se/tools/DeviceConfig;->getDeviceHeight()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 640
    invoke-static {}, Lcom/inveno/se/tools/DeviceConfig;->getDeviceHeight()I

    move-result v0

    .line 645
    :goto_0
    const/high16 v1, 0x42000000    # 32.0f

    invoke-static {p1, v1}, Lcom/inveno/se/tools/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    .line 646
    sub-int v1, v0, v1

    iput v1, p0, Lcom/inveno/basics/main/a/a;->g:I

    .line 647
    iget v1, p0, Lcom/inveno/basics/main/a/a;->g:I

    int-to-double v2, v1

    const-wide v4, 0x3fdae147ae147ae1L    # 0.42

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iput v1, p0, Lcom/inveno/basics/main/a/a;->h:I

    .line 648
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5927\u56fe\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/inveno/basics/main/a/a;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/inveno/basics/main/a/a;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inveno/se/tools/LogTools;->showLogA(Ljava/lang/String;)V

    .line 650
    const/high16 v1, 0x42b40000    # 90.0f

    invoke-static {p1, v1}, Lcom/inveno/se/tools/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lcom/inveno/basics/main/a/a;->i:I

    .line 651
    const/high16 v1, 0x42840000    # 66.0f

    invoke-static {p1, v1}, Lcom/inveno/se/tools/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lcom/inveno/basics/main/a/a;->j:I

    .line 652
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5355\u56fe\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/inveno/basics/main/a/a;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/inveno/basics/main/a/a;->j:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inveno/se/tools/LogTools;->showLogA(Ljava/lang/String;)V

    .line 654
    const/high16 v1, 0x42280000    # 42.0f

    invoke-static {p1, v1}, Lcom/inveno/se/tools/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    .line 655
    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/inveno/basics/main/a/a;->k:I

    .line 656
    iget v0, p0, Lcom/inveno/basics/main/a/a;->k:I

    int-to-double v0, v0

    const-wide v2, 0x3fe570a3d70a3d71L    # 0.67

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/inveno/basics/main/a/a;->l:I

    .line 657
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5355\u56fe\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/inveno/basics/main/a/a;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/inveno/basics/main/a/a;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLogA(Ljava/lang/String;)V

    .line 658
    return-void

    .line 642
    :cond_0
    invoke-static {}, Lcom/inveno/se/tools/DeviceConfig;->getDeviceWidth()I

    move-result v0

    goto/16 :goto_0
.end method

.method private a(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 3

    .prologue
    .line 630
    iget-object v0, p0, Lcom/inveno/basics/main/a/a;->a:Landroid/content/Context;

    const-string v1, "centerCrop"

    sget v2, Lcom/inveno/basics/R$color;->img_background:I

    invoke-static {v0, p2, p1, v1, v2}, Lcom/inveno/basics/c/b;->a(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;I)V

    .line 632
    return-void
.end method


# virtual methods
.method public a()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/inveno/se/model/ZZNewsinfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/inveno/basics/main/a/a;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method public a(Lcom/inveno/basics/main/a/a$g;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/inveno/basics/main/a/a;->n:Lcom/inveno/basics/main/a/a$g;

    .line 60
    return-void
.end method

.method public a(Lflyme/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 330
    :try_start_0
    check-cast p1, Lcom/inveno/basics/main/a/a$d;

    .line 331
    iget-object v0, p0, Lcom/inveno/basics/main/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/se/model/ZZNewsinfo;

    .line 333
    iget-object v1, p1, Lcom/inveno/basics/main/a/a$d;->b:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/inveno/basics/main/a/a;->d:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 335
    invoke-virtual {v0}, Lcom/inveno/se/model/ZZNewsinfo;->getImgs()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/inveno/se/model/ZZNewsinfo;->getImgs()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 336
    invoke-virtual {v0}, Lcom/inveno/se/model/ZZNewsinfo;->getImgs()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inveno/se/model/multimedia/Imgs;

    .line 338
    invoke-virtual {v1}, Lcom/inveno/se/model/multimedia/Imgs;->getFm()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "gif"

    invoke-virtual {v1}, Lcom/inveno/se/model/multimedia/Imgs;->getFm()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 339
    invoke-virtual {v1}, Lcom/inveno/se/model/multimedia/Imgs;->getSurl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 340
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/inveno/se/model/multimedia/Imgs;->getSurl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/inveno/basics/main/a/a;->k:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/inveno/basics/main/a/a;->l:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 346
    :goto_0
    iget-object v2, p1, Lcom/inveno/basics/main/a/a$d;->b:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v2}, Lcom/inveno/basics/main/a/a;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 349
    :cond_0
    invoke-virtual {v0}, Lcom/inveno/se/model/ZZNewsinfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 350
    iget-object v1, p1, Lcom/inveno/basics/main/a/a$d;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/inveno/se/model/ZZNewsinfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 351
    iget-object v1, p1, Lcom/inveno/basics/main/a/a$d;->c:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 356
    :goto_1
    invoke-virtual {v0}, Lcom/inveno/se/model/ZZNewsinfo;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 357
    iget-object v1, p1, Lcom/inveno/basics/main/a/a$d;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/inveno/se/model/ZZNewsinfo;->getSource()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 358
    iget-object v1, p1, Lcom/inveno/basics/main/a/a$d;->d:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 363
    :goto_2
    iget-object v1, p1, Lcom/inveno/basics/main/a/a$d;->a:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/inveno/basics/main/a/a$1;

    invoke-direct {v2, p0, p2}, Lcom/inveno/basics/main/a/a$1;-><init>(Lcom/inveno/basics/main/a/a;I)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 372
    iget-object v1, p0, Lcom/inveno/basics/main/a/a;->m:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/inveno/se/model/ZZNewsinfo;->getContent_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/inveno/se/model/ZZNewsinfo;->getCpack()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/inveno/se/model/ZZNewsinfo;->getServer_time()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/inveno/reportsdk/XZReportAgent;->onItemShow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 376
    :goto_3
    return-void

    .line 342
    :cond_1
    invoke-virtual {v1}, Lcom/inveno/se/model/multimedia/Imgs;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 343
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/inveno/se/model/multimedia/Imgs;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/inveno/basics/main/a/a;->k:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/inveno/basics/main/a/a;->l:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 353
    :cond_2
    iget-object v1, p1, Lcom/inveno/basics/main/a/a$d;->c:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 373
    :catch_0
    move-exception v0

    .line 374
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;)V

    goto :goto_3

    .line 360
    :cond_3
    :try_start_1
    iget-object v1, p1, Lcom/inveno/basics/main/a/a$d;->d:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    :cond_4
    move-object v1, v2

    goto/16 :goto_0
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/inveno/se/model/ZZNewsinfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 67
    iput-object p1, p0, Lcom/inveno/basics/main/a/a;->b:Ljava/util/ArrayList;

    .line 68
    return-void
.end method

.method public b(Lflyme/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 386
    :try_start_0
    check-cast p1, Lcom/inveno/basics/main/a/a$b;

    .line 387
    iget-object v0, p0, Lcom/inveno/basics/main/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/se/model/ZZNewsinfo;

    .line 389
    iget-object v1, p1, Lcom/inveno/basics/main/a/a$b;->b:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/inveno/basics/main/a/a;->c:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 391
    invoke-virtual {v0}, Lcom/inveno/se/model/ZZNewsinfo;->getImgs()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/inveno/se/model/ZZNewsinfo;->getImgs()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 392
    invoke-virtual {v0}, Lcom/inveno/se/model/ZZNewsinfo;->getImgs()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inveno/se/model/multimedia/Imgs;

    .line 394
    invoke-virtual {v1}, Lcom/inveno/se/model/multimedia/Imgs;->getFm()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "gif"

    invoke-virtual {v1}, Lcom/inveno/se/model/multimedia/Imgs;->getFm()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 395
    invoke-virtual {v1}, Lcom/inveno/se/model/multimedia/Imgs;->getSurl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 396
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/inveno/se/model/multimedia/Imgs;->getSurl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/inveno/basics/main/a/a;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/inveno/basics/main/a/a;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 402
    :goto_0
    iget-object v2, p1, Lcom/inveno/basics/main/a/a$b;->b:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v2}, Lcom/inveno/basics/main/a/a;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 405
    :cond_0
    invoke-virtual {v0}, Lcom/inveno/se/model/ZZNewsinfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 406
    iget-object v1, p1, Lcom/inveno/basics/main/a/a$b;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/inveno/se/model/ZZNewsinfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 407
    iget-object v1, p1, Lcom/inveno/basics/main/a/a$b;->c:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 412
    :goto_1
    invoke-virtual {v0}, Lcom/inveno/se/model/ZZNewsinfo;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 413
    iget-object v1, p1, Lcom/inveno/basics/main/a/a$b;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/inveno/se/model/ZZNewsinfo;->getSource()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 414
    iget-object v1, p1, Lcom/inveno/basics/main/a/a$b;->d:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 419
    :goto_2
    iget-object v1, p1, Lcom/inveno/basics/main/a/a$b;->a:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/inveno/basics/main/a/a$2;

    invoke-direct {v2, p0, p2}, Lcom/inveno/basics/main/a/a$2;-><init>(Lcom/inveno/basics/main/a/a;I)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 428
    iget-object v1, p0, Lcom/inveno/basics/main/a/a;->m:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/inveno/se/model/ZZNewsinfo;->getContent_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/inveno/se/model/ZZNewsinfo;->getCpack()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/inveno/se/model/ZZNewsinfo;->getServer_time()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/inveno/reportsdk/XZReportAgent;->onItemShow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 432
    :goto_3
    return-void

    .line 398
    :cond_1
    invoke-virtual {v1}, Lcom/inveno/se/model/multimedia/Imgs;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 399
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/inveno/se/model/multimedia/Imgs;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/inveno/basics/main/a/a;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/inveno/basics/main/a/a;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 409
    :cond_2
    iget-object v1, p1, Lcom/inveno/basics/main/a/a$b;->c:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 429
    :catch_0
    move-exception v0

    .line 430
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;)V

    goto :goto_3

    .line 416
    :cond_3
    :try_start_1
    iget-object v1, p1, Lcom/inveno/basics/main/a/a$b;->d:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    :cond_4
    move-object v1, v2

    goto/16 :goto_0
.end method

.method public c(Lflyme/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 442
    :try_start_0
    check-cast p1, Lcom/inveno/basics/main/a/a$e;

    .line 443
    iget-object v0, p0, Lcom/inveno/basics/main/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/se/model/ZZNewsinfo;

    .line 445
    iget-object v1, p1, Lcom/inveno/basics/main/a/a$e;->b:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/inveno/basics/main/a/a;->e:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 446
    iget-object v1, p1, Lcom/inveno/basics/main/a/a$e;->c:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/inveno/basics/main/a/a;->f:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 447
    iget-object v1, p1, Lcom/inveno/basics/main/a/a$e;->d:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/inveno/basics/main/a/a;->e:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 449
    invoke-virtual {v0}, Lcom/inveno/se/model/ZZNewsinfo;->getImgs()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/inveno/se/model/ZZNewsinfo;->getImgs()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 450
    invoke-virtual {v0}, Lcom/inveno/se/model/ZZNewsinfo;->getImgs()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inveno/se/model/multimedia/Imgs;

    .line 452
    invoke-virtual {v1}, Lcom/inveno/se/model/multimedia/Imgs;->getFm()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "gif"

    invoke-virtual {v1}, Lcom/inveno/se/model/multimedia/Imgs;->getFm()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 453
    invoke-virtual {v1}, Lcom/inveno/se/model/multimedia/Imgs;->getSurl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 454
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/inveno/se/model/multimedia/Imgs;->getSurl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "&width="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/inveno/basics/main/a/a;->k:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "&height="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/inveno/basics/main/a/a;->l:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 460
    :goto_0
    iget-object v3, p1, Lcom/inveno/basics/main/a/a$e;->b:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v3}, Lcom/inveno/basics/main/a/a;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 463
    :cond_0
    invoke-virtual {v0}, Lcom/inveno/se/model/ZZNewsinfo;->getImgs()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/inveno/se/model/ZZNewsinfo;->getImgs()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 464
    invoke-virtual {v0}, Lcom/inveno/se/model/ZZNewsinfo;->getImgs()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inveno/se/model/multimedia/Imgs;

    .line 466
    invoke-virtual {v1}, Lcom/inveno/se/model/multimedia/Imgs;->getFm()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "gif"

    invoke-virtual {v1}, Lcom/inveno/se/model/multimedia/Imgs;->getFm()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 467
    invoke-virtual {v1}, Lcom/inveno/se/model/multimedia/Imgs;->getSurl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 468
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/inveno/se/model/multimedia/Imgs;->getSurl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "&width="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/inveno/basics/main/a/a;->k:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "&height="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/inveno/basics/main/a/a;->l:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 474
    :goto_1
    iget-object v3, p1, Lcom/inveno/basics/main/a/a$e;->c:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v3}, Lcom/inveno/basics/main/a/a;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 477
    :cond_1
    invoke-virtual {v0}, Lcom/inveno/se/model/ZZNewsinfo;->getImgs()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/inveno/se/model/ZZNewsinfo;->getImgs()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 478
    invoke-virtual {v0}, Lcom/inveno/se/model/ZZNewsinfo;->getImgs()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inveno/se/model/multimedia/Imgs;

    .line 480
    invoke-virtual {v1}, Lcom/inveno/se/model/multimedia/Imgs;->getFm()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "gif"

    invoke-virtual {v1}, Lcom/inveno/se/model/multimedia/Imgs;->getFm()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 481
    invoke-virtual {v1}, Lcom/inveno/se/model/multimedia/Imgs;->getSurl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 482
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/inveno/se/model/multimedia/Imgs;->getSurl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/inveno/basics/main/a/a;->k:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/inveno/basics/main/a/a;->l:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 488
    :goto_2
    iget-object v2, p1, Lcom/inveno/basics/main/a/a$e;->d:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v2}, Lcom/inveno/basics/main/a/a;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 491
    :cond_2
    invoke-virtual {v0}, Lcom/inveno/se/model/ZZNewsinfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 492
    iget-object v1, p1, Lcom/inveno/basics/main/a/a$e;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/inveno/se/model/ZZNewsinfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 493
    iget-object v1, p1, Lcom/inveno/basics/main/a/a$e;->e:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 498
    :goto_3
    invoke-virtual {v0}, Lcom/inveno/se/model/ZZNewsinfo;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 499
    iget-object v1, p1, Lcom/inveno/basics/main/a/a$e;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/inveno/se/model/ZZNewsinfo;->getSource()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 500
    iget-object v1, p1, Lcom/inveno/basics/main/a/a$e;->f:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 505
    :goto_4
    iget-object v1, p1, Lcom/inveno/basics/main/a/a$e;->a:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/inveno/basics/main/a/a$3;

    invoke-direct {v2, p0, p2}, Lcom/inveno/basics/main/a/a$3;-><init>(Lcom/inveno/basics/main/a/a;I)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 514
    iget-object v1, p0, Lcom/inveno/basics/main/a/a;->m:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/inveno/se/model/ZZNewsinfo;->getContent_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/inveno/se/model/ZZNewsinfo;->getCpack()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/inveno/se/model/ZZNewsinfo;->getServer_time()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/inveno/reportsdk/XZReportAgent;->onItemShow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 519
    :goto_5
    return-void

    .line 456
    :cond_3
    invoke-virtual {v1}, Lcom/inveno/se/model/multimedia/Imgs;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 457
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/inveno/se/model/multimedia/Imgs;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "&width="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/inveno/basics/main/a/a;->k:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "&height="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/inveno/basics/main/a/a;->l:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 470
    :cond_4
    invoke-virtual {v1}, Lcom/inveno/se/model/multimedia/Imgs;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 471
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/inveno/se/model/multimedia/Imgs;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "&width="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/inveno/basics/main/a/a;->k:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "&height="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/inveno/basics/main/a/a;->l:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 484
    :cond_5
    invoke-virtual {v1}, Lcom/inveno/se/model/multimedia/Imgs;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 485
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/inveno/se/model/multimedia/Imgs;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/inveno/basics/main/a/a;->k:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/inveno/basics/main/a/a;->l:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 495
    :cond_6
    iget-object v1, p1, Lcom/inveno/basics/main/a/a$e;->e:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 515
    :catch_0
    move-exception v0

    .line 516
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 502
    :cond_7
    :try_start_1
    iget-object v1, p1, Lcom/inveno/basics/main/a/a$e;->f:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4

    :cond_8
    move-object v1, v2

    goto/16 :goto_2

    :cond_9
    move-object v1, v2

    goto/16 :goto_1

    :cond_a
    move-object v1, v2

    goto/16 :goto_0
.end method

.method public d(Lflyme/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 8

    .prologue
    .line 529
    :try_start_0
    check-cast p1, Lcom/inveno/basics/main/a/a$f;

    .line 530
    iget-object v0, p0, Lcom/inveno/basics/main/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/se/model/ZZNewsinfo;

    .line 531
    invoke-virtual {v0}, Lcom/inveno/se/model/ZZNewsinfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 532
    iget-object v1, p1, Lcom/inveno/basics/main/a/a$f;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/inveno/se/model/ZZNewsinfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 533
    iget-object v1, p1, Lcom/inveno/basics/main/a/a$f;->b:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 538
    :goto_0
    invoke-virtual {v0}, Lcom/inveno/se/model/ZZNewsinfo;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 539
    iget-object v1, p1, Lcom/inveno/basics/main/a/a$f;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/inveno/se/model/ZZNewsinfo;->getSource()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 540
    iget-object v1, p1, Lcom/inveno/basics/main/a/a$f;->c:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 545
    :goto_1
    iget-object v1, p1, Lcom/inveno/basics/main/a/a$f;->a:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/inveno/basics/main/a/a$4;

    invoke-direct {v2, p0, p2}, Lcom/inveno/basics/main/a/a$4;-><init>(Lcom/inveno/basics/main/a/a;I)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 554
    iget-object v1, p0, Lcom/inveno/basics/main/a/a;->m:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/inveno/se/model/ZZNewsinfo;->getContent_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/inveno/se/model/ZZNewsinfo;->getCpack()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/inveno/se/model/ZZNewsinfo;->getServer_time()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/inveno/reportsdk/XZReportAgent;->onItemShow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 558
    :goto_2
    return-void

    .line 535
    :cond_0
    iget-object v1, p1, Lcom/inveno/basics/main/a/a$f;->b:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 555
    :catch_0
    move-exception v0

    .line 556
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;)V

    goto :goto_2

    .line 542
    :cond_1
    :try_start_1
    iget-object v1, p1, Lcom/inveno/basics/main/a/a$f;->c:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public e(Lflyme/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 5

    .prologue
    .line 568
    :try_start_0
    check-cast p1, Lcom/inveno/basics/main/a/a$c;

    .line 569
    iget-object v0, p0, Lcom/inveno/basics/main/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/se/model/ZZNewsinfo;

    invoke-virtual {v0}, Lcom/inveno/se/model/ZZNewsinfo;->getAdObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/nxadsdk/model/NativeAd;

    .line 571
    iget-object v1, p1, Lcom/inveno/basics/main/a/a$c;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/inveno/nxadsdk/model/NativeAd;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 572
    iget-object v1, p1, Lcom/inveno/basics/main/a/a$c;->b:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/inveno/basics/main/a/a;->d:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 574
    iget-object v1, p0, Lcom/inveno/basics/main/a/a;->a:Landroid/content/Context;

    iget-object v2, p1, Lcom/inveno/basics/main/a/a$c;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/inveno/nxadsdk/model/NativeAd;->e()Ljava/lang/String;

    move-result-object v0

    const-string v3, "centerCrop"

    sget v4, Lcom/inveno/basics/R$color;->img_background:I

    invoke-static {v1, v2, v0, v3, v4}, Lcom/inveno/basics/c/b;->a(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;I)V

    .line 577
    iget-object v0, p1, Lcom/inveno/basics/main/a/a$c;->a:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/inveno/basics/main/a/a$5;

    invoke-direct {v1, p0, p2}, Lcom/inveno/basics/main/a/a$5;-><init>(Lcom/inveno/basics/main/a/a;I)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 591
    :goto_0
    return-void

    .line 588
    :catch_0
    move-exception v0

    .line 589
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public f(Lflyme/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 5

    .prologue
    .line 601
    :try_start_0
    check-cast p1, Lcom/inveno/basics/main/a/a$a;

    .line 602
    iget-object v0, p0, Lcom/inveno/basics/main/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/se/model/ZZNewsinfo;

    invoke-virtual {v0}, Lcom/inveno/se/model/ZZNewsinfo;->getAdObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/nxadsdk/model/NativeAd;

    .line 604
    iget-object v1, p1, Lcom/inveno/basics/main/a/a$a;->b:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/inveno/basics/main/a/a;->c:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 605
    iget-object v1, p1, Lcom/inveno/basics/main/a/a$a;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/inveno/nxadsdk/model/NativeAd;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 607
    iget-object v1, p0, Lcom/inveno/basics/main/a/a;->a:Landroid/content/Context;

    iget-object v2, p1, Lcom/inveno/basics/main/a/a$a;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/inveno/nxadsdk/model/NativeAd;->e()Ljava/lang/String;

    move-result-object v0

    const-string v3, "centerCrop"

    sget v4, Lcom/inveno/basics/R$color;->img_background:I

    invoke-static {v1, v2, v0, v3, v4}, Lcom/inveno/basics/c/b;->a(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;I)V

    .line 610
    iget-object v0, p1, Lcom/inveno/basics/main/a/a$a;->a:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/inveno/basics/main/a/a$6;

    invoke-direct {v1, p0, p2}, Lcom/inveno/basics/main/a/a$6;-><init>(Lcom/inveno/basics/main/a/a;I)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 624
    :goto_0
    return-void

    .line 621
    :catch_0
    move-exception v0

    .line 622
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/inveno/basics/main/a/a;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/inveno/basics/main/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 8

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x4

    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 100
    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/inveno/basics/main/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/inveno/basics/main/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/se/model/ZZNewsinfo;

    invoke-virtual {v0}, Lcom/inveno/se/model/ZZNewsinfo;->getImgs()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/inveno/basics/main/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/se/model/ZZNewsinfo;

    invoke-virtual {v0}, Lcom/inveno/se/model/ZZNewsinfo;->getImgs()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_c

    .line 103
    iget-object v0, p0, Lcom/inveno/basics/main/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/se/model/ZZNewsinfo;

    invoke-virtual {v0}, Lcom/inveno/se/model/ZZNewsinfo;->getImgs()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    move v6, v0

    .line 110
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/inveno/basics/main/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/se/model/ZZNewsinfo;

    invoke-virtual {v0}, Lcom/inveno/se/model/ZZNewsinfo;->getFlag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inveno/basics/main/a/a;->b:Ljava/util/ArrayList;

    .line 111
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/se/model/ZZNewsinfo;

    invoke-virtual {v0}, Lcom/inveno/se/model/ZZNewsinfo;->getFlag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v5, :cond_0

    .line 112
    iget-object v0, p0, Lcom/inveno/basics/main/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/se/model/ZZNewsinfo;

    invoke-virtual {v0}, Lcom/inveno/se/model/ZZNewsinfo;->getFlag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 163
    :goto_2
    return v1

    .line 105
    :catch_0
    move-exception v0

    move v6, v1

    .line 106
    goto :goto_1

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/inveno/basics/main/a/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/inveno/se/tools/NetWorkUtil;->getAPNType(Landroid/content/Context;)Lcom/inveno/se/tools/NetWorkUtil$netType;

    move-result-object v0

    sget-object v7, Lcom/inveno/se/tools/NetWorkUtil$netType;->wifi:Lcom/inveno/se/tools/NetWorkUtil$netType;

    if-ne v0, v7, :cond_7

    .line 116
    iget-object v0, p0, Lcom/inveno/basics/main/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inveno/basics/main/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/se/model/ZZNewsinfo;

    invoke-virtual {v0}, Lcom/inveno/se/model/ZZNewsinfo;->getDisplay()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v7, "0x00000008"

    iget-object v0, p0, Lcom/inveno/basics/main/a/a;->b:Ljava/util/ArrayList;

    .line 117
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/se/model/ZZNewsinfo;

    invoke-virtual {v0}, Lcom/inveno/se/model/ZZNewsinfo;->getDisplay()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-lez v6, :cond_1

    .line 118
    iget-object v0, p0, Lcom/inveno/basics/main/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/se/model/ZZNewsinfo;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/inveno/se/model/ZZNewsinfo;->setFlag(Ljava/lang/String;)V

    move v1, v2

    .line 119
    goto :goto_2

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/inveno/basics/main/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/inveno/basics/main/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/se/model/ZZNewsinfo;

    invoke-virtual {v0}, Lcom/inveno/se/model/ZZNewsinfo;->getDisplay()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v7, "-1"

    iget-object v0, p0, Lcom/inveno/basics/main/a/a;->b:Ljava/util/ArrayList;

    .line 121
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/se/model/ZZNewsinfo;

    invoke-virtual {v0}, Lcom/inveno/se/model/ZZNewsinfo;->getDisplay()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 122
    iget-object v0, p0, Lcom/inveno/basics/main/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/se/model/ZZNewsinfo;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/inveno/se/model/ZZNewsinfo;->setFlag(Ljava/lang/String;)V

    move v1, v3

    .line 123
    goto/16 :goto_2

    .line 124
    :cond_2
    iget-object v0, p0, Lcom/inveno/basics/main/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/inveno/basics/main/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/se/model/ZZNewsinfo;

    invoke-virtual {v0}, Lcom/inveno/se/model/ZZNewsinfo;->getDisplay()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v3, "-2"

    iget-object v0, p0, Lcom/inveno/basics/main/a/a;->b:Ljava/util/ArrayList;

    .line 125
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/se/model/ZZNewsinfo;

    invoke-virtual {v0}, Lcom/inveno/se/model/ZZNewsinfo;->getDisplay()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 126
    iget-object v0, p0, Lcom/inveno/basics/main/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/se/model/ZZNewsinfo;

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/inveno/se/model/ZZNewsinfo;->setFlag(Ljava/lang/String;)V

    move v1, v4

    .line 127
    goto/16 :goto_2

    .line 128
    :cond_3
    const/4 v0, 0x3

    if-lt v6, v0, :cond_4

    .line 129
    iget-object v0, p0, Lcom/inveno/basics/main/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/se/model/ZZNewsinfo;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/inveno/se/model/ZZNewsinfo;->setFlag(Ljava/lang/String;)V

    .line 130
    const/4 v1, 0x3

    goto/16 :goto_2

    .line 131
    :cond_4
    if-lt v6, v2, :cond_5

    .line 132
    iget-object v0, p0, Lcom/inveno/basics/main/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/se/model/ZZNewsinfo;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/inveno/se/model/ZZNewsinfo;->setFlag(Ljava/lang/String;)V

    move v1, v5

    .line 133
    goto/16 :goto_2

    .line 134
    :cond_5
    if-ge v6, v2, :cond_6

    .line 135
    iget-object v0, p0, Lcom/inveno/basics/main/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/se/model/ZZNewsinfo;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/inveno/se/model/ZZNewsinfo;->setFlag(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 162
    :catch_1
    move-exception v0

    goto/16 :goto_2

    .line 138
    :cond_6
    iget-object v0, p0, Lcom/inveno/basics/main/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/se/model/ZZNewsinfo;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/inveno/se/model/ZZNewsinfo;->setFlag(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 142
    :cond_7
    iget-object v0, p0, Lcom/inveno/basics/main/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/inveno/basics/main/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/se/model/ZZNewsinfo;

    invoke-virtual {v0}, Lcom/inveno/se/model/ZZNewsinfo;->getDisplay()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v7, "-1"

    iget-object v0, p0, Lcom/inveno/basics/main/a/a;->b:Ljava/util/ArrayList;

    .line 143
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/se/model/ZZNewsinfo;

    invoke-virtual {v0}, Lcom/inveno/se/model/ZZNewsinfo;->getDisplay()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 144
    iget-object v0, p0, Lcom/inveno/basics/main/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/se/model/ZZNewsinfo;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/inveno/se/model/ZZNewsinfo;->setFlag(Ljava/lang/String;)V

    move v1, v3

    .line 145
    goto/16 :goto_2

    .line 146
    :cond_8
    iget-object v0, p0, Lcom/inveno/basics/main/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/inveno/basics/main/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/se/model/ZZNewsinfo;

    invoke-virtual {v0}, Lcom/inveno/se/model/ZZNewsinfo;->getDisplay()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v3, "-2"

    iget-object v0, p0, Lcom/inveno/basics/main/a/a;->b:Ljava/util/ArrayList;

    .line 147
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/se/model/ZZNewsinfo;

    invoke-virtual {v0}, Lcom/inveno/se/model/ZZNewsinfo;->getDisplay()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 148
    iget-object v0, p0, Lcom/inveno/basics/main/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/se/model/ZZNewsinfo;

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/inveno/se/model/ZZNewsinfo;->setFlag(Ljava/lang/String;)V

    move v1, v4

    .line 149
    goto/16 :goto_2

    .line 150
    :cond_9
    if-lt v6, v2, :cond_a

    .line 151
    iget-object v0, p0, Lcom/inveno/basics/main/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/se/model/ZZNewsinfo;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/inveno/se/model/ZZNewsinfo;->setFlag(Ljava/lang/String;)V

    move v1, v5

    .line 152
    goto/16 :goto_2

    .line 153
    :cond_a
    if-ge v6, v2, :cond_b

    .line 154
    iget-object v0, p0, Lcom/inveno/basics/main/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/se/model/ZZNewsinfo;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/inveno/se/model/ZZNewsinfo;->setFlag(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 157
    :cond_b
    iget-object v0, p0, Lcom/inveno/basics/main/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/se/model/ZZNewsinfo;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/inveno/se/model/ZZNewsinfo;->setFlag(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    :cond_c
    move v0, v1

    goto/16 :goto_0
.end method

.method public onBindViewHolder(Lflyme/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .prologue
    .line 199
    invoke-virtual {p0, p2}, Lcom/inveno/basics/main/a/a;->getItemViewType(I)I

    move-result v0

    .line 200
    packed-switch v0, :pswitch_data_0

    .line 221
    :goto_0
    return-void

    .line 202
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lcom/inveno/basics/main/a/a;->a(Lflyme/support/v7/widget/RecyclerView$ViewHolder;I)V

    goto :goto_0

    .line 205
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lcom/inveno/basics/main/a/a;->b(Lflyme/support/v7/widget/RecyclerView$ViewHolder;I)V

    goto :goto_0

    .line 208
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lcom/inveno/basics/main/a/a;->c(Lflyme/support/v7/widget/RecyclerView$ViewHolder;I)V

    goto :goto_0

    .line 211
    :pswitch_3
    invoke-virtual {p0, p1, p2}, Lcom/inveno/basics/main/a/a;->d(Lflyme/support/v7/widget/RecyclerView$ViewHolder;I)V

    goto :goto_0

    .line 214
    :pswitch_4
    invoke-virtual {p0, p1, p2}, Lcom/inveno/basics/main/a/a;->e(Lflyme/support/v7/widget/RecyclerView$ViewHolder;I)V

    goto :goto_0

    .line 217
    :pswitch_5
    invoke-virtual {p0, p1, p2}, Lcom/inveno/basics/main/a/a;->f(Lflyme/support/v7/widget/RecyclerView$ViewHolder;I)V

    goto :goto_0

    .line 200
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 169
    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    .line 170
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/inveno/basics/R$layout;->mz_recommend_img_item:I

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 172
    new-instance v0, Lcom/inveno/basics/main/a/a$d;

    invoke-direct {v0, p0, v1}, Lcom/inveno/basics/main/a/a$d;-><init>(Lcom/inveno/basics/main/a/a;Landroid/view/View;)V

    .line 194
    :cond_0
    :goto_0
    return-object v0

    .line 173
    :cond_1
    const/4 v1, 0x1

    if-ne p2, v1, :cond_2

    .line 174
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/inveno/basics/R$layout;->mz_recommend_banner_item:I

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 176
    new-instance v0, Lcom/inveno/basics/main/a/a$b;

    invoke-direct {v0, p0, v1}, Lcom/inveno/basics/main/a/a$b;-><init>(Lcom/inveno/basics/main/a/a;Landroid/view/View;)V

    goto :goto_0

    .line 177
    :cond_2
    const/4 v1, 0x3

    if-ne p2, v1, :cond_3

    .line 178
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/inveno/basics/R$layout;->mz_recommend_imgs_item:I

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 180
    new-instance v0, Lcom/inveno/basics/main/a/a$e;

    invoke-direct {v0, p0, v1}, Lcom/inveno/basics/main/a/a$e;-><init>(Lcom/inveno/basics/main/a/a;Landroid/view/View;)V

    goto :goto_0

    .line 181
    :cond_3
    if-nez p2, :cond_4

    .line 182
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/inveno/basics/R$layout;->mz_recommend_normal_item:I

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 184
    new-instance v0, Lcom/inveno/basics/main/a/a$f;

    invoke-direct {v0, p0, v1}, Lcom/inveno/basics/main/a/a$f;-><init>(Lcom/inveno/basics/main/a/a;Landroid/view/View;)V

    goto :goto_0

    .line 185
    :cond_4
    const/4 v1, 0x4

    if-ne p2, v1, :cond_5

    .line 186
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/inveno/basics/R$layout;->mz_ad_img_item:I

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 188
    new-instance v0, Lcom/inveno/basics/main/a/a$c;

    invoke-direct {v0, p0, v1}, Lcom/inveno/basics/main/a/a$c;-><init>(Lcom/inveno/basics/main/a/a;Landroid/view/View;)V

    goto :goto_0

    .line 189
    :cond_5
    const/4 v1, 0x5

    if-ne p2, v1, :cond_0

    .line 190
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/inveno/basics/R$layout;->mz_ad_banner_item:I

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 192
    new-instance v0, Lcom/inveno/basics/main/a/a$a;

    invoke-direct {v0, p0, v1}, Lcom/inveno/basics/main/a/a$a;-><init>(Lcom/inveno/basics/main/a/a;Landroid/view/View;)V

    goto :goto_0
.end method
