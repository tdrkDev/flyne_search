.class public Lcom/alibaba/fastjson/a/a/al;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson/a/a/am;


# static fields
.field public static final a:Lcom/alibaba/fastjson/a/a/al;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/alibaba/fastjson/a/a/al;

    invoke-direct {v0}, Lcom/alibaba/fastjson/a/a/al;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/a/a/al;->a:Lcom/alibaba/fastjson/a/a/al;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x2

    return v0
.end method

.method public a(Lcom/alibaba/fastjson/a/c;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/a/c;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/16 v4, 0x10

    .line 17
    invoke-virtual {p1}, Lcom/alibaba/fastjson/a/c;->k()Lcom/alibaba/fastjson/a/e;

    move-result-object v1

    .line 19
    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_a

    .line 20
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p2, v0, :cond_0

    const-class v0, Ljava/lang/Double;

    if-ne p2, v0, :cond_2

    .line 21
    :cond_0
    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/e;->B()Ljava/lang/String;

    move-result-object v0

    .line 22
    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/a/e;->b(I)V

    .line 23
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 87
    :cond_1
    :goto_0
    return-object v0

    .line 26
    :cond_2
    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/e;->z()J

    move-result-wide v2

    .line 27
    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/a/e;->b(I)V

    .line 29
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p2, v0, :cond_3

    const-class v0, Ljava/lang/Double;

    if-ne p2, v0, :cond_4

    .line 30
    :cond_3
    long-to-double v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    .line 33
    :cond_4
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p2, v0, :cond_5

    const-class v0, Ljava/lang/Short;

    if-ne p2, v0, :cond_6

    .line 34
    :cond_5
    long-to-int v0, v2

    int-to-short v0, v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    goto :goto_0

    .line 37
    :cond_6
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq p2, v0, :cond_7

    const-class v0, Ljava/lang/Byte;

    if-ne p2, v0, :cond_8

    .line 38
    :cond_7
    long-to-int v0, v2

    int-to-byte v0, v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    goto :goto_0

    .line 41
    :cond_8
    const-wide/32 v0, -0x80000000

    cmp-long v0, v2, v0

    if-ltz v0, :cond_9

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, v2, v0

    if-gtz v0, :cond_9

    .line 42
    long-to-int v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 44
    :cond_9
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 47
    :cond_a
    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_10

    .line 48
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p2, v0, :cond_b

    const-class v0, Ljava/lang/Double;

    if-ne p2, v0, :cond_c

    .line 49
    :cond_b
    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/e;->B()Ljava/lang/String;

    move-result-object v0

    .line 50
    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/a/e;->b(I)V

    .line 51
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    .line 55
    :cond_c
    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/e;->E()Ljava/math/BigDecimal;

    move-result-object v0

    .line 56
    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/a/e;->b(I)V

    .line 58
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p2, v1, :cond_d

    const-class v1, Ljava/lang/Short;

    if-ne p2, v1, :cond_e

    .line 59
    :cond_d
    invoke-virtual {v0}, Ljava/math/BigDecimal;->shortValue()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    goto/16 :goto_0

    .line 62
    :cond_e
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq p2, v1, :cond_f

    const-class v1, Ljava/lang/Byte;

    if-ne p2, v1, :cond_1

    .line 63
    :cond_f
    invoke-virtual {v0}, Ljava/math/BigDecimal;->byteValue()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    goto/16 :goto_0

    .line 69
    :cond_10
    invoke-virtual {p1}, Lcom/alibaba/fastjson/a/c;->j()Ljava/lang/Object;

    move-result-object v0

    .line 71
    if-nez v0, :cond_11

    .line 72
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 75
    :cond_11
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p2, v1, :cond_12

    const-class v1, Ljava/lang/Double;

    if-ne p2, v1, :cond_13

    .line 76
    :cond_12
    invoke-static {v0}, Lcom/alibaba/fastjson/c/g;->h(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v0

    goto/16 :goto_0

    .line 79
    :cond_13
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p2, v1, :cond_14

    const-class v1, Ljava/lang/Short;

    if-ne p2, v1, :cond_15

    .line 80
    :cond_14
    invoke-static {v0}, Lcom/alibaba/fastjson/c/g;->d(Ljava/lang/Object;)Ljava/lang/Short;

    move-result-object v0

    goto/16 :goto_0

    .line 83
    :cond_15
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq p2, v1, :cond_16

    const-class v1, Ljava/lang/Byte;

    if-ne p2, v1, :cond_17

    .line 84
    :cond_16
    invoke-static {v0}, Lcom/alibaba/fastjson/c/g;->b(Ljava/lang/Object;)Ljava/lang/Byte;

    move-result-object v0

    goto/16 :goto_0

    .line 87
    :cond_17
    invoke-static {v0}, Lcom/alibaba/fastjson/c/g;->e(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object v0

    goto/16 :goto_0
.end method
