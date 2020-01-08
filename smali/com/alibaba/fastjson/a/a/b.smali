.class public Lcom/alibaba/fastjson/a/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson/a/a/am;


# static fields
.field public static final a:Lcom/alibaba/fastjson/a/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcom/alibaba/fastjson/a/a/b;

    invoke-direct {v0}, Lcom/alibaba/fastjson/a/a/b;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/a/a/b;->a:Lcom/alibaba/fastjson/a/a/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/alibaba/fastjson/a/c;Ljava/lang/Class;Lcom/alibaba/fastjson/b;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/a/c;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/alibaba/fastjson/b;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 40
    if-nez p3, :cond_0

    .line 41
    const/4 v0, 0x0

    .line 68
    :goto_0
    return-object v0

    .line 44
    :cond_0
    invoke-virtual {p3}, Lcom/alibaba/fastjson/b;->size()I

    move-result v3

    .line 46
    invoke-virtual {p2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    .line 47
    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    .line 48
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v3, :cond_3

    .line 49
    invoke-virtual {p3, v2}, Lcom/alibaba/fastjson/b;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 51
    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 53
    invoke-virtual {v4, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 59
    :goto_2
    invoke-static {v1, v2, v0}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 48
    :goto_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 56
    :cond_1
    check-cast v0, Lcom/alibaba/fastjson/b;

    invoke-direct {p0, p1, v4, v0}, Lcom/alibaba/fastjson/a/a/b;->a(Lcom/alibaba/fastjson/a/c;Ljava/lang/Class;Lcom/alibaba/fastjson/b;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_2

    .line 61
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/fastjson/a/c;->c()Lcom/alibaba/fastjson/a/i;

    move-result-object v5

    invoke-static {v0, v4, v5}, Lcom/alibaba/fastjson/c/g;->a(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/a/i;)Ljava/lang/Object;

    move-result-object v0

    .line 62
    invoke-static {v1, v2, v0}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_3

    .line 66
    :cond_3
    invoke-virtual {p3, v1}, Lcom/alibaba/fastjson/b;->a(Ljava/lang/Object;)V

    .line 67
    invoke-virtual {p3, v4}, Lcom/alibaba/fastjson/b;->a(Ljava/lang/reflect/Type;)V

    move-object v0, v1

    .line 68
    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 72
    const/16 v0, 0xe

    return v0
.end method

.method public a(Lcom/alibaba/fastjson/a/c;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
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
    const/16 v3, 0x10

    .line 18
    invoke-virtual {p1}, Lcom/alibaba/fastjson/a/c;->k()Lcom/alibaba/fastjson/a/e;

    move-result-object v1

    .line 19
    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    .line 20
    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/a/e;->b(I)V

    .line 21
    const/4 v0, 0x0

    .line 35
    :goto_0
    return-object v0

    .line 24
    :cond_0
    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    .line 25
    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/e;->n()[B

    move-result-object v0

    .line 26
    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/a/e;->b(I)V

    goto :goto_0

    .line 30
    :cond_1
    check-cast p2, Ljava/lang/Class;

    .line 31
    invoke-virtual {p2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 32
    new-instance v1, Lcom/alibaba/fastjson/b;

    invoke-direct {v1}, Lcom/alibaba/fastjson/b;-><init>()V

    .line 33
    invoke-virtual {p1, v0, v1, p3}, Lcom/alibaba/fastjson/a/c;->a(Ljava/lang/reflect/Type;Ljava/util/Collection;Ljava/lang/Object;)V

    .line 35
    invoke-direct {p0, p1, p2, v1}, Lcom/alibaba/fastjson/a/a/b;->a(Lcom/alibaba/fastjson/a/c;Ljava/lang/Class;Lcom/alibaba/fastjson/b;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
