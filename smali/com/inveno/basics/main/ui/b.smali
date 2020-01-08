.class public Lcom/inveno/basics/main/ui/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inveno/basics/main/ui/b$e;,
        Lcom/inveno/basics/main/ui/b$c;,
        Lcom/inveno/basics/main/ui/b$d;,
        Lcom/inveno/basics/main/ui/b$a;,
        Lcom/inveno/basics/main/ui/b$b;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/LinearLayout;

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

.field private final m:Ljava/lang/String;

.field private n:Lcom/inveno/basics/main/ui/b$e;

.field private o:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput v0, p0, Lcom/inveno/basics/main/ui/b;->g:I

    .line 41
    iput v0, p0, Lcom/inveno/basics/main/ui/b;->h:I

    .line 42
    iput v0, p0, Lcom/inveno/basics/main/ui/b;->i:I

    .line 43
    iput v0, p0, Lcom/inveno/basics/main/ui/b;->j:I

    .line 44
    iput v0, p0, Lcom/inveno/basics/main/ui/b;->k:I

    .line 45
    iput v0, p0, Lcom/inveno/basics/main/ui/b;->l:I

    .line 47
    const-string v0, "0x010100"

    iput-object v0, p0, Lcom/inveno/basics/main/ui/b;->m:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/basics/main/ui/b;->o:Landroid/content/Context;

    .line 70
    invoke-direct {p0}, Lcom/inveno/basics/main/ui/b;->d()V

    .line 71
    return-void
.end method

.method static synthetic a(Lcom/inveno/basics/main/ui/b;)Lcom/inveno/basics/main/ui/b$e;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/inveno/basics/main/ui/b;->n:Lcom/inveno/basics/main/ui/b$e;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 526
    .line 527
    invoke-static {}, Lcom/inveno/se/tools/DeviceConfig;->getDeviceWidth()I

    move-result v0

    invoke-static {}, Lcom/inveno/se/tools/DeviceConfig;->getDeviceHeight()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 528
    invoke-static {}, Lcom/inveno/se/tools/DeviceConfig;->getDeviceHeight()I

    move-result v0

    .line 533
    :goto_0
    const/high16 v1, 0x42000000    # 32.0f

    invoke-static {p1, v1}, Lcom/inveno/se/tools/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    .line 534
    sub-int v1, v0, v1

    iput v1, p0, Lcom/inveno/basics/main/ui/b;->g:I

    .line 535
    iget v1, p0, Lcom/inveno/basics/main/ui/b;->g:I

    int-to-double v2, v1

    const-wide v4, 0x3fdae147ae147ae1L    # 0.42

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iput v1, p0, Lcom/inveno/basics/main/ui/b;->h:I

    .line 536
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5927\u56fe\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/inveno/basics/main/ui/b;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/inveno/basics/main/ui/b;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inveno/se/tools/LogTools;->showLogA(Ljava/lang/String;)V

    .line 538
    const/high16 v1, 0x42b40000    # 90.0f

    invoke-static {p1, v1}, Lcom/inveno/se/tools/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lcom/inveno/basics/main/ui/b;->i:I

    .line 539
    const/high16 v1, 0x42840000    # 66.0f

    invoke-static {p1, v1}, Lcom/inveno/se/tools/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lcom/inveno/basics/main/ui/b;->j:I

    .line 540
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5355\u56fe\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/inveno/basics/main/ui/b;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/inveno/basics/main/ui/b;->j:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inveno/se/tools/LogTools;->showLogA(Ljava/lang/String;)V

    .line 542
    const/high16 v1, 0x42280000    # 42.0f

    invoke-static {p1, v1}, Lcom/inveno/se/tools/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    .line 543
    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/inveno/basics/main/ui/b;->k:I

    .line 544
    iget v0, p0, Lcom/inveno/basics/main/ui/b;->k:I

    int-to-double v0, v0

    const-wide v2, 0x3fe570a3d70a3d71L    # 0.67

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/inveno/basics/main/ui/b;->l:I

    .line 545
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5355\u56fe\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/inveno/basics/main/ui/b;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/inveno/basics/main/ui/b;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLogA(Ljava/lang/String;)V

    .line 546
    return-void

    .line 530
    :cond_0
    invoke-static {}, Lcom/inveno/se/tools/DeviceConfig;->getDeviceWidth()I

    move-result v0

    goto/16 :goto_0
