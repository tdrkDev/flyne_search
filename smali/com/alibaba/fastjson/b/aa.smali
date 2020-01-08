.class public Lcom/alibaba/fastjson/b/aa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson/b/aj;


# static fields
.field public static a:Lcom/alibaba/fastjson/b/aa;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/alibaba/fastjson/b/aa;

    invoke-direct {v0}, Lcom/alibaba/fastjson/b/aa;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/b/aa;->a:Lcom/alibaba/fastjson/b/aa;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
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
    .line 31
    invoke-virtual {p1}, Lcom/alibaba/fastjson/b/z;->i()Lcom/alibaba/fastjson/b/ao;

    move-result-object v0

    .line 33
    check-cast p2, Lcom/alibaba/fastjson/f;

    .line 34
    invoke-interface {p2, v0}, Lcom/alibaba/fastjson/f;->writeJSONString(Ljava/lang/Appendable;)V

    .line 35
    return-void
.end method
