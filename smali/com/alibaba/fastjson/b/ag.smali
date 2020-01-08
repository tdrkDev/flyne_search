.class Lcom/alibaba/fastjson/b/ag;
.super Lcom/alibaba/fastjson/b/r;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/c/c;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/b/r;-><init>(Lcom/alibaba/fastjson/c/c;)V

    .line 28
    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson/b/z;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 32
    invoke-virtual {p1}, Lcom/alibaba/fastjson/b/z;->i()Lcom/alibaba/fastjson/b/ao;

    move-result-object v0

    .line 34
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/b/ag;->a(Lcom/alibaba/fastjson/b/z;)V

    .line 38
    if-nez p2, :cond_1

    .line 39
    sget-object v1, Lcom/alibaba/fastjson/b/ap;->WriteNullNumberAsZero:Lcom/alibaba/fastjson/b/ap;

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/b/ao;->a(Lcom/alibaba/fastjson/b/ap;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/b/ao;->a(C)V

    .line 48
    :goto_0
    return-void

    .line 42
    :cond_0
    invoke-virtual {v0}, Lcom/alibaba/fastjson/b/ao;->a()V

    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/b/ao;->a(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/b/ao;

    goto :goto_0
.end method
