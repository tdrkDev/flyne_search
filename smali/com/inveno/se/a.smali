.class public Lcom/inveno/se/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/inveno/se/a;


# instance fields
.field private b:Lcom/inveno/se/biz/UidBiz;

.field private c:Lcom/inveno/se/callback/UidLisener;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/inveno/se/biz/UidBiz;->newInstance(Landroid/content/Context;)Lcom/inveno/se/biz/UidBiz;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/se/a;->b:Lcom/inveno/se/biz/UidBiz;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/inveno/se/a;
    .locals 2

    const-class v1, Lcom/inveno/se/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/inveno/se/a;->a:Lcom/inveno/se/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/inveno/se/a;

    invoke-direct {v0, p0}, Lcom/inveno/se/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/inveno/se/a;->a:Lcom/inveno/se/a;

    :cond_0
    sget-object v0, Lcom/inveno/se/a;->a:Lcom/inveno/se/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/inveno/se/a;Landroid/content/Context;IILjava/lang/String;IIILcom/inveno/se/callback/ZZReuqestListener;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/inveno/se/a;->b(Landroid/content/Context;IILjava/lang/String;IIILcom/inveno/se/callback/ZZReuqestListener;)V

    return-void
.end method

.method static synthetic a(Lcom/inveno/se/a;Landroid/content/Context;Ljava/lang/String;Lcom/inveno/se/callback/DownloadCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/inveno/se/a;->b(Landroid/content/Context;Ljava/lang/String;Lcom/inveno/se/callback/DownloadCallback;)V

    return-void
.end method

.method private b(Landroid/content/Context;IIILcom/inveno/se/callback/DownloadCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "III",
            "Lcom/inveno/se/callback/DownloadCallback",
            "<",
            "Lcom/inveno/se/model/ZZHotWord;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/inveno/se/c;

    invoke-direct {v0, p0, p5}, Lcom/inveno/se/c;-><init>(Lcom/inveno/se/a;Lcom/inveno/se/callback/DownloadCallback;)V

    invoke-static {p1, p2, p3, p4, v0}, Lcom/inveno/reportsdk/af;->a(Landroid/content/Context;IIILcom/inveno/reportsdk/q;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "pise"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getZZHotwords error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private b(Landroid/content/Context;IILjava/lang/String;IIILcom/inveno/se/callback/ZZReuqestListener;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/lang/String;",
            "III",
            "Lcom/inveno/se/callback/ZZReuqestListener",
            "<",
            "Lcom/inveno/se/model/ZZNews",
            "<",
            "Lcom/inveno/se/model/ZZNewsinfo;",
            ">;>;)V"
        }
    .end annotation

    :try_start_0
    new-instance v8, Lcom/inveno/se/h;

    move-object/from16 v0, p8

    invoke-direct {v8, p0, v0}, Lcom/inveno/se/h;-><init>(Lcom/inveno/se/a;Lcom/inveno/se/callback/ZZReuqestListener;)V

    move-object v1, p1

    move v2, p2

    move-object v3, p4

    move v4, p3

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-static/range {v1 .. v8}, Lcom/inveno/reportsdk/af;->a(Landroid/content/Context;ILjava/lang/String;IIIILcom/inveno/reportsdk/q;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string v2, "pise"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getHotWordNews error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;IIIILcom/inveno/se/callback/DownloadCallback;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "IIII",
            "Lcom/inveno/se/callback/DownloadCallback",
            "<",
            "Lcom/inveno/se/model/ZZNews",
            "<",
            "Lcom/inveno/se/model/ZZNewsinfo;",
            ">;>;I)V"
        }
    .end annotation

    :try_start_0
    new-instance v5, Lcom/inveno/se/l;

    invoke-direct {v5, p0, p7, p1}, Lcom/inveno/se/l;-><init>(Lcom/inveno/se/a;Lcom/inveno/se/callback/DownloadCallback;Landroid/content/Context;)V

    move-object v0, p2

    move v1, p3

    move v2, p4

    move v3, p5

    move v4, p6

    move v6, p8

    invoke-static/range {v0 .. v6}, Lcom/inveno/reportsdk/af;->a(Ljava/lang/String;IIIILcom/inveno/reportsdk/q;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "pise"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNews error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p7, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get news error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p7, v0}, Lcom/inveno/se/callback/DownloadCallback;->onFailure(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inveno/se/callback/DownloadCallback;I)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "IIII",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/inveno/se/callback/DownloadCallback",
            "<",
            "Lcom/inveno/se/model/ZZNews",
            "<",
            "Lcom/inveno/se/model/ZZNewsinfo;",
            ">;>;I)V"
        }
    .end annotation

    :try_start_0
    new-instance v11, Lcom/inveno/se/m;

    move-object/from16 v0, p12

    invoke-direct {v11, p0, v0, p1}, Lcom/inveno/se/m;-><init>(Lcom/inveno/se/a;Lcom/inveno/se/callback/DownloadCallback;Landroid/content/Context;)V

    move-object v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    move/from16 v12, p13

    invoke-static/range {v1 .. v12}, Lcom/inveno/reportsdk/af;->a(Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inveno/reportsdk/q;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string v2, "pise"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNews error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p12, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get news error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p12

    invoke-virtual {v0, v1}, Lcom/inveno/se/callback/DownloadCallback;->onFailure(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;Lcom/inveno/se/callback/DownloadCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/inveno/se/callback/DownloadCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/inveno/se/f;

    invoke-direct {v0, p0, p3}, Lcom/inveno/se/f;-><init>(Lcom/inveno/se/a;Lcom/inveno/se/callback/DownloadCallback;)V

    invoke-static {p1, p2, v0}, Lcom/inveno/reportsdk/af;->a(Landroid/content/Context;Ljava/lang/String;Lcom/inveno/reportsdk/q;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "pise"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getZZHotwords error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIIIILcom/inveno/se/callback/ZZReuqestListener;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIII",
            "Lcom/inveno/se/callback/ZZReuqestListener",
            "<",
            "Lcom/inveno/se/model/ZZNews",
            "<",
            "Lcom/inveno/se/model/ZZNewsinfo;",
            ">;>;)V"
        }
    .end annotation

    :try_start_0
    new-instance v8, Lcom/inveno/se/i;

    move-object/from16 v0, p9

    invoke-direct {v8, p0, v0}, Lcom/inveno/se/i;-><init>(Lcom/inveno/se/a;Lcom/inveno/se/callback/ZZReuqestListener;)V

    move-object v1, p2

    move-object v2, p3

    move v3, p5

    move v4, p4

    move v5, p6

    move/from16 v6, p8

    move/from16 v7, p7

    invoke-static/range {v1 .. v8}, Lcom/inveno/reportsdk/af;->a(Ljava/lang/String;Ljava/lang/String;IIIIILcom/inveno/reportsdk/q;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string v2, "pise"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSearchNews error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIIILcom/inveno/se/callback/ZZReuqestListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIII",
            "Lcom/inveno/se/callback/ZZReuqestListener",
            "<",
            "Lcom/inveno/se/model/ZZNews",
            "<",
            "Lcom/inveno/se/model/ZZNewsinfo;",
            ">;>;)V"
        }
    .end annotation

    :try_start_0
    new-instance v5, Lcom/inveno/se/q;

    invoke-direct {v5, p0, p8}, Lcom/inveno/se/q;-><init>(Lcom/inveno/se/a;Lcom/inveno/se/callback/ZZReuqestListener;)V

    move-object v0, p2

    move-object v1, p3

    move v2, p4

    move v3, p6

    move v4, p5

    invoke-static/range {v0 .. v5}, Lcom/inveno/reportsdk/af;->a(Ljava/lang/String;Ljava/lang/String;IIILcom/inveno/reportsdk/q;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "pise"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNewsDetailRelevant error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILcom/inveno/se/callback/ZZReuqestListener;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "III",
            "Lcom/inveno/se/callback/ZZReuqestListener",
            "<",
            "Lcom/inveno/se/model/ZZNews",
            "<",
            "Lcom/inveno/se/model/ZZNewsinfo;",
            ">;>;I)V"
        }
    .end annotation

    :try_start_0
    new-instance v8, Lcom/inveno/se/j;

    move-object/from16 v0, p9

    invoke-direct {v8, p0, v0}, Lcom/inveno/se/j;-><init>(Lcom/inveno/se/a;Lcom/inveno/se/callback/ZZReuqestListener;)V

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move/from16 v5, p6

    move/from16 v6, p8

    move/from16 v7, p7

    move/from16 v9, p10

    invoke-static/range {v1 .. v9}, Lcom/inveno/reportsdk/af;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILcom/inveno/reportsdk/q;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string v2, "pise"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getKeywordNews error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/inveno/se/callback/DownloadCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/inveno/se/callback/DownloadCallback",
            "<",
            "Lcom/inveno/se/model/ZZNewsDetail;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/inveno/se/o;

    invoke-direct {v0, p0, p4}, Lcom/inveno/se/o;-><init>(Lcom/inveno/se/a;Lcom/inveno/se/callback/DownloadCallback;)V

    invoke-static {p2, p3, v0}, Lcom/inveno/reportsdk/af;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inveno/reportsdk/q;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "pise"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNewsDetail error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/inveno/se/a;->b:Lcom/inveno/se/biz/UidBiz;

    invoke-virtual {v0}, Lcom/inveno/se/biz/UidBiz;->release()V

    iput-object v1, p0, Lcom/inveno/se/a;->b:Lcom/inveno/se/biz/UidBiz;

    iput-object v1, p0, Lcom/inveno/se/a;->c:Lcom/inveno/se/callback/UidLisener;

    sput-object v1, Lcom/inveno/se/a;->a:Lcom/inveno/se/a;

    return-void
.end method

.method public a(Landroid/content/Context;IIILcom/inveno/se/callback/DownloadCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "III",
            "Lcom/inveno/se/callback/DownloadCallback",
            "<",
            "Lcom/inveno/se/model/ZZHotWord;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/inveno/se/a;->b:Lcom/inveno/se/biz/UidBiz;

    invoke-virtual {v0}, Lcom/inveno/se/biz/UidBiz;->hasUid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct/range {p0 .. p5}, Lcom/inveno/se/a;->b(Landroid/content/Context;IIILcom/inveno/se/callback/DownloadCallback;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/inveno/se/a;->c:Lcom/inveno/se/callback/UidLisener;

    if-nez v0, :cond_1

    new-instance v0, Lcom/inveno/se/r;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/inveno/se/r;-><init>(Lcom/inveno/se/a;Landroid/content/Context;IIILcom/inveno/se/callback/DownloadCallback;)V

    iput-object v0, p0, Lcom/inveno/se/a;->c:Lcom/inveno/se/callback/UidLisener;

    :cond_1
    iget-object v0, p0, Lcom/inveno/se/a;->b:Lcom/inveno/se/biz/UidBiz;

    iget-object v1, p0, Lcom/inveno/se/a;->c:Lcom/inveno/se/callback/UidLisener;

    invoke-virtual {v0, v1, p1}, Lcom/inveno/se/biz/UidBiz;->getUid(Lcom/inveno/se/callback/UidLisener;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;IILjava/lang/String;IIILcom/inveno/se/callback/ZZReuqestListener;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/lang/String;",
            "III",
            "Lcom/inveno/se/callback/ZZReuqestListener",
            "<",
            "Lcom/inveno/se/model/ZZNews",
            "<",
            "Lcom/inveno/se/model/ZZNewsinfo;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/inveno/se/a;->b:Lcom/inveno/se/biz/UidBiz;

    invoke-virtual {v0}, Lcom/inveno/se/biz/UidBiz;->hasUid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct/range {p0 .. p8}, Lcom/inveno/se/a;->b(Landroid/content/Context;IILjava/lang/String;IIILcom/inveno/se/callback/ZZReuqestListener;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/inveno/se/a;->c:Lcom/inveno/se/callback/UidLisener;

    if-nez v0, :cond_1

    new-instance v0, Lcom/inveno/se/d;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/inveno/se/d;-><init>(Lcom/inveno/se/a;Landroid/content/Context;IILjava/lang/String;IIILcom/inveno/se/callback/ZZReuqestListener;)V

    iput-object v0, p0, Lcom/inveno/se/a;->c:Lcom/inveno/se/callback/UidLisener;

    :cond_1
    iget-object v0, p0, Lcom/inveno/se/a;->b:Lcom/inveno/se/biz/UidBiz;

    iget-object v1, p0, Lcom/inveno/se/a;->c:Lcom/inveno/se/callback/UidLisener;

    invoke-virtual {v0, v1, p1}, Lcom/inveno/se/biz/UidBiz;->getUid(Lcom/inveno/se/callback/UidLisener;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;IIIILcom/inveno/se/callback/DownloadCallback;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "IIII",
            "Lcom/inveno/se/callback/DownloadCallback",
            "<",
            "Lcom/inveno/se/model/ZZNews",
            "<",
            "Lcom/inveno/se/model/ZZNewsinfo;",
            ">;>;I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/inveno/se/a;->b:Lcom/inveno/se/biz/UidBiz;

    invoke-virtual {v0}, Lcom/inveno/se/biz/UidBiz;->hasUid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct/range {p0 .. p8}, Lcom/inveno/se/a;->b(Landroid/content/Context;Ljava/lang/String;IIIILcom/inveno/se/callback/DownloadCallback;I)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/inveno/se/b;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/inveno/se/b;-><init>(Lcom/inveno/se/a;Landroid/content/Context;Ljava/lang/String;IIIILcom/inveno/se/callback/DownloadCallback;I)V

    iput-object v0, p0, Lcom/inveno/se/a;->c:Lcom/inveno/se/callback/UidLisener;

    iget-object v0, p0, Lcom/inveno/se/a;->b:Lcom/inveno/se/biz/UidBiz;

    iget-object v1, p0, Lcom/inveno/se/a;->c:Lcom/inveno/se/callback/UidLisener;

    invoke-virtual {v0, v1, p1}, Lcom/inveno/se/biz/UidBiz;->getUid(Lcom/inveno/se/callback/UidLisener;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inveno/se/callback/DownloadCallback;I)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "IIII",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/inveno/se/callback/DownloadCallback",
            "<",
            "Lcom/inveno/se/model/ZZNews",
            "<",
            "Lcom/inveno/se/model/ZZNewsinfo;",
            ">;>;I)V"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/inveno/se/a;->b:Lcom/inveno/se/biz/UidBiz;

    invoke-virtual {v1}, Lcom/inveno/se/biz/UidBiz;->hasUid()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct/range {p0 .. p13}, Lcom/inveno/se/a;->b(Landroid/content/Context;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inveno/se/callback/DownloadCallback;I)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/inveno/se/k;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move/from16 v15, p13

    invoke-direct/range {v1 .. v15}, Lcom/inveno/se/k;-><init>(Lcom/inveno/se/a;Landroid/content/Context;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inveno/se/callback/DownloadCallback;I)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/inveno/se/a;->c:Lcom/inveno/se/callback/UidLisener;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/inveno/se/a;->b:Lcom/inveno/se/biz/UidBiz;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/inveno/se/a;->c:Lcom/inveno/se/callback/UidLisener;

    move-object/from16 v0, p1

    invoke-virtual {v1, v2, v0}, Lcom/inveno/se/biz/UidBiz;->getUid(Lcom/inveno/se/callback/UidLisener;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Lcom/inveno/se/callback/DownloadCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/inveno/se/callback/DownloadCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/inveno/se/a;->b:Lcom/inveno/se/biz/UidBiz;

    invoke-virtual {v0}, Lcom/inveno/se/biz/UidBiz;->hasUid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/inveno/se/a;->b(Landroid/content/Context;Ljava/lang/String;Lcom/inveno/se/callback/DownloadCallback;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/inveno/se/a;->c:Lcom/inveno/se/callback/UidLisener;

    if-nez v0, :cond_1

    new-instance v0, Lcom/inveno/se/e;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/inveno/se/e;-><init>(Lcom/inveno/se/a;Landroid/content/Context;Ljava/lang/String;Lcom/inveno/se/callback/DownloadCallback;)V

    iput-object v0, p0, Lcom/inveno/se/a;->c:Lcom/inveno/se/callback/UidLisener;

    :cond_1
    iget-object v0, p0, Lcom/inveno/se/a;->b:Lcom/inveno/se/biz/UidBiz;

    iget-object v1, p0, Lcom/inveno/se/a;->c:Lcom/inveno/se/callback/UidLisener;

    invoke-virtual {v0, v1, p1}, Lcom/inveno/se/biz/UidBiz;->getUid(Lcom/inveno/se/callback/UidLisener;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIIIILcom/inveno/se/callback/ZZReuqestListener;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIII",
            "Lcom/inveno/se/callback/ZZReuqestListener",
            "<",
            "Lcom/inveno/se/model/ZZNews",
            "<",
            "Lcom/inveno/se/model/ZZNewsinfo;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/inveno/se/a;->b:Lcom/inveno/se/biz/UidBiz;

    invoke-virtual {v0}, Lcom/inveno/se/biz/UidBiz;->hasUid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct/range {p0 .. p9}, Lcom/inveno/se/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIIIILcom/inveno/se/callback/ZZReuqestListener;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/inveno/se/a;->c:Lcom/inveno/se/callback/UidLisener;

    if-nez v0, :cond_1

    new-instance v0, Lcom/inveno/se/g;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/inveno/se/g;-><init>(Lcom/inveno/se/a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIIIILcom/inveno/se/callback/ZZReuqestListener;)V

    iput-object v0, p0, Lcom/inveno/se/a;->c:Lcom/inveno/se/callback/UidLisener;

    :cond_1
    iget-object v0, p0, Lcom/inveno/se/a;->b:Lcom/inveno/se/biz/UidBiz;

    iget-object v1, p0, Lcom/inveno/se/a;->c:Lcom/inveno/se/callback/UidLisener;

    invoke-virtual {v0, v1, p1}, Lcom/inveno/se/biz/UidBiz;->getUid(Lcom/inveno/se/callback/UidLisener;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIIILcom/inveno/se/callback/ZZReuqestListener;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIII",
            "Lcom/inveno/se/callback/ZZReuqestListener",
            "<",
            "Lcom/inveno/se/model/ZZNews",
            "<",
            "Lcom/inveno/se/model/ZZNewsinfo;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/inveno/se/a;->b:Lcom/inveno/se/biz/UidBiz;

    invoke-virtual {v0}, Lcom/inveno/se/biz/UidBiz;->hasUid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct/range {p0 .. p8}, Lcom/inveno/se/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIIILcom/inveno/se/callback/ZZReuqestListener;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/inveno/se/a;->c:Lcom/inveno/se/callback/UidLisener;

    if-nez v0, :cond_1

    new-instance v0, Lcom/inveno/se/p;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/inveno/se/p;-><init>(Lcom/inveno/se/a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIIILcom/inveno/se/callback/ZZReuqestListener;)V

    iput-object v0, p0, Lcom/inveno/se/a;->c:Lcom/inveno/se/callback/UidLisener;

    :cond_1
    iget-object v0, p0, Lcom/inveno/se/a;->b:Lcom/inveno/se/biz/UidBiz;

    iget-object v1, p0, Lcom/inveno/se/a;->c:Lcom/inveno/se/callback/UidLisener;

    invoke-virtual {v0, v1, p1}, Lcom/inveno/se/biz/UidBiz;->getUid(Lcom/inveno/se/callback/UidLisener;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILcom/inveno/se/callback/ZZReuqestListener;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "III",
            "Lcom/inveno/se/callback/ZZReuqestListener",
            "<",
            "Lcom/inveno/se/model/ZZNews",
            "<",
            "Lcom/inveno/se/model/ZZNewsinfo;",
            ">;>;I)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p10}, Lcom/inveno/se/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILcom/inveno/se/callback/ZZReuqestListener;I)V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/inveno/se/callback/DownloadCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/inveno/se/callback/DownloadCallback",
            "<",
            "Lcom/inveno/se/model/ZZNewsDetail;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/inveno/se/a;->b:Lcom/inveno/se/biz/UidBiz;

    invoke-virtual {v0}, Lcom/inveno/se/biz/UidBiz;->hasUid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/inveno/se/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/inveno/se/callback/DownloadCallback;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/inveno/se/a;->c:Lcom/inveno/se/callback/UidLisener;

    if-nez v0, :cond_1

    new-instance v0, Lcom/inveno/se/n;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/inveno/se/n;-><init>(Lcom/inveno/se/a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/inveno/se/callback/DownloadCallback;)V

    iput-object v0, p0, Lcom/inveno/se/a;->c:Lcom/inveno/se/callback/UidLisener;

    :cond_1
    iget-object v0, p0, Lcom/inveno/se/a;->b:Lcom/inveno/se/biz/UidBiz;

    iget-object v1, p0, Lcom/inveno/se/a;->c:Lcom/inveno/se/callback/UidLisener;

    invoke-virtual {v0, v1, p1}, Lcom/inveno/se/biz/UidBiz;->getUid(Lcom/inveno/se/callback/UidLisener;Landroid/content/Context;)V

    goto :goto_0
.end method
