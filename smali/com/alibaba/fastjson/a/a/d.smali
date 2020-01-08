.class public Lcom/alibaba/fastjson/a/a/d;
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

    .line 18
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 21
    const/16 v0, 0xe

    return v0
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
    .line 28
    invoke-virtual {p1}, Lcom/alibaba/fastjson/a/c;->k()Lcom/alibaba/fastjson/a/e;

    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 30
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/a/e;->b(I)V

    .line 31
    const/4 v0, 0x0

    .line 37
    :goto_0
    if-nez p2, :cond_1

    .line 38
    iget-object v1, p0, Lcom/alibaba/fastjson/a/a/d;->a:Lcom/alibaba/fastjson/c/c;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/c/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    :goto_1
    return-void

    .line 33
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 35
    invoke-static {p1, v0}, Lcom/alibaba/fastjson/a/a/c;->a(Lcom/alibaba/fastjson/a/c;Ljava/util/Collection;)V

    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {p0, p2, v0}, Lcom/alibaba/fastjson/a/a/d;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1
.end method
