.class Lcom/inveno/se/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/inveno/se/callback/UidLisener;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:I

.field final synthetic f:I

.field final synthetic g:I

.field final synthetic h:Lcom/inveno/se/callback/ZZReuqestListener;

.field final synthetic i:Lcom/inveno/se/a;


# direct methods
.method constructor <init>(Lcom/inveno/se/a;Landroid/content/Context;IILjava/lang/String;IIILcom/inveno/se/callback/ZZReuqestListener;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/d;->i:Lcom/inveno/se/a;

    iput-object p2, p0, Lcom/inveno/se/d;->a:Landroid/content/Context;

    iput p3, p0, Lcom/inveno/se/d;->b:I

    iput p4, p0, Lcom/inveno/se/d;->c:I

    iput-object p5, p0, Lcom/inveno/se/d;->d:Ljava/lang/String;

    iput p6, p0, Lcom/inveno/se/d;->e:I

    iput p7, p0, Lcom/inveno/se/d;->f:I

    iput p8, p0, Lcom/inveno/se/d;->g:I

    iput-object p9, p0, Lcom/inveno/se/d;->h:Lcom/inveno/se/callback/ZZReuqestListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uidFail()V
    .locals 2

    iget-object v0, p0, Lcom/inveno/se/d;->h:Lcom/inveno/se/callback/ZZReuqestListener;

    const-string v1, "uid request error!"

    invoke-virtual {v0, v1}, Lcom/inveno/se/callback/ZZReuqestListener;->onFailure(Ljava/lang/String;)V

    return-void
.end method

.method public uidSucces()V
    .locals 9

    iget-object v0, p0, Lcom/inveno/se/d;->i:Lcom/inveno/se/a;

    iget-object v1, p0, Lcom/inveno/se/d;->a:Landroid/content/Context;

    iget v2, p0, Lcom/inveno/se/d;->b:I

    iget v3, p0, Lcom/inveno/se/d;->c:I

    iget-object v4, p0, Lcom/inveno/se/d;->d:Ljava/lang/String;

    iget v5, p0, Lcom/inveno/se/d;->e:I

    iget v6, p0, Lcom/inveno/se/d;->f:I

    iget v7, p0, Lcom/inveno/se/d;->g:I

    iget-object v8, p0, Lcom/inveno/se/d;->h:Lcom/inveno/se/callback/ZZReuqestListener;

    invoke-static/range {v0 .. v8}, Lcom/inveno/se/a;->a(Lcom/inveno/se/a;Landroid/content/Context;IILjava/lang/String;IIILcom/inveno/se/callback/ZZReuqestListener;)V

    return-void
.end method
