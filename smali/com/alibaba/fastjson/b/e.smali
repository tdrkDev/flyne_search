.class public Lcom/alibaba/fastjson/b/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson/b/aj;


# static fields
.field public static final a:Lcom/alibaba/fastjson/b/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/alibaba/fastjson/b/e;

    invoke-direct {v0}, Lcom/alibaba/fastjson/b/e;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/b/e;->a:Lcom/alibaba/fastjson/b/e;

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
    check-cast p2, Ljava/lang/Boolean;

    .line 32
    if-nez p2, :cond_1

    .line 33
    sget-object v1, Lcom/alibaba/fastjson/b/ap;->WriteNullBooleanAsFalse:Lcom/alibaba/fastjson/b/ap;

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/b/ao;->a(Lcom/alibaba/fastjson/b/ap;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 34
    const-string v1, "false"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/b/ao;->write(Ljava/lang/String;)V

    .line 46
    :goto_0
    return-void

    .line 36
    :cond_0
    invoke-virtual {v0}, Lcom/alibaba/fastjson/b/ao;->a()V

    goto :goto_0

    .line 41
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 42
    const-string v1, "true"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/b/ao;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 44
    :cond_2
    const-string v1, "false"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/b/ao;->write(Ljava/lang/String;)V

    goto :goto_0
.end method
