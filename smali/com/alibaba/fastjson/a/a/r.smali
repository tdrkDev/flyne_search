.class public Lcom/alibaba/fastjson/a/a/r;
.super Lcom/alibaba/fastjson/a/a/u;
.source "SourceFile"


# instance fields
.field private c:Lcom/alibaba/fastjson/a/a/am;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/a/i;Ljava/lang/Class;Lcom/alibaba/fastjson/c/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/a/i;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alibaba/fastjson/c/c;",
            ")V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0, p2, p3}, Lcom/alibaba/fastjson/a/a/u;-><init>(Ljava/lang/Class;Lcom/alibaba/fastjson/c/c;)V

    .line 18
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alibaba/fastjson/a/a/r;->c:Lcom/alibaba/fastjson/a/a/am;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/alibaba/fastjson/a/a/r;->c:Lcom/alibaba/fastjson/a/a/am;

    invoke-interface {v0}, Lcom/alibaba/fastjson/a/a/am;->a()I

    move-result v0

    .line 46
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public a(Lcom/alibaba/fastjson/a/c;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/a/c;",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    iget-object v0, p0, Lcom/alibaba/fastjson/a/a/r;->c:Lcom/alibaba/fastjson/a/a/am;

    if-nez v0, :cond_0

    .line 23
    invoke-virtual {p1}, Lcom/alibaba/fastjson/a/c;->c()Lcom/alibaba/fastjson/a/i;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/fastjson/a/a/r;->a:Lcom/alibaba/fastjson/c/c;

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/a/i;->a(Lcom/alibaba/fastjson/c/c;)Lcom/alibaba/fastjson/a/a/am;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/fastjson/a/a/r;->c:Lcom/alibaba/fastjson/a/a/am;

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/a/a/r;->c:Lcom/alibaba/fastjson/a/a/am;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/a/a/r;->d()Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/fastjson/a/a/r;->a:Lcom/alibaba/fastjson/c/c;

    invoke-virtual {v2}, Lcom/alibaba/fastjson/c/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Lcom/alibaba/fastjson/a/a/am;->a(Lcom/alibaba/fastjson/a/c;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 27
    invoke-virtual {p1}, Lcom/alibaba/fastjson/a/c;->d()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 28
    invoke-virtual {p1}, Lcom/alibaba/fastjson/a/c;->h()Lcom/alibaba/fastjson/a/c$a;

    move-result-object v0

    .line 29
    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson/a/c$a;->a(Lcom/alibaba/fastjson/a/a/u;)V

    .line 30
    invoke-virtual {p1}, Lcom/alibaba/fastjson/a/c;->f()Lcom/alibaba/fastjson/a/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/a/c$a;->a(Lcom/alibaba/fastjson/a/h;)V

    .line 31
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/a/c;->a(I)V

    .line 39
    :goto_0
    return-void

    .line 33
    :cond_1
    if-nez p2, :cond_2

    .line 34
    iget-object v1, p0, Lcom/alibaba/fastjson/a/a/r;->a:Lcom/alibaba/fastjson/c/c;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/c/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 36
    :cond_2
    invoke-virtual {p0, p2, v0}, Lcom/alibaba/fastjson/a/a/r;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method
