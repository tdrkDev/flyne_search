.class Lcom/inveno/se/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/inveno/se/callback/UidLisener;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:I

.field final synthetic f:I

.field final synthetic g:Lcom/inveno/se/callback/DownloadCallback;

.field final synthetic h:I

.field final synthetic i:Lcom/inveno/se/a;


# direct methods
.method constructor <init>(Lcom/inveno/se/a;Landroid/content/Context;Ljava/lang/String;IIIILcom/inveno/se/callback/DownloadCallback;I)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/b;->i:Lcom/inveno/se/a;

    iput-object p2, p0, Lcom/inveno/se/b;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/inveno/se/b;->b:Ljava/lang/String;

    iput p4, p0, Lcom/inveno/se/b;->c:I

    iput p5, p0, Lcom/inveno/se/b;->d:I

    iput p6, p0, Lcom/inveno/se/b;->e:I

    iput p7, p0, Lcom/inveno/se/b;->f:I

    iput-object p8, p0, Lcom/inveno/se/b;->g:Lcom/inveno/se/callback/DownloadCallback;

    iput p9, p0, Lcom/inveno/se/b;->h:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uidFail()V
    .locals 2

    iget-object v0, p0, Lcom/inveno/se/b;->g:Lcom/inveno/se/callback/DownloadCallback;

    const-string v1, "uid request error!"

    invoke-virtual {v0, v1}, Lcom/inveno/se/callback/DownloadCallback;->onFailure(Ljava/lang/String;)V

    return-void
.end method

.method public uidSucces()V
    .locals 9

    const-string v0, "getNews getuid sucess,go to request ZZ LIST -------"

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLogB(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inveno/se/b;->i:Lcom/inveno/se/a;

    iget-object v1, p0, Lcom/inveno/se/b;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/inveno/se/b;->b:Ljava/lang/String;

    iget v3, p0, Lcom/inveno/se/b;->c:I

    iget v4, p0, Lcom/inveno/se/b;->d:I

    iget v5, p0, Lcom/inveno/se/b;->e:I

    iget v6, p0, Lcom/inveno/se/b;->f:I

    iget-object v7, p0, Lcom/inveno/se/b;->g:Lcom/inveno/se/callback/DownloadCallback;

    iget v8, p0, Lcom/inveno/se/b;->h:I

    invoke-virtual/range {v0 .. v8}, Lcom/inveno/se/a;->a(Landroid/content/Context;Ljava/lang/String;IIIILcom/inveno/se/callback/DownloadCallback;I)V

    return-void
.end method
