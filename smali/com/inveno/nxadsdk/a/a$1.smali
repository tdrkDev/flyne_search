.class Lcom/inveno/nxadsdk/a/a$1;
.super Lcom/inveno/se/callback/DownloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inveno/nxadsdk/a/a;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/inveno/se/adapi/model/adresp/EventTrack;

.field final synthetic c:Lcom/inveno/nxadsdk/a/a;


# direct methods
.method constructor <init>(Lcom/inveno/nxadsdk/a/a;ILcom/inveno/se/adapi/model/adresp/EventTrack;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/nxadsdk/a/a$1;->c:Lcom/inveno/nxadsdk/a/a;

    iput p2, p0, Lcom/inveno/nxadsdk/a/a$1;->a:I

    iput-object p3, p0, Lcom/inveno/nxadsdk/a/a$1;->b:Lcom/inveno/se/adapi/model/adresp/EventTrack;

    invoke-direct {p0}, Lcom/inveno/se/callback/DownloadCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .locals 3

    const-string v0, "nx_ad_sdk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "auto update   upload  onFailure  retry:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/inveno/nxadsdk/a/a$1;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  Notify_url"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/inveno/nxadsdk/a/a$1;->b:Lcom/inveno/se/adapi/model/adresp/EventTrack;

    invoke-virtual {v2}, Lcom/inveno/se/adapi/model/adresp/EventTrack;->getNotify_url()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inveno/se/tools/LogTools;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inveno/nxadsdk/a/a$1;->b:Lcom/inveno/se/adapi/model/adresp/EventTrack;

    iget v1, p0, Lcom/inveno/nxadsdk/a/a$1;->a:I

    invoke-virtual {v0, v1}, Lcom/inveno/se/adapi/model/adresp/EventTrack;->setRetry(I)V

    iget-object v0, p0, Lcom/inveno/nxadsdk/a/a$1;->c:Lcom/inveno/nxadsdk/a/a;

    iget-object v1, p0, Lcom/inveno/nxadsdk/a/a$1;->b:Lcom/inveno/se/adapi/model/adresp/EventTrack;

    invoke-virtual {v0, v1}, Lcom/inveno/nxadsdk/a/a;->a(Lcom/inveno/se/adapi/model/adresp/EventTrack;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
