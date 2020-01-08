.class public Lcom/alibaba/fastjson/a/a/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson/a/a/am;


# static fields
.field public static final a:Lcom/alibaba/fastjson/a/a/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lcom/alibaba/fastjson/a/a/i;

    invoke-direct {v0}, Lcom/alibaba/fastjson/a/a/i;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/a/a/i;->a:Lcom/alibaba/fastjson/a/a/i;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/alibaba/fastjson/a/c;)Ljava/lang/Object;
    .locals 4
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
    const/16 v3, 0x10

    .line 20
    invoke-virtual {p0}, Lcom/alibaba/fastjson/a/c;->k()Lcom/alibaba/fastjson/a/e;

    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    .line 23
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/a/e;->b(I)V

    .line 24
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 49
    :goto_0
    return-object v0

    .line 27
    :cond_0
    invoke-virtual {v0}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    .line 28
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/a/e;->b(I)V

    .line 29
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 32
    :cond_1
    invoke-virtual {v0}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 33
    invoke-virtual {v0}, Lcom/alibaba/fastjson/a/e;->A()I

    move-result v1

    .line 34
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/a/e;->b(I)V

    .line 36
    const/4 v0, 0x1

    if-ne v1, v0, :cond_2

    .line 37
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 39
    :cond_2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 43
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson/a/c;->j()Ljava/lang/Object;

    move-result-object v0

    .line 45
    if-nez v0, :cond_4

    .line 46
    const/4 v0, 0x0

    goto :goto_0

    .line 49
    :cond_4
    invoke-static {v0}, Lcom/alibaba/fastjson/c/g;->o(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x6

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
    .line 15
    invoke-static {p1}, Lcom/alibaba/fastjson/a/a/i;->a(Lcom/alibaba/fastjson/a/c;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
