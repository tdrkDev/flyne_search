.class public Lcom/alibaba/fastjson/b/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson/b/aj;


# static fields
.field public static final a:Lcom/alibaba/fastjson/b/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/alibaba/fastjson/b/c;

    invoke-direct {v0}, Lcom/alibaba/fastjson/b/c;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/b/c;->a:Lcom/alibaba/fastjson/b/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
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
    .line 30
    invoke-virtual {p1}, Lcom/alibaba/fastjson/b/z;->i()Lcom/alibaba/fastjson/b/ao;

    move-result-object v0

    .line 32
    if-nez p2, :cond_2

    .line 33
    sget-object v1, Lcom/alibaba/fastjson/b/ap;->WriteNullNumberAsZero:Lcom/alibaba/fastjson/b/ap;

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/b/ao;->a(Lcom/alibaba/fastjson/b/ap;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 34
    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/b/ao;->a(C)V

    .line 47
    :cond_0
    :goto_0
    return-void

    .line 36
    :cond_1
    invoke-virtual {v0}, Lcom/alibaba/fastjson/b/ao;->a()V

    goto :goto_0

    .line 41
    :cond_2
    check-cast p2, Ljava/math/BigDecimal;

    .line 42
    invoke-virtual {p2}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/b/ao;->write(Ljava/lang/String;)V

    .line 44
    sget-object v1, Lcom/alibaba/fastjson/b/ap;->WriteClassName:Lcom/alibaba/fastjson/b/ap;

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/b/ao;->a(Lcom/alibaba/fastjson/b/ap;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-class v1, Ljava/math/BigDecimal;

    if-eq p4, v1, :cond_0

    invoke-virtual {p2}, Ljava/math/BigDecimal;->scale()I

    move-result v1

    if-nez v1, :cond_0

    .line 45
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/b/ao;->a(C)V

    goto :goto_0
.end method