.end method

.method private a(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 3

    .prologue
    .line 518
    iget-object v0, p0, Lcom/inveno/basics/main/ui/b;->o:Landroid/content/Context;

    const-string v1, "centerCrop"

    sget v2, Lcom/inveno/basics/R$color;->img_background:I

    invoke-static {v0, p2, p1, v1, v2}, Lcom/inveno/basics/c/b;->a(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;I)V

    .line 520
    return-void
.end method

.method private d()V
    .locals 5

    .prologue
    const/high16 v4, 0x40a00000    # 5.0f

    const/4 v3, 0x0

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/inveno/basics/main/ui/b;->b:Ljava/util/ArrayList;

    .line 77
    iget-object v0, p0, Lcom/inveno/basics/main/ui/b;->o:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/inveno/basics/main/ui/b;->a(Landroid/content/Context;)V

    .line 79
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/inveno/basics/main/ui/b;->g:I

    iget v2, p0, Lcom/inveno/basics/main/ui/b;->h:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/inveno/basics/main/ui/b;->c:Landroid/widget/RelativeLayout$LayoutParams;

    .line 80
    iget-object v0, p0, Lcom/inveno/basics/main/ui/b;->c:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 81
    iget-object v0, p0, Lcom/inveno/basics/main/ui/b;->c:Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, 0x3

    sget v2, Lcom/inveno/basics/R$id;->item_title:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 82
    iget-object v0, p0, Lcom/inveno/basics/main/ui/b;->c:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/inveno/basics/main/ui/b;->o:Landroid/content/Context;

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v1, v2}, Lcom/inveno/se/tools/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 84
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/inveno/basics/main/ui/b;->i:I

    iget v2, p0, Lcom/inveno/basics/main/ui/b;->j:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/inveno/basics/main/ui/b;->d:Landroid/widget/RelativeLayout$LayoutParams;

    .line 85
    iget-object v0, p0, Lcom/inveno/basics/main/ui/b;->d:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 86
    iget-object v0, p0, Lcom/inveno/basics/main/ui/b;->d:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/inveno/basics/main/ui/b;->o:Landroid/content/Context;

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v1, v2}, Lcom/inveno/se/tools/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 88
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/inveno/basics/main/ui/b;->k:I

    iget v2, p0, Lcom/inveno/basics/main/ui/b;->l:I

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/inveno/basics/main/ui/b;->e:Landroid/widget/LinearLayout$LayoutParams;

    .line 90
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/inveno/basics/main/ui/b;->k:I

    iget v2, p0, Lcom/inveno/basics/main/ui/b;->l:I

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/inveno/basics/main/ui/b;->f:Landroid/widget/LinearLayout$LayoutParams;

    .line 91
    iget-object v0, p0, Lcom/inveno/basics/main/ui/b;->f:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/inveno/basics/main/ui/b;->o:Landroid/content/Context;

    invoke-static {v1, v4}, Lcom/inveno/se/tools/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    iget-object v2, p0, Lcom/inveno/basics/main/ui/b;->o:Landroid/content/Context;

    .line 92
    invoke-static {v2, v4}, Lcom/inveno/se/tools/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    .line 91
    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 93
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/inveno/basics/main/ui/b;->o:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/inveno/basics/main/ui/b;->a:Landroid/widget/LinearLayout;

    .line 94
    iget-object v0, p0, Lcom/inveno/basics/main/ui/b;->a:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 95
    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 8

    .prologue
    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 120
    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/inveno/basics/main/ui/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/inveno/basics/main/ui/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/se/model/ZZNewsinfo;

    invoke-virtual {v0}, Lcom/inveno/se/model/ZZNewsinfo;->getImgs()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/inveno/basics/main/ui/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/se/model/ZZNewsinfo;

    invoke-virtual {v0}, Lcom/inveno/se/model/ZZNewsinfo;->getImgs()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_a

    .line 123
    iget-object v0, p0, Lcom/inveno/basics/main/ui/b;->b:Ljava/util/ArrayList;

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

    .line 130
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/inveno/basics/main/ui/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/se/model/ZZNewsinfo;

    invoke-virtual {v0}, Lcom/inveno/se/model/ZZNewsinfo;->getFlag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inveno/basics/main/ui/b;->b:Ljava/util/ArrayList;

    .line 131
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/se/model/ZZNewsinfo;

    invoke-virtual {v0}, Lcom/inveno/se/model/ZZNewsinfo;->getFlag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v5, :cond_0

    .line 132
    iget-object v0, p0, Lcom/inveno/basics/main/ui/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/se/model/ZZNewsinfo;

    invoke-virtual {v0}, Lcom/inveno/se/model/ZZNewsinfo;->getFlag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 173
    :goto_2
    return v1

    .line 125
    :catch_0
    move-exception v0

    move v6, v1

    .line 126
    goto :goto_1

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/inveno/basics/main/ui/b;->o:Landroid/content/Context;

    invoke-static {v0}, Lcom/inveno/se/tools/NetWorkUtil;->getAPNType(Landroid/content/Context;)Lcom/inveno/se/tools/NetWorkUtil$netType;

    move-result-object v0

    sget-object v7, Lcom/inveno/se/tools/NetWorkUtil$netType;->wifi:Lcom/inveno/se/tools/NetWorkUtil$netType;

    if-ne v0, v7, :cond_6

    .line 136
    iget-object v0, p0, Lcom/inveno/basics/main/ui/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inveno/basics/main/ui/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/se/model/ZZNewsinfo;

    invoke-virtual {v0}, Lcom/inveno/se/model/ZZNewsinfo;->getDisplay()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v7, "0x00000008"

    iget-object v0, p0, Lcom/inveno/basics/main/ui/b;->b:Ljava/util/ArrayList;

    .line 137
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/se/model/ZZNewsinfo;

    invoke-virtual {v0}, Lcom/inveno/se/model/ZZNewsinfo;->getDisplay()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-lez v6, :cond_1

    .line 138
    iget-object v0, p0, Lcom/inveno/basics/main/ui/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/se/model/ZZNewsinfo;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/inveno/se/model/ZZNewsinfo;->setFlag(Ljava/lang/String;)V

    move v1, v2

    .line 139
    goto :goto_2

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/inveno/basics/main/ui/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/inveno/basics/main/ui/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/se/model/ZZNewsinfo;

    invoke-virtual {v0}, Lcom/inveno/se/model/ZZNewsinfo;->getDisplay()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v7, "-3"

    iget-object v0, p0, Lcom/inveno/basics/main/ui/b;->b:Ljava/util/ArrayList;

    .line 141
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/se/model/ZZNewsinfo;

    invoke-virtual {v0}, Lcom/inveno/se/model/ZZNewsinfo;->getDisplay()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v1, v3

    .line 142
    goto :goto_2

    .line 143
    :cond_2
    if-lt v6, v4, :cond_3

    .line 144
    iget-object v0, p0, Lcom/inveno/basics/main/ui/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/se/model/ZZNewsinfo;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/inveno/se/model/ZZNewsinfo;->setFlag(Ljava/lang/String;)V

    move v1, v4

    .line 145
    goto/16 :goto_2

    .line 146
    :cond_3
    if-lt v6, v2, :cond_4

    .line 147
    iget-object v0, p0, Lcom/inveno/basics/main/ui/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/se/model/ZZNewsinfo;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/inveno/se/model/ZZNewsinfo;->setFlag(Ljava/lang/String;)V

    move v1, v5

    .line 148
    goto/16 :goto_2

    .line 149
    :cond_4
    if-ge v6, v2, :cond_5

    .line 150
    iget-object v0, p0, Lcom/inveno/basics/main/ui/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/se/model/ZZNewsinfo;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/inveno/se/model/ZZNewsinfo;->setFlag(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 172
    :catch_1
    move-exception v0

    goto/16 :goto_2

    .line 153
    :cond_5
    iget-object v0, p0, Lcom/inveno/basics/main/ui/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/se/model/ZZNewsinfo;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/inveno/se/model/ZZNewsinfo;->setFlag(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 157
    :cond_6
    iget-object v0, p0, Lcom/inveno/basics/main/ui/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/inveno/basics/main/ui/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/se/model/ZZNewsinfo;

    invoke-virtual {v0}, Lcom/inveno/se/model/ZZNewsinfo;->getDisplay()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v4, "-3"

    iget-object v0, p0, Lcom/inveno/basics/main/ui/b;->b:Ljava/util/ArrayList;

    .line 158
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/se/model/ZZNewsinfo;

    invoke-virtual {v0}, Lcom/inveno/se/model/ZZNewsinfo;->getDisplay()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v1, v3

    .line 159
    goto/16 :goto_2

    .line 160
    :cond_7
    if-lt v6, v2, :cond_8

    .line 161
    iget-object v0, p0, Lcom/inveno/basics/main/ui/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/se/model/ZZNewsinfo;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/inveno/se/model/ZZNewsinfo;->setFlag(Ljava/lang/String;)V

    move v1, v5

    .line 162
    goto/16 :goto_2

    .line 163
    :cond_8
    if-ge v6, v2, :cond_9

    .line 164
    iget-object v0, p0, Lcom/inveno/basics/main/ui/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/se/model/ZZNewsinfo;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/inveno/se/model/ZZNewsinfo;->setFlag(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 167
    :cond_9
    iget-object v0, p0, Lcom/inveno/basics/main/ui/b;->b:Ljava/util/ArrayList;

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

    :cond_a
    move v0, v1

    goto/16 :goto_0
.end method

.method public a()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/inveno/basics/main/ui/b;->a:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public a(Lcom/inveno/basics/main/ui/b$a;I)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 343
    :try_start_0
    iget-object v0, p0, Lcom/inveno/basics/main/ui/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/se/model/ZZNewsinfo;

    .line 345
    iget-object v1, p1, Lcom/inveno/basics/main/ui/b$a;->b:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/inveno/basics/main/ui/b;->c:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 347
    invoke-virtual {v0}, Lcom/inveno/se/model/ZZNewsinfo;->getImgs()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/inveno/se/model/ZZNewsinfo;->getImgs()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 348
    invoke-virtual {v0}, Lcom/inveno/se/model/ZZNewsinfo;->getImgs()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inveno/se/model/multimedia/Imgs;

    .line 350
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

    .line 351
    invoke-virtual {v1}, Lcom/inveno/se/model/multimedia/Imgs;->getSurl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 352
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/inveno/se/model/multimedia/Imgs;->getSurl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/inveno/basics/main/ui/b;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/inveno/basics/main/ui/b;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 358
    :goto_0
    iget-object v2, p1, Lcom/inveno/basics/main/ui/b$a;->b:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v2}, Lcom/inveno/basics/main/ui/b;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 361
    :cond_0
    invoke-virtual {v0}, Lcom/inveno/se/model/ZZNewsinfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 362
    iget-object v1, p1, Lcom/inveno/basics/main/ui/b$a;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/inveno/se/model/ZZNewsinfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 363
    iget-object v1, p1, Lcom/inveno/basics/main/ui/b$a;->c:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 368
    :goto_1
    invoke-virtual {v0}, Lcom/inveno/se/model/ZZNewsinfo;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 369
    iget-object v1, p1, Lcom/inveno/basics/main/ui/b$a;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/inveno/se/model/ZZNewsinfo;->getSource()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 370
    iget-object v1, p1, Lcom/inveno/basics/main/ui/b$a;->d:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 375
    :goto_2
    iget-object v1, p1, Lcom/inveno/basics/main/ui/b$a;->a:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/inveno/basics/main/ui/b$2;

    invoke-direct {v2, p0, p2}, Lcom/inveno/basics/main/ui/b$2;-><init>(Lcom/inveno/basics/main/ui/b;I)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 384
    const-string v1, "0x010100"

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

    .line 388
    :goto_3
    return-void

    .line 354
    :cond_1
    invoke-virtual {v1}, Lcom/inveno/se/model/multimedia/Imgs;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 355
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/inveno/se/model/multimedia/Imgs;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/inveno/basics/main/ui/b;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/inveno/basics/main/ui/b;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 365
    :cond_2
    iget-object v1, p1, Lcom/inveno/basics/main/ui/b$a;->c:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 385
    :catch_0
    move-exception v0

    .line 386
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

    .line 372
    :cond_3
    :try_start_1
    iget-object v1, p1, Lcom/inveno/basics/main/ui/b$a;->d:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    :cond_4
    move-object v1, v2

    goto/16 :goto_0
.end method

.method public a(Lcom/inveno/basics/main/ui/b$b;I)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 288
    :try_start_0
    iget-object v0, p0, Lcom/inveno/basics/main/ui/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/se/model/ZZNewsinfo;

    .line 290
    iget-object v1, p1, Lcom/inveno/basics/main/ui/b$b;->b:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/inveno/basics/main/ui/b;->d:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 292
    invoke-virtual {v0}, Lcom/inveno/se/model/ZZNewsinfo;->getImgs()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/inveno/se/model/ZZNewsinfo;->getImgs()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 293
    invoke-virtual {v0}, Lcom/inveno/se/model/ZZNewsinfo;->getImgs()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inveno/se/model/multimedia/Imgs;

    .line 295
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

    .line 296
    invoke-virtual {v1}, Lcom/inveno/se/model/multimedia/Imgs;->getSurl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 297
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/inveno/se/model/multimedia/Imgs;->getSurl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/inveno/basics/main/ui/b;->k:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/inveno/basics/main/ui/b;->l:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 303
    :goto_0
    iget-object v2, p1, Lcom/inveno/basics/main/ui/b$b;->b:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v2}, Lcom/inveno/basics/main/ui/b;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 306
    :cond_0
    invoke-virtual {v0}, Lcom/inveno/se/model/ZZNewsinfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 307
    iget-object v1, p1, Lcom/inveno/basics/main/ui/b$b;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/inveno/se/model/ZZNewsinfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    iget-object v1, p1, Lcom/inveno/basics/main/ui/b$b;->c:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 313
    :goto_1
    invoke-virtual {v0}, Lcom/inveno/se/model/ZZNewsinfo;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 314
    iget-object v1, p1, Lcom/inveno/basics/main/ui/b$b;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/inveno/se/model/ZZNewsinfo;->getSource()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    iget-object v1, p1, Lcom/inveno/basics/main/ui/b$b;->d:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 320
    :goto_2
    iget-object v1, p1, Lcom/inveno/basics/main/ui/b$b;->a:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/inveno/basics/main/ui/b$1;

    invoke-direct {v2, p0, p2}, Lcom/inveno/basics/main/ui/b$1;-><init>(Lcom/inveno/basics/main/ui/b;I)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 329
    const-string v1, "0x010100"

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

    .line 333
    :goto_3
    return-void

    .line 299
    :cond_1
    invoke-virtual {v1}, Lcom/inveno/se/model/multimedia/Imgs;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 300
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/inveno/se/model/multimedia/Imgs;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/inveno/basics/main/ui/b;->k:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/inveno/basics/main/ui/b;->l:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 310
    :cond_2
    iget-object v1, p1, Lcom/inveno/basics/main/ui/b$b;->c:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 330
    :catch_0
    move-exception v0

    .line 331
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

    .line 317
    :cond_3
    :try_start_1
    iget-object v1, p1, Lcom/inveno/basics/main/ui/b$b;->d:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    :cond_4
    move-object v1, v2

    goto/16 :goto_0
.end method

.method public a(Lcom/inveno/basics/main/ui/b$c;I)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 398
    :try_start_0
    iget-object v0, p0, Lcom/inveno/basics/main/ui/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/se/model/ZZNewsinfo;

    .line 400
    iget-object v1, p1, Lcom/inveno/basics/main/ui/b$c;->b:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/inveno/basics/main/ui/b;->e:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 401
    iget-object v1, p1, Lcom/inveno/basics/main/ui/b$c;->c:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/inveno/basics/main/ui/b;->f:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 402
    iget-object v1, p1, Lcom/inveno/basics/main/ui/b$c;->d:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/inveno/basics/main/ui/b;->e:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 404
    invoke-virtual {v0}, Lcom/inveno/se/model/ZZNewsinfo;->getImgs()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/inveno/se/model/ZZNewsinfo;->getImgs()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 405
    invoke-virtual {v0}, Lcom/inveno/se/model/ZZNewsinfo;->getImgs()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inveno/se/model/multimedia/Imgs;

    .line 407
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

    .line 408
    invoke-virtual {v1}, Lcom/inveno/se/model/multimedia/Imgs;->getSurl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 409
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/inveno/se/model/multimedia/Imgs;->getSurl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "&width="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/inveno/basics/main/ui/b;->k:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "&height="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/inveno/basics/main/ui/b;->l:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 415
    :goto_0
    iget-object v3, p1, Lcom/inveno/basics/main/ui/b$c;->b:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v3}, Lcom/inveno/basics/main/ui/b;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 418
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

    .line 419
    invoke-virtual {v0}, Lcom/inveno/se/model/ZZNewsinfo;->getImgs()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inveno/se/model/multimedia/Imgs;

    .line 421
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

    .line 422
    invoke-virtual {v1}, Lcom/inveno/se/model/multimedia/Imgs;->getSurl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 423
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/inveno/se/model/multimedia/Imgs;->getSurl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "&width="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/inveno/basics/main/ui/b;->k:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "&height="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/inveno/basics/main/ui/b;->l:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 429
    :goto_1
    iget-object v3, p1, Lcom/inveno/basics/main/ui/b$c;->c:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v3}, Lcom/inveno/basics/main/ui/b;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 432
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

    .line 433
    invoke-virtual {v0}, Lcom/inveno/se/model/ZZNewsinfo;->getImgs()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inveno/se/model/multimedia/Imgs;

    .line 435
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

    .line 436
    invoke-virtual {v1}, Lcom/inveno/se/model/multimedia/Imgs;->getSurl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 437
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/inveno/se/model/multimedia/Imgs;->getSurl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/inveno/basics/main/ui/b;->k:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/inveno/basics/main/ui/b;->l:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 443
    :goto_2
    iget-object v2, p1, Lcom/inveno/basics/main/ui/b$c;->d:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v2}, Lcom/inveno/basics/main/ui/b;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 446
    :cond_2
    invoke-virtual {v0}, Lcom/inveno/se/model/ZZNewsinfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 447
    iget-object v1, p1, Lcom/inveno/basics/main/ui/b$c;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/inveno/se/model/ZZNewsinfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 448
    iget-object v1, p1, Lcom/inveno/basics/main/ui/b$c;->e:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 453
    :goto_3
    invoke-virtual {v0}, Lcom/inveno/se/model/ZZNewsinfo;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 454
    iget-object v1, p1, Lcom/inveno/basics/main/ui/b$c;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/inveno/se/model/ZZNewsinfo;->getSource()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 455
    iget-object v1, p1, Lcom/inveno/basics/main/ui/b$c;->f:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 460
    :goto_4
    iget-object v1, p1, Lcom/inveno/basics/main/ui/b$c;->a:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/inveno/basics/main/ui/b$3;

    invoke-direct {v2, p0, p2}, Lcom/inveno/basics/main/ui/b$3;-><init>(Lcom/inveno/basics/main/ui/b;I)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 469
    const-string v1, "0x010100"

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

    .line 474
    :goto_5
    return-void

    .line 411
    :cond_3
    invoke-virtual {v1}, Lcom/inveno/se/model/multimedia/Imgs;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 412
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/inveno/se/model/multimedia/Imgs;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "&width="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/inveno/basics/main/ui/b;->k:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "&height="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/inveno/basics/main/ui/b;->l:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 425
    :cond_4
    invoke-virtual {v1}, Lcom/inveno/se/model/multimedia/Imgs;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 426
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/inveno/se/model/multimedia/Imgs;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "&width="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/inveno/basics/main/ui/b;->k:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "&height="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/inveno/basics/main/ui/b;->l:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 439
    :cond_5
    invoke-virtual {v1}, Lcom/inveno/se/model/multimedia/Imgs;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 440
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/inveno/se/model/multimedia/Imgs;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/inveno/basics/main/ui/b;->k:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/inveno/basics/main/ui/b;->l:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 450
    :cond_6
    iget-object v1, p1, Lcom/inveno/basics/main/ui/b$c;->e:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 470
    :catch_0
    move-exception v0

    .line 471
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

    .line 457
    :cond_7
    :try_start_1
    iget-object v1, p1, Lcom/inveno/basics/main/ui/b$c;->f:Landroid/widget/TextView;

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

