.class public Lcom/alibaba/fastjson/a/a/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson/a/a/am;


# static fields
.field public static final a:Lcom/alibaba/fastjson/a/a/n;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/alibaba/fastjson/a/a/n;

    invoke-direct {v0}, Lcom/alibaba/fastjson/a/a/n;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/a/a/n;->a:Lcom/alibaba/fastjson/a/a/n;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x4

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
    .line 20
    invoke-virtual {p1}, Lcom/alibaba/fastjson/a/c;->k()Lcom/alibaba/fastjson/a/e;

    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 23
    invoke-virtual {v0}, Lcom/alibaba/fastjson/a/e;->k()V

    .line 24
    const/4 v0, 0x0

    .line 33
    :goto_0
    return-object v0

    .line 27
    :cond_0
    invoke-virtual {v0}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    .line 28
    new-instance v0, Lcom/alibaba/fastjson/d;

    const-string v1, "expect className"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_1
    invoke-virtual {v0}, Lcom/alibaba/fastjson/a/e;->w()Ljava/lang/String;

    move-result-object v1

    .line 31
    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/a/e;->b(I)V

    .line 33
    invoke-static {v1}, Lcom/alibaba/fastjson/c/g;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0
.end method
