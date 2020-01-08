.class public Lcom/inveno/basics/c/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[I

.field private static final b:[I

.field private static f:Lcom/inveno/basics/c/d;


# instance fields
.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/inveno/se/adapi/model/adconfig/AdSdkRules;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/inveno/se/adapi/model/adconfig/AdSdkConfigModel;

.field private e:I

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 34
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/inveno/basics/c/d;->a:[I

    .line 35
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/inveno/basics/c/d;->b:[I

    return-void

    .line 34
    :array_0
    .array-data 4
        0x2
        0x3
    .end array-data

    .line 35
    :array_1
    .array-data 4
        0x4
        0x1
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/inveno/basics/c/d;->g:Ljava/lang/String;

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/inveno/basics/c/d;->h:Ljava/lang/String;

    .line 50
    iput-object p1, p0, Lcom/inveno/basics/c/d;->i:Landroid/content/Context;

    .line 52
    return-void
.end method

.method static synthetic a(Lcom/inveno/basics/c/d;I)I
    .locals 0

    .prologue
    .line 32
    iput p1, p0, Lcom/inveno/basics/c/d;->e:I

    return p1
.end method

.method public static a(Landroid/content/Context;)Lcom/inveno/basics/c/d;
    .locals 2

    .prologue
    .line 55
    sget-object v0, Lcom/inveno/basics/c/d;->f:Lcom/inveno/basics/c/d;

    if-nez v0, :cond_1

    .line 56
    const-class v1, Lcom/inveno/basics/c/d;

    monitor-enter v1

    .line 57
    :try_start_0
    sget-object v0, Lcom/inveno/basics/c/d;->f:Lcom/inveno/basics/c/d;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lcom/inveno/basics/c/d;

    invoke-direct {v0, p0}, Lcom/inveno/basics/c/d;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/inveno/basics/c/d;->f:Lcom/inveno/basics/c/d;

    .line 60
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    :cond_1
    sget-object v0, Lcom/inveno/basics/c/d;->f:Lcom/inveno/basics/c/d;

    return-object v0

    .line 60
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/inveno/basics/c/d;)Lcom/inveno/se/adapi/model/adconfig/AdSdkConfigModel;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/inveno/basics/c/d;->d:Lcom/inveno/se/adapi/model/adconfig/AdSdkConfigModel;

    return-object v0
.end method

.method static synthetic a(Lcom/inveno/basics/c/d;Lcom/inveno/se/adapi/model/adconfig/AdSdkConfigModel;)Lcom/inveno/se/adapi/model/adconfig/AdSdkConfigModel;
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/inveno/basics/c/d;->d:Lcom/inveno/se/adapi/model/adconfig/AdSdkConfigModel;

    return-object p1
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 253
    invoke-static {p0}, Lcom/inveno/se/tools/StringTools;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    const-string v0, ""

    .line 265
    :goto_0
    return-object v0

    .line 256
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 257
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 258
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 259
    const-string v1, "ad_configid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 260
    const-string v1, "ad_configid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 261
    :catch_0
    move-exception v0

    .line 262
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 265
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method static synthetic a(Lcom/inveno/basics/c/d;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/inveno/basics/c/d;->c:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic a(Lcom/inveno/basics/c/d;Lcom/inveno/nxadsdk/b/a;Lcom/inveno/se/adapi/model/adconfig/AdSdkRule;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/inveno/basics/c/d;->a(Lcom/inveno/nxadsdk/b/a;Lcom/inveno/se/adapi/model/adconfig/AdSdkRule;)V

    return-void
.end method

.method private a(Lcom/inveno/nxadsdk/b/a;Lcom/inveno/se/adapi/model/adconfig/AdSdkRule;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inveno/nxadsdk/b/a",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/inveno/nxadsdk/model/NativeRegularAd;",
            ">;>;",
            "Lcom/inveno/se/adapi/model/adconfig/AdSdkRule;",
            ")V"
        }
    .end annotation

    .prologue
    .line 161
    const-string v1, "RegularAdBiz"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load ad    loadMaps   adSdkRule:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 165
    iget-object v1, p0, Lcom/inveno/basics/c/d;->c:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/inveno/basics/c/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 167
    iget-object v1, p0, Lcom/inveno/basics/c/d;->c:Ljava/util/ArrayList;

    iget v2, p0, Lcom/inveno/basics/c/d;->e:I

    iget-object v3, p0, Lcom/inveno/basics/c/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    rem-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inveno/se/adapi/model/adconfig/AdSdkRules;

    invoke-virtual {v1}, Lcom/inveno/se/adapi/model/adconfig/AdSdkRules;->getRules()Ljava/util/ArrayList;

    move-result-object v1

    .line 169
    iget v2, p0, Lcom/inveno/basics/c/d;->e:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/inveno/basics/c/d;->e:I

    .line 171
    if-eqz p2, :cond_0

    .line 173
    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 178
    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 194
    :cond_1
    :goto_0
    if-eqz v13, :cond_7

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_7

    .line 195
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 197
    const/4 v1, 0x0

    move v12, v1

    :goto_1
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v12, v1, :cond_5

    .line 198
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/inveno/se/adapi/model/adconfig/AdSdkRule;

    .line 199
    invoke-virtual {v11}, Lcom/inveno/se/adapi/model/adconfig/AdSdkRule;->getAdspace_id()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v11}, Lcom/inveno/se/adapi/model/adconfig/AdSdkRule;->getWidth()I

    move-result v3

    invoke-virtual {v11}, Lcom/inveno/se/adapi/model/adconfig/AdSdkRule;->getHeight()I

    move-result v4

    invoke-virtual {v11}, Lcom/inveno/se/adapi/model/adconfig/AdSdkRule;->getNum()I

    move-result v5

    const/4 v6, 0x0

    sget-object v7, Lcom/inveno/basics/c/d;->a:[I

    sget-object v8, Lcom/inveno/basics/c/d;->b:[I

    const/4 v9, 0x1

    const-string v10, ""

    invoke-static/range {v1 .. v10}, Lcom/inveno/nxadinf/config/NxAdspace;->a(Ljava/lang/String;IIIII[I[IILjava/lang/String;)Lcom/inveno/nxadinf/config/NxAdspace;

    move-result-object v1

    .line 200
    const-string v2, "RegularAdBiz"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "load ad    loadMaps   ad.getAdspace_id():"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v11}, Lcom/inveno/se/adapi/model/adconfig/AdSdkRule;->getAdspace_id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    add-int/lit8 v1, v12, 0x1

    move v12, v1

    goto :goto_1

    .line 181
    :cond_2
    if-eqz p2, :cond_3

    .line 183
    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 187
    :cond_3
    if-eqz p1, :cond_4

    .line 188
    const-string v1, "rules==null || rules.size()==0"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Lcom/inveno/nxadsdk/b/a;->a(Ljava/lang/String;)V

    .line 250
    :cond_4
    :goto_2
    return-void

    .line 204
    :cond_5
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 206
    iget-object v1, p0, Lcom/inveno/basics/c/d;->i:Landroid/content/Context;

    const-string v2, "129"

    const/4 v3, 0x0

    const-string v4, "meizusearch"

    const-string v5, "meizusearch"

    const/4 v7, 0x0

    new-instance v8, Lcom/inveno/basics/c/d$3;

    move-object/from16 v0, p1

    invoke-direct {v8, p0, v0}, Lcom/inveno/basics/c/d$3;-><init>(Lcom/inveno/basics/c/d;Lcom/inveno/nxadsdk/b/a;)V

    move-object v6, v14

    move-object v9, v13

    invoke-static/range {v1 .. v9}, Lcom/inveno/nxadsdk/d/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/inveno/nxadinf/config/NxGps;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZLcom/inveno/nxadsdk/b/a;Ljava/util/ArrayList;)V

    goto :goto_2

    .line 236
    :cond_6
    if-eqz p1, :cond_4

    .line 237
    const-string v1, "no ad list.size()==0"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Lcom/inveno/nxadsdk/b/a;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 244
    :cond_7
    if-eqz p1, :cond_4

    .line 245
    const-string v1, "no ad rulelist==null || rulelist.size()==0"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Lcom/inveno/nxadsdk/b/a;->a(Ljava/lang/String;)V

    goto :goto_2
.end method

.method static synthetic b(Lcom/inveno/basics/c/d;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/inveno/basics/c/d;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Lcom/inveno/nxadsdk/b/a;Lcom/inveno/se/adapi/model/adconfig/AdSdkRule;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/inveno/nxadsdk/b/a",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/inveno/nxadsdk/model/NativeRegularAd;",
            ">;>;",
            "Lcom/inveno/se/adapi/model/adconfig/AdSdkRule;",
            ")V"
        }
    .end annotation

    .prologue
    .line 93
    iget-object v6, p0, Lcom/inveno/basics/c/d;->i:Landroid/content/Context;

    const-string v7, "129"

    new-instance v0, Lcom/inveno/basics/c/d$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/inveno/basics/c/d$1;-><init>(Lcom/inveno/basics/c/d;Ljava/lang/String;Ljava/lang/String;Lcom/inveno/se/adapi/model/adconfig/AdSdkRule;Lcom/inveno/nxadsdk/b/a;)V

    invoke-static {v6, v7, v0}, Lcom/inveno/nxadsdk/d/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/inveno/nxadsdk/b/a;)V

    .line 124
    return-void
.end method

.method static synthetic c(Lcom/inveno/basics/c/d;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/inveno/basics/c/d;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/inveno/basics/c/d;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/inveno/basics/c/d;->h:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/inveno/nxadsdk/b/a;)V
    .locals 3

    .prologue
    .line 128
    iget-object v0, p0, Lcom/inveno/basics/c/d;->i:Landroid/content/Context;

    const-string v1, "129"

    new-instance v2, Lcom/inveno/basics/c/d$2;

    invoke-direct {v2, p0, p1}, Lcom/inveno/basics/c/d$2;-><init>(Lcom/inveno/basics/c/d;Lcom/inveno/nxadsdk/b/a;)V

    invoke-static {v0, v1, v2}, Lcom/inveno/nxadsdk/d/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/inveno/nxadsdk/b/a;)V

    .line 157
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/inveno/nxadsdk/b/a;Lcom/inveno/se/adapi/model/adconfig/AdSdkRule;)V
    .locals 3

    .prologue
    .line 70
    iput-object p1, p0, Lcom/inveno/basics/c/d;->g:Ljava/lang/String;

    .line 71
    iput-object p2, p0, Lcom/inveno/basics/c/d;->h:Ljava/lang/String;

    .line 74
    const-string v0, "RegularAdBiz"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start loadAd     scenario:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  adconfig:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/inveno/basics/c/d;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 76
    const-string v0, "RegularAdBiz"

    const-string v1, "load ad  1  rules==null"

    invoke-static {v0, v1}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/inveno/basics/c/d;->d:Lcom/inveno/se/adapi/model/adconfig/AdSdkConfigModel;

    if-eqz v0, :cond_0

    .line 78
    const-string v0, "RegularAdBiz"

    const-string v1, "load ad  2  adSdkConfigModel!=null"

    invoke-static {v0, v1}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/inveno/basics/c/d;->d:Lcom/inveno/se/adapi/model/adconfig/AdSdkConfigModel;

    invoke-static {p1, p2, v0}, Lcom/inveno/nxadsdk/d/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inveno/se/adapi/model/adconfig/AdSdkConfigModel;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/basics/c/d;->c:Ljava/util/ArrayList;

    .line 80
    const-string v0, "RegularAdBiz"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "load ad  3  rules:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/inveno/basics/c/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-direct {p0, p3, p4}, Lcom/inveno/basics/c/d;->a(Lcom/inveno/nxadsdk/b/a;Lcom/inveno/se/adapi/model/adconfig/AdSdkRule;)V

    .line 89
    :goto_0
    return-void

    .line 83
    :cond_0
    const-string v0, "RegularAdBiz"

    const-string v1, "load ad  2  adSdkConfigModel==null start load config"

    invoke-static {v0, v1}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/inveno/basics/c/d;->b(Ljava/lang/String;Ljava/lang/String;Lcom/inveno/nxadsdk/b/a;Lcom/inveno/se/adapi/model/adconfig/AdSdkRule;)V

    goto :goto_0

    .line 87
    :cond_1
    invoke-direct {p0, p3, p4}, Lcom/inveno/basics/c/d;->a(Lcom/inveno/nxadsdk/b/a;Lcom/inveno/se/adapi/model/adconfig/AdSdkRule;)V

    goto :goto_0
.end method
