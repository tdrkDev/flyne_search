.class Lcom/inveno/se/r;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/inveno/se/callback/UidLisener;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Lcom/inveno/se/callback/DownloadCallback;

.field final synthetic f:Lcom/inveno/se/a;


# direct methods
.method constructor <init>(Lcom/inveno/se/a;Landroid/content/Context;IIILcom/inveno/se/callback/DownloadCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/r;->f:Lcom/inveno/se/a;

    iput-object p2, p0, Lcom/inveno/se/r;->a:Landroid/content/Context;

    iput p3, p0, Lcom/inveno/se/r;->b:I

    iput p4, p0, Lcom/inveno/se/r;->c:I

    iput p5, p0, Lcom/inveno/se/r;->d:I

    iput-object p6, p0, Lcom/inveno/se/r;->e:Lcom/inveno/se/callback/DownloadCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uidFail()V
    .locals 2

    iget-object v0, p0, Lcom/inveno/se/r;->e:Lcom/inveno/se/callback/DownloadCallback;

    const-string v1, "uid request error!"

    invoke-virtual {v0, v1}, Lcom/inveno/se/callback/DownloadCallback;->onFailure(Ljava/lang/String;)V

    return-void
.end method

.method public uidSucces()V
    .locals 6

    iget-object v0, p0, Lcom/inveno/se/r;->f:Lcom/inveno/se/a;

    iget-object v1, p0, Lcom/inveno/se/r;->a:Landroid/content/Context;

    iget v2, p0, Lcom/inveno/se/r;->b:I

    iget v3, p0, Lcom/inveno/se/r;->c:I

    iget v4, p0, Lcom/inveno/se/r;->d:I

    iget-object v5, p0, Lcom/inveno/se/r;->e:Lcom/inveno/se/callback/DownloadCallback;

    invoke-virtual/range {v0 .. v5}, Lcom/inveno/se/a;->a(Landroid/content/Context;IIILcom/inveno/se/callback/DownloadCallback;)V

    return-void
.end method
