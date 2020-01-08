.class public Lcom/alibaba/fastjson/b/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson/b/aj;


# static fields
.field public static final a:Lcom/alibaba/fastjson/b/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/alibaba/fastjson/b/i;

    invoke-direct {v0}, Lcom/alibaba/fastjson/b/i;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/b/i;->a:Lcom/alibaba/fastjson/b/i;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson/b/z;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29
    invoke-virtual {p1}, Lcom/alibaba/fastjson/b/z;->i()Lcom/alibaba/fastjson/b/ao;

    move-result-object v0

    .line 31
    check-cast p2, Ljava/lang/Character;

    .line 32
    if-nez p2, :cond_0

    .line 33
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/b/ao;->b(Ljava/lang/String;)V

    .line 43
    :goto_0
    return-void

    .line 37
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result v1

    .line 38
    if-nez v1, :cond_1

    .line 39
    const-string v1, "\u0000"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/b/ao;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 41
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/b/ao;->b(Ljava/lang/String;)V

    goto :goto_0
.end method
