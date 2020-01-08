.class public Lcom/alibaba/fastjson/b/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson/b/aj;


# static fields
.field public static a:Lcom/alibaba/fastjson/b/v;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    new-instance v0, Lcom/alibaba/fastjson/b/v;

    invoke-direct {v0}, Lcom/alibaba/fastjson/b/v;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/b/v;->a:Lcom/alibaba/fastjson/b/v;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson/b/z;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12
    if-nez p2, :cond_0

    .line 13
    invoke-virtual {p1}, Lcom/alibaba/fastjson/b/z;->j()V

    .line 20
    :goto_0
    return-void

    .line 17
    :cond_0
    check-cast p2, Ljava/net/InetAddress;

    .line 19
    invoke-virtual {p2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/b/z;->b(Ljava/lang/String;)V

    goto :goto_0
.end method
