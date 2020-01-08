.class Lcom/inveno/se/k;
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

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:Ljava/lang/String;

.field final synthetic i:Ljava/lang/String;

.field final synthetic j:Ljava/lang/String;

.field final synthetic k:Ljava/lang/String;

.field final synthetic l:Lcom/inveno/se/callback/DownloadCallback;

.field final synthetic m:I

.field final synthetic n:Lcom/inveno/se/a;


# direct methods
.method constructor <init>(Lcom/inveno/se/a;Landroid/content/Context;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inveno/se/callback/DownloadCallback;I)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/k;->n:Lcom/inveno/se/a;

    iput-object p2, p0, Lcom/inveno/se/k;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/inveno/se/k;->b:Ljava/lang/String;

    iput p4, p0, Lcom/inveno/se/k;->c:I

    iput p5, p0, Lcom/inveno/se/k;->d:I

    iput p6, p0, Lcom/inveno/se/k;->e:I

    iput p7, p0, Lcom/inveno/se/k;->f:I

    iput-object p8, p0, Lcom/inveno/se/k;->g:Ljava/lang/String;

    iput-object p9, p0, Lcom/inveno/se/k;->h:Ljava/lang/String;

    iput-object p10, p0, Lcom/inveno/se/k;->i:Ljava/lang/String;

    iput-object p11, p0, Lcom/inveno/se/k;->j:Ljava/lang/String;

    iput-object p12, p0, Lcom/inveno/se/k;->k:Ljava/lang/String;

    iput-object p13, p0, Lcom/inveno/se/k;->l:Lcom/inveno/se/callback/DownloadCallback;

    iput p14, p0, Lcom/inveno/se/k;->m:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uidFail()V
    .locals 2

    iget-object v0, p0, Lcom/inveno/se/k;->l:Lcom/inveno/se/callback/DownloadCallback;

    const-string v1, "uid request error!"

    invoke-virtual {v0, v1}, Lcom/inveno/se/callback/DownloadCallback;->onFailure(Ljava/lang/String;)V

    return-void
.end method

.method public uidSucces()V
    .locals 14

    const-string v0, "getNews getuid sucess,go to request ZZ LIST -------"

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLogB(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inveno/se/k;->n:Lcom/inveno/se/a;

    iget-object v1, p0, Lcom/inveno/se/k;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/inveno/se/k;->b:Ljava/lang/String;

    iget v3, p0, Lcom/inveno/se/k;->c:I

    iget v4, p0, Lcom/inveno/se/k;->d:I

    iget v5, p0, Lcom/inveno/se/k;->e:I

    iget v6, p0, Lcom/inveno/se/k;->f:I

    iget-object v7, p0, Lcom/inveno/se/k;->g:Ljava/lang/String;

    iget-object v8, p0, Lcom/inveno/se/k;->h:Ljava/lang/String;

    iget-object v9, p0, Lcom/inveno/se/k;->i:Ljava/lang/String;

    iget-object v10, p0, Lcom/inveno/se/k;->j:Ljava/lang/String;

    iget-object v11, p0, Lcom/inveno/se/k;->k:Ljava/lang/String;

    iget-object v12, p0, Lcom/inveno/se/k;->l:Lcom/inveno/se/callback/DownloadCallback;

    iget v13, p0, Lcom/inveno/se/k;->m:I

    invoke-virtual/range {v0 .. v13}, Lcom/inveno/se/a;->a(Landroid/content/Context;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inveno/se/callback/DownloadCallback;I)V

    return-void
.end method
