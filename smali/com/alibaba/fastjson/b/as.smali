.class public Lcom/alibaba/fastjson/b/as;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson/b/aj;


# static fields
.field public static final a:Lcom/alibaba/fastjson/b/as;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    new-instance v0, Lcom/alibaba/fastjson/b/as;

    invoke-direct {v0}, Lcom/alibaba/fastjson/b/as;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/b/as;->a:Lcom/alibaba/fastjson/b/as;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
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
    .line 11
    if-nez p2, :cond_0

    .line 12
    invoke-virtual {p1}, Lcom/alibaba/fastjson/b/z;->j()V

    .line 17
    :goto_0
    return-void

    .line 16
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/b/z;->b(Ljava/lang/String;)V

    goto :goto_0
.end method
