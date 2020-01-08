.class Lcom/inveno/se/p;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/inveno/se/callback/UidLisener;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:I

.field final synthetic e:I

.field final synthetic f:I

.field final synthetic g:I

.field final synthetic h:Lcom/inveno/se/callback/ZZReuqestListener;

.field final synthetic i:Lcom/inveno/se/a;


# direct methods
.method constructor <init>(Lcom/inveno/se/a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIIILcom/inveno/se/callback/ZZReuqestListener;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/p;->i:Lcom/inveno/se/a;

    iput-object p2, p0, Lcom/inveno/se/p;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/inveno/se/p;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/inveno/se/p;->c:Ljava/lang/String;

    iput p5, p0, Lcom/inveno/se/p;->d:I

    iput p6, p0, Lcom/inveno/se/p;->e:I

    iput p7, p0, Lcom/inveno/se/p;->f:I

    iput p8, p0, Lcom/inveno/se/p;->g:I

    iput-object p9, p0, Lcom/inveno/se/p;->h:Lcom/inveno/se/callback/ZZReuqestListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uidFail()V
    .locals 2

    iget-object v0, p0, Lcom/inveno/se/p;->h:Lcom/inveno/se/callback/ZZReuqestListener;

    const-string v1, "uid request error!"

    invoke-virtual {v0, v1}, Lcom/inveno/se/callback/ZZReuqestListener;->onFailure(Ljava/lang/String;)V

    return-void
.end method

.method public uidSucces()V
    .locals 9

    const-string v0, "getNewsDetail getuid sucess,go to request ZZ LIST -------"

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLogB(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inveno/se/p;->i:Lcom/inveno/se/a;

    iget-object v1, p0, Lcom/inveno/se/p;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/inveno/se/p;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/inveno/se/p;->c:Ljava/lang/String;

    iget v4, p0, Lcom/inveno/se/p;->d:I

    iget v5, p0, Lcom/inveno/se/p;->e:I

    iget v6, p0, Lcom/inveno/se/p;->f:I

    iget v7, p0, Lcom/inveno/se/p;->g:I

    iget-object v8, p0, Lcom/inveno/se/p;->h:Lcom/inveno/se/callback/ZZReuqestListener;

    invoke-virtual/range {v0 .. v8}, Lcom/inveno/se/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIIILcom/inveno/se/callback/ZZReuqestListener;)V

    return-void
.end method
