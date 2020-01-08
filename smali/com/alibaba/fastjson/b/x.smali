.class public Lcom/alibaba/fastjson/b/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson/b/aj;


# static fields
.field public static a:Lcom/alibaba/fastjson/b/x;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/alibaba/fastjson/b/x;

    invoke-direct {v0}, Lcom/alibaba/fastjson/b/x;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/b/x;->a:Lcom/alibaba/fastjson/b/x;

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
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29
    invoke-virtual {p1}, Lcom/alibaba/fastjson/b/z;->i()Lcom/alibaba/fastjson/b/ao;

    move-result-object v1

    move-object v0, p2

    .line 31
    check-cast v0, Ljava/lang/Number;

    .line 33
    if-nez v0, :cond_2

    .line 34
    sget-object v0, Lcom/alibaba/fastjson/b/ap;->WriteNullNumberAsZero:Lcom/alibaba/fastjson/b/ap;

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/b/ao;->a(Lcom/alibaba/fastjson/b/ap;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 35
    const/16 v0, 0x30

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/b/ao;->a(C)V

    .line 52
    :cond_0
    :goto_0
    return-void

    .line 37
    :cond_1
    invoke-virtual {v1}, Lcom/alibaba/fastjson/b/ao;->a()V

    goto :goto_0

    .line 42
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/b/ao;->b(I)V

    .line 44
    sget-object v0, Lcom/alibaba/fastjson/b/ap;->WriteClassName:Lcom/alibaba/fastjson/b/ap;

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/b/z;->a(Lcom/alibaba/fastjson/b/ap;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 46
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq v0, v2, :cond_3

    const-class v2, Ljava/lang/Byte;

    if-ne v0, v2, :cond_4

    .line 47
    :cond_3
    const/16 v0, 0x42

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/b/ao;->a(C)V

    goto :goto_0

    .line 48
    :cond_4
    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq v0, v2, :cond_5

    const-class v2, Ljava/lang/Short;

    if-ne v0, v2, :cond_0

    .line 49
    :cond_5
    const/16 v0, 0x53

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/b/ao;->a(C)V

    goto :goto_0
.end method
