.class public Lcom/alibaba/fastjson/a/a/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson/a/a/am;


# static fields
.field public static final a:Lcom/alibaba/fastjson/a/a/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/alibaba/fastjson/a/a/g;

    invoke-direct {v0}, Lcom/alibaba/fastjson/a/a/g;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/a/a/g;->a:Lcom/alibaba/fastjson/a/a/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/alibaba/fastjson/a/c;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/a/c;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/16 v4, 0x10

    .line 22
    invoke-virtual {p0}, Lcom/alibaba/fastjson/a/c;->k()Lcom/alibaba/fastjson/a/e;

    move-result-object v1

    .line 23
    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 24
    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/e;->z()J

    move-result-wide v2

    .line 25
    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/a/e;->b(I)V

    .line 26
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v2, v3}, Ljava/math/BigDecimal;-><init>(J)V

    .line 41
    :goto_0
    return-object v0

    .line 29
    :cond_0
    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 30
    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/e;->E()Ljava/math/BigDecimal;

    move-result-object v0

    .line 31
    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/a/e;->b(I)V

    goto :goto_0

    .line 35
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/a/c;->j()Ljava/lang/Object;

    move-result-object v0

    .line 37
    if-nez v0, :cond_2

    .line 38
    const/4 v0, 0x0

    goto :goto_0

    .line 41
    :cond_2
    invoke-static {v0}, Lcom/alibaba/fastjson/c/g;->e(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x2

    return v0
.end method

.method public a(Lcom/alibaba/fastjson/a/c;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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
    .line 17
    invoke-static {p1}, Lcom/alibaba/fastjson/a/a/g;->a(Lcom/alibaba/fastjson/a/c;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
