.class public Lcom/inveno/basics/main/ui/ListFlowView;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inveno/basics/main/ui/ListFlowView$a;,
        Lcom/inveno/basics/main/ui/ListFlowView$ConnectionChangeReceiver;
    }
.end annotation


# instance fields
.field private A:Lcom/inveno/basics/main/ui/ListFlowView$ConnectionChangeReceiver;

.field private B:Z

.field private C:Z

.field private D:Z

.field private E:Z

.field private F:Z

.field private G:Z

.field private H:Ljava/lang/String;

.field private I:Ljava/lang/String;

.field private J:J

.field private K:Lcom/inveno/basics/main/ui/b;

.field private final a:[I

.field private final b:[I

.field private final c:[I

.field private d:Landroid/widget/LinearLayout;

.field private e:Lcom/inveno/se/callback/ZZReuqestListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/inveno/se/callback/ZZReuqestListener",
            "<",
            "Lcom/inveno/se/model/ZZNews",
            "<",
            "Lcom/inveno/se/model/ZZNewsinfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private f:Lcom/inveno/se/callback/ZZReuqestListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/inveno/se/callback/ZZReuqestListener",
            "<",
            "Lcom/inveno/se/model/ZZNews",
            "<",
            "Lcom/inveno/se/model/ZZNewsinfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/inveno/se/model/ZZNewsinfo;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/inveno/se/model/ZZNews;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/inveno/se/model/ZZNews",
            "<",
            "Lcom/inveno/se/model/ZZNewsinfo;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/inveno/se/model/ZZNews;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/inveno/se/model/ZZNews",
            "<",
            "Lcom/inveno/se/model/ZZNewsinfo;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/inveno/nxadsdk/model/NativeRegularAd;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/inveno/nxadsdk/b/a;

.field private l:Lcom/inveno/nxadsdk/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/inveno/nxadsdk/b/a",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/inveno/nxadsdk/model/NativeRegularAd;",
            ">;>;"
        }
    .end annotation
.end field

.field private m:Lcom/inveno/basics/main/a/a;

.field private n:Lcom/inveno/basics/main/ui/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/inveno/basics/main/ui/a",
            "<",
            "Lcom/inveno/basics/main/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lflyme/support/v7/widget/MzRecyclerView;

.field private p:Lcom/meizu/common/widget/LoadingTextView;

.field private q:Lcom/inveno/basics/main/ui/ListFlowView$a;

.field private r:Lcom/inveno/basics/ui/RefreshHintView;

.field private s:I

.field private t:Z

.field private u:Lcom/inveno/basics/main/a;

.field private v:I

.field private final w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Landroid/content/Context;

.field private z:Lcom/inveno/basics/ui/NoNetWorkView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->a:[I

    .line 60
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->b:[I

    .line 61
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->c:[I

    .line 112
    const/4 v0, -0x1

    iput v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->s:I

    .line 114
    iput-boolean v1, p0, Lcom/inveno/basics/main/ui/ListFlowView;->t:Z

    .line 119
    const/4 v0, 0x1

    iput v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->v:I

    .line 121
    const-string v0, "0x010100"

    iput-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->w:Ljava/lang/String;

    .line 123
    const-string v0, ""

    iput-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->x:Ljava/lang/String;

    .line 131
    iput-boolean v1, p0, Lcom/inveno/basics/main/ui/ListFlowView;->B:Z

    .line 132
    iput-boolean v1, p0, Lcom/inveno/basics/main/ui/ListFlowView;->C:Z

    .line 133
    iput-boolean v1, p0, Lcom/inveno/basics/main/ui/ListFlowView;->D:Z

    .line 134
    iput-boolean v1, p0, Lcom/inveno/basics/main/ui/ListFlowView;->E:Z

    .line 135
    iput-boolean v1, p0, Lcom/inveno/basics/main/ui/ListFlowView;->F:Z

    .line 136
    iput-boolean v1, p0, Lcom/inveno/basics/main/ui/ListFlowView;->G:Z

    .line 138
    const-string v0, ""

    iput-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->H:Ljava/lang/String;

    .line 139
    const-string v0, ""

    iput-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->I:Ljava/lang/String;

    .line 155
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->y:Landroid/content/Context;

    .line 156
    return-void

    .line 59
    nop

    :array_0
    .array-data 4
        0x1
        0x2
    .end array-data

    .line 60
    :array_1
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x40
        0x1000
    .end array-data

    .line 61
    :array_2
    .array-data 4
        0x1
        0x2
        0x40
        0x2000
    .end array-data
.end method

.method public static a(Landroid/content/Context;F)I
    .locals 2

    .prologue
    .line 446
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 447
    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method static synthetic a(Lcom/inveno/basics/main/ui/ListFlowView;I)I
    .locals 0

    .prologue
    .line 58
    iput p1, p0, Lcom/inveno/basics/main/ui/ListFlowView;->s:I

    return p1
.end method

.method static synthetic a(Lcom/inveno/basics/main/ui/ListFlowView;J)J
    .locals 1

    .prologue
    .line 58
    iput-wide p1, p0, Lcom/inveno/basics/main/ui/ListFlowView;->J:J

    return-wide p1
.end method

.method static synthetic a(Lcom/inveno/basics/main/ui/ListFlowView;)Lcom/inveno/basics/main/ui/ListFlowView$a;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->q:Lcom/inveno/basics/main/ui/ListFlowView$a;

    return-object v0
.end method

.method static synthetic a(Lcom/inveno/basics/main/ui/ListFlowView;Lcom/inveno/se/model/ZZNews;)Lcom/inveno/se/model/ZZNews;
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/inveno/basics/main/ui/ListFlowView;->h:Lcom/inveno/se/model/ZZNews;

    return-object p1
.end method

.method static synthetic a(Lcom/inveno/basics/main/ui/ListFlowView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/inveno/basics/main/ui/ListFlowView;->x:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/inveno/basics/main/ui/ListFlowView;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/inveno/basics/main/ui/ListFlowView;->j:Ljava/util/ArrayList;

    return-object p1
.end method

.method private a(I)V
    .locals 2

    .prologue
    .line 1055
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->n:Lcom/inveno/basics/main/ui/a;

    invoke-virtual {v0}, Lcom/inveno/basics/main/ui/a;->c()I

    move-result v0

    if-nez v0, :cond_0

    .line 1056
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->n:Lcom/inveno/basics/main/ui/a;

    iget-object v1, p0, Lcom/inveno/basics/main/ui/ListFlowView;->p:Lcom/meizu/common/widget/LoadingTextView;

    invoke-virtual {v0, v1}, Lcom/inveno/basics/main/ui/a;->a(Landroid/view/View;)V

    .line 1059
    :cond_0
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->p:Lcom/meizu/common/widget/LoadingTextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->p:Lcom/meizu/common/widget/LoadingTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/LoadingTextView;->setVisibility(I)V

    .line 1060
    :cond_1
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->n:Lcom/inveno/basics/main/ui/a;

    invoke-virtual {v0}, Lcom/inveno/basics/main/ui/a;->notifyDataSetChanged()V

    .line 1061
    return-void
.end method

.method static synthetic a(Lcom/inveno/basics/main/ui/ListFlowView;Lcom/inveno/se/model/ZZNewsinfo;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/inveno/basics/main/ui/ListFlowView;->a(Lcom/inveno/se/model/ZZNewsinfo;)V

    return-void
.end method

.method private a(Lcom/inveno/se/model/ZZNewsinfo;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 894
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->u:Lcom/inveno/basics/main/a;

    if-eqz v0, :cond_2

    .line 898
    :try_start_0
    invoke-virtual {p1}, Lcom/inveno/se/model/ZZNewsinfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 899
    invoke-virtual {p1}, Lcom/inveno/se/model/ZZNewsinfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 903
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u70b9\u51fburl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLogA(Ljava/lang/String;)V

    .line 904
    invoke-static {v2}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->I:Ljava/lang/String;

    invoke-static {v0}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "&uid="

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "&invenouid"

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 906
    const-string v0, ""

    .line 907
    const-string v0, "?"

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "="

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 908
    const-string v0, ""

    .line 914
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "invenouid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/inveno/basics/main/ui/ListFlowView;->I:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&invenoapp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/inveno/se/config/ZZConfig;->PIKEY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&invenoid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/inveno/se/model/ZZNewsinfo;->getContent_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 917
    :cond_1
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->u:Lcom/inveno/basics/main/a;

    invoke-virtual {p1}, Lcom/inveno/se/model/ZZNewsinfo;->getContent_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/inveno/se/model/ZZNewsinfo;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/inveno/se/model/ZZNewsinfo;->getSource()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/inveno/se/model/ZZNewsinfo;->getPublish_time()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-interface/range {v0 .. v7}, Lcom/inveno/basics/main/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)V

    .line 918
    const-string v0, "0x010100"

    invoke-virtual {p1}, Lcom/inveno/se/model/ZZNewsinfo;->getContent_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/inveno/se/model/ZZNewsinfo;->getCpack()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/inveno/reportsdk/XZReportAgent;->onItemClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 923
    :cond_2
    :goto_2
    return-void

    .line 900
    :cond_3
    invoke-virtual {p1}, Lcom/inveno/se/model/ZZNewsinfo;->getShare_url()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 901
    invoke-virtual {p1}, Lcom/inveno/se/model/ZZNewsinfo;->getShare_url()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 909
    :cond_4
    const-string v0, "?"

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "="

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 910
    const-string v0, "&"

    goto :goto_1

    .line 912
    :cond_5
    const-string v0, "?"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 919
    :catch_0
    move-exception v0

    .line 920
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ex"

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
.end method

.method static synthetic a(Lcom/inveno/basics/main/ui/ListFlowView;Z)Z
    .locals 0

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/inveno/basics/main/ui/ListFlowView;->B:Z

    return p1
.end method

.method static synthetic b(Lcom/inveno/basics/main/ui/ListFlowView;)Lcom/inveno/basics/main/a/a;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->m:Lcom/inveno/basics/main/a/a;

    return-object v0
.end method

.method static synthetic b(Lcom/inveno/basics/main/ui/ListFlowView;Lcom/inveno/se/model/ZZNews;)Lcom/inveno/se/model/ZZNews;
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/inveno/basics/main/ui/ListFlowView;->i:Lcom/inveno/se/model/ZZNews;

    return-object p1
.end method

.method static synthetic b(Lcom/inveno/basics/main/ui/ListFlowView;I)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/inveno/basics/main/ui/ListFlowView;->a(I)V

    return-void
.end method

.method static synthetic b(Lcom/inveno/basics/main/ui/ListFlowView;Z)Z
    .locals 0

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/inveno/basics/main/ui/ListFlowView;->E:Z

    return p1
.end method

.method static synthetic c(Lcom/inveno/basics/main/ui/ListFlowView;I)I
    .locals 0

    .prologue
    .line 58
    iput p1, p0, Lcom/inveno/basics/main/ui/ListFlowView;->v:I

    return p1
.end method

.method static synthetic c(Lcom/inveno/basics/main/ui/ListFlowView;)Lflyme/support/v7/widget/MzRecyclerView;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->o:Lflyme/support/v7/widget/MzRecyclerView;

    return-object v0
.end method

.method static synthetic c(Lcom/inveno/basics/main/ui/ListFlowView;Z)Z
    .locals 0

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/inveno/basics/main/ui/ListFlowView;->D:Z

    return p1
.end method

.method static synthetic d(Lcom/inveno/basics/main/ui/ListFlowView;)Lcom/inveno/basics/main/ui/a;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->n:Lcom/inveno/basics/main/ui/a;

    return-object v0
.end method

.method static synthetic d(Lcom/inveno/basics/main/ui/ListFlowView;Z)Z
    .locals 0

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/inveno/basics/main/ui/ListFlowView;->C:Z

    return p1
.end method

.method static synthetic e(Lcom/inveno/basics/main/ui/ListFlowView;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->y:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic e(Lcom/inveno/basics/main/ui/ListFlowView;Z)Z
    .locals 0

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/inveno/basics/main/ui/ListFlowView;->t:Z

    return p1
.end method

.method static synthetic f(Lcom/inveno/basics/main/ui/ListFlowView;)Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->t:Z

    return v0
.end method

.method static synthetic g(Lcom/inveno/basics/main/ui/ListFlowView;)Lcom/inveno/basics/main/a;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->u:Lcom/inveno/basics/main/a;

    return-object v0
.end method

.method private g()V
    .locals 3

    .prologue
    .line 159
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 160
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 161
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 162
    const-string v1, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 163
    const-string v1, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 164
    new-instance v1, Lcom/inveno/basics/main/ui/ListFlowView$ConnectionChangeReceiver;

    invoke-direct {v1, p0}, Lcom/inveno/basics/main/ui/ListFlowView$ConnectionChangeReceiver;-><init>(Lcom/inveno/basics/main/ui/ListFlowView;)V

    iput-object v1, p0, Lcom/inveno/basics/main/ui/ListFlowView;->A:Lcom/inveno/basics/main/ui/ListFlowView$ConnectionChangeReceiver;

    .line 165
    iget-object v1, p0, Lcom/inveno/basics/main/ui/ListFlowView;->y:Landroid/content/Context;

    iget-object v2, p0, Lcom/inveno/basics/main/ui/ListFlowView;->A:Lcom/inveno/basics/main/ui/ListFlowView$ConnectionChangeReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 166
    return-void
.end method

.method static synthetic h(Lcom/inveno/basics/main/ui/ListFlowView;)J
    .locals 2

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->J:J

    return-wide v0
.end method

.method private h()V
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->y:Landroid/content/Context;

    iget-object v1, p0, Lcom/inveno/basics/main/ui/ListFlowView;->A:Lcom/inveno/basics/main/ui/ListFlowView$ConnectionChangeReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 170
    return-void
.end method

.method static synthetic i(Lcom/inveno/basics/main/ui/ListFlowView;)Lcom/inveno/basics/main/ui/b;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->K:Lcom/inveno/basics/main/ui/b;

    return-object v0
.end method

.method private i()V
    .locals 2

    .prologue
    .line 450
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->d:Landroid/widget/LinearLayout;

    sget v1, Lcom/inveno/basics/R$id;->refreshHintView:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/inveno/basics/ui/RefreshHintView;

    iput-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->r:Lcom/inveno/basics/ui/RefreshHintView;

    .line 451
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->r:Lcom/inveno/basics/ui/RefreshHintView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/inveno/basics/ui/RefreshHintView;->setState(I)V

    .line 452
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->r:Lcom/inveno/basics/ui/RefreshHintView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/inveno/basics/ui/RefreshHintView;->setVisibility(I)V

    .line 453
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->r:Lcom/inveno/basics/ui/RefreshHintView;

    new-instance v1, Lcom/inveno/basics/main/ui/ListFlowView$6;

    invoke-direct {v1, p0}, Lcom/inveno/basics/main/ui/ListFlowView$6;-><init>(Lcom/inveno/basics/main/ui/ListFlowView;)V

    invoke-virtual {v0, v1}, Lcom/inveno/basics/ui/RefreshHintView;->setOnClickRefreshListener(Lcom/inveno/basics/ui/RefreshHintView$a;)V

    .line 466
    return-void
.end method

.method static synthetic j(Lcom/inveno/basics/main/ui/ListFlowView;)Lcom/inveno/basics/ui/RefreshHintView;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->r:Lcom/inveno/basics/ui/RefreshHintView;

    return-object v0
.end method

.method private j()V
    .locals 3

    .prologue
    .line 470
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->g:Ljava/util/ArrayList;

    .line 471
    new-instance v0, Lcom/inveno/basics/main/a/a;

    iget-object v1, p0, Lcom/inveno/basics/main/ui/ListFlowView;->y:Landroid/content/Context;

    const-string v2, "0x010100"

    invoke-direct {v0, v1, v2}, Lcom/inveno/basics/main/a/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->m:Lcom/inveno/basics/main/a/a;

    .line 472
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->m:Lcom/inveno/basics/main/a/a;

    new-instance v1, Lcom/inveno/basics/main/ui/ListFlowView$7;

    invoke-direct {v1, p0}, Lcom/inveno/basics/main/ui/ListFlowView$7;-><init>(Lcom/inveno/basics/main/ui/ListFlowView;)V

    invoke-virtual {v0, v1}, Lcom/inveno/basics/main/a/a;->a(Lcom/inveno/basics/main/a/a$g;)V

    .line 495
    new-instance v0, Lcom/inveno/basics/main/ui/ListFlowView$a;

    invoke-direct {v0, p0}, Lcom/inveno/basics/main/ui/ListFlowView$a;-><init>(Lcom/inveno/basics/main/ui/ListFlowView;)V

    iput-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->q:Lcom/inveno/basics/main/ui/ListFlowView$a;

    .line 497
    new-instance v0, Lcom/inveno/basics/main/ui/ListFlowView$8;

    invoke-direct {v0, p0}, Lcom/inveno/basics/main/ui/ListFlowView$8;-><init>(Lcom/inveno/basics/main/ui/ListFlowView;)V

    iput-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->e:Lcom/inveno/se/callback/ZZReuqestListener;

    .line 537
    new-instance v0, Lcom/inveno/basics/main/ui/ListFlowView$9;

    invoke-direct {v0, p0}, Lcom/inveno/basics/main/ui/ListFlowView$9;-><init>(Lcom/inveno/basics/main/ui/ListFlowView;)V

    iput-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->f:Lcom/inveno/se/callback/ZZReuqestListener;

    .line 555
    new-instance v0, Lcom/inveno/basics/main/ui/ListFlowView$10;

    invoke-direct {v0, p0}, Lcom/inveno/basics/main/ui/ListFlowView$10;-><init>(Lcom/inveno/basics/main/ui/ListFlowView;)V

    iput-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->l:Lcom/inveno/nxadsdk/b/a;

    .line 577
    new-instance v0, Lcom/inveno/basics/main/ui/ListFlowView$2;

    invoke-direct {v0, p0}, Lcom/inveno/basics/main/ui/ListFlowView$2;-><init>(Lcom/inveno/basics/main/ui/ListFlowView;)V

    iput-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->k:Lcom/inveno/nxadsdk/b/a;

    .line 596
    return-void
.end method

.method private k()V
    .locals 13

    .prologue
    const/16 v1, 0xb

    const/4 v3, 0x2

    const/16 v12, 0xa

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 794
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->y:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->I:Ljava/lang/String;

    invoke-static {v0}, Lcom/inveno/se/tools/StringTools;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 795
    :cond_0
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->q:Lcom/inveno/basics/main/ui/ListFlowView$a;

    invoke-virtual {v0, v1}, Lcom/inveno/basics/main/ui/ListFlowView$a;->sendEmptyMessage(I)Z

    .line 847
    :cond_1
    :goto_0
    return-void

    .line 800
    :cond_2
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->y:Landroid/content/Context;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->y:Landroid/content/Context;

    invoke-static {v0}, Lcom/inveno/basics/c/c;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 801
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->q:Lcom/inveno/basics/main/ui/ListFlowView$a;

    invoke-virtual {v0, v1}, Lcom/inveno/basics/main/ui/ListFlowView$a;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 806
    :cond_3
    iget-boolean v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->t:Z

    if-nez v0, :cond_1

    .line 810
    iput-boolean v10, p0, Lcom/inveno/basics/main/ui/ListFlowView;->B:Z

    .line 811
    iput-boolean v10, p0, Lcom/inveno/basics/main/ui/ListFlowView;->E:Z

    .line 812
    iput-boolean v10, p0, Lcom/inveno/basics/main/ui/ListFlowView;->C:Z

    .line 814
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u9875\u6570\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/inveno/basics/main/ui/ListFlowView;->v:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLogA(Ljava/lang/String;)V

    .line 815
    iget v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->v:I

    rem-int/lit8 v0, v0, 0xa

    if-nez v0, :cond_4

    .line 816
    const-string v0, "\u9875\u6570\u591f\u4e86\u6e05\u7406\u7f13\u5b58\uff1a"

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLogA(Ljava/lang/String;)V

    .line 817
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->y:Landroid/content/Context;

    invoke-static {v0}, Lcom/inveno/basics/c/b;->a(Landroid/content/Context;)V

    .line 820
    :cond_4
    iget v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->v:I

    if-ne v0, v11, :cond_6

    .line 821
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->H:Ljava/lang/String;

    invoke-static {v0}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 822
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->y:Landroid/content/Context;

    iget-object v1, p0, Lcom/inveno/basics/main/ui/ListFlowView;->I:Ljava/lang/String;

    const-string v2, "0x010100"

    iget-object v4, p0, Lcom/inveno/basics/main/ui/ListFlowView;->H:Ljava/lang/String;

    iget-object v5, p0, Lcom/inveno/basics/main/ui/ListFlowView;->a:[I

    iget-object v6, p0, Lcom/inveno/basics/main/ui/ListFlowView;->b:[I

    iget-object v7, p0, Lcom/inveno/basics/main/ui/ListFlowView;->c:[I

    iget-object v8, p0, Lcom/inveno/basics/main/ui/ListFlowView;->f:Lcom/inveno/se/callback/ZZReuqestListener;

    move v9, v3

    invoke-static/range {v0 .. v9}, Lcom/inveno/se/ZZSDKManager;->getKeywordNews(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;[I[I[ILcom/inveno/se/callback/ZZReuqestListener;I)V

    .line 830
    :goto_1
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->x:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 831
    iput-boolean v10, p0, Lcom/inveno/basics/main/ui/ListFlowView;->D:Z

    .line 832
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->y:Landroid/content/Context;

    invoke-static {v0}, Lcom/inveno/basics/c/d;->a(Landroid/content/Context;)Lcom/inveno/basics/c/d;

    move-result-object v0

    iget-object v1, p0, Lcom/inveno/basics/main/ui/ListFlowView;->k:Lcom/inveno/nxadsdk/b/a;

    invoke-virtual {v0, v1}, Lcom/inveno/basics/c/d;->a(Lcom/inveno/nxadsdk/b/a;)V

    .line 837
    :goto_2
    iget v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->s:I

    if-ne v0, v11, :cond_8

    .line 838
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->y:Landroid/content/Context;

    const-string v1, "0x010100"

    iget-object v3, p0, Lcom/inveno/basics/main/ui/ListFlowView;->a:[I

    iget-object v4, p0, Lcom/inveno/basics/main/ui/ListFlowView;->b:[I

    iget-object v5, p0, Lcom/inveno/basics/main/ui/ListFlowView;->c:[I

    iget-object v6, p0, Lcom/inveno/basics/main/ui/ListFlowView;->e:Lcom/inveno/se/callback/ZZReuqestListener;

    move v2, v12

    invoke-static/range {v0 .. v6}, Lcom/inveno/se/ZZSDKManager;->listRefresh(Landroid/content/Context;Ljava/lang/String;I[I[I[ILcom/inveno/se/callback/ZZReuqestListener;)V

    goto/16 :goto_0

    .line 824
    :cond_5
    iput-boolean v11, p0, Lcom/inveno/basics/main/ui/ListFlowView;->C:Z

    goto :goto_1

    .line 827
    :cond_6
    iput-boolean v11, p0, Lcom/inveno/basics/main/ui/ListFlowView;->C:Z

    goto :goto_1

    .line 834
    :cond_7
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->y:Landroid/content/Context;

    invoke-static {v0}, Lcom/inveno/basics/c/d;->a(Landroid/content/Context;)Lcom/inveno/basics/c/d;

    move-result-object v0

    const-string v1, "0x010100"

    iget-object v2, p0, Lcom/inveno/basics/main/ui/ListFlowView;->x:Ljava/lang/String;

    iget-object v4, p0, Lcom/inveno/basics/main/ui/ListFlowView;->l:Lcom/inveno/nxadsdk/b/a;

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/inveno/basics/c/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inveno/nxadsdk/b/a;Lcom/inveno/se/adapi/model/adconfig/AdSdkRule;)V

    goto :goto_2

    .line 839
    :cond_8
    iget v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->s:I

    if-ne v0, v3, :cond_9

    .line 840
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->y:Landroid/content/Context;

    const-string v1, "0x010100"

    iget-object v3, p0, Lcom/inveno/basics/main/ui/ListFlowView;->a:[I

    iget-object v4, p0, Lcom/inveno/basics/main/ui/ListFlowView;->b:[I

    iget-object v5, p0, Lcom/inveno/basics/main/ui/ListFlowView;->c:[I

    iget-object v6, p0, Lcom/inveno/basics/main/ui/ListFlowView;->e:Lcom/inveno/se/callback/ZZReuqestListener;

    move v2, v12

    invoke-static/range {v0 .. v6}, Lcom/inveno/se/ZZSDKManager;->listLoadmore(Landroid/content/Context;Ljava/lang/String;I[I[I[ILcom/inveno/se/callback/ZZReuqestListener;)V

    goto/16 :goto_0

    .line 841
    :cond_9
    iget v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->s:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_a

    .line 842
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->y:Landroid/content/Context;

    const-string v1, "0x010100"

    iget-object v3, p0, Lcom/inveno/basics/main/ui/ListFlowView;->a:[I

    iget-object v4, p0, Lcom/inveno/basics/main/ui/ListFlowView;->b:[I

    iget-object v5, p0, Lcom/inveno/basics/main/ui/ListFlowView;->c:[I

    iget-object v6, p0, Lcom/inveno/basics/main/ui/ListFlowView;->e:Lcom/inveno/se/callback/ZZReuqestListener;

    move v2, v12

    invoke-static/range {v0 .. v6}, Lcom/inveno/se/ZZSDKManager;->listRefresh(Landroid/content/Context;Ljava/lang/String;I[I[I[ILcom/inveno/se/callback/ZZReuqestListener;)V

    goto/16 :goto_0

    .line 843
    :cond_a
    iget v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->s:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 844
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->y:Landroid/content/Context;

    const-string v1, "0x010100"

    iget-object v3, p0, Lcom/inveno/basics/main/ui/ListFlowView;->a:[I

    iget-object v4, p0, Lcom/inveno/basics/main/ui/ListFlowView;->b:[I

    iget-object v5, p0, Lcom/inveno/basics/main/ui/ListFlowView;->c:[I

    iget-object v6, p0, Lcom/inveno/basics/main/ui/ListFlowView;->e:Lcom/inveno/se/callback/ZZReuqestListener;

    move v2, v12

    invoke-static/range {v0 .. v6}, Lcom/inveno/se/ZZSDKManager;->listRefresh(Landroid/content/Context;Ljava/lang/String;I[I[I[ILcom/inveno/se/callback/ZZReuqestListener;)V

    goto/16 :goto_0
.end method

.method static synthetic k(Lcom/inveno/basics/main/ui/ListFlowView;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/inveno/basics/main/ui/ListFlowView;->l()V

    return-void
.end method

.method static synthetic l(Lcom/inveno/basics/main/ui/ListFlowView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->x:Ljava/lang/String;

    return-object v0
.end method

.method private l()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 929
    .line 930
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5c55\u793a\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/inveno/basics/main/ui/ListFlowView;->E:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/inveno/basics/main/ui/ListFlowView;->B:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/inveno/basics/main/ui/ListFlowView;->C:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLogA(Ljava/lang/String;)V

    .line 931
    iget-boolean v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->E:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->B:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->C:Z

    if-eqz v0, :cond_9

    .line 932
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->i:Lcom/inveno/se/model/ZZNews;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->i:Lcom/inveno/se/model/ZZNews;

    invoke-virtual {v0}, Lcom/inveno/se/model/ZZNews;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 933
    new-instance v0, Lcom/inveno/se/model/ZZNewsinfo;

    invoke-direct {v0}, Lcom/inveno/se/model/ZZNewsinfo;-><init>()V

    .line 934
    const-string v1, "-3"

    invoke-virtual {v0, v1}, Lcom/inveno/se/model/ZZNewsinfo;->setDisplay(Ljava/lang/String;)V

    .line 935
    iget-object v1, p0, Lcom/inveno/basics/main/ui/ListFlowView;->i:Lcom/inveno/se/model/ZZNews;

    invoke-virtual {v1, v0}, Lcom/inveno/se/model/ZZNews;->add(Ljava/lang/Object;)Z

    .line 936
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->K:Lcom/inveno/basics/main/ui/b;

    iget-object v1, p0, Lcom/inveno/basics/main/ui/ListFlowView;->i:Lcom/inveno/se/model/ZZNews;

    invoke-virtual {v0, v1}, Lcom/inveno/basics/main/ui/b;->a(Ljava/util/ArrayList;)V

    .line 937
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->K:Lcom/inveno/basics/main/ui/b;

    invoke-virtual {v0}, Lcom/inveno/basics/main/ui/b;->c()V

    .line 938
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->K:Lcom/inveno/basics/main/ui/b;

    invoke-virtual {v0}, Lcom/inveno/basics/main/ui/b;->a()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inveno/basics/main/ui/ListFlowView;->a(Landroid/view/View;)V

    move v0, v2

    .line 958
    :goto_0
    iget-object v1, p0, Lcom/inveno/basics/main/ui/ListFlowView;->h:Lcom/inveno/se/model/ZZNews;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/inveno/basics/main/ui/ListFlowView;->h:Lcom/inveno/se/model/ZZNews;

    invoke-virtual {v1}, Lcom/inveno/se/model/ZZNews;->size()I

    move-result v1

    if-lez v1, :cond_d

    .line 960
    iget v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->s:I

    if-eq v0, v8, :cond_0

    const-string v0, "1"

    iget-object v1, p0, Lcom/inveno/basics/main/ui/ListFlowView;->h:Lcom/inveno/se/model/ZZNews;

    invoke-virtual {v1}, Lcom/inveno/se/model/ZZNews;->getReset()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 961
    :cond_0
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 962
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->o:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-virtual {v0, v3}, Lflyme/support/v7/widget/MzRecyclerView;->scrollToPosition(I)V

    .line 966
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->j:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_7

    move v4, v3

    .line 967
    :goto_1
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_7

    .line 968
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/nxadsdk/model/NativeRegularAd;

    .line 969
    invoke-virtual {v0}, Lcom/inveno/nxadsdk/model/NativeRegularAd;->c()Ljava/util/ArrayList;

    move-result-object v1

    .line 970
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 971
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inveno/nxadsdk/model/NativeAd;

    .line 972
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/inveno/nxadsdk/model/NativeAd;->a()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v1}, Lcom/inveno/nxadsdk/model/NativeAd;->g()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 973
    new-instance v5, Lcom/inveno/se/model/ZZNewsinfo;

    invoke-direct {v5}, Lcom/inveno/se/model/ZZNewsinfo;-><init>()V

    .line 974
    invoke-virtual {v5, v1}, Lcom/inveno/se/model/ZZNewsinfo;->setAdObject(Ljava/lang/Object;)V

    .line 976
    invoke-virtual {v0}, Lcom/inveno/nxadsdk/model/NativeRegularAd;->b()I

    move-result v1

    if-ne v1, v7, :cond_6

    .line 977
    const-string v1, "-2"

    invoke-virtual {v5, v1}, Lcom/inveno/se/model/ZZNewsinfo;->setDisplay(Ljava/lang/String;)V

    .line 982
    :goto_2
    invoke-virtual {v0}, Lcom/inveno/nxadsdk/model/NativeRegularAd;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 984
    iget-object v1, p0, Lcom/inveno/basics/main/ui/ListFlowView;->h:Lcom/inveno/se/model/ZZNews;

    invoke-virtual {v1}, Lcom/inveno/se/model/ZZNews;->size()I

    move-result v1

    if-lt v1, v0, :cond_2

    if-ltz v0, :cond_2

    .line 985
    iget-object v1, p0, Lcom/inveno/basics/main/ui/ListFlowView;->h:Lcom/inveno/se/model/ZZNews;

    invoke-virtual {v1, v0, v5}, Lcom/inveno/se/model/ZZNews;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 967
    :cond_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    .line 941
    :cond_3
    iget v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->v:I

    if-ne v0, v2, :cond_4

    .line 942
    new-instance v0, Lcom/inveno/se/model/ZZNewsinfo;

    invoke-direct {v0}, Lcom/inveno/se/model/ZZNewsinfo;-><init>()V

    .line 943
    const-string v1, "-3"

    invoke-virtual {v0, v1}, Lcom/inveno/se/model/ZZNewsinfo;->setDisplay(Ljava/lang/String;)V

    .line 944
    iget-object v1, p0, Lcom/inveno/basics/main/ui/ListFlowView;->K:Lcom/inveno/basics/main/ui/b;

    invoke-virtual {v1}, Lcom/inveno/basics/main/ui/b;->b()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 945
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->K:Lcom/inveno/basics/main/ui/b;

    invoke-virtual {v0}, Lcom/inveno/basics/main/ui/b;->c()V

    .line 946
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->K:Lcom/inveno/basics/main/ui/b;

    invoke-virtual {v0}, Lcom/inveno/basics/main/ui/b;->a()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inveno/basics/main/ui/ListFlowView;->a(Landroid/view/View;)V

    move v0, v2

    .line 948
    goto/16 :goto_0

    .line 949
    :cond_4
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->K:Lcom/inveno/basics/main/ui/b;

    invoke-virtual {v0}, Lcom/inveno/basics/main/ui/b;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v3

    .line 950
    goto/16 :goto_0

    :cond_5
    move v0, v2

    .line 952
    goto/16 :goto_0

    .line 979
    :cond_6
    :try_start_1
    const-string v1, "-1"

    invoke-virtual {v5, v1}, Lcom/inveno/se/model/ZZNewsinfo;->setDisplay(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 993
    :catch_0
    move-exception v0

    .line 994
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ShowView:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLogA(Ljava/lang/String;)V

    .line 997
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u62c9\u53d6\u6570\u636e\u6210\u529f \uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/inveno/basics/main/ui/ListFlowView;->s:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLogA(Ljava/lang/String;)V

    .line 998
    iget v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->s:I

    if-ne v0, v2, :cond_a

    .line 1000
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->h:Lcom/inveno/se/model/ZZNews;

    iput-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->g:Ljava/util/ArrayList;

    .line 1001
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->m:Lcom/inveno/basics/main/a/a;

    iget-object v1, p0, Lcom/inveno/basics/main/ui/ListFlowView;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/inveno/basics/main/a/a;->a(Ljava/util/ArrayList;)V

    .line 1002
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->n:Lcom/inveno/basics/main/ui/a;

    invoke-virtual {v0}, Lcom/inveno/basics/main/ui/a;->notifyDataSetChanged()V

    .line 1004
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->q:Lcom/inveno/basics/main/ui/ListFlowView$a;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/inveno/basics/main/ui/ListFlowView$a;->sendEmptyMessage(I)Z

    .line 1043
    :cond_8
    :goto_3
    iput-object v6, p0, Lcom/inveno/basics/main/ui/ListFlowView;->h:Lcom/inveno/se/model/ZZNews;

    .line 1044
    iput-object v6, p0, Lcom/inveno/basics/main/ui/ListFlowView;->i:Lcom/inveno/se/model/ZZNews;

    .line 1045
    iput-object v6, p0, Lcom/inveno/basics/main/ui/ListFlowView;->j:Ljava/util/ArrayList;

    .line 1046
    iput-boolean v3, p0, Lcom/inveno/basics/main/ui/ListFlowView;->B:Z

    .line 1047
    iput-boolean v3, p0, Lcom/inveno/basics/main/ui/ListFlowView;->E:Z

    .line 1049
    :cond_9
    return-void

    .line 1005
    :cond_a
    iget v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->s:I

    if-ne v0, v7, :cond_b

    .line 1006
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->g:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/inveno/basics/main/ui/ListFlowView;->h:Lcom/inveno/se/model/ZZNews;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1007
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->m:Lcom/inveno/basics/main/a/a;

    iget-object v1, p0, Lcom/inveno/basics/main/ui/ListFlowView;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/inveno/basics/main/a/a;->a(Ljava/util/ArrayList;)V

    .line 1008
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->n:Lcom/inveno/basics/main/ui/a;

    invoke-virtual {v0}, Lcom/inveno/basics/main/ui/a;->notifyDataSetChanged()V

    .line 1010
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->q:Lcom/inveno/basics/main/ui/ListFlowView$a;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/inveno/basics/main/ui/ListFlowView$a;->sendEmptyMessage(I)Z

    goto :goto_3

    .line 1011
    :cond_b
    iget v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->s:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_c

    .line 1012
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->g:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/inveno/basics/main/ui/ListFlowView;->h:Lcom/inveno/se/model/ZZNews;

    invoke-virtual {v0, v3, v1}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 1013
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->m:Lcom/inveno/basics/main/a/a;

    iget-object v1, p0, Lcom/inveno/basics/main/ui/ListFlowView;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/inveno/basics/main/a/a;->a(Ljava/util/ArrayList;)V

    .line 1014
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->n:Lcom/inveno/basics/main/ui/a;

    invoke-virtual {v0}, Lcom/inveno/basics/main/ui/a;->notifyDataSetChanged()V

    .line 1016
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->q:Lcom/inveno/basics/main/ui/ListFlowView$a;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/inveno/basics/main/ui/ListFlowView$a;->sendEmptyMessage(I)Z

    .line 1018
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->o:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-virtual {v0, v3}, Lflyme/support/v7/widget/MzRecyclerView;->scrollToPosition(I)V

    goto :goto_3

    .line 1019
    :cond_c
    iget v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->s:I

    if-ne v0, v8, :cond_8

    .line 1020
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->g:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/inveno/basics/main/ui/ListFlowView;->h:Lcom/inveno/se/model/ZZNews;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1021
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->m:Lcom/inveno/basics/main/a/a;

    iget-object v1, p0, Lcom/inveno/basics/main/ui/ListFlowView;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/inveno/basics/main/a/a;->a(Ljava/util/ArrayList;)V

    .line 1022
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->n:Lcom/inveno/basics/main/ui/a;

    invoke-virtual {v0}, Lcom/inveno/basics/main/ui/a;->notifyDataSetChanged()V

    .line 1024
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->q:Lcom/inveno/basics/main/ui/ListFlowView$a;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/inveno/basics/main/ui/ListFlowView$a;->sendEmptyMessage(I)Z

    goto :goto_3

    .line 1027
    :cond_d
    iget-object v1, p0, Lcom/inveno/basics/main/ui/ListFlowView;->m:Lcom/inveno/basics/main/a/a;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/inveno/basics/main/ui/ListFlowView;->m:Lcom/inveno/basics/main/a/a;

    invoke-virtual {v1}, Lcom/inveno/basics/main/a/a;->a()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/inveno/basics/main/ui/ListFlowView;->m:Lcom/inveno/basics/main/a/a;

    invoke-virtual {v1}, Lcom/inveno/basics/main/a/a;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_e

    iget-object v1, p0, Lcom/inveno/basics/main/ui/ListFlowView;->h:Lcom/inveno/se/model/ZZNews;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/inveno/basics/main/ui/ListFlowView;->h:Lcom/inveno/se/model/ZZNews;

    .line 1028
    invoke-virtual {v1}, Lcom/inveno/se/model/ZZNews;->size()I

    move-result v1

    if-nez v1, :cond_e

    .line 1029
    const-string v0, "\u62c9\u53d6\u6570\u636e \uff1a10"

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLogA(Ljava/lang/String;)V

    .line 1030
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->q:Lcom/inveno/basics/main/ui/ListFlowView$a;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/inveno/basics/main/ui/ListFlowView$a;->sendEmptyMessage(I)Z

    goto/16 :goto_3

    .line 1034
    :cond_e
    if-eqz v0, :cond_f

    .line 1035
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->q:Lcom/inveno/basics/main/ui/ListFlowView$a;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/inveno/basics/main/ui/ListFlowView$a;->sendEmptyMessage(I)Z

    goto/16 :goto_3

    .line 1037
    :cond_f
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->q:Lcom/inveno/basics/main/ui/ListFlowView$a;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/inveno/basics/main/ui/ListFlowView$a;->sendEmptyMessage(I)Z

    goto/16 :goto_3
.end method

.method static synthetic m(Lcom/inveno/basics/main/ui/ListFlowView;)Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->D:Z

    return v0
.end method

.method static synthetic n(Lcom/inveno/basics/main/ui/ListFlowView;)Lcom/inveno/nxadsdk/b/a;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->l:Lcom/inveno/nxadsdk/b/a;

    return-object v0
.end method

.method static synthetic o(Lcom/inveno/basics/main/ui/ListFlowView;)I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->s:I

    return v0
.end method

.method static synthetic p(Lcom/inveno/basics/main/ui/ListFlowView;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/inveno/basics/main/ui/ListFlowView;->k()V

    return-void
.end method

.method static synthetic q(Lcom/inveno/basics/main/ui/ListFlowView;)I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->v:I

    return v0
.end method

.method static synthetic r(Lcom/inveno/basics/main/ui/ListFlowView;)Lcom/inveno/basics/ui/NoNetWorkView;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->z:Lcom/inveno/basics/ui/NoNetWorkView;

    return-object v0
.end method


# virtual methods
.method public a()Lflyme/support/v7/widget/MzRecyclerView;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->o:Lflyme/support/v7/widget/MzRecyclerView;

    return-object v0
.end method

.method public a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 874
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->n:Lcom/inveno/basics/main/ui/a;

    if-eqz v0, :cond_0

    .line 875
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->n:Lcom/inveno/basics/main/ui/a;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/inveno/basics/main/ui/a;->a(Landroid/view/View;I)V

    .line 876
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->n:Lcom/inveno/basics/main/ui/a;

    invoke-virtual {v0}, Lcom/inveno/basics/main/ui/a;->notifyDataSetChanged()V

    .line 878
    :cond_0
    return-void
.end method

.method public a(Lcom/inveno/basics/main/a;)V
    .locals 1

    .prologue
    .line 243
    iput-object p1, p0, Lcom/inveno/basics/main/ui/ListFlowView;->u:Lcom/inveno/basics/main/a;

    .line 245
    invoke-direct {p0}, Lcom/inveno/basics/main/ui/ListFlowView;->j()V

    .line 247
    if-eqz p1, :cond_0

    .line 248
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/inveno/basics/main/a;->a(Z)V

    .line 251
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 605
    invoke-static {p2}, Lcom/inveno/se/tools/StringTools;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 606
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->q:Lcom/inveno/basics/main/ui/ListFlowView$a;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/inveno/basics/main/ui/ListFlowView$a;->sendEmptyMessage(I)Z

    .line 617
    :goto_0
    return-void

    .line 609
    :cond_0
    iput-object p2, p0, Lcom/inveno/basics/main/ui/ListFlowView;->I:Ljava/lang/String;

    .line 610
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->y:Landroid/content/Context;

    invoke-static {v0}, Lcom/inveno/se/biz/UidBiz;->newInstance(Landroid/content/Context;)Lcom/inveno/se/biz/UidBiz;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/inveno/se/biz/UidBiz;->setUid(Ljava/lang/String;)V

    .line 612
    invoke-static {p1}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 613
    iput-object p1, p0, Lcom/inveno/basics/main/ui/ListFlowView;->H:Ljava/lang/String;

    .line 615
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "keyword"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLogA(Ljava/lang/String;)V

    .line 616
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->q:Lcom/inveno/basics/main/ui/ListFlowView$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/inveno/basics/main/ui/ListFlowView$a;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public b()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->d:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public c()V
    .locals 3

    .prologue
    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u9875\u97622\u663e\u793a\u9690\u85cf\uff1a\u8fdb\u5165"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/inveno/basics/main/ui/ListFlowView;->F:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLogA(Ljava/lang/String;)V

    .line 189
    iget-boolean v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->F:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->d:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 190
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->F:Z

    .line 191
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->G:Z

    .line 193
    :try_start_0
    const-string v0, "0x010100"

    invoke-static {v0}, Lcom/inveno/reportsdk/XZReportAgent;->onListEnter(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 194
    :catch_0
    move-exception v0

    .line 195
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

.method public d()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u9875\u97622\u663e\u793a\u9690\u85cf\uff1a\u9000\u51fa"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/inveno/basics/main/ui/ListFlowView;->G:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLogA(Ljava/lang/String;)V

    .line 205
    iget-boolean v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->G:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->d:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 206
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->G:Z

    .line 207
    iput-boolean v2, p0, Lcom/inveno/basics/main/ui/ListFlowView;->F:Z

    .line 209
    :try_start_0
    const-string v0, "0x010100"

    invoke-static {v0}, Lcom/inveno/reportsdk/XZReportAgent;->onListExit(Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->y:Landroid/content/Context;

    const-string v1, "data_sdk"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 214
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 215
    const-string v1, "sid_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 216
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 217
    :catch_0
    move-exception v0

    .line 218
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

.method public e()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 224
    const-string v0, "\u5217\u8868\u9875\u9500\u6bc1"

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLogA(Ljava/lang/String;)V

    .line 226
    invoke-direct {p0}, Lcom/inveno/basics/main/ui/ListFlowView;->h()V

    .line 227
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 228
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->q:Lcom/inveno/basics/main/ui/ListFlowView$a;

    invoke-virtual {v0, v1}, Lcom/inveno/basics/main/ui/ListFlowView$a;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 230
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->y:Landroid/content/Context;

    invoke-static {v0}, Lcom/inveno/nxadsdk/d/a;->a(Landroid/content/Context;)V

    .line 231
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->p:Lcom/meizu/common/widget/LoadingTextView;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->p:Lcom/meizu/common/widget/LoadingTextView;

    invoke-virtual {v0}, Lcom/meizu/common/widget/LoadingTextView;->stopAnimator()V

    .line 233
    iput-object v1, p0, Lcom/inveno/basics/main/ui/ListFlowView;->p:Lcom/meizu/common/widget/LoadingTextView;

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 237
    invoke-virtual {p0}, Lcom/inveno/basics/main/ui/ListFlowView;->d()V

    .line 239
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->y:Landroid/content/Context;

    invoke-static {v0}, Lcom/inveno/basics/c/b;->a(Landroid/content/Context;)V

    .line 240
    return-void
.end method

.method public f()V
    .locals 5

    .prologue
    .line 254
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/inveno/basics/main/ui/ListFlowView;->y:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->d:Landroid/widget/LinearLayout;

    .line 255
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->d:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/inveno/basics/main/ui/ListFlowView;->y:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/inveno/basics/R$layout;->mz_content_layout:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 256
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->d:Landroid/widget/LinearLayout;

    sget v1, Lcom/inveno/basics/R$id;->recyclerview:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lflyme/support/v7/widget/MzRecyclerView;

    iput-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->o:Lflyme/support/v7/widget/MzRecyclerView;

    .line 257
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->o:Lflyme/support/v7/widget/MzRecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lflyme/support/v7/widget/MzRecyclerView;->setHasFixedSize(Z)V

    .line 258
    new-instance v0, Lflyme/support/v7/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/inveno/basics/main/ui/ListFlowView;->y:Landroid/content/Context;

    invoke-direct {v0, v1}, Lflyme/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 259
    iget-object v1, p0, Lcom/inveno/basics/main/ui/ListFlowView;->o:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-virtual {v1, v0}, Lflyme/support/v7/widget/MzRecyclerView;->setLayoutManager(Lflyme/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 261
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->o:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-virtual {v0}, Lflyme/support/v7/widget/MzRecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/inveno/basics/main/ui/ListFlowView$1;

    invoke-direct {v1, p0}, Lcom/inveno/basics/main/ui/ListFlowView$1;-><init>(Lcom/inveno/basics/main/ui/ListFlowView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 310
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->o:Lflyme/support/v7/widget/MzRecyclerView;

    new-instance v1, Lcom/inveno/basics/main/ui/ListFlowView$3;

    invoke-direct {v1, p0}, Lcom/inveno/basics/main/ui/ListFlowView$3;-><init>(Lcom/inveno/basics/main/ui/ListFlowView;)V

    invoke-virtual {v0, v1}, Lflyme/support/v7/widget/MzRecyclerView;->addOnScrollListener(Lflyme/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 394
    new-instance v0, Lcom/meizu/common/widget/LoadingTextView;

    iget-object v1, p0, Lcom/inveno/basics/main/ui/ListFlowView;->y:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/meizu/common/widget/LoadingTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->p:Lcom/meizu/common/widget/LoadingTextView;

    .line 395
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->p:Lcom/meizu/common/widget/LoadingTextView;

    const-string v1, "\u6b63\u5728\u52a0\u8f7d"

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/LoadingTextView;->setLoadText(Ljava/lang/String;)V

    .line 396
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->p:Lcom/meizu/common/widget/LoadingTextView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/inveno/basics/main/ui/ListFlowView;->y:Landroid/content/Context;

    const/high16 v4, 0x42480000    # 50.0f

    invoke-static {v3, v4}, Lcom/inveno/basics/main/ui/ListFlowView;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/LoadingTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 398
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->d:Landroid/widget/LinearLayout;

    sget v1, Lcom/inveno/basics/R$id;->nonetworkview:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/inveno/basics/ui/NoNetWorkView;

    iput-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->z:Lcom/inveno/basics/ui/NoNetWorkView;

    .line 399
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->z:Lcom/inveno/basics/ui/NoNetWorkView;

    new-instance v1, Lcom/inveno/basics/main/ui/ListFlowView$4;

    invoke-direct {v1, p0}, Lcom/inveno/basics/main/ui/ListFlowView$4;-><init>(Lcom/inveno/basics/main/ui/ListFlowView;)V

    invoke-virtual {v0, v1}, Lcom/inveno/basics/ui/NoNetWorkView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 408
    invoke-direct {p0}, Lcom/inveno/basics/main/ui/ListFlowView;->i()V

    .line 410
    new-instance v0, Lcom/inveno/basics/main/ui/a;

    iget-object v1, p0, Lcom/inveno/basics/main/ui/ListFlowView;->m:Lcom/inveno/basics/main/a/a;

    invoke-direct {v0, v1}, Lcom/inveno/basics/main/ui/a;-><init>(Lflyme/support/v7/widget/RecyclerView$Adapter;)V

    iput-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->n:Lcom/inveno/basics/main/ui/a;

    .line 411
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->n:Lcom/inveno/basics/main/ui/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/inveno/basics/main/ui/a;->a(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->n:Lcom/inveno/basics/main/ui/a;

    iget-object v1, p0, Lcom/inveno/basics/main/ui/ListFlowView;->p:Lcom/meizu/common/widget/LoadingTextView;

    invoke-virtual {v0, v1}, Lcom/inveno/basics/main/ui/a;->a(Landroid/view/View;)V

    .line 415
    :cond_0
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->o:Lflyme/support/v7/widget/MzRecyclerView;

    iget-object v1, p0, Lcom/inveno/basics/main/ui/ListFlowView;->n:Lcom/inveno/basics/main/ui/a;

    invoke-virtual {v0, v1}, Lflyme/support/v7/widget/MzRecyclerView;->setAdapter(Lflyme/support/v7/widget/RecyclerView$Adapter;)V

    .line 417
    invoke-direct {p0}, Lcom/inveno/basics/main/ui/ListFlowView;->g()V

    .line 419
    new-instance v0, Lcom/inveno/basics/main/ui/b;

    iget-object v1, p0, Lcom/inveno/basics/main/ui/ListFlowView;->y:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/inveno/basics/main/ui/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->K:Lcom/inveno/basics/main/ui/b;

    .line 420
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView;->K:Lcom/inveno/basics/main/ui/b;

    new-instance v1, Lcom/inveno/basics/main/ui/ListFlowView$5;

    invoke-direct {v1, p0}, Lcom/inveno/basics/main/ui/ListFlowView$5;-><init>(Lcom/inveno/basics/main/ui/ListFlowView;)V

    invoke-virtual {v0, v1}, Lcom/inveno/basics/main/ui/b;->a(Lcom/inveno/basics/main/ui/b$e;)V

    .line 442
    invoke-virtual {p0}, Lcom/inveno/basics/main/ui/ListFlowView;->c()V

    .line 444
    return-void
.end method
