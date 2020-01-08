.class public Lcom/alibaba/fastjson/a/a/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson/a/a/am;


# static fields
.field public static final a:Lcom/alibaba/fastjson/a/a/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/alibaba/fastjson/a/a/l;

    invoke-direct {v0}, Lcom/alibaba/fastjson/a/a/l;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/a/a/l;->a:Lcom/alibaba/fastjson/a/a/l;

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

    .line 21
    invoke-virtual {p0}, Lcom/alibaba/fastjson/a/c;->k()Lcom/alibaba/fastjson/a/e;

    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 23
    invoke-virtual {v0}, Lcom/alibaba/fastjson/a/e;->w()Ljava/lang/String;

    move-result-object v1

    .line 24
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/a/e;->b(I)V

    .line 25
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 40
    :goto_0
    return-object v0

    .line 28
    :cond_0
    invoke-virtual {v0}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 29
    invoke-virtual {v0}, Lcom/alibaba/fastjson/a/e;->y()Ljava/lang/Number;

    move-result-object v1

    .line 30
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/a/e;->b(I)V

    .line 31
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    goto :goto_0

    .line 34
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/a/c;->j()Ljava/lang/Object;

    move-result-object v0

    .line 36
    if-nez v0, :cond_2

    .line 37
    const/4 v0, 0x0

    goto :goto_0

    .line 40
    :cond_2
    invoke-static {v0}, Lcom/alibaba/fastjson/a;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x4

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
    .line 16
    invoke-static {p1}, Lcom/alibaba/fastjson/a/a/l;->a(Lcom/alibaba/fastjson/a/c;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
