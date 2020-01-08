.class public Lcom/alibaba/fastjson/a/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson/a/a/am;


# static fields
.field public static final a:Lcom/alibaba/fastjson/a/a/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/alibaba/fastjson/a/a/c;

    invoke-direct {v0}, Lcom/alibaba/fastjson/a/a/c;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/a/a/c;->a:Lcom/alibaba/fastjson/a/a/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/alibaba/fastjson/a/c;Ljava/util/Collection;)V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/16 v3, 0x10

    .line 53
    invoke-virtual {p0}, Lcom/alibaba/fastjson/a/c;->k()Lcom/alibaba/fastjson/a/e;

    move-result-object v1

    .line 55
    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    .line 56
    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/a/e;->b(I)V

    .line 104
    :goto_0
    return-void

    .line 60
    :cond_0
    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v0

    const/16 v2, 0x15

    if-ne v0, v2, :cond_1

    .line 61
    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/e;->k()V

    .line 64
    :cond_1
    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v0

    const/16 v2, 0xe

    if-eq v0, v2, :cond_2

    .line 65
    new-instance v0, Lcom/alibaba/fastjson/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exepct \'[\', but "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_2
    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/a/e;->b(I)V

    .line 71
    :cond_3
    :goto_1
    sget-object v0, Lcom/alibaba/fastjson/a/d;->AllowArbitraryCommas:Lcom/alibaba/fastjson/a/d;

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/a/e;->a(Lcom/alibaba/fastjson/a/d;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 72
    :goto_2
    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v0

    if-ne v0, v3, :cond_4

    .line 73
    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/e;->k()V

    goto :goto_2

    .line 78
    :cond_4
    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v0

    const/16 v2, 0xf

    if-ne v0, v2, :cond_5

    .line 103
    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/a/e;->b(I)V

    goto :goto_0

    .line 83
    :cond_5
    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v0

    if-ne v0, v4, :cond_6

    .line 84
    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/e;->w()Ljava/lang/String;

    move-result-object v0

    .line 85
    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/a/e;->b(I)V

    .line 95
    :goto_3
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 97
    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 98
    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/a/e;->b(I)V

    goto :goto_1

    .line 87
    :cond_6
    invoke-virtual {p0}, Lcom/alibaba/fastjson/a/c;->j()Ljava/lang/Object;

    move-result-object v0

    .line 88
    if-nez v0, :cond_7

    .line 89
    const/4 v0, 0x0

    goto :goto_3

    .line 91
    :cond_7
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 107
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
    const/4 v0, 0x0

    .line 23
    invoke-virtual {p1}, Lcom/alibaba/fastjson/a/c;->k()Lcom/alibaba/fastjson/a/e;

    move-result-object v1

    .line 24
    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    .line 25
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/a/e;->b(I)V

    .line 48
    :goto_0
    return-object v0

    .line 31
    :cond_0
    const-class v1, Ljava/util/Set;

    if-eq p2, v1, :cond_1

    const-class v1, Ljava/util/HashSet;

    if-ne p2, v1, :cond_4

    .line 32
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 42
    :cond_2
    :goto_1
    if-nez v0, :cond_3

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 46
    :cond_3
    invoke-static {p1, v0}, Lcom/alibaba/fastjson/a/a/c;->a(Lcom/alibaba/fastjson/a/c;Ljava/util/Collection;)V

    goto :goto_0

    .line 34
    :cond_4
    instance-of v1, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_2

    .line 35
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 36
    const-class v2, Ljava/util/Set;

    if-eq v1, v2, :cond_5

    const-class v2, Ljava/util/HashSet;

    if-ne v1, v2, :cond_2

    .line 37
    :cond_5
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto :goto_1
.end method
