.class Lcom/inveno/se/n;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/inveno/se/callback/UidLisener;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/inveno/se/callback/DownloadCallback;

.field final synthetic e:Lcom/inveno/se/a;


# direct methods
.method constructor <init>(Lcom/inveno/se/a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/inveno/se/callback/DownloadCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/n;->e:Lcom/inveno/se/a;

    iput-object p2, p0, Lcom/inveno/se/n;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/inveno/se/n;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/inveno/se/n;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/inveno/se/n;->d:Lcom/inveno/se/callback/DownloadCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uidFail()V
    .locals 2

    iget-object v0, p0, Lcom/inveno/se/n;->d:Lcom/inveno/se/callback/DownloadCallback;

    const-string v1, "uid request error!"

    invoke-virtual {v0, v1}, Lcom/inveno/se/callback/DownloadCallback;->onFailure(Ljava/lang/String;)V

    return-void
.end method

.method public uidSucces()V
    .locals 5

    const-string v0, "getNewsDetail getuid sucess,go to request ZZ LIST -------"

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLogB(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inveno/se/n;->e:Lcom/inveno/se/a;

    iget-object v1, p0, Lcom/inveno/se/n;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/inveno/se/n;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/inveno/se/n;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/inveno/se/n;->d:Lcom/inveno/se/callback/DownloadCallback;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/inveno/se/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/inveno/se/callback/DownloadCallback;)V

    return-void
.end method