.method public a(Lcom/inveno/basics/main/ui/b$d;I)V
    .locals 8

    .prologue
    .line 484
    :try_start_0
    iget-object v0, p0, Lcom/inveno/basics/main/ui/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/se/model/ZZNewsinfo;

    .line 485
    invoke-virtual {v0}, Lcom/inveno/se/model/ZZNewsinfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 486
    iget-object v1, p1, Lcom/inveno/basics/main/ui/b$d;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/inveno/se/model/ZZNewsinfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 487
    iget-object v1, p1, Lcom/inveno/basics/main/ui/b$d;->b:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 492
    :goto_0
    invoke-virtual {v0}, Lcom/inveno/se/model/ZZNewsinfo;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 493
    iget-object v1, p1, Lcom/inveno/basics/main/ui/b$d;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/inveno/se/model/ZZNewsinfo;->getSource()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 494
    iget-object v1, p1, Lcom/inveno/basics/main/ui/b$d;->c:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 499
    :goto_1
    iget-object v1, p1, Lcom/inveno/basics/main/ui/b$d;->a:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/inveno/basics/main/ui/b$4;

    invoke-direct {v2, p0, p2}, Lcom/inveno/basics/main/ui/b$4;-><init>(Lcom/inveno/basics/main/ui/b;I)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 508
    const-string v1, "0x010100"

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

    .line 512
    :goto_2
    return-void

    .line 489
    :cond_0
    iget-object v1, p1, Lcom/inveno/basics/main/ui/b$d;->b:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 509
    :catch_0
    move-exception v0

    .line 510
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

    .line 496
    :cond_1
    :try_start_1
    iget-object v1, p1, Lcom/inveno/basics/main/ui/b$d;->c:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public a(Lcom/inveno/basics/main/ui/b$e;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/inveno/basics/main/ui/b;->n:Lcom/inveno/basics/main/ui/b$e;

    .line 56
    return-void
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
    .line 63
    iput-object p1, p0, Lcom/inveno/basics/main/ui/b;->b:Ljava/util/ArrayList;

    .line 64
    return-void
.end method

.method public b()Ljava/util/ArrayList;
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
    .line 59
    iget-object v0, p0, Lcom/inveno/basics/main/ui/b;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method public b(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 178
    invoke-virtual {p0, p1}, Lcom/inveno/basics/main/ui/b;->a(I)I

    move-result v0

    .line 179
    packed-switch v0, :pswitch_data_0

    .line 214
    :goto_0
    return-void

    .line 181
    :pswitch_0
    iget-object v0, p0, Lcom/inveno/basics/main/ui/b;->o:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/inveno/basics/R$layout;->mz_recommend_img_item:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 183
    new-instance v1, Lcom/inveno/basics/main/ui/b$b;

    invoke-direct {v1, p0, v0}, Lcom/inveno/basics/main/ui/b$b;-><init>(Lcom/inveno/basics/main/ui/b;Landroid/view/View;)V

    .line 184
    invoke-virtual {p0, v1, p1}, Lcom/inveno/basics/main/ui/b;->a(Lcom/inveno/basics/main/ui/b$b;I)V

    .line 185
    iget-object v1, p0, Lcom/inveno/basics/main/ui/b;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 188
    :pswitch_1
    iget-object v0, p0, Lcom/inveno/basics/main/ui/b;->o:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/inveno/basics/R$layout;->mz_recommend_banner_item:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 190
    new-instance v1, Lcom/inveno/basics/main/ui/b$a;

    invoke-direct {v1, p0, v0}, Lcom/inveno/basics/main/ui/b$a;-><init>(Lcom/inveno/basics/main/ui/b;Landroid/view/View;)V

    .line 191
    invoke-virtual {p0, v1, p1}, Lcom/inveno/basics/main/ui/b;->a(Lcom/inveno/basics/main/ui/b$a;I)V

    .line 192
    iget-object v1, p0, Lcom/inveno/basics/main/ui/b;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 195
    :pswitch_2
    iget-object v0, p0, Lcom/inveno/basics/main/ui/b;->o:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/inveno/basics/R$layout;->mz_recommend_imgs_item:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 197
    new-instance v1, Lcom/inveno/basics/main/ui/b$c;

    invoke-direct {v1, p0, v0}, Lcom/inveno/basics/main/ui/b$c;-><init>(Lcom/inveno/basics/main/ui/b;Landroid/view/View;)V

    .line 198
    invoke-virtual {p0, v1, p1}, Lcom/inveno/basics/main/ui/b;->a(Lcom/inveno/basics/main/ui/b$c;I)V

    .line 199
    iget-object v1, p0, Lcom/inveno/basics/main/ui/b;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 202
    :pswitch_3
    iget-object v0, p0, Lcom/inveno/basics/main/ui/b;->o:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/inveno/basics/R$layout;->mz_recommend_normal_item:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 204
    new-instance v1, Lcom/inveno/basics/main/ui/b$d;

    invoke-direct {v1, p0, v0}, Lcom/inveno/basics/main/ui/b$d;-><init>(Lcom/inveno/basics/main/ui/b;Landroid/view/View;)V

    .line 205
    invoke-virtual {p0, v1, p1}, Lcom/inveno/basics/main/ui/b;->a(Lcom/inveno/basics/main/ui/b$d;I)V

    .line 206
    iget-object v1, p0, Lcom/inveno/basics/main/ui/b;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 209
    :pswitch_4
    iget-object v0, p0, Lcom/inveno/basics/main/ui/b;->o:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/inveno/basics/R$layout;->mz_guess_you_like:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 211
    iget-object v1, p0, Lcom/inveno/basics/main/ui/b;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 179
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public c()V
    .locals 2

    .prologue
    .line 98
    const-string v0, "\u6dfb\u52a0VIEW"

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLogA(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/inveno/basics/main/ui/b;->a:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/inveno/basics/main/ui/b;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/inveno/basics/main/ui/b;->o:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 103
    iget-object v0, p0, Lcom/inveno/basics/main/ui/b;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inveno/basics/main/ui/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 104
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/inveno/basics/main/ui/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 105
    invoke-virtual {p0, v0}, Lcom/inveno/basics/main/ui/b;->b(I)V

    .line 104
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 109
    :cond_1
    return-void
.end method
