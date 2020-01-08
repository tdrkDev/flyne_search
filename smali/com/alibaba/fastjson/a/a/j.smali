.class public Lcom/alibaba/fastjson/a/a/j;
.super Lcom/alibaba/fastjson/a/a/u;
.source "SourceFile"


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
    .line 16
    invoke-direct {p0, p2, p3}, Lcom/alibaba/fastjson/a/a/u;-><init>(Ljava/lang/Class;Lcom/alibaba/fastjson/c/c;)V

    .line 17
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x6

    return v0
.end method

.method public a(Lcom/alibaba/fastjson/a/c;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V
    .locals 6
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
    const/4 v1, 0x0

    const/4 v0, 0x1

    const/16 v5, 0x10

    .line 23
    invoke-virtual {p1}, Lcom/alibaba/fastjson/a/c;->k()Lcom/alibaba/fastjson/a/e;

    move-result-object v2

    .line 24
    invoke-virtual {v2}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_2

    .line 25
    invoke-virtual {v2, v5}, Lcom/alibaba/fastjson/a/e;->b(I)V

    .line 26
    if-nez p2, :cond_1

    .line 27
    iget-object v0, p0, Lcom/alibaba/fastjson/a/a/j;->a:Lcom/alibaba/fastjson/c/c;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/c/c;->c()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 29
    :cond_1
    invoke-virtual {p0, p2, v0}, Lcom/alibaba/fastjson/a/a/j;->a(Ljava/lang/Object;Z)V

    goto :goto_0

    .line 34
    :cond_2
    invoke-virtual {v2}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    .line 35
    invoke-virtual {v2}, Lcom/alibaba/fastjson/a/e;->A()I

    move-result v3

    .line 36
    invoke-virtual {v2, v5}, Lcom/alibaba/fastjson/a/e;->b(I)V

    .line 37
    if-ne v3, v0, :cond_3

    .line 38
    :goto_1
    if-nez p2, :cond_4

    .line 39
    iget-object v1, p0, Lcom/alibaba/fastjson/a/a/j;->a:Lcom/alibaba/fastjson/c/c;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/c/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    move v0, v1

    .line 37
    goto :goto_1

    .line 41
    :cond_4
    invoke-virtual {p0, p2, v0}, Lcom/alibaba/fastjson/a/a/j;->a(Ljava/lang/Object;Z)V

    goto :goto_0

    .line 46
    :cond_5
    invoke-virtual {v2}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v0

    const/16 v3, 0x8

    if-ne v0, v3, :cond_6

    .line 48
    invoke-virtual {v2, v5}, Lcom/alibaba/fastjson/a/e;->b(I)V

    .line 50
    invoke-virtual {p0}, Lcom/alibaba/fastjson/a/a/j;->c()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_0

    .line 55
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/alibaba/fastjson/a/a/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 59
    :cond_6
    invoke-virtual {v2}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v0

    const/4 v3, 0x7

    if-ne v0, v3, :cond_8

    .line 60
    invoke-virtual {v2, v5}, Lcom/alibaba/fastjson/a/e;->b(I)V

    .line 61
    if-nez p2, :cond_7

    .line 62
    iget-object v0, p0, Lcom/alibaba/fastjson/a/a/j;->a:Lcom/alibaba/fastjson/c/c;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/c/c;->c()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 64
    :cond_7
    invoke-virtual {p0, p2, v1}, Lcom/alibaba/fastjson/a/a/j;->a(Ljava/lang/Object;Z)V

    goto :goto_0

    .line 69
    :cond_8
    invoke-virtual {p1}, Lcom/alibaba/fastjson/a/c;->j()Ljava/lang/Object;

    move-result-object v0

    .line 71
    invoke-static {v0}, Lcom/alibaba/fastjson/c/g;->o(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    .line 73
    if-nez v0, :cond_9

    invoke-virtual {p0}, Lcom/alibaba/fastjson/a/a/j;->c()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v1, v2, :cond_0

    .line 78
    :cond_9
    if-nez p2, :cond_a

    .line 79
    iget-object v1, p0, Lcom/alibaba/fastjson/a/a/j;->a:Lcom/alibaba/fastjson/c/c;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/c/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 81
    :cond_a
    invoke-virtual {p0, p2, v0}, Lcom/alibaba/fastjson/a/a/j;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method
