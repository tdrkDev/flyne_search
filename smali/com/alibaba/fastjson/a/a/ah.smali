.class public Lcom/alibaba/fastjson/a/a/ah;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson/a/a/am;


# static fields
.field public static final a:Lcom/alibaba/fastjson/a/a/ah;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/alibaba/fastjson/a/a/ah;

    invoke-direct {v0}, Lcom/alibaba/fastjson/a/a/ah;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/a/a/ah;->a:Lcom/alibaba/fastjson/a/a/ah;

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
    .line 21
    invoke-virtual {p0}, Lcom/alibaba/fastjson/a/c;->k()Lcom/alibaba/fastjson/a/e;

    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 23
    invoke-virtual {v0}, Lcom/alibaba/fastjson/a/e;->z()J

    move-result-wide v2

    .line 24
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/a/e;->b(I)V

    .line 25
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 34
    :goto_0
    return-object v0

    .line 28
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/a/c;->j()Ljava/lang/Object;

    move-result-object v0

    .line 30
    if-nez v0, :cond_1

    .line 31
    const/4 v0, 0x0

    goto :goto_0

    .line 34
    :cond_1
    invoke-static {v0}, Lcom/alibaba/fastjson/c/g;->l(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 38
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
    .line 16
    invoke-static {p1}, Lcom/alibaba/fastjson/a/a/ah;->a(Lcom/alibaba/fastjson/a/c;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
