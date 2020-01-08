.class public Lcom/alibaba/fastjson/b/aq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson/b/aj;


# static fields
.field public static a:Lcom/alibaba/fastjson/b/aq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/alibaba/fastjson/b/aq;

    invoke-direct {v0}, Lcom/alibaba/fastjson/b/aq;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/b/aq;->a:Lcom/alibaba/fastjson/b/aq;

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
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/b/aq;->a(Lcom/alibaba/fastjson/b/z;Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public a(Lcom/alibaba/fastjson/b/z;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 33
    invoke-virtual {p1}, Lcom/alibaba/fastjson/b/z;->i()Lcom/alibaba/fastjson/b/ao;

    move-result-object v0

    .line 35
    if-nez p2, :cond_1

    .line 36
    sget-object v1, Lcom/alibaba/fastjson/b/ap;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson/b/ap;

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/b/ao;->a(Lcom/alibaba/fastjson/b/ap;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 37
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/b/ao;->b(Ljava/lang/String;)V

    .line 45
    :goto_0
    return-void

    .line 39
    :cond_0
    invoke-virtual {v0}, Lcom/alibaba/fastjson/b/ao;->a()V

    goto :goto_0

    .line 44
    :cond_1
    invoke-virtual {v0, p2}, Lcom/alibaba/fastjson/b/ao;->b(Ljava/lang/String;)V

    goto :goto_0
.end method
