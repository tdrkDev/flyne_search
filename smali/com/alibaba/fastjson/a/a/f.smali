.class public Lcom/alibaba/fastjson/a/a/f;
.super Lcom/alibaba/fastjson/a/a/u;
.source "SourceFile"


# instance fields
.field private final c:Ljava/lang/reflect/Type;

.field private d:I

.field private e:Lcom/alibaba/fastjson/a/a/am;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/a/i;Ljava/lang/Class;Lcom/alibaba/fastjson/c/c;)V
    .locals 2
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
    .line 26
    invoke-direct {p0, p2, p3}, Lcom/alibaba/fastjson/a/a/u;-><init>(Ljava/lang/Class;Lcom/alibaba/fastjson/c/c;)V

    .line 28
    invoke-virtual {p0}, Lcom/alibaba/fastjson/a/a/f;->d()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 29
    instance-of v0, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {p0}, Lcom/alibaba/fastjson/a/a/f;->d()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/alibaba/fastjson/a/a/f;->c:Ljava/lang/reflect/Type;

    .line 34
    :goto_0
    return-void

    .line 32
    :cond_0
    const-class v0, Ljava/lang/Object;

    iput-object v0, p0, Lcom/alibaba/fastjson/a/a/f;->c:Ljava/lang/reflect/Type;

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 37
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
    .line 43
    invoke-virtual {p1}, Lcom/alibaba/fastjson/a/c;->k()Lcom/alibaba/fastjson/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 44
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/alibaba/fastjson/a/a/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    :goto_0
    return-void

    .line 48
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 50
    invoke-virtual {p1}, Lcom/alibaba/fastjson/a/c;->f()Lcom/alibaba/fastjson/a/h;

    move-result-object v1

    .line 52
    iget-object v2, p0, Lcom/alibaba/fastjson/a/a/f;->a:Lcom/alibaba/fastjson/c/c;

    invoke-virtual {v2}, Lcom/alibaba/fastjson/c/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, p2, v2}, Lcom/alibaba/fastjson/a/c;->a(Lcom/alibaba/fastjson/a/h;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/a/h;

    .line 53
    invoke-virtual {p0, p1, p3, v0}, Lcom/alibaba/fastjson/a/a/f;->a(Lcom/alibaba/fastjson/a/c;Ljava/lang/reflect/Type;Ljava/util/Collection;)V

    .line 54
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/a/c;->a(Lcom/alibaba/fastjson/a/h;)V

    .line 56
    if-nez p2, :cond_1

    .line 57
    iget-object v1, p0, Lcom/alibaba/fastjson/a/a/f;->a:Lcom/alibaba/fastjson/c/c;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/c/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 59
    :cond_1
    invoke-virtual {p0, p2, v0}, Lcom/alibaba/fastjson/a/a/f;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/fastjson/a/c;Ljava/lang/reflect/Type;Ljava/util/Collection;)V
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/4 v4, -0x1

    const/16 v9, 0x10

    .line 65
    iget-object v1, p0, Lcom/alibaba/fastjson/a/a/f;->c:Ljava/lang/reflect/Type;

    .line 67
    instance-of v0, v1, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_0

    instance-of v0, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 68
    check-cast v0, Ljava/lang/reflect/TypeVariable;

    .line 69
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    .line 71
    const/4 v2, 0x0

    .line 72
    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v5

    instance-of v5, v5, Ljava/lang/Class;

    if-eqz v5, :cond_8

    .line 73
    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    move-object v5, v2

    .line 77
    :goto_0
    if-eqz v5, :cond_7

    .line 78
    invoke-virtual {v5}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v2

    array-length v6, v2

    move v2, v3

    :goto_1
    if-ge v2, v6, :cond_7

    .line 79
    invoke-virtual {v5}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v7

    aget-object v7, v7, v2

    .line 80
    invoke-interface {v7}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v0, v2

    .line 87
    :goto_2
    if-eq v0, v4, :cond_0

    .line 88
    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    aget-object v1, v1, v0

    .line 92
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson/a/c;->k()Lcom/alibaba/fastjson/a/e;

    move-result-object v2

    .line 94
    invoke-virtual {v2}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v0

    const/16 v4, 0xe

    if-eq v0, v4, :cond_2

    .line 95
    new-instance v0, Lcom/alibaba/fastjson/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exepct \'[\', but "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v2

    invoke-static {v2}, Lcom/alibaba/fastjson/a/f;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 98
    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson/a/a/f;->e:Lcom/alibaba/fastjson/a/a/am;

    if-nez v0, :cond_3

    .line 99
    invoke-virtual {p1}, Lcom/alibaba/fastjson/a/c;->c()Lcom/alibaba/fastjson/a/i;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/a/i;->a(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/a/a/am;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/fastjson/a/a/f;->e:Lcom/alibaba/fastjson/a/a/am;

    .line 100
    iget-object v0, p0, Lcom/alibaba/fastjson/a/a/f;->e:Lcom/alibaba/fastjson/a/a/am;

    invoke-interface {v0}, Lcom/alibaba/fastjson/a/a/am;->a()I

    move-result v0

    iput v0, p0, Lcom/alibaba/fastjson/a/a/f;->d:I

    .line 103
    :cond_3
    iget v0, p0, Lcom/alibaba/fastjson/a/a/f;->d:I

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/a/e;->b(I)V

    move v0, v3

    .line 106
    :goto_3
    sget-object v3, Lcom/alibaba/fastjson/a/d;->AllowArbitraryCommas:Lcom/alibaba/fastjson/a/d;

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/a/e;->a(Lcom/alibaba/fastjson/a/d;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 107
    :goto_4
    invoke-virtual {v2}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v3

    if-ne v3, v9, :cond_4

    .line 108
    invoke-virtual {v2}, Lcom/alibaba/fastjson/a/e;->k()V

    goto :goto_4

    .line 113
    :cond_4
    invoke-virtual {v2}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v3

    const/16 v4, 0xf

    if-ne v3, v4, :cond_5

    .line 128
    invoke-virtual {v2, v9}, Lcom/alibaba/fastjson/a/e;->b(I)V

    .line 129
    return-void

    .line 117
    :cond_5
    iget-object v3, p0, Lcom/alibaba/fastjson/a/a/f;->e:Lcom/alibaba/fastjson/a/a/am;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, p1, v1, v4}, Lcom/alibaba/fastjson/a/a/am;->a(Lcom/alibaba/fastjson/a/c;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 118
    invoke-interface {p3, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 120
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson/a/c;->a(Ljava/util/Collection;)V

    .line 122
    invoke-virtual {v2}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v3

    if-ne v3, v9, :cond_6

    .line 123
    iget v3, p0, Lcom/alibaba/fastjson/a/a/f;->d:I

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/a/e;->b(I)V

    .line 105
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    move v0, v4

    goto/16 :goto_2

    :cond_8
    move-object v5, v2

    goto/16 :goto_0
.end method
