.class public Lcom/inveno/nxadsdk/a/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/inveno/se/adapi/AdApiMgr;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/inveno/nxadsdk/a/b;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/inveno/se/adapi/AdApiMgr;->getInstance(Landroid/content/Context;)Lcom/inveno/se/adapi/AdApiMgr;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/nxadsdk/a/b;->b:Lcom/inveno/se/adapi/AdApiMgr;

    return-void
.end method

.method static synthetic a(Lcom/inveno/nxadsdk/a/b;Lcom/inveno/se/adapi/model/adstyle/FlowAd;)Lcom/inveno/nxadsdk/model/NativeAd;
    .locals 1

    invoke-direct {p0, p1}, Lcom/inveno/nxadsdk/a/b;->a(Lcom/inveno/se/adapi/model/adstyle/FlowAd;)Lcom/inveno/nxadsdk/model/NativeAd;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/inveno/se/adapi/model/adstyle/FlowAd;)Lcom/inveno/nxadsdk/model/NativeAd;
    .locals 2

    new-instance v0, Lcom/inveno/nxadsdk/model/InvenoModel;

    invoke-direct {v0}, Lcom/inveno/nxadsdk/model/InvenoModel;-><init>()V

    invoke-virtual {p1}, Lcom/inveno/se/adapi/model/adstyle/FlowAd;->getAdspaceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inveno/nxadsdk/model/NativeAd;->b(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/inveno/se/adapi/model/adstyle/FlowAd;->getBanner_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inveno/nxadsdk/model/NativeAd;->c(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/inveno/se/adapi/model/adstyle/FlowAd;->getBid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inveno/nxadsdk/model/NativeAd;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/inveno/se/adapi/model/adstyle/FlowAd;->getEMail_Num()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inveno/nxadsdk/model/NativeAd;->i(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/inveno/se/adapi/model/adstyle/FlowAd;->getImg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inveno/nxadsdk/model/NativeAd;->e(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/inveno/se/adapi/model/adstyle/FlowAd;->getImgH()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/inveno/nxadsdk/model/NativeAd;->b(I)V

    invoke-virtual {p1}, Lcom/inveno/se/adapi/model/adstyle/FlowAd;->getImgW()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/inveno/nxadsdk/model/NativeAd;->a(I)V

    invoke-virtual {p1}, Lcom/inveno/se/adapi/model/adstyle/FlowAd;->getInteraction_type()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/inveno/nxadsdk/model/NativeAd;->d(I)V

    invoke-virtual {p1}, Lcom/inveno/se/adapi/model/adstyle/FlowAd;->getJump_link()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inveno/nxadsdk/model/NativeAd;->h(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/inveno/se/adapi/model/adstyle/FlowAd;->getNotice_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inveno/nxadsdk/model/NativeAd;->d(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/inveno/se/adapi/model/adstyle/FlowAd;->getOpen_type()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/inveno/nxadsdk/model/NativeAd;->c(I)V

    invoke-virtual {p1}, Lcom/inveno/se/adapi/model/adstyle/FlowAd;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inveno/nxadsdk/model/NativeAd;->f(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/inveno/se/adapi/model/adstyle/FlowAd;->getPhone_Num()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inveno/nxadsdk/model/NativeAd;->k(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/inveno/se/adapi/model/adstyle/FlowAd;->getSMS_or_EMail_Msg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inveno/nxadsdk/model/NativeAd;->j(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/inveno/se/adapi/model/adstyle/FlowAd;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inveno/nxadsdk/model/NativeAd;->g(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/inveno/se/adapi/model/adstyle/FlowAd;->getDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inveno/nxadsdk/model/NativeAd;->l(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/inveno/se/adapi/model/adstyle/FlowAd;->getDeep_link()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inveno/nxadsdk/model/NativeAd;->m(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/inveno/se/adapi/model/adstyle/FlowAd;->getLogo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inveno/nxadsdk/model/NativeAd;->n(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/inveno/se/adapi/model/adstyle/FlowAd;->getAdSourceLogo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inveno/nxadsdk/model/NativeAd;->o(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/inveno/se/adapi/model/adstyle/FlowAd;->getAdSourceText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inveno/nxadsdk/model/NativeAd;->p(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/inveno/se/adapi/model/adstyle/FlowAd;->getAdTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inveno/nxadsdk/model/NativeAd;->q(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/inveno/se/adapi/model/adstyle/FlowAd;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inveno/nxadsdk/model/NativeAd;->r(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/inveno/se/adapi/model/adstyle/FlowAd;->getImgs()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inveno/nxadsdk/model/NativeAd;->a(Ljava/util/ArrayList;)V

    invoke-virtual {p1}, Lcom/inveno/se/adapi/model/adstyle/FlowAd;->getEvent_track()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inveno/nxadsdk/model/NativeAd;->a(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inveno/nxadsdk/a/b;->b:Lcom/inveno/se/adapi/AdApiMgr;

    iput-object v0, p0, Lcom/inveno/nxadsdk/a/b;->a:Landroid/content/Context;

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/inveno/se/adapi/model/adreq/Gps;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZLcom/inveno/nxadsdk/b/a;Ljava/util/ArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/inveno/se/adapi/model/adreq/Gps;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/inveno/se/adapi/model/adreq/Adspace;",
            ">;Z",
            "Lcom/inveno/nxadsdk/b/a",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/inveno/nxadsdk/model/NativeRegularAd;",
            ">;>;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/inveno/se/adapi/model/adconfig/AdSdkRule;",
            ">;)V"
        }
    .end annotation

    iget-object v2, p0, Lcom/inveno/nxadsdk/a/b;->b:Lcom/inveno/se/adapi/AdApiMgr;

    new-instance v3, Lcom/inveno/nxadsdk/a/b$1;

    move-object/from16 v0, p8

    move-object/from16 v1, p9

    invoke-direct {v3, p0, v0, v1}, Lcom/inveno/nxadsdk/a/b$1;-><init>(Lcom/inveno/nxadsdk/a/b;Lcom/inveno/nxadsdk/b/a;Ljava/util/ArrayList;)V

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    invoke-virtual/range {v2 .. v10}, Lcom/inveno/se/adapi/AdApiMgr;->getFlowAdMap(Lcom/inveno/se/callback/DownloadCallback;Ljava/lang/String;Lcom/inveno/se/adapi/model/adreq/Gps;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Z)V

    return-void
.end method
