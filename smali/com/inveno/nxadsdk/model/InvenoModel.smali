.class public Lcom/inveno/nxadsdk/model/InvenoModel;
.super Lcom/inveno/nxadsdk/model/NativeAd;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/inveno/nxadsdk/model/InvenoModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/inveno/nxadsdk/model/InvenoModel$2;

    invoke-direct {v0}, Lcom/inveno/nxadsdk/model/InvenoModel$2;-><init>()V

    sput-object v0, Lcom/inveno/nxadsdk/model/InvenoModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/inveno/nxadsdk/model/NativeAd;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/inveno/nxadsdk/model/NativeAd;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public a(ILandroid/content/Context;)V
    .locals 8

    :try_start_0
    iget-object v0, p0, Lcom/inveno/nxadsdk/model/InvenoModel;->p:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/inveno/nxadsdk/model/InvenoModel;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lcom/inveno/nxadsdk/model/InvenoModel;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    iget-object v0, p0, Lcom/inveno/nxadsdk/model/InvenoModel;->p:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/se/adapi/model/adresp/EventTrack;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/inveno/se/adapi/model/adresp/EventTrack;->getEvent_type()I

    move-result v1

    if-ne v1, p1, :cond_2

    const-string v1, ""

    invoke-virtual {v0}, Lcom/inveno/se/adapi/model/adresp/EventTrack;->getTm()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long v3, v4, v6

    if-nez v3, :cond_1

    const-string v1, "&"

    invoke-virtual {v0}, Lcom/inveno/se/adapi/model/adresp/EventTrack;->getNotify_url()Ljava/lang/String;

    move-result-object v3

    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v1, "?"

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "tm="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/inveno/se/adapi/model/adresp/EventTrack;->getNotify_url()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x0

    const-string v4, "nx_ad_sdk"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "InvenoModel updateUrl  et.getMax_retry():"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/inveno/se/adapi/model/adresp/EventTrack;->getMax_retry()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  url:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/inveno/se/adapi/model/adresp/EventTrack;->getMax_retry()I

    move-result v4

    if-lez v4, :cond_4

    new-instance v1, Lcom/inveno/nxadsdk/model/InvenoModel$1;

    invoke-direct {v1, p0, v3, v0, p2}, Lcom/inveno/nxadsdk/model/InvenoModel$1;-><init>(Lcom/inveno/nxadsdk/model/InvenoModel;Ljava/lang/String;Lcom/inveno/se/adapi/model/adresp/EventTrack;Landroid/content/Context;)V

    move-object v0, v1

    :goto_1
    invoke-static {p2}, Lcom/inveno/se/adapi/AdApiMgr;->getInstance(Landroid/content/Context;)Lcom/inveno/se/adapi/AdApiMgr;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Lcom/inveno/se/adapi/AdApiMgr;->uploadEventTrack(Ljava/lang/String;Lcom/inveno/se/callback/DownloadCallback;)V

    const-string v0, "nx_ad_sdk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InvenoModel updateUrl  updateType:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "  url:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "nx_ad_sdk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InvenoModel updateUrl  Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method public a(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/inveno/nxadsdk/model/InvenoModel;->a(ILandroid/content/Context;)V

    return-void
.end method

.method public b(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/inveno/nxadsdk/model/InvenoModel;->u:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, v1, p1}, Lcom/inveno/nxadsdk/model/InvenoModel;->a(ILandroid/content/Context;)V

    iput-boolean v1, p0, Lcom/inveno/nxadsdk/model/InvenoModel;->u:Z

    :cond_0
    return-void
.end method

.method public c(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Lcom/inveno/nxadsdk/model/InvenoModel;->a(ILandroid/content/Context;)V

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/inveno/nxadsdk/model/NativeAd;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
