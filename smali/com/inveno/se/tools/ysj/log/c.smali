.class public Lcom/inveno/se/tools/ysj/log/c;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:I

.field private j:Lcom/inveno/se/tools/ysj/log/a;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Log"

    iput-object v0, p0, Lcom/inveno/se/tools/ysj/log/c;->a:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/inveno/se/tools/ysj/log/c;->b:Z

    iput-boolean v1, p0, Lcom/inveno/se/tools/ysj/log/c;->c:Z

    iput-boolean v1, p0, Lcom/inveno/se/tools/ysj/log/c;->d:Z

    iput-boolean v2, p0, Lcom/inveno/se/tools/ysj/log/c;->e:Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/inveno/se/tools/ysj/log/c;->h:I

    iput v2, p0, Lcom/inveno/se/tools/ysj/log/c;->i:I

    sget-object v0, Lcom/inveno/se/tools/ysj/log/a;->a:Lcom/inveno/se/tools/ysj/log/a;

    iput-object v0, p0, Lcom/inveno/se/tools/ysj/log/c;->j:Lcom/inveno/se/tools/ysj/log/a;

    return-void
.end method


# virtual methods
.method public a()Lcom/inveno/se/tools/ysj/log/c;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inveno/se/tools/ysj/log/c;->b:Z

    return-object p0
.end method

.method public a(I)Lcom/inveno/se/tools/ysj/log/c;
    .locals 0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    iput p1, p0, Lcom/inveno/se/tools/ysj/log/c;->h:I

    return-object p0
.end method

.method public a(Lcom/inveno/se/tools/ysj/log/a;)Lcom/inveno/se/tools/ysj/log/c;
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/tools/ysj/log/c;->j:Lcom/inveno/se/tools/ysj/log/a;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/inveno/se/tools/ysj/log/c;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "tag may not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "tag may not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lcom/inveno/se/tools/ysj/log/c;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a(Z)Lcom/inveno/se/tools/ysj/log/c;
    .locals 0

    iput-boolean p1, p0, Lcom/inveno/se/tools/ysj/log/c;->e:Z

    return-object p0
.end method

.method public b()Lcom/inveno/se/tools/ysj/log/c;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inveno/se/tools/ysj/log/c;->c:Z

    return-object p0
.end method

.method public b(I)Lcom/inveno/se/tools/ysj/log/c;
    .locals 0

    iput p1, p0, Lcom/inveno/se/tools/ysj/log/c;->i:I

    return-object p0
.end method

.method public c()Lcom/inveno/se/tools/ysj/log/c;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inveno/se/tools/ysj/log/c;->d:Z

    return-object p0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/tools/ysj/log/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/inveno/se/tools/ysj/log/c;->b:Z

    return v0
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/inveno/se/tools/ysj/log/c;->c:Z

    return v0
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/inveno/se/tools/ysj/log/c;->d:Z

    return v0
.end method

.method public h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/inveno/se/tools/ysj/log/c;->e:Z

    return v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/tools/ysj/log/c;->f:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/tools/ysj/log/c;->g:Ljava/lang/String;

    return-object v0
.end method

.method public k()I
    .locals 1

    iget v0, p0, Lcom/inveno/se/tools/ysj/log/c;->h:I

    return v0
.end method

.method public l()I
    .locals 1

    iget v0, p0, Lcom/inveno/se/tools/ysj/log/c;->i:I

    return v0
.end method

.method public m()Lcom/inveno/se/tools/ysj/log/a;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/tools/ysj/log/c;->j:Lcom/inveno/se/tools/ysj/log/a;

    return-object v0
.end method
