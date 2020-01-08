.class public Lcom/inveno/se/tools/ysj/log/L;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d()V
    .locals 3

    new-instance v0, Lcom/inveno/se/tools/ysj/log/b;

    invoke-direct {v0}, Lcom/inveno/se/tools/ysj/log/b;-><init>()V

    sget-object v1, Lcom/inveno/se/tools/ysj/log/a;->f:Lcom/inveno/se/tools/ysj/log/a;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/inveno/se/tools/ysj/log/b;->a(Lcom/inveno/se/tools/ysj/log/a;Ljava/lang/Object;)V

    return-void
.end method

.method public static d(Ljava/lang/Object;)V
    .locals 2

    new-instance v0, Lcom/inveno/se/tools/ysj/log/b;

    invoke-direct {v0}, Lcom/inveno/se/tools/ysj/log/b;-><init>()V

    sget-object v1, Lcom/inveno/se/tools/ysj/log/a;->f:Lcom/inveno/se/tools/ysj/log/a;

    invoke-virtual {v0, v1, p0}, Lcom/inveno/se/tools/ysj/log/b;->a(Lcom/inveno/se/tools/ysj/log/a;Ljava/lang/Object;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    new-instance v0, Lcom/inveno/se/tools/ysj/log/b;

    invoke-direct {v0}, Lcom/inveno/se/tools/ysj/log/b;-><init>()V

    sget-object v1, Lcom/inveno/se/tools/ysj/log/a;->f:Lcom/inveno/se/tools/ysj/log/a;

    invoke-virtual {v0, p0, v1, p1}, Lcom/inveno/se/tools/ysj/log/b;->a(Ljava/lang/String;Lcom/inveno/se/tools/ysj/log/a;Ljava/lang/Object;)V

    return-void
.end method

.method public static e()V
    .locals 3

    new-instance v0, Lcom/inveno/se/tools/ysj/log/b;

    invoke-direct {v0}, Lcom/inveno/se/tools/ysj/log/b;-><init>()V

    sget-object v1, Lcom/inveno/se/tools/ysj/log/a;->c:Lcom/inveno/se/tools/ysj/log/a;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/inveno/se/tools/ysj/log/b;->a(Lcom/inveno/se/tools/ysj/log/a;Ljava/lang/Object;)V

    return-void
.end method

.method public static e(Ljava/lang/Object;)V
    .locals 2

    new-instance v0, Lcom/inveno/se/tools/ysj/log/b;

    invoke-direct {v0}, Lcom/inveno/se/tools/ysj/log/b;-><init>()V

    sget-object v1, Lcom/inveno/se/tools/ysj/log/a;->c:Lcom/inveno/se/tools/ysj/log/a;

    invoke-virtual {v0, v1, p0}, Lcom/inveno/se/tools/ysj/log/b;->a(Lcom/inveno/se/tools/ysj/log/a;Ljava/lang/Object;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    new-instance v0, Lcom/inveno/se/tools/ysj/log/b;

    invoke-direct {v0}, Lcom/inveno/se/tools/ysj/log/b;-><init>()V

    sget-object v1, Lcom/inveno/se/tools/ysj/log/a;->c:Lcom/inveno/se/tools/ysj/log/a;

    invoke-virtual {v0, p0, v1, p1}, Lcom/inveno/se/tools/ysj/log/b;->a(Ljava/lang/String;Lcom/inveno/se/tools/ysj/log/a;Ljava/lang/Object;)V

    return-void
.end method

.method public static hideDivider()Lcom/inveno/se/tools/ysj/log/c;
    .locals 1

    new-instance v0, Lcom/inveno/se/tools/ysj/log/b;

    invoke-direct {v0}, Lcom/inveno/se/tools/ysj/log/b;-><init>()V

    invoke-virtual {v0}, Lcom/inveno/se/tools/ysj/log/b;->a()Lcom/inveno/se/tools/ysj/log/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/se/tools/ysj/log/c;->c()Lcom/inveno/se/tools/ysj/log/c;

    move-result-object v0

    return-object v0
.end method

.method public static hidePositionInfo()Lcom/inveno/se/tools/ysj/log/c;
    .locals 1

    new-instance v0, Lcom/inveno/se/tools/ysj/log/b;

    invoke-direct {v0}, Lcom/inveno/se/tools/ysj/log/b;-><init>()V

    invoke-virtual {v0}, Lcom/inveno/se/tools/ysj/log/b;->a()Lcom/inveno/se/tools/ysj/log/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/se/tools/ysj/log/c;->b()Lcom/inveno/se/tools/ysj/log/c;

    move-result-object v0

    return-object v0
.end method

.method public static hideThreadInfo()Lcom/inveno/se/tools/ysj/log/c;
    .locals 1

    new-instance v0, Lcom/inveno/se/tools/ysj/log/b;

    invoke-direct {v0}, Lcom/inveno/se/tools/ysj/log/b;-><init>()V

    invoke-virtual {v0}, Lcom/inveno/se/tools/ysj/log/b;->a()Lcom/inveno/se/tools/ysj/log/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/se/tools/ysj/log/c;->a()Lcom/inveno/se/tools/ysj/log/c;

    move-result-object v0

    return-object v0
.end method

.method public static i()V
    .locals 3

    new-instance v0, Lcom/inveno/se/tools/ysj/log/b;

    invoke-direct {v0}, Lcom/inveno/se/tools/ysj/log/b;-><init>()V

    sget-object v1, Lcom/inveno/se/tools/ysj/log/a;->e:Lcom/inveno/se/tools/ysj/log/a;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/inveno/se/tools/ysj/log/b;->a(Lcom/inveno/se/tools/ysj/log/a;Ljava/lang/Object;)V

    return-void
.end method

.method public static i(Ljava/lang/Object;)V
    .locals 2

    new-instance v0, Lcom/inveno/se/tools/ysj/log/b;

    invoke-direct {v0}, Lcom/inveno/se/tools/ysj/log/b;-><init>()V

    sget-object v1, Lcom/inveno/se/tools/ysj/log/a;->e:Lcom/inveno/se/tools/ysj/log/a;

    invoke-virtual {v0, v1, p0}, Lcom/inveno/se/tools/ysj/log/b;->a(Lcom/inveno/se/tools/ysj/log/a;Ljava/lang/Object;)V

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    new-instance v0, Lcom/inveno/se/tools/ysj/log/b;

    invoke-direct {v0}, Lcom/inveno/se/tools/ysj/log/b;-><init>()V

    sget-object v1, Lcom/inveno/se/tools/ysj/log/a;->e:Lcom/inveno/se/tools/ysj/log/a;

    invoke-virtual {v0, p0, v1, p1}, Lcom/inveno/se/tools/ysj/log/b;->a(Ljava/lang/String;Lcom/inveno/se/tools/ysj/log/a;Ljava/lang/Object;)V

    return-void
.end method

.method public static methodCount(I)Lcom/inveno/se/tools/ysj/log/c;
    .locals 1

    new-instance v0, Lcom/inveno/se/tools/ysj/log/b;

    invoke-direct {v0}, Lcom/inveno/se/tools/ysj/log/b;-><init>()V

    invoke-virtual {v0}, Lcom/inveno/se/tools/ysj/log/b;->a()Lcom/inveno/se/tools/ysj/log/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/inveno/se/tools/ysj/log/c;->a(I)Lcom/inveno/se/tools/ysj/log/c;

    move-result-object v0

    return-object v0
.end method

.method public static methodOffset(I)Lcom/inveno/se/tools/ysj/log/c;
    .locals 1

    new-instance v0, Lcom/inveno/se/tools/ysj/log/b;

    invoke-direct {v0}, Lcom/inveno/se/tools/ysj/log/b;-><init>()V

    invoke-virtual {v0}, Lcom/inveno/se/tools/ysj/log/b;->a()Lcom/inveno/se/tools/ysj/log/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/inveno/se/tools/ysj/log/c;->b(I)Lcom/inveno/se/tools/ysj/log/c;

    move-result-object v0

    return-object v0
.end method

.method public static saveToFile(Z)Lcom/inveno/se/tools/ysj/log/c;
    .locals 1

    new-instance v0, Lcom/inveno/se/tools/ysj/log/b;

    invoke-direct {v0}, Lcom/inveno/se/tools/ysj/log/b;-><init>()V

    invoke-virtual {v0}, Lcom/inveno/se/tools/ysj/log/b;->a()Lcom/inveno/se/tools/ysj/log/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/inveno/se/tools/ysj/log/c;->a(Z)Lcom/inveno/se/tools/ysj/log/c;

    move-result-object v0

    return-object v0
.end method

.method public static setLogLevel(Lcom/inveno/se/tools/ysj/log/a;)Lcom/inveno/se/tools/ysj/log/c;
    .locals 1

    new-instance v0, Lcom/inveno/se/tools/ysj/log/b;

    invoke-direct {v0}, Lcom/inveno/se/tools/ysj/log/b;-><init>()V

    invoke-virtual {v0}, Lcom/inveno/se/tools/ysj/log/b;->a()Lcom/inveno/se/tools/ysj/log/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/inveno/se/tools/ysj/log/c;->a(Lcom/inveno/se/tools/ysj/log/a;)Lcom/inveno/se/tools/ysj/log/c;

    move-result-object v0

    return-object v0
.end method

.method public static setTag(Ljava/lang/String;)Lcom/inveno/se/tools/ysj/log/c;
    .locals 1

    new-instance v0, Lcom/inveno/se/tools/ysj/log/b;

    invoke-direct {v0}, Lcom/inveno/se/tools/ysj/log/b;-><init>()V

    invoke-virtual {v0}, Lcom/inveno/se/tools/ysj/log/b;->a()Lcom/inveno/se/tools/ysj/log/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/inveno/se/tools/ysj/log/c;->a(Ljava/lang/String;)Lcom/inveno/se/tools/ysj/log/c;

    move-result-object v0

    return-object v0
.end method

.method public static t(I)V
    .locals 2

    new-instance v0, Lcom/inveno/se/tools/ysj/log/b;

    invoke-direct {v0}, Lcom/inveno/se/tools/ysj/log/b;-><init>()V

    new-instance v1, Lcom/inveno/se/tools/ysj/log/b;

    invoke-direct {v1}, Lcom/inveno/se/tools/ysj/log/b;-><init>()V

    invoke-virtual {v1}, Lcom/inveno/se/tools/ysj/log/b;->a()Lcom/inveno/se/tools/ysj/log/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inveno/se/tools/ysj/log/c;->h()Z

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcom/inveno/se/tools/ysj/log/b;->a(IZ)V

    return-void
.end method

.method public static t(IZ)V
    .locals 1

    new-instance v0, Lcom/inveno/se/tools/ysj/log/b;

    invoke-direct {v0}, Lcom/inveno/se/tools/ysj/log/b;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/inveno/se/tools/ysj/log/b;->a(IZ)V

    return-void
.end method

.method public static t(Z)V
    .locals 2

    new-instance v0, Lcom/inveno/se/tools/ysj/log/b;

    invoke-direct {v0}, Lcom/inveno/se/tools/ysj/log/b;-><init>()V

    new-instance v1, Lcom/inveno/se/tools/ysj/log/b;

    invoke-direct {v1}, Lcom/inveno/se/tools/ysj/log/b;-><init>()V

    invoke-virtual {v1}, Lcom/inveno/se/tools/ysj/log/b;->a()Lcom/inveno/se/tools/ysj/log/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inveno/se/tools/ysj/log/c;->k()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Lcom/inveno/se/tools/ysj/log/b;->a(IZ)V

    return-void
.end method

.method public static v()V
    .locals 3

    new-instance v0, Lcom/inveno/se/tools/ysj/log/b;

    invoke-direct {v0}, Lcom/inveno/se/tools/ysj/log/b;-><init>()V

    sget-object v1, Lcom/inveno/se/tools/ysj/log/a;->g:Lcom/inveno/se/tools/ysj/log/a;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/inveno/se/tools/ysj/log/b;->a(Lcom/inveno/se/tools/ysj/log/a;Ljava/lang/Object;)V

    return-void
.end method

.method public static v(Ljava/lang/Object;)V
    .locals 2

    new-instance v0, Lcom/inveno/se/tools/ysj/log/b;

    invoke-direct {v0}, Lcom/inveno/se/tools/ysj/log/b;-><init>()V

    sget-object v1, Lcom/inveno/se/tools/ysj/log/a;->g:Lcom/inveno/se/tools/ysj/log/a;

    invoke-virtual {v0, v1, p0}, Lcom/inveno/se/tools/ysj/log/b;->a(Lcom/inveno/se/tools/ysj/log/a;Ljava/lang/Object;)V

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    new-instance v0, Lcom/inveno/se/tools/ysj/log/b;

    invoke-direct {v0}, Lcom/inveno/se/tools/ysj/log/b;-><init>()V

    sget-object v1, Lcom/inveno/se/tools/ysj/log/a;->g:Lcom/inveno/se/tools/ysj/log/a;

    invoke-virtual {v0, p0, v1, p1}, Lcom/inveno/se/tools/ysj/log/b;->a(Ljava/lang/String;Lcom/inveno/se/tools/ysj/log/a;Ljava/lang/Object;)V

    return-void
.end method

.method public static w()V
    .locals 3

    new-instance v0, Lcom/inveno/se/tools/ysj/log/b;

    invoke-direct {v0}, Lcom/inveno/se/tools/ysj/log/b;-><init>()V

    sget-object v1, Lcom/inveno/se/tools/ysj/log/a;->d:Lcom/inveno/se/tools/ysj/log/a;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/inveno/se/tools/ysj/log/b;->a(Lcom/inveno/se/tools/ysj/log/a;Ljava/lang/Object;)V

    return-void
.end method

.method public static w(Ljava/lang/Object;)V
    .locals 2

    new-instance v0, Lcom/inveno/se/tools/ysj/log/b;

    invoke-direct {v0}, Lcom/inveno/se/tools/ysj/log/b;-><init>()V

    sget-object v1, Lcom/inveno/se/tools/ysj/log/a;->d:Lcom/inveno/se/tools/ysj/log/a;

    invoke-virtual {v0, v1, p0}, Lcom/inveno/se/tools/ysj/log/b;->a(Lcom/inveno/se/tools/ysj/log/a;Ljava/lang/Object;)V

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    new-instance v0, Lcom/inveno/se/tools/ysj/log/b;

    invoke-direct {v0}, Lcom/inveno/se/tools/ysj/log/b;-><init>()V

    sget-object v1, Lcom/inveno/se/tools/ysj/log/a;->d:Lcom/inveno/se/tools/ysj/log/a;

    invoke-virtual {v0, p0, v1, p1}, Lcom/inveno/se/tools/ysj/log/b;->a(Ljava/lang/String;Lcom/inveno/se/tools/ysj/log/a;Ljava/lang/Object;)V

    return-void
.end method
