.class public Lcom/inveno/se/ZZSDKManager;
.super Ljava/lang/Object;


# static fields
.field static appLan:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bindPushToken(Landroid/content/Context;Ljava/lang/String;Lcom/inveno/se/callback/DownloadCallback;)V
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

    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/inveno/se/tools/StringTools;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "context or pushToken or callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p0}, Lcom/inveno/se/a;->a(Landroid/content/Context;)Lcom/inveno/se/a;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/inveno/se/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/inveno/se/callback/DownloadCallback;)V

    return-void
.end method

.method public static getHotWordNews(Landroid/content/Context;IILjava/lang/String;[I[I[ILcom/inveno/se/callback/ZZReuqestListener;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/lang/String;",
            "[I[I[I",
            "Lcom/inveno/se/callback/ZZReuqestListener",
            "<",
            "Lcom/inveno/se/model/ZZNews",
            "<",
            "Lcom/inveno/se/model/ZZNewsinfo;",
            ">;>;)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    if-ltz p1, :cond_0

    if-nez p7, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "context or callback can not be null ! Or count must be bigger than zero or titleminlength must be smaller than titlemaxlength!!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-eqz p4, :cond_2

    array-length v0, p4

    if-eqz v0, :cond_2

    if-eqz p5, :cond_2

    array-length v0, p5

    if-eqz v0, :cond_2

    if-eqz p6, :cond_2

    array-length v0, p6

    if-nez v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "contentType or display or linkType can not be null !"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-static {p3}, Lcom/inveno/se/tools/StringTools;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "title can not be null !"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-static {p0}, Lcom/inveno/se/a;->a(Landroid/content/Context;)Lcom/inveno/se/a;

    move-result-object v0

    invoke-static {p4}, Lcom/inveno/se/model/Util;->getValue([I)I

    move-result v5

    invoke-static {p5}, Lcom/inveno/se/model/Util;->getValue([I)I

    move-result v6

    invoke-static {p6}, Lcom/inveno/se/model/Util;->getValue([I)I

    move-result v7

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/inveno/se/a;->a(Landroid/content/Context;IILjava/lang/String;IIILcom/inveno/se/callback/ZZReuqestListener;)V

    return-void
.end method

.method public static getHotWords(Landroid/content/Context;IIILcom/inveno/se/callback/DownloadCallback;)V
    .locals 6
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

    if-eqz p0, :cond_0

    if-ltz p1, :cond_0

    if-gt p2, p3, :cond_0

    if-nez p4, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "context or callback can not be null ! Or count must be bigger than zero or titleminlength must be smaller than titlemaxlength!!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p0}, Lcom/inveno/se/a;->a(Landroid/content/Context;)Lcom/inveno/se/a;

    move-result-object v0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/inveno/se/a;->a(Landroid/content/Context;IIILcom/inveno/se/callback/DownloadCallback;)V

    return-void
.end method

.method public static getKeywordNews(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;[I[I[ILcom/inveno/se/callback/ZZReuqestListener;I)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "[I[I[I",
            "Lcom/inveno/se/callback/ZZReuqestListener",
            "<",
            "Lcom/inveno/se/model/ZZNews",
            "<",
            "Lcom/inveno/se/model/ZZNewsinfo;",
            ">;>;I)V"
        }
    .end annotation

    if-eqz p5, :cond_0

    move-object/from16 v0, p5

    array-length v1, v0

    if-eqz v1, :cond_0

    if-eqz p6, :cond_0

    move-object/from16 v0, p6

    array-length v1, v0

    if-eqz v1, :cond_0

    if-eqz p7, :cond_0

    move-object/from16 v0, p7

    array-length v1, v0

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "contentType or display or linkType can not be null !"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static/range {p4 .. p4}, Lcom/inveno/se/tools/StringTools;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "keyword can not be null !"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-static {p0}, Lcom/inveno/se/a;->a(Landroid/content/Context;)Lcom/inveno/se/a;

    move-result-object v1

    invoke-static/range {p5 .. p5}, Lcom/inveno/se/model/Util;->getValue([I)I

    move-result v7

    invoke-static/range {p6 .. p6}, Lcom/inveno/se/model/Util;->getValue([I)I

    move-result v8

    invoke-static/range {p7 .. p7}, Lcom/inveno/se/model/Util;->getValue([I)I

    move-result v9

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object/from16 v6, p4

    move-object/from16 v10, p8

    move/from16 v11, p9

    invoke-virtual/range {v1 .. v11}, Lcom/inveno/se/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILcom/inveno/se/callback/ZZReuqestListener;I)V

    return-void
.end method

.method public static getLocalNews(Landroid/content/Context;Ljava/lang/String;I[I[I[ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inveno/se/callback/ZZReuqestListener;I)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I[I[I[I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/inveno/se/callback/ZZReuqestListener",
            "<",
            "Lcom/inveno/se/model/ZZNews",
            "<",
            "Lcom/inveno/se/model/ZZNewsinfo;",
            ">;>;I)V"
        }
    .end annotation

    if-eqz p3, :cond_0

    move-object/from16 v0, p3

    array-length v1, v0

    if-eqz v1, :cond_0

    if-eqz p4, :cond_0

    move-object/from16 v0, p4

    array-length v1, v0

    if-eqz v1, :cond_0

    if-eqz p5, :cond_0

    move-object/from16 v0, p5

    array-length v1, v0

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "contentType or display or linkType can not be null !"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static {p0}, Lcom/inveno/se/a;->a(Landroid/content/Context;)Lcom/inveno/se/a;

    move-result-object v1

    invoke-static/range {p3 .. p3}, Lcom/inveno/se/model/Util;->getValue([I)I

    move-result v5

    invoke-static/range {p4 .. p4}, Lcom/inveno/se/model/Util;->getValue([I)I

    move-result v6

    invoke-static/range {p5 .. p5}, Lcom/inveno/se/model/Util;->getValue([I)I

    move-result v7

    move-object v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move/from16 v14, p12

    invoke-virtual/range {v1 .. v14}, Lcom/inveno/se/a;->a(Landroid/content/Context;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inveno/se/callback/DownloadCallback;I)V

    return-void
.end method

.method public static getNews(Landroid/content/Context;Ljava/lang/String;I[I[I[ILcom/inveno/se/callback/ZZReuqestListener;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I[I[I[I",
            "Lcom/inveno/se/callback/ZZReuqestListener",
            "<",
            "Lcom/inveno/se/model/ZZNews",
            "<",
            "Lcom/inveno/se/model/ZZNewsinfo;",
            ">;>;I)V"
        }
    .end annotation

    if-eqz p3, :cond_0

    array-length v0, p3

    if-eqz v0, :cond_0

    if-eqz p4, :cond_0

    array-length v0, p4

    if-eqz v0, :cond_0

    if-eqz p5, :cond_0

    array-length v0, p5

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "contentType or display or linkType can not be null !"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p0}, Lcom/inveno/se/a;->a(Landroid/content/Context;)Lcom/inveno/se/a;

    move-result-object v0

    invoke-static {p3}, Lcom/inveno/se/model/Util;->getValue([I)I

    move-result v4

    invoke-static {p4}, Lcom/inveno/se/model/Util;->getValue([I)I

    move-result v5

    invoke-static {p5}, Lcom/inveno/se/model/Util;->getValue([I)I

    move-result v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/inveno/se/a;->a(Landroid/content/Context;Ljava/lang/String;IIIILcom/inveno/se/callback/DownloadCallback;I)V

    return-void
.end method

.method public static getNewsDetail(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/inveno/se/callback/DownloadCallback;)V
    .locals 1
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

    invoke-static {p0}, Lcom/inveno/se/a;->a(Landroid/content/Context;)Lcom/inveno/se/a;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/inveno/se/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/inveno/se/callback/DownloadCallback;)V

    return-void
.end method

.method public static getNewsDetailRelevant(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[I[I[IILcom/inveno/se/callback/ZZReuqestListener;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[I[I[II",
            "Lcom/inveno/se/callback/ZZReuqestListener",
            "<",
            "Lcom/inveno/se/model/ZZNews",
            "<",
            "Lcom/inveno/se/model/ZZNewsinfo;",
            ">;>;)V"
        }
    .end annotation

    if-eqz p3, :cond_0

    array-length v0, p3

    if-eqz v0, :cond_0

    if-eqz p4, :cond_0

    array-length v0, p4

    if-eqz v0, :cond_0

    if-eqz p5, :cond_0

    array-length v0, p5

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "contentType or display or linkType can not be null !"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p0}, Lcom/inveno/se/a;->a(Landroid/content/Context;)Lcom/inveno/se/a;

    move-result-object v0

    invoke-static {p3}, Lcom/inveno/se/model/Util;->getValue([I)I

    move-result v4

    invoke-static {p4}, Lcom/inveno/se/model/Util;->getValue([I)I

    move-result v5

    invoke-static {p5}, Lcom/inveno/se/model/Util;->getValue([I)I

    move-result v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/inveno/se/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIIILcom/inveno/se/callback/ZZReuqestListener;)V

    return-void
.end method

.method public static getNewsDetailRelevant(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[I[I[ILcom/inveno/se/callback/ZZReuqestListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[I[I[I",
            "Lcom/inveno/se/callback/ZZReuqestListener",
            "<",
            "Lcom/inveno/se/model/ZZNews",
            "<",
            "Lcom/inveno/se/model/ZZNewsinfo;",
            ">;>;)V"
        }
    .end annotation

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v7, p6

    invoke-static/range {v0 .. v7}, Lcom/inveno/se/ZZSDKManager;->getNewsDetailRelevant(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[I[I[IILcom/inveno/se/callback/ZZReuqestListener;)V

    return-void
.end method

.method public static getSearchNews(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II[I[I[ILcom/inveno/se/callback/ZZReuqestListener;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II[I[I[I",
            "Lcom/inveno/se/callback/ZZReuqestListener",
            "<",
            "Lcom/inveno/se/model/ZZNews",
            "<",
            "Lcom/inveno/se/model/ZZNewsinfo;",
            ">;>;)V"
        }
    .end annotation

    if-eqz p5, :cond_0

    move-object/from16 v0, p5

    array-length v1, v0

    if-eqz v1, :cond_0

    if-eqz p6, :cond_0

    move-object/from16 v0, p6

    array-length v1, v0

    if-eqz v1, :cond_0

    if-eqz p7, :cond_0

    move-object/from16 v0, p7

    array-length v1, v0

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "contentType or display or linkType can not be null !"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static {p2}, Lcom/inveno/se/tools/StringTools;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "keyword can not be null !"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-static {p0}, Lcom/inveno/se/a;->a(Landroid/content/Context;)Lcom/inveno/se/a;

    move-result-object v1

    invoke-static/range {p5 .. p5}, Lcom/inveno/se/model/Util;->getValue([I)I

    move-result v7

    invoke-static/range {p6 .. p6}, Lcom/inveno/se/model/Util;->getValue([I)I

    move-result v8

    invoke-static/range {p7 .. p7}, Lcom/inveno/se/model/Util;->getValue([I)I

    move-result v9

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object/from16 v10, p8

    invoke-virtual/range {v1 .. v10}, Lcom/inveno/se/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIIIILcom/inveno/se/callback/ZZReuqestListener;)V

    return-void
.end method

.method public static getVisibleActivityNum(Landroid/content/Context;)I
    .locals 2

    if-nez p0, :cond_0

    const-string v0, "DataSDK"

    const-string v1, "---isInForeground context is null\u3002"

    invoke-static {v0, v1}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/inveno/reportsdk/XZSDKManager;->getVisibleActivityNum(Landroid/content/Context;)I

    move-result v0

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 4

    sget-object v0, Lcom/inveno/se/config/ZZConfig;->PRODUCT_ID:Ljava/lang/String;

    sget-object v1, Lcom/inveno/se/config/ZZConfig;->PROMOTION:Ljava/lang/String;

    sget-object v2, Lcom/inveno/se/config/ZZConfig;->APP_KEY:Ljava/lang/String;

    sget-object v3, Lcom/inveno/se/config/ZZConfig;->APP_SECRET:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2, v3}, Lcom/inveno/se/ZZSDKManager;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    invoke-static {p3}, Lcom/inveno/se/tools/StringTools;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p4}, Lcom/inveno/se/tools/StringTools;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "appKey or appSecret can not be null ! "

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-boolean v0, Ld/a;->c:Z

    if-nez v0, :cond_2

    invoke-static {p0}, Lcom/inveno/se/tools/DeviceConfig;->initDeviceData(Landroid/content/Context;)V

    :cond_2
    invoke-static {p0}, Lcom/inveno/se/tools/DeviceConfig;->initScreenSize(Landroid/content/Context;)V

    sget-object v0, Lcom/inveno/se/ZZSDKManager;->appLan:Ljava/lang/String;

    invoke-static {v0}, Lcom/inveno/se/tools/StringTools;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inveno/se/ZZSDKManager;->appLan:Ljava/lang/String;

    :cond_3
    invoke-static {p0}, Lcom/inveno/se/biz/UidBiz;->newInstance(Landroid/content/Context;)Lcom/inveno/se/biz/UidBiz;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/inveno/reportsdk/v;->a(Z)V

    const-string v0, "3.0.5"

    invoke-static {v0}, Lcom/inveno/reportsdk/XZSDKManager;->setSdkVer(Ljava/lang/String;)V

    const-string v0, "upack"

    const-string v1, ""

    invoke-static {v0, v1, p0}, Lcom/inveno/se/tools/Tools;->getInformain(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/reportsdk/XZSDKManager;->setUpack(Ljava/lang/String;)V

    sget-object v3, Lcom/inveno/se/tools/AppConfig;->VERSION_NAME:Ljava/lang/String;

    sget-object v4, Lcom/inveno/se/ZZSDKManager;->appLan:Ljava/lang/String;

    invoke-static {p0}, Lcom/inveno/se/http/VolleyHttp;->newInstance(Landroid/content/Context;)Lcom/inveno/se/http/VolleyHttp;

    move-result-object v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v7}, Lcom/inveno/reportsdk/XZSDKManager;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inveno/reportsdk/ab;)V

    return-void
.end method

.method public static initExternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/inveno/reportsdk/d;->c:Z

    invoke-static {p0, p1, p2, p3, p4}, Lcom/inveno/se/ZZSDKManager;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static isInForeground(Landroid/content/Context;)Z
    .locals 2

    if-nez p0, :cond_0

    const-string v0, "DataSDK"

    const-string v1, "---isInForeground context is null\u3002"

    invoke-static {v0, v1}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/inveno/reportsdk/XZSDKManager;->isInForeground(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0
.end method

.method public static listForceRefresh(Landroid/content/Context;Ljava/lang/String;I[I[I[ILcom/inveno/se/callback/ZZReuqestListener;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I[I[I[I",
            "Lcom/inveno/se/callback/ZZReuqestListener",
            "<",
            "Lcom/inveno/se/model/ZZNews",
            "<",
            "Lcom/inveno/se/model/ZZNewsinfo;",
            ">;>;)V"
        }
    .end annotation

    if-eqz p3, :cond_0

    array-length v0, p3

    if-eqz v0, :cond_0

    if-eqz p4, :cond_0

    array-length v0, p4

    if-eqz v0, :cond_0

    if-eqz p5, :cond_0

    array-length v0, p5

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "contentType or display or linkType can not be null !"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p0}, Lcom/inveno/se/a;->a(Landroid/content/Context;)Lcom/inveno/se/a;

    move-result-object v0

    invoke-static {p3}, Lcom/inveno/se/model/Util;->getValue([I)I

    move-result v4

    invoke-static {p4}, Lcom/inveno/se/model/Util;->getValue([I)I

    move-result v5

    invoke-static {p5}, Lcom/inveno/se/model/Util;->getValue([I)I

    move-result v6

    const/4 v8, 0x4

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v7, p6

    invoke-virtual/range {v0 .. v8}, Lcom/inveno/se/a;->a(Landroid/content/Context;Ljava/lang/String;IIIILcom/inveno/se/callback/DownloadCallback;I)V

    return-void
.end method

.method public static listLoadmore(Landroid/content/Context;Ljava/lang/String;I[I[I[ILcom/inveno/se/callback/ZZReuqestListener;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I[I[I[I",
            "Lcom/inveno/se/callback/ZZReuqestListener",
            "<",
            "Lcom/inveno/se/model/ZZNews",
            "<",
            "Lcom/inveno/se/model/ZZNewsinfo;",
            ">;>;)V"
        }
    .end annotation

    if-eqz p3, :cond_0

    array-length v0, p3

    if-eqz v0, :cond_0

    if-eqz p4, :cond_0

    array-length v0, p4

    if-eqz v0, :cond_0

    if-eqz p5, :cond_0

    array-length v0, p5

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "contentType or display or linkType can not be null !"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p0}, Lcom/inveno/se/a;->a(Landroid/content/Context;)Lcom/inveno/se/a;

    move-result-object v0

    invoke-static {p3}, Lcom/inveno/se/model/Util;->getValue([I)I

    move-result v4

    invoke-static {p4}, Lcom/inveno/se/model/Util;->getValue([I)I

    move-result v5

    invoke-static {p5}, Lcom/inveno/se/model/Util;->getValue([I)I

    move-result v6

    const/4 v8, 0x2

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v7, p6

    invoke-virtual/range {v0 .. v8}, Lcom/inveno/se/a;->a(Landroid/content/Context;Ljava/lang/String;IIIILcom/inveno/se/callback/DownloadCallback;I)V

    return-void
.end method

.method public static listRefresh(Landroid/content/Context;Ljava/lang/String;I[I[I[ILcom/inveno/se/callback/ZZReuqestListener;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I[I[I[I",
            "Lcom/inveno/se/callback/ZZReuqestListener",
            "<",
            "Lcom/inveno/se/model/ZZNews",
            "<",
            "Lcom/inveno/se/model/ZZNewsinfo;",
            ">;>;)V"
        }
    .end annotation

    if-eqz p3, :cond_0

    array-length v0, p3

    if-eqz v0, :cond_0

    if-eqz p4, :cond_0

    array-length v0, p4

    if-eqz v0, :cond_0

    if-eqz p5, :cond_0

    array-length v0, p5

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "contentType or display or linkType can not be null !"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p0}, Lcom/inveno/se/a;->a(Landroid/content/Context;)Lcom/inveno/se/a;

    move-result-object v0

    invoke-static {p3}, Lcom/inveno/se/model/Util;->getValue([I)I

    move-result v4

    invoke-static {p4}, Lcom/inveno/se/model/Util;->getValue([I)I

    move-result v5

    invoke-static {p5}, Lcom/inveno/se/model/Util;->getValue([I)I

    move-result v6

    const/4 v8, 0x3

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v7, p6

    invoke-virtual/range {v0 .. v8}, Lcom/inveno/se/a;->a(Landroid/content/Context;Ljava/lang/String;IIIILcom/inveno/se/callback/DownloadCallback;I)V

    return-void
.end method

.method public static release(Landroid/content/Context;)V
    .locals 1

    invoke-static {p0}, Lcom/inveno/se/a;->a(Landroid/content/Context;)Lcom/inveno/se/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/se/a;->a()V

    invoke-static {}, Lcom/inveno/reportsdk/CommonParams;->getInstance()Lcom/inveno/reportsdk/CommonParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/reportsdk/CommonParams;->release()V

    return-void
.end method

.method public static resetSid(Landroid/content/Context;)V
    .locals 2

    invoke-static {p0}, Lcom/inveno/reportsdk/ac;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/inveno/reportsdk/CommonParams;->getInstance()Lcom/inveno/reportsdk/CommonParams;

    move-result-object v0

    invoke-static {p0}, Lcom/inveno/reportsdk/ac;->d(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/inveno/reportsdk/CommonParams;->setSid(I)V

    invoke-static {}, Lcom/inveno/reportsdk/CommonParams;->getInstance()Lcom/inveno/reportsdk/CommonParams;

    move-result-object v0

    invoke-static {p0}, Lcom/inveno/reportsdk/ac;->c(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/inveno/reportsdk/CommonParams;->setSeq(I)V

    :cond_0
    return-void
.end method

.method public static saveSidTime(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/inveno/reportsdk/ac;->b(Landroid/content/Context;)V

    return-void
.end method

.method public static setAppLan(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/inveno/se/ZZSDKManager;->appLan:Ljava/lang/String;

    return-void
.end method

.method public static setBindTokenHost(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/inveno/reportsdk/p;->d(Ljava/lang/String;)V

    return-void
.end method

.method public static setSDKUpack(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/inveno/reportsdk/XZSDKManager;->setUpack(Ljava/lang/String;)V

    return-void
.end method
