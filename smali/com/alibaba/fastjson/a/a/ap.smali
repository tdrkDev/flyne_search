.class public Lcom/alibaba/fastjson/a/a/ap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson/a/a/am;


# static fields
.field public static final a:Lcom/alibaba/fastjson/a/a/ap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/alibaba/fastjson/a/a/ap;

    invoke-direct {v0}, Lcom/alibaba/fastjson/a/a/ap;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/a/a/ap;->a:Lcom/alibaba/fastjson/a/a/ap;

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
    .line 120
    const/16 v0, 0xc

    return v0
.end method

.method public a(Lcom/alibaba/fastjson/a/c;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
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
    .line 17
    invoke-virtual {p1}, Lcom/alibaba/fastjson/a/c;->k()Lcom/alibaba/fastjson/a/e;

    move-result-object v4

    .line 18
    invoke-virtual {v4}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 19
    invoke-virtual {v4}, Lcom/alibaba/fastjson/a/e;->k()V

    .line 20
    const/4 v0, 0x0

    .line 116
    :goto_0
    return-object v0

    .line 23
    :cond_0
    invoke-virtual {v4}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    invoke-virtual {v4}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    .line 24
    new-instance v0, Lcom/alibaba/fastjson/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syntax error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v2

    invoke-static {v2}, Lcom/alibaba/fastjson/a/f;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_1
    const/4 v3, 0x0

    .line 28
    const/4 v2, 0x0

    .line 29
    const/4 v1, 0x0

    .line 30
    const/4 v0, 0x0

    .line 34
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/fastjson/a/c;->b()Lcom/alibaba/fastjson/a/j;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alibaba/fastjson/a/e;->b(Lcom/alibaba/fastjson/a/j;)Ljava/lang/String;

    move-result-object v5

    .line 36
    if-nez v5, :cond_4

    .line 37
    invoke-virtual {v4}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v6

    const/16 v7, 0xd

    if-ne v6, v7, :cond_3

    .line 38
    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Lcom/alibaba/fastjson/a/e;->b(I)V

    .line 116
    :goto_1
    new-instance v4, Ljava/lang/StackTraceElement;

    invoke-direct {v4, v3, v2, v1, v0}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v0, v4

    goto :goto_0

    .line 41
    :cond_3
    invoke-virtual {v4}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v6

    const/16 v7, 0x10

    if-ne v6, v7, :cond_4

    .line 42
    sget-object v6, Lcom/alibaba/fastjson/a/d;->AllowArbitraryCommas:Lcom/alibaba/fastjson/a/d;

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/a/e;->a(Lcom/alibaba/fastjson/a/d;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 48
    :cond_4
    const/4 v6, 0x4

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/a/e;->a(I)V

    .line 49
    const-string v6, "className"

    if-ne v5, v6, :cond_8

    .line 50
    invoke-virtual {v4}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v3

    const/16 v5, 0x8

    if-ne v3, v5, :cond_6

    .line 51
    const/4 v3, 0x0

    .line 106
    :cond_5
    :goto_2
    invoke-virtual {v4}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v5

    const/16 v6, 0x10

    if-eq v5, v6, :cond_2

    .line 110
    invoke-virtual {v4}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v5

    const/16 v6, 0xd

    if-ne v5, v6, :cond_2

    .line 111
    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Lcom/alibaba/fastjson/a/e;->b(I)V

    goto :goto_1

    .line 52
    :cond_6
    invoke-virtual {v4}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v3

    const/4 v5, 0x4

    if-ne v3, v5, :cond_7

    .line 53
    invoke-virtual {v4}, Lcom/alibaba/fastjson/a/e;->w()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 55
    :cond_7
    new-instance v0, Lcom/alibaba/fastjson/d;

    const-string v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_8
    const-string v6, "methodName"

    if-ne v5, v6, :cond_b

    .line 58
    invoke-virtual {v4}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v2

    const/16 v5, 0x8

    if-ne v2, v5, :cond_9

    .line 59
    const/4 v2, 0x0

    goto :goto_2

    .line 60
    :cond_9
    invoke-virtual {v4}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v2

    const/4 v5, 0x4

    if-ne v2, v5, :cond_a

    .line 61
    invoke-virtual {v4}, Lcom/alibaba/fastjson/a/e;->w()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 63
    :cond_a
    new-instance v0, Lcom/alibaba/fastjson/d;

    const-string v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_b
    const-string v6, "fileName"

    if-ne v5, v6, :cond_e

    .line 66
    invoke-virtual {v4}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v1

    const/16 v5, 0x8

    if-ne v1, v5, :cond_c

    .line 67
    const/4 v1, 0x0

    goto :goto_2

    .line 68
    :cond_c
    invoke-virtual {v4}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v1

    const/4 v5, 0x4

    if-ne v1, v5, :cond_d

    .line 69
    invoke-virtual {v4}, Lcom/alibaba/fastjson/a/e;->w()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 71
    :cond_d
    new-instance v0, Lcom/alibaba/fastjson/d;

    const-string v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_e
    const-string v6, "lineNumber"

    if-ne v5, v6, :cond_11

    .line 74
    invoke-virtual {v4}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v0

    const/16 v5, 0x8

    if-ne v0, v5, :cond_f

    .line 75
    const/4 v0, 0x0

    goto :goto_2

    .line 76
    :cond_f
    invoke-virtual {v4}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v0

    const/4 v5, 0x2

    if-ne v0, v5, :cond_10

    .line 77
    invoke-virtual {v4}, Lcom/alibaba/fastjson/a/e;->A()I

    move-result v0

    goto/16 :goto_2

    .line 79
    :cond_10
    new-instance v0, Lcom/alibaba/fastjson/d;

    const-string v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_11
    const-string v6, "nativeMethod"

    if-ne v5, v6, :cond_15

    .line 82
    invoke-virtual {v4}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_12

    .line 83
    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Lcom/alibaba/fastjson/a/e;->b(I)V

    goto/16 :goto_2

    .line 84
    :cond_12
    invoke-virtual {v4}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v5

    const/4 v6, 0x6

    if-ne v5, v6, :cond_13

    .line 85
    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Lcom/alibaba/fastjson/a/e;->b(I)V

    goto/16 :goto_2

    .line 86
    :cond_13
    invoke-virtual {v4}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v5

    const/4 v6, 0x7

    if-ne v5, v6, :cond_14

    .line 87
    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Lcom/alibaba/fastjson/a/e;->b(I)V

    goto/16 :goto_2

    .line 89
    :cond_14
    new-instance v0, Lcom/alibaba/fastjson/d;

    const-string v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_15
    const-string v6, "@type"

    if-ne v5, v6, :cond_17

    .line 92
    invoke-virtual {v4}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_5

    .line 94
    invoke-virtual {v4}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_16

    .line 95
    invoke-virtual {v4}, Lcom/alibaba/fastjson/a/e;->w()Ljava/lang/String;

    move-result-object v5

    .line 96
    const-string v6, "java.lang.StackTraceElement"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 97
    new-instance v0, Lcom/alibaba/fastjson/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syntax error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_16
    new-instance v0, Lcom/alibaba/fastjson/d;

    const-string v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_17
    new-instance v0, Lcom/alibaba/fastjson/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syntax error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;)V

    throw v0
.end method
