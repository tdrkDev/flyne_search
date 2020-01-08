.class public Lcom/alibaba/fastjson/b/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson/b/aj;


# static fields
.field public static a:Lcom/alibaba/fastjson/b/w;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Lcom/alibaba/fastjson/b/w;

    invoke-direct {v0}, Lcom/alibaba/fastjson/b/w;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/b/w;->a:Lcom/alibaba/fastjson/b/w;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson/b/z;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13
    if-nez p2, :cond_0

    .line 14
    invoke-virtual {p1}, Lcom/alibaba/fastjson/b/z;->j()V

    .line 32
    :goto_0
    return-void

    .line 18
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson/b/z;->i()Lcom/alibaba/fastjson/b/ao;

    move-result-object v0

    .line 19
    check-cast p2, Ljava/net/InetSocketAddress;

    .line 21
    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    .line 23
    const/16 v2, 0x7b

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/b/ao;->a(C)V

    .line 24
    if-eqz v1, :cond_1

    .line 25
    const-string v2, "address"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/b/ao;->c(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/b/z;->d(Ljava/lang/Object;)V

    .line 27
    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/b/ao;->a(C)V

    .line 29
    :cond_1
    const-string v1, "port"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/b/ao;->c(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/b/ao;->b(I)V

    .line 31
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/b/ao;->a(C)V

    goto :goto_0
.end method
