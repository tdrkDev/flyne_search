.class public Lcom/alibaba/fastjson/a/a/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson/a/a/am;


# static fields
.field public static final a:Lcom/alibaba/fastjson/a/a/y;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcom/alibaba/fastjson/a/a/y;

    invoke-direct {v0}, Lcom/alibaba/fastjson/a/a/y;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/a/a/y;->a:Lcom/alibaba/fastjson/a/a/y;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 62
    const/16 v0, 0xc

    return v0
.end method

.method public a(Lcom/alibaba/fastjson/a/c;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
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
    const/4 v2, 0x0

    const/16 v5, 0x11

    .line 18
    invoke-virtual {p1}, Lcom/alibaba/fastjson/a/c;->k()Lcom/alibaba/fastjson/a/e;

    move-result-object v3

    .line 20
    invoke-virtual {v3}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 21
    invoke-virtual {v3}, Lcom/alibaba/fastjson/a/e;->k()V

    .line 58
    :goto_0
    return-object v2

    .line 25
    :cond_0
    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/a/c;->b(I)V

    .line 28
    const/4 v1, 0x0

    .line 30
    :goto_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson/a/c;->b()Lcom/alibaba/fastjson/a/j;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/alibaba/fastjson/a/e;->c(Lcom/alibaba/fastjson/a/j;)Ljava/lang/String;

    move-result-object v0

    .line 31
    invoke-virtual {v3}, Lcom/alibaba/fastjson/a/e;->k()V

    .line 33
    const-string v4, "address"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 34
    invoke-virtual {p1, v5}, Lcom/alibaba/fastjson/a/c;->b(I)V

    .line 35
    const-class v0, Ljava/net/InetAddress;

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/a/c;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    move v6, v1

    move-object v1, v0

    move v0, v6

    .line 48
    :goto_2
    invoke-virtual {v3}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v2

    const/16 v4, 0x10

    if-ne v2, v4, :cond_4

    .line 49
    invoke-virtual {v3}, Lcom/alibaba/fastjson/a/e;->k()V

    move-object v2, v1

    move v1, v0

    .line 50
    goto :goto_1

    .line 36
    :cond_1
    const-string v4, "port"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 37
    invoke-virtual {p1, v5}, Lcom/alibaba/fastjson/a/c;->b(I)V

    .line 38
    invoke-virtual {v3}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 39
    new-instance v0, Lcom/alibaba/fastjson/d;

    const-string v1, "port is not int"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_2
    invoke-virtual {v3}, Lcom/alibaba/fastjson/a/e;->A()I

    move-result v0

    .line 42
    invoke-virtual {v3}, Lcom/alibaba/fastjson/a/e;->k()V

    move-object v1, v2

    goto :goto_2

    .line 44
    :cond_3
    invoke-virtual {p1, v5}, Lcom/alibaba/fastjson/a/c;->b(I)V

    .line 45
    invoke-virtual {p1}, Lcom/alibaba/fastjson/a/c;->j()Ljava/lang/Object;

    move v0, v1

    move-object v1, v2

    goto :goto_2

    .line 56
    :cond_4
    const/16 v2, 0xd

    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/a/c;->b(I)V

    .line 58
    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-direct {v2, v1, v0}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    goto :goto_0
.end method
