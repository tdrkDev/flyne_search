.class public Lcom/alibaba/fastjson/b/ad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson/b/aj;


# static fields
.field public static a:Lcom/alibaba/fastjson/b/ad;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/alibaba/fastjson/b/ad;

    invoke-direct {v0}, Lcom/alibaba/fastjson/b/ad;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/b/ad;->a:Lcom/alibaba/fastjson/b/ad;

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
    .locals 6
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
    if-nez p2, :cond_2

    .line 32
    sget-object v1, Lcom/alibaba/fastjson/b/ap;->WriteNullNumberAsZero:Lcom/alibaba/fastjson/b/ap;

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/b/ao;->a(Lcom/alibaba/fastjson/b/ap;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 33
    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/b/ao;->a(C)V

    .line 50
    :cond_0
    :goto_0
    return-void

    .line 35
    :cond_1
    invoke-virtual {v0}, Lcom/alibaba/fastjson/b/ao;->a()V

    goto :goto_0

    .line 40
    :cond_2
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 41
    invoke-virtual {v0, v2, v3}, Lcom/alibaba/fastjson/b/ao;->a(J)V

    .line 43
    sget-object v1, Lcom/alibaba/fastjson/b/ap;->WriteClassName:Lcom/alibaba/fastjson/b/ap;

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/b/z;->a(Lcom/alibaba/fastjson/b/ap;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    const-wide/32 v4, 0x7fffffff

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    const-wide/32 v4, -0x80000000

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    .line 45
    const-class v1, Ljava/lang/Long;

    if-eq p4, v1, :cond_0

    .line 46
    const/16 v1, 0x4c

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/b/ao;->a(C)V

    goto :goto_0
.end method
