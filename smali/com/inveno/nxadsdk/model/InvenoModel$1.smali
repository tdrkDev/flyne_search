.class Lcom/inveno/nxadsdk/model/InvenoModel$1;
.super Lcom/inveno/se/callback/DownloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inveno/nxadsdk/model/InvenoModel;->a(ILandroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/inveno/se/adapi/model/adresp/EventTrack;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Lcom/inveno/nxadsdk/model/InvenoModel;


# direct methods
.method constructor <init>(Lcom/inveno/nxadsdk/model/InvenoModel;Ljava/lang/String;Lcom/inveno/se/adapi/model/adresp/EventTrack;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/nxadsdk/model/InvenoModel$1;->d:Lcom/inveno/nxadsdk/model/InvenoModel;

    iput-object p2, p0, Lcom/inveno/nxadsdk/model/InvenoModel$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/inveno/nxadsdk/model/InvenoModel$1;->b:Lcom/inveno/se/adapi/model/adresp/EventTrack;

    iput-object p4, p0, Lcom/inveno/nxadsdk/model/InvenoModel$1;->c:Landroid/content/Context;

    invoke-direct {p0}, Lcom/inveno/se/callback/DownloadCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Lcom/inveno/se/adapi/model/adresp/EventTrack;

    invoke-direct {v0}, Lcom/inveno/se/adapi/model/adresp/EventTrack;-><init>()V

    iget-object v1, p0, Lcom/inveno/nxadsdk/model/InvenoModel$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/inveno/se/adapi/model/adresp/EventTrack;->setNotify_url(Ljava/lang/String;)V

    invoke-static {}, Lcom/inveno/nxadsdk/a/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inveno/se/adapi/model/adresp/EventTrack;->setuTime(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/inveno/nxadsdk/model/InvenoModel$1;->b:Lcom/inveno/se/adapi/model/adresp/EventTrack;

    invoke-virtual {v1}, Lcom/inveno/se/adapi/model/adresp/EventTrack;->getTm()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/inveno/se/adapi/model/adresp/EventTrack;->setTm(J)V

    iget-object v1, p0, Lcom/inveno/nxadsdk/model/InvenoModel$1;->b:Lcom/inveno/se/adapi/model/adresp/EventTrack;

    invoke-virtual {v1}, Lcom/inveno/se/adapi/model/adresp/EventTrack;->getMax_retry()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/inveno/se/adapi/model/adresp/EventTrack;->setMax_retry(I)V

    iget-object v1, p0, Lcom/inveno/nxadsdk/model/InvenoModel$1;->b:Lcom/inveno/se/adapi/model/adresp/EventTrack;

    invoke-virtual {v1}, Lcom/inveno/se/adapi/model/adresp/EventTrack;->getRetry()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/inveno/se/adapi/model/adresp/EventTrack;->setRetry(I)V

    iget-object v1, p0, Lcom/inveno/nxadsdk/model/InvenoModel$1;->b:Lcom/inveno/se/adapi/model/adresp/EventTrack;

    invoke-virtual {v1}, Lcom/inveno/se/adapi/model/adresp/EventTrack;->getEvent_type()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/inveno/se/adapi/model/adresp/EventTrack;->setEvent_type(I)V

    iget-object v1, p0, Lcom/inveno/nxadsdk/model/InvenoModel$1;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/inveno/nxadsdk/a/a;->a(Landroid/content/Context;)Lcom/inveno/nxadsdk/a/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/inveno/nxadsdk/a/a;->a(Lcom/inveno/se/adapi/model/adresp/EventTrack;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
