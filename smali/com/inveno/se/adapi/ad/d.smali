.class Lcom/inveno/se/adapi/ad/d;
.super Lcom/inveno/se/adapi/ad/http/g;


# instance fields
.field final synthetic a:Lcom/inveno/se/adapi/ad/a;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/inveno/se/adapi/ad/c;


# direct methods
.method constructor <init>(Lcom/inveno/se/adapi/ad/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/inveno/se/adapi/ad/a;Ljava/lang/String;)V
    .locals 6

    iput-object p1, p0, Lcom/inveno/se/adapi/ad/d;->c:Lcom/inveno/se/adapi/ad/c;

    iput-object p7, p0, Lcom/inveno/se/adapi/ad/d;->a:Lcom/inveno/se/adapi/ad/a;

    iput-object p8, p0, Lcom/inveno/se/adapi/ad/d;->b:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/inveno/se/adapi/ad/http/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const-string v0, "\u4e0b\u8f7dfinish:"

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLogA(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/inveno/se/adapi/ad/http/g;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inveno/se/adapi/ad/d;->a:Lcom/inveno/se/adapi/ad/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inveno/se/adapi/ad/d;->a:Lcom/inveno/se/adapi/ad/a;

    invoke-virtual {p0}, Lcom/inveno/se/adapi/ad/d;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inveno/se/adapi/ad/a;->e(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected a(Ljava/lang/String;JI)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDownLoadCallback:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/inveno/se/adapi/ad/d;->a:Lcom/inveno/se/adapi/ad/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " this.getUrl():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/inveno/se/adapi/ad/d;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLogA(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inveno/se/adapi/ad/d;->a:Lcom/inveno/se/adapi/ad/a;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/inveno/se/adapi/ad/d;->a:Lcom/inveno/se/adapi/ad/a;

    invoke-virtual {p0}, Lcom/inveno/se/adapi/ad/d;->h()Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    move-wide v4, p2

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/inveno/se/adapi/ad/a;->b(Ljava/lang/String;Ljava/lang/String;JI)V

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/inveno/se/adapi/ad/http/g;->a(Ljava/lang/String;JI)V

    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u4e0b\u8f7d\u5931\u8d25\u4e86:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLogA(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/inveno/se/adapi/ad/d;->c:Lcom/inveno/se/adapi/ad/c;

    invoke-virtual {p0}, Lcom/inveno/se/adapi/ad/d;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inveno/se/adapi/ad/c;->b(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/inveno/se/adapi/ad/d;->a:Lcom/inveno/se/adapi/ad/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inveno/se/adapi/ad/d;->a:Lcom/inveno/se/adapi/ad/a;

    invoke-virtual {p0}, Lcom/inveno/se/adapi/ad/d;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/inveno/se/adapi/ad/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a([B)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u4e0b\u8f7d\u6210\u529fbyte:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLogA(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inveno/se/adapi/ad/d;->a:Lcom/inveno/se/adapi/ad/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inveno/se/adapi/ad/d;->a:Lcom/inveno/se/adapi/ad/a;

    invoke-virtual {p0}, Lcom/inveno/se/adapi/ad/d;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inveno/se/adapi/ad/a;->d(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/inveno/se/adapi/ad/d;->c:Lcom/inveno/se/adapi/ad/c;

    invoke-virtual {v0, p0}, Lcom/inveno/se/adapi/ad/c;->b(Lcom/inveno/se/adapi/ad/http/e;)V

    invoke-super {p0, p1}, Lcom/inveno/se/adapi/ad/http/g;->a([B)V

    return-void
.end method

.method public b()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5f00\u59cb\u4e00\u4e2a\u4e0b\u8f7dtitle\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/inveno/se/adapi/ad/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLogA(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inveno/se/adapi/ad/d;->c:Lcom/inveno/se/adapi/ad/c;

    invoke-static {v0}, Lcom/inveno/se/adapi/ad/c;->a(Lcom/inveno/se/adapi/ad/c;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0}, Lcom/inveno/se/adapi/ad/d;->h()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/inveno/se/adapi/ad/d;->c:Lcom/inveno/se/adapi/ad/c;

    invoke-static {v2}, Lcom/inveno/se/adapi/ad/c;->b(Lcom/inveno/se/adapi/ad/c;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/inveno/se/adapi/ad/b;->a(ILjava/lang/String;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/inveno/se/adapi/ad/d;->a:Lcom/inveno/se/adapi/ad/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inveno/se/adapi/ad/d;->a:Lcom/inveno/se/adapi/ad/a;

    invoke-virtual {v0}, Lcom/inveno/se/adapi/ad/a;->c()V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u4e0b\u8f7d\u6210\u529f:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLogA(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inveno/se/adapi/ad/d;->a:Lcom/inveno/se/adapi/ad/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inveno/se/adapi/ad/d;->a:Lcom/inveno/se/adapi/ad/a;

    invoke-virtual {p0}, Lcom/inveno/se/adapi/ad/d;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inveno/se/adapi/ad/a;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
