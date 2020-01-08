.class public Lcom/alibaba/fastjson/a/a/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson/a/a/am;


# instance fields
.field private a:Ljava/lang/reflect/Type;

.field private b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/reflect/Type;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/alibaba/fastjson/a/a/e;->b:Ljava/lang/Class;

    .line 19
    iput-object p2, p0, Lcom/alibaba/fastjson/a/a/e;->a:Ljava/lang/reflect/Type;

    .line 20
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 44
    const/16 v0, 0xe

    return v0
.end method

.method public a(Lcom/alibaba/fastjson/a/c;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/a/c;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 24
    const/4 v0, 0x0

    .line 26
    invoke-virtual {p1}, Lcom/alibaba/fastjson/a/c;->k()Lcom/alibaba/fastjson/a/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 27
    invoke-virtual {p1}, Lcom/alibaba/fastjson/a/c;->k()Lcom/alibaba/fastjson/a/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/e;->k()V

    .line 40
    :goto_0
    return-object v0

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/a/a/e;->b:Ljava/lang/Class;

    const-class v1, Ljava/util/LinkedHashSet;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 30
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 37
    :goto_1
    iget-object v1, p0, Lcom/alibaba/fastjson/a/a/e;->a:Ljava/lang/reflect/Type;

    invoke-virtual {p1, v1, v0, p3}, Lcom/alibaba/fastjson/a/c;->a(Ljava/lang/reflect/Type;Ljava/util/Collection;Ljava/lang/Object;)V

    goto :goto_0

    .line 31
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson/a/a/e;->b:Ljava/lang/Class;

    const-class v1, Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 32
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto :goto_1

    .line 34
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1
.end method
