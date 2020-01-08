.class public Lcom/inveno/se/adapi/AdApiMgr;
.super Ljava/lang/Object;


# static fields
.field private static instance:Lcom/inveno/se/adapi/AdApiMgr;


# instance fields
.field private adApiBiz:Lcom/inveno/se/adapi/biz/AdApiBiz;

.field private adSdkBiz:Lcom/inveno/se/adapi/biz/AdSdkBiz;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/inveno/se/adapi/biz/AdApiBiz;->newInstance(Landroid/content/Context;)Lcom/inveno/se/adapi/biz/AdApiBiz;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/se/adapi/AdApiMgr;->adApiBiz:Lcom/inveno/se/adapi/biz/AdApiBiz;

    new-instance v0, Lcom/inveno/se/adapi/biz/AdSdkBiz;

    invoke-direct {v0, p1}, Lcom/inveno/se/adapi/biz/AdSdkBiz;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/inveno/se/adapi/AdApiMgr;->adSdkBiz:Lcom/inveno/se/adapi/biz/AdSdkBiz;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/inveno/se/adapi/AdApiMgr;
    .locals 2

    const-class v1, Lcom/inveno/se/adapi/AdApiMgr;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/inveno/se/adapi/AdApiMgr;->instance:Lcom/inveno/se/adapi/AdApiMgr;

    if-nez v0, :cond_0

    new-instance v0, Lcom/inveno/se/adapi/AdApiMgr;

    invoke-direct {v0, p0}, Lcom/inveno/se/adapi/AdApiMgr;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/inveno/se/adapi/AdApiMgr;->instance:Lcom/inveno/se/adapi/AdApiMgr;

    :cond_0
    sget-object v0, Lcom/inveno/se/adapi/AdApiMgr;->instance:Lcom/inveno/se/adapi/AdApiMgr;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getConfig(Ljava/lang/String;Lcom/inveno/se/callback/DownloadCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/inveno/se/callback/DownloadCallback",
            "<",
            "Lcom/inveno/se/adapi/model/adconfig/AdSdkConfigModel;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/inveno/se/adapi/AdApiMgr;->adSdkBiz:Lcom/inveno/se/adapi/biz/AdSdkBiz;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/inveno/se/adapi/biz/AdSdkBiz;->getConfig(Ljava/lang/String;Lcom/inveno/se/callback/DownloadCallback;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getFlowAd(Lcom/inveno/se/callback/DownloadCallback;Ljava/lang/String;Ljava/lang/String;IILcom/inveno/se/adapi/model/adreq/Gps;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inveno/se/callback/DownloadCallback",
            "<",
            "Lcom/inveno/se/adapi/model/adstyle/FlowAd;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Lcom/inveno/se/adapi/model/adreq/Gps;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/inveno/se/adapi/AdApiMgr;->getFlowAd(Lcom/inveno/se/callback/DownloadCallback;Ljava/lang/String;Ljava/lang/String;IILcom/inveno/se/adapi/model/adreq/Gps;Ljava/lang/String;)V

    return-void
.end method

.method public getFlowAd(Lcom/inveno/se/callback/DownloadCallback;Ljava/lang/String;Ljava/lang/String;IILcom/inveno/se/adapi/model/adreq/Gps;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inveno/se/callback/DownloadCallback",
            "<",
            "Lcom/inveno/se/adapi/model/adstyle/FlowAd;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Lcom/inveno/se/adapi/model/adreq/Gps;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/inveno/se/adapi/AdApiMgr;->adApiBiz:Lcom/inveno/se/adapi/biz/AdApiBiz;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/inveno/se/adapi/biz/AdApiBiz;->getFlowAd(Lcom/inveno/se/callback/DownloadCallback;Ljava/lang/String;Ljava/lang/String;IILcom/inveno/se/adapi/model/adreq/Gps;Ljava/lang/String;)V

    return-void
.end method

.method public getFlowAd(Lcom/inveno/se/callback/DownloadCallback;Ljava/lang/String;Ljava/lang/String;IILcom/inveno/se/adapi/model/adreq/Gps;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/util/List;ZII)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inveno/se/callback/DownloadCallback",
            "<",
            "Lcom/inveno/se/adapi/model/adstyle/FlowAd;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Lcom/inveno/se/adapi/model/adreq/Gps;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;ZII)V"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/inveno/se/adapi/AdApiMgr;->adApiBiz:Lcom/inveno/se/adapi/biz/AdApiBiz;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, p14

    move/from16 v16, p15

    invoke-virtual/range {v1 .. v16}, Lcom/inveno/se/adapi/biz/AdApiBiz;->getFlowAd(Lcom/inveno/se/callback/DownloadCallback;Ljava/lang/String;Ljava/lang/String;IILcom/inveno/se/adapi/model/adreq/Gps;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/util/List;ZII)V

    return-void
.end method

.method public getFlowAdList(Lcom/inveno/se/callback/DownloadCallback;Ljava/lang/String;Ljava/lang/String;IILcom/inveno/se/adapi/model/adreq/Gps;Ljava/lang/String;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inveno/se/callback/DownloadCallback",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/inveno/se/adapi/model/adstyle/FlowAd;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Lcom/inveno/se/adapi/model/adreq/Gps;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/inveno/se/adapi/AdApiMgr;->adApiBiz:Lcom/inveno/se/adapi/biz/AdApiBiz;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/inveno/se/adapi/biz/AdApiBiz;->getFlowAdList(Lcom/inveno/se/callback/DownloadCallback;Ljava/lang/String;Ljava/lang/String;IILcom/inveno/se/adapi/model/adreq/Gps;Ljava/lang/String;I)V

    return-void
.end method

.method public getFlowAdList(Lcom/inveno/se/callback/DownloadCallback;Ljava/lang/String;Ljava/lang/String;IILcom/inveno/se/adapi/model/adreq/Gps;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/util/List;ZI)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inveno/se/callback/DownloadCallback",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/inveno/se/adapi/model/adstyle/FlowAd;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Lcom/inveno/se/adapi/model/adreq/Gps;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;ZI)V"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/inveno/se/adapi/AdApiMgr;->adApiBiz:Lcom/inveno/se/adapi/biz/AdApiBiz;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move/from16 v15, p14

    move/from16 v16, p15

    invoke-virtual/range {v1 .. v16}, Lcom/inveno/se/adapi/biz/AdApiBiz;->getFlowAdList(Lcom/inveno/se/callback/DownloadCallback;Ljava/lang/String;Ljava/lang/String;IILcom/inveno/se/adapi/model/adreq/Gps;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/util/List;ZI)V

    return-void
.end method

.method public getFlowAdMap(Lcom/inveno/se/callback/DownloadCallback;Ljava/lang/String;Lcom/inveno/se/adapi/model/adreq/Gps;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inveno/se/callback/DownloadCallback",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/inveno/se/adapi/model/adstyle/FlowAds;",
            ">;>;",
            "Ljava/lang/String;",
            "Lcom/inveno/se/adapi/model/adreq/Gps;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/inveno/se/adapi/model/adreq/Adspace;",
            ">;Z)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/inveno/se/adapi/AdApiMgr;->adApiBiz:Lcom/inveno/se/adapi/biz/AdApiBiz;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/inveno/se/adapi/biz/AdApiBiz;->getFlowAdMap(Lcom/inveno/se/callback/DownloadCallback;Ljava/lang/String;Lcom/inveno/se/adapi/model/adreq/Gps;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Z)V

    return-void
.end method

.method public getVersion(Ljava/lang/String;Ljava/lang/String;Lcom/inveno/se/callback/DownloadCallback;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/inveno/se/callback/DownloadCallback",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/inveno/se/adapi/AdApiMgr;->adSdkBiz:Lcom/inveno/se/adapi/biz/AdSdkBiz;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/inveno/se/adapi/biz/AdSdkBiz;->getVersion(Ljava/lang/String;Ljava/lang/String;Lcom/inveno/se/callback/DownloadCallback;Ljava/lang/String;)V

    return-void
.end method

.method public loadAdGet(Ljava/lang/String;Lcom/inveno/se/callback/DownloadCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/inveno/se/callback/DownloadCallback",
            "<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/inveno/se/adapi/AdApiMgr;->adApiBiz:Lcom/inveno/se/adapi/biz/AdApiBiz;

    invoke-virtual {v0, p1, p2}, Lcom/inveno/se/adapi/biz/AdApiBiz;->loadAdGet(Ljava/lang/String;Lcom/inveno/se/callback/DownloadCallback;)V

    return-void
.end method

.method public loadAdPost(Ljava/lang/String;Ljava/lang/String;Lcom/inveno/se/callback/DownloadCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/inveno/se/callback/DownloadCallback",
            "<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/inveno/se/adapi/AdApiMgr;->adApiBiz:Lcom/inveno/se/adapi/biz/AdApiBiz;

    invoke-virtual {v0, p1, p2, p3}, Lcom/inveno/se/adapi/biz/AdApiBiz;->loadAdPost(Ljava/lang/String;Ljava/lang/String;Lcom/inveno/se/callback/DownloadCallback;)V

    return-void
.end method

.method public loadAdPostProto(Ljava/lang/String;[BLcom/inveno/se/callback/DownloadCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Lcom/inveno/se/callback/DownloadCallback",
            "<[B>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/inveno/se/adapi/AdApiMgr;->adApiBiz:Lcom/inveno/se/adapi/biz/AdApiBiz;

    invoke-virtual {v0, p1, p2, p3}, Lcom/inveno/se/adapi/biz/AdApiBiz;->loadAdPostProto(Ljava/lang/String;[BLcom/inveno/se/callback/DownloadCallback;)V

    return-void
.end method

.method public release()V
    .locals 2

    const/4 v1, 0x0

    sput-object v1, Lcom/inveno/se/adapi/AdApiMgr;->instance:Lcom/inveno/se/adapi/AdApiMgr;

    iget-object v0, p0, Lcom/inveno/se/adapi/AdApiMgr;->adApiBiz:Lcom/inveno/se/adapi/biz/AdApiBiz;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inveno/se/adapi/AdApiMgr;->adApiBiz:Lcom/inveno/se/adapi/biz/AdApiBiz;

    invoke-virtual {v0}, Lcom/inveno/se/adapi/biz/AdApiBiz;->release()V

    :cond_0
    iput-object v1, p0, Lcom/inveno/se/adapi/AdApiMgr;->adApiBiz:Lcom/inveno/se/adapi/biz/AdApiBiz;

    iget-object v0, p0, Lcom/inveno/se/adapi/AdApiMgr;->adSdkBiz:Lcom/inveno/se/adapi/biz/AdSdkBiz;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inveno/se/adapi/AdApiMgr;->adSdkBiz:Lcom/inveno/se/adapi/biz/AdSdkBiz;

    invoke-virtual {v0}, Lcom/inveno/se/adapi/biz/AdSdkBiz;->release()V

    :cond_1
    iput-object v1, p0, Lcom/inveno/se/adapi/AdApiMgr;->adSdkBiz:Lcom/inveno/se/adapi/biz/AdSdkBiz;

    return-void
.end method

.method public update(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    iget-object v0, p0, Lcom/inveno/se/adapi/AdApiMgr;->adSdkBiz:Lcom/inveno/se/adapi/biz/AdSdkBiz;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/inveno/se/adapi/biz/AdSdkBiz;->update(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public uploadEventTrack(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/adapi/AdApiMgr;->adApiBiz:Lcom/inveno/se/adapi/biz/AdApiBiz;

    invoke-virtual {v0, p1}, Lcom/inveno/se/adapi/biz/AdApiBiz;->uploadEventTrack(Ljava/lang/String;)V

    return-void
.end method

.method public uploadEventTrack(Ljava/lang/String;Lcom/inveno/se/callback/DownloadCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/adapi/AdApiMgr;->adApiBiz:Lcom/inveno/se/adapi/biz/AdApiBiz;

    invoke-virtual {v0, p1, p2}, Lcom/inveno/se/adapi/biz/AdApiBiz;->uploadEventTrack(Ljava/lang/String;Lcom/inveno/se/callback/DownloadCallback;)V

    return-void
.end method

.method public uploadEventTrack(Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/inveno/se/adapi/model/adresp/EventTrack;",
            ">;I)V"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/se/adapi/model/adresp/EventTrack;

    invoke-virtual {v0}, Lcom/inveno/se/adapi/model/adresp/EventTrack;->getEvent_type()I

    move-result v0

    if-ne v0, p2, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/se/adapi/model/adresp/EventTrack;

    invoke-virtual {v0}, Lcom/inveno/se/adapi/model/adresp/EventTrack;->getNotify_url()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/inveno/se/adapi/AdApiMgr;->adApiBiz:Lcom/inveno/se/adapi/biz/AdApiBiz;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/se/adapi/model/adresp/EventTrack;

    invoke-virtual {v0}, Lcom/inveno/se/adapi/model/adresp/EventTrack;->getNotify_url()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/inveno/se/adapi/biz/AdApiBiz;->uploadEventTrack(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method
