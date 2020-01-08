.class public abstract Lcom/alibaba/fastjson/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson/c;
.implements Lcom/alibaba/fastjson/f;


# static fields
.field public static DEFAULT_GENERATE_FEATURE:I = 0x0

.field public static DEFAULT_PARSER_FEATURE:I = 0x0

.field public static DEFFAULT_DATE_FORMAT:Ljava/lang/String; = null

.field public static final VERSION:Ljava/lang/String; = "1.1.27"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 54
    sget-object v0, Lcom/alibaba/fastjson/a/d;->AutoCloseSource:Lcom/alibaba/fastjson/a/d;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/a/d;->a()I

    move-result v0

    or-int/2addr v0, v2

    .line 55
    sget-object v1, Lcom/alibaba/fastjson/a/d;->InternFieldNames:Lcom/alibaba/fastjson/a/d;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/d;->a()I

    move-result v1

    or-int/2addr v0, v1

    .line 56
    sget-object v1, Lcom/alibaba/fastjson/a/d;->UseBigDecimal:Lcom/alibaba/fastjson/a/d;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/d;->a()I

    move-result v1

    or-int/2addr v0, v1

    .line 57
    sget-object v1, Lcom/alibaba/fastjson/a/d;->AllowUnQuotedFieldNames:Lcom/alibaba/fastjson/a/d;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/d;->a()I

    move-result v1

    or-int/2addr v0, v1

    .line 58
    sget-object v1, Lcom/alibaba/fastjson/a/d;->AllowSingleQuotes:Lcom/alibaba/fastjson/a/d;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/d;->a()I

    move-result v1

    or-int/2addr v0, v1

    .line 59
    sget-object v1, Lcom/alibaba/fastjson/a/d;->AllowArbitraryCommas:Lcom/alibaba/fastjson/a/d;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/d;->a()I

    move-result v1

    or-int/2addr v0, v1

    .line 60
    sget-object v1, Lcom/alibaba/fastjson/a/d;->SortFeidFastMatch:Lcom/alibaba/fastjson/a/d;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/d;->a()I

    move-result v1

    or-int/2addr v0, v1

    .line 61
    sget-object v1, Lcom/alibaba/fastjson/a/d;->IgnoreNotMatch:Lcom/alibaba/fastjson/a/d;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/d;->a()I

    move-result v1

    or-int/2addr v0, v1

    .line 62
    sput v0, Lcom/alibaba/fastjson/a;->DEFAULT_PARSER_FEATURE:I

    .line 65
    const-string v0, "yyyy-MM-dd HH:mm:ss"

    sput-object v0, Lcom/alibaba/fastjson/a;->DEFFAULT_DATE_FORMAT:Ljava/lang/String;

    .line 70
    sget-object v0, Lcom/alibaba/fastjson/b/ap;->QuoteFieldNames:Lcom/alibaba/fastjson/b/ap;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/b/ap;->a()I

    move-result v0

    or-int/2addr v0, v2

    .line 71
    sget-object v1, Lcom/alibaba/fastjson/b/ap;->SkipTransientField:Lcom/alibaba/fastjson/b/ap;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/b/ap;->a()I

    move-result v1

    or-int/2addr v0, v1

    .line 72
    sget-object v1, Lcom/alibaba/fastjson/b/ap;->WriteEnumUsingToString:Lcom/alibaba/fastjson/b/ap;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/b/ap;->a()I

    move-result v1

    or-int/2addr v0, v1

    .line 73
    sget-object v1, Lcom/alibaba/fastjson/b/ap;->SortField:Lcom/alibaba/fastjson/b/ap;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/b/ap;->a()I

    move-result v1

    or-int/2addr v0, v1

    .line 76
    sput v0, Lcom/alibaba/fastjson/a;->DEFAULT_GENERATE_FEATURE:I

    .line 77
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static handleResovleTask(Lcom/alibaba/fastjson/a/c;Ljava/lang/Object;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/a/c;",
            "TT;)I"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 216
    sget-object v1, Lcom/alibaba/fastjson/a/d;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/a/d;

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/a/c;->a(Lcom/alibaba/fastjson/a/d;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 240
    :goto_0
    return v0

    .line 220
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/a/c;->g()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    move v3, v0

    .line 221
    :goto_1
    if-ge v3, v2, :cond_3

    .line 222
    invoke-virtual {p0}, Lcom/alibaba/fastjson/a/c;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/a/c$a;

    .line 223
    invoke-virtual {v0}, Lcom/alibaba/fastjson/a/c$a;->c()Lcom/alibaba/fastjson/a/a/u;

    move-result-object v4

    .line 225
    const/4 v1, 0x0

    .line 226
    invoke-virtual {v0}, Lcom/alibaba/fastjson/a/c$a;->d()Lcom/alibaba/fastjson/a/h;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 227
    invoke-virtual {v0}, Lcom/alibaba/fastjson/a/c$a;->d()Lcom/alibaba/fastjson/a/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/h;->a()Ljava/lang/Object;

    move-result-object v1

    .line 230
    :cond_1
    invoke-virtual {v0}, Lcom/alibaba/fastjson/a/c$a;->b()Ljava/lang/String;

    move-result-object v5

    .line 232
    const-string v6, "$"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 233
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/a/c;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 237
    :goto_2
    invoke-virtual {v4, v1, v0}, Lcom/alibaba/fastjson/a/a/u;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 221
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 235
    :cond_2
    invoke-virtual {v0}, Lcom/alibaba/fastjson/a/c$a;->a()Lcom/alibaba/fastjson/a/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/fastjson/a/h;->a()Ljava/lang/Object;

    move-result-object v0

    goto :goto_2

    :cond_3
    move v0, v2

    .line 240
    goto :goto_0
.end method

.method public static final parse(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 80
    sget v0, Lcom/alibaba/fastjson/a;->DEFAULT_PARSER_FEATURE:I

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/a;->parse(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final parse(Ljava/lang/String;I)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 84
    if-nez p0, :cond_0

    .line 85
    const/4 v0, 0x0

    .line 95
    :goto_0
    return-object v0

    .line 88
    :cond_0
    new-instance v1, Lcom/alibaba/fastjson/a/c;

    invoke-static {}, Lcom/alibaba/fastjson/a/i;->a()Lcom/alibaba/fastjson/a/i;

    move-result-object v0

    invoke-direct {v1, p0, v0, p1}, Lcom/alibaba/fastjson/a/c;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/a/i;I)V

    .line 89
    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/c;->j()Ljava/lang/Object;

    move-result-object v0

    .line 91
    invoke-static {v1, v0}, Lcom/alibaba/fastjson/a;->handleResovleTask(Lcom/alibaba/fastjson/a/c;Ljava/lang/Object;)I

    .line 93
    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/c;->l()V

    goto :goto_0
.end method

.method public static final varargs parse(Ljava/lang/String;[Lcom/alibaba/fastjson/a/d;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 138
    sget v1, Lcom/alibaba/fastjson/a;->DEFAULT_PARSER_FEATURE:I

    .line 139
    array-length v2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p1, v0

    .line 140
    const/4 v4, 0x1

    invoke-static {v1, v3, v4}, Lcom/alibaba/fastjson/a/d;->a(ILcom/alibaba/fastjson/a/d;Z)I

    move-result v1

    .line 139
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 143
    :cond_0
    invoke-static {p0, v1}, Lcom/alibaba/fastjson/a;->parse(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final parse([BIILjava/nio/charset/CharsetDecoder;I)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 116
    invoke-virtual {p3}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 118
    int-to-double v0, p2

    invoke-virtual {p3}, Ljava/nio/charset/CharsetDecoder;->maxCharsPerByte()F

    move-result v2

    float-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 119
    invoke-static {v0}, Lcom/alibaba/fastjson/c/f;->a(I)[C

    move-result-object v0

    .line 121
    invoke-static {p0, p1, p2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 122
    invoke-static {v0}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    move-result-object v2

    .line 123
    invoke-static {p3, v1, v2}, Lcom/alibaba/fastjson/c/d;->a(Ljava/nio/charset/CharsetDecoder;Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)V

    .line 125
    invoke-virtual {v2}, Ljava/nio/CharBuffer;->position()I

    move-result v1

    .line 127
    new-instance v2, Lcom/alibaba/fastjson/a/c;

    invoke-static {}, Lcom/alibaba/fastjson/a/i;->a()Lcom/alibaba/fastjson/a/i;

    move-result-object v3

    invoke-direct {v2, v0, v1, v3, p4}, Lcom/alibaba/fastjson/a/c;-><init>([CILcom/alibaba/fastjson/a/i;I)V

    .line 128
    invoke-virtual {v2}, Lcom/alibaba/fastjson/a/c;->j()Ljava/lang/Object;

    move-result-object v0

    .line 130
    invoke-static {v2, v0}, Lcom/alibaba/fastjson/a;->handleResovleTask(Lcom/alibaba/fastjson/a/c;Ljava/lang/Object;)I

    .line 132
    invoke-virtual {v2}, Lcom/alibaba/fastjson/a/c;->l()V

    .line 134
    return-object v0
.end method

.method public static final varargs parse([BIILjava/nio/charset/CharsetDecoder;[Lcom/alibaba/fastjson/a/d;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 103
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 104
    :cond_0
    const/4 v0, 0x0

    .line 112
    :goto_0
    return-object v0

    .line 107
    :cond_1
    sget v1, Lcom/alibaba/fastjson/a;->DEFAULT_PARSER_FEATURE:I

    .line 108
    array-length v2, p4

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_2

    aget-object v3, p4, v0

    .line 109
    const/4 v4, 0x1

    invoke-static {v1, v3, v4}, Lcom/alibaba/fastjson/a/d;->a(ILcom/alibaba/fastjson/a/d;Z)I

    move-result v1

    .line 108
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 112
    :cond_2
    invoke-static {p0, p1, p2, p3, v1}, Lcom/alibaba/fastjson/a;->parse([BIILjava/nio/charset/CharsetDecoder;I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public static final varargs parse([B[Lcom/alibaba/fastjson/a/d;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 99
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {}, Lcom/alibaba/fastjson/c/f;->a()Ljava/nio/charset/CharsetDecoder;

    move-result-object v2

    invoke-static {p0, v0, v1, v2, p1}, Lcom/alibaba/fastjson/a;->parse([BIILjava/nio/charset/CharsetDecoder;[Lcom/alibaba/fastjson/a/d;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/b;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 291
    if-nez p0, :cond_0

    .line 314
    :goto_0
    return-object v0

    .line 295
    :cond_0
    new-instance v1, Lcom/alibaba/fastjson/a/c;

    invoke-static {}, Lcom/alibaba/fastjson/a/i;->a()Lcom/alibaba/fastjson/a/i;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/alibaba/fastjson/a/c;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/a/i;)V

    .line 299
    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/c;->k()Lcom/alibaba/fastjson/a/e;

    move-result-object v2

    .line 300
    invoke-virtual {v2}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_2

    .line 301
    invoke-virtual {v2}, Lcom/alibaba/fastjson/a/e;->k()V

    .line 312
    :cond_1
    :goto_1
    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/c;->l()V

    goto :goto_0

    .line 303
    :cond_2
    invoke-virtual {v2}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v2

    const/16 v3, 0x14

    if-eq v2, v3, :cond_1

    .line 306
    new-instance v0, Lcom/alibaba/fastjson/b;

    invoke-direct {v0}, Lcom/alibaba/fastjson/b;-><init>()V

    .line 307
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/a/c;->b(Ljava/util/Collection;)V

    .line 309
    invoke-static {v1, v0}, Lcom/alibaba/fastjson/a;->handleResovleTask(Lcom/alibaba/fastjson/a/c;Ljava/lang/Object;)I

    goto :goto_1
.end method

.method public static final parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 318
    if-nez p0, :cond_0

    .line 338
    :goto_0
    return-object v0

    .line 324
    :cond_0
    new-instance v1, Lcom/alibaba/fastjson/a/c;

    invoke-static {}, Lcom/alibaba/fastjson/a/i;->a()Lcom/alibaba/fastjson/a/i;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/alibaba/fastjson/a/c;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/a/i;)V

    .line 325
    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/c;->k()Lcom/alibaba/fastjson/a/e;

    move-result-object v2

    .line 326
    invoke-virtual {v2}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_1

    .line 327
    invoke-virtual {v2}, Lcom/alibaba/fastjson/a/e;->k()V

    .line 336
    :goto_1
    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/c;->l()V

    goto :goto_0

    .line 330
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 331
    invoke-virtual {v1, p1, v0}, Lcom/alibaba/fastjson/a/c;->a(Ljava/lang/Class;Ljava/util/Collection;)V

    .line 333
    invoke-static {v1, v0}, Lcom/alibaba/fastjson/a;->handleResovleTask(Lcom/alibaba/fastjson/a/c;Ljava/lang/Object;)I

    goto :goto_1
.end method

.method public static final parseArray(Ljava/lang/String;[Ljava/lang/reflect/Type;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 342
    if-nez p0, :cond_0

    .line 360
    :goto_0
    return-object v0

    .line 348
    :cond_0
    new-instance v1, Lcom/alibaba/fastjson/a/c;

    invoke-static {}, Lcom/alibaba/fastjson/a/i;->a()Lcom/alibaba/fastjson/a/i;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/alibaba/fastjson/a/c;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/a/i;)V

    .line 349
    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/a/c;->a([Ljava/lang/reflect/Type;)[Ljava/lang/Object;

    move-result-object v2

    .line 350
    if-nez v2, :cond_1

    .line 356
    :goto_1
    invoke-static {v1, v0}, Lcom/alibaba/fastjson/a;->handleResovleTask(Lcom/alibaba/fastjson/a/c;Ljava/lang/Object;)I

    .line 358
    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/c;->l()V

    goto :goto_0

    .line 353
    :cond_1
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_1
.end method

.method public static final parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/e;
    .locals 2

    .prologue
    .line 151
    invoke-static {p0}, Lcom/alibaba/fastjson/a;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 152
    instance-of v1, v0, Lcom/alibaba/fastjson/e;

    if-eqz v1, :cond_0

    .line 153
    check-cast v0, Lcom/alibaba/fastjson/e;

    .line 156
    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/alibaba/fastjson/a;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/e;

    goto :goto_0
.end method

.method public static final varargs parseObject(Ljava/lang/String;[Lcom/alibaba/fastjson/a/d;)Lcom/alibaba/fastjson/e;
    .locals 1

    .prologue
    .line 147
    invoke-static {p0, p1}, Lcom/alibaba/fastjson/a;->parse(Ljava/lang/String;[Lcom/alibaba/fastjson/a/d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/e;

    return-object v0
.end method

.method public static final varargs parseObject(Ljava/lang/String;Lcom/alibaba/fastjson/g;[Lcom/alibaba/fastjson/a/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson/g",
            "<TT;>;[",
            "Lcom/alibaba/fastjson/a/d;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 161
    invoke-virtual {p1}, Lcom/alibaba/fastjson/g;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {}, Lcom/alibaba/fastjson/a/i;->a()Lcom/alibaba/fastjson/a/i;

    move-result-object v1

    sget v2, Lcom/alibaba/fastjson/a;->DEFAULT_PARSER_FEATURE:I

    invoke-static {p0, v0, v1, v2, p2}, Lcom/alibaba/fastjson/a;->parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/a/i;I[Lcom/alibaba/fastjson/a/d;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 287
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/alibaba/fastjson/a/d;

    invoke-static {p0, p1, v0}, Lcom/alibaba/fastjson/a;->parseObject(Ljava/lang/String;Ljava/lang/Class;[Lcom/alibaba/fastjson/a/d;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final varargs parseObject(Ljava/lang/String;Ljava/lang/Class;[Lcom/alibaba/fastjson/a/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;[",
            "Lcom/alibaba/fastjson/a/d;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 166
    invoke-static {}, Lcom/alibaba/fastjson/a/i;->a()Lcom/alibaba/fastjson/a/i;

    move-result-object v0

    sget v1, Lcom/alibaba/fastjson/a;->DEFAULT_PARSER_FEATURE:I

    invoke-static {p0, p1, v0, v1, p2}, Lcom/alibaba/fastjson/a;->parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/a/i;I[Lcom/alibaba/fastjson/a/d;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final varargs parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;I[Lcom/alibaba/fastjson/a/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "I[",
            "Lcom/alibaba/fastjson/a/d;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 176
    if-nez p0, :cond_0

    .line 177
    const/4 v0, 0x0

    .line 191
    :goto_0
    return-object v0

    .line 180
    :cond_0
    array-length v1, p3

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    aget-object v2, p3, v0

    .line 181
    const/4 v3, 0x1

    invoke-static {p2, v2, v3}, Lcom/alibaba/fastjson/a/d;->a(ILcom/alibaba/fastjson/a/d;Z)I

    move-result p2

    .line 180
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 184
    :cond_1
    new-instance v1, Lcom/alibaba/fastjson/a/c;

    invoke-static {}, Lcom/alibaba/fastjson/a/i;->a()Lcom/alibaba/fastjson/a/i;

    move-result-object v0

    invoke-direct {v1, p0, v0, p2}, Lcom/alibaba/fastjson/a/c;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/a/i;I)V

    .line 185
    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/a/c;->a(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 187
    invoke-static {v1, v0}, Lcom/alibaba/fastjson/a;->handleResovleTask(Lcom/alibaba/fastjson/a/c;Ljava/lang/Object;)I

    .line 189
    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/c;->l()V

    goto :goto_0
.end method

.method public static final varargs parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/a/i;I[Lcom/alibaba/fastjson/a/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/a/i;",
            "I[",
            "Lcom/alibaba/fastjson/a/d;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 197
    if-nez p0, :cond_0

    .line 198
    const/4 v0, 0x0

    .line 212
    :goto_0
    return-object v0

    .line 201
    :cond_0
    array-length v1, p4

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    aget-object v2, p4, v0

    .line 202
    const/4 v3, 0x1

    invoke-static {p3, v2, v3}, Lcom/alibaba/fastjson/a/d;->a(ILcom/alibaba/fastjson/a/d;Z)I

    move-result p3

    .line 201
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 205
    :cond_1
    new-instance v1, Lcom/alibaba/fastjson/a/c;

    invoke-direct {v1, p0, p2, p3}, Lcom/alibaba/fastjson/a/c;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/a/i;I)V

    .line 206
    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/a/c;->a(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 208
    invoke-static {v1, v0}, Lcom/alibaba/fastjson/a;->handleResovleTask(Lcom/alibaba/fastjson/a/c;Ljava/lang/Object;)I

    .line 210
    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/c;->l()V

    goto :goto_0
.end method

.method public static final varargs parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson/a/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "[",
            "Lcom/alibaba/fastjson/a/d;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 171
    invoke-static {}, Lcom/alibaba/fastjson/a/i;->a()Lcom/alibaba/fastjson/a/i;

    move-result-object v0

    sget v1, Lcom/alibaba/fastjson/a;->DEFAULT_PARSER_FEATURE:I

    invoke-static {p0, p1, v0, v1, p2}, Lcom/alibaba/fastjson/a;->parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/a/i;I[Lcom/alibaba/fastjson/a/d;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final varargs parseObject([BIILjava/nio/charset/CharsetDecoder;Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson/a/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([BII",
            "Ljava/nio/charset/CharsetDecoder;",
            "Ljava/lang/reflect/Type;",
            "[",
            "Lcom/alibaba/fastjson/a/d;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 251
    invoke-virtual {p3}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 253
    int-to-double v0, p2

    invoke-virtual {p3}, Ljava/nio/charset/CharsetDecoder;->maxCharsPerByte()F

    move-result v2

    float-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 254
    invoke-static {v0}, Lcom/alibaba/fastjson/c/f;->a(I)[C

    move-result-object v0

    .line 256
    invoke-static {p0, p1, p2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 257
    invoke-static {v0}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    move-result-object v2

    .line 258
    invoke-static {p3, v1, v2}, Lcom/alibaba/fastjson/c/d;->a(Ljava/nio/charset/CharsetDecoder;Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)V

    .line 260
    invoke-virtual {v2}, Ljava/nio/CharBuffer;->position()I

    move-result v1

    .line 262
    invoke-static {v0, v1, p4, p5}, Lcom/alibaba/fastjson/a;->parseObject([CILjava/lang/reflect/Type;[Lcom/alibaba/fastjson/a/d;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final varargs parseObject([BLjava/lang/reflect/Type;[Lcom/alibaba/fastjson/a/d;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Ljava/lang/reflect/Type;",
            "[",
            "Lcom/alibaba/fastjson/a/d;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 245
    const/4 v1, 0x0

    array-length v2, p0

    invoke-static {}, Lcom/alibaba/fastjson/c/f;->a()Ljava/nio/charset/CharsetDecoder;

    move-result-object v3

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/a;->parseObject([BIILjava/nio/charset/CharsetDecoder;Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson/a/d;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final varargs parseObject([CILjava/lang/reflect/Type;[Lcom/alibaba/fastjson/a/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([CI",
            "Ljava/lang/reflect/Type;",
            "[",
            "Lcom/alibaba/fastjson/a/d;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 267
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 268
    :cond_0
    const/4 v0, 0x0

    .line 283
    :goto_0
    return-object v0

    .line 271
    :cond_1
    sget v1, Lcom/alibaba/fastjson/a;->DEFAULT_PARSER_FEATURE:I

    .line 272
    array-length v2, p3

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_2

    aget-object v3, p3, v0

    .line 273
    const/4 v4, 0x1

    invoke-static {v1, v3, v4}, Lcom/alibaba/fastjson/a/d;->a(ILcom/alibaba/fastjson/a/d;Z)I

    move-result v1

    .line 272
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 276
    :cond_2
    new-instance v2, Lcom/alibaba/fastjson/a/c;

    invoke-static {}, Lcom/alibaba/fastjson/a/i;->a()Lcom/alibaba/fastjson/a/i;

    move-result-object v0

    invoke-direct {v2, p0, p1, v0, v1}, Lcom/alibaba/fastjson/a/c;-><init>([CILcom/alibaba/fastjson/a/i;I)V

    .line 277
    invoke-virtual {v2, p2}, Lcom/alibaba/fastjson/a/c;->a(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 279
    invoke-static {v2, v0}, Lcom/alibaba/fastjson/a;->handleResovleTask(Lcom/alibaba/fastjson/a/c;Ljava/lang/Object;)I

    .line 281
    invoke-virtual {v2}, Lcom/alibaba/fastjson/a/c;->l()V

    goto :goto_0
.end method

.method public static final toJSON(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 517
    invoke-static {}, Lcom/alibaba/fastjson/a/i;->a()Lcom/alibaba/fastjson/a/i;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/a;->toJSON(Ljava/lang/Object;Lcom/alibaba/fastjson/a/i;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final toJSON(Ljava/lang/Object;Lcom/alibaba/fastjson/a/i;)Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 522
    if-nez p0, :cond_1

    move-object p0, v0

    .line 594
    :cond_0
    :goto_0
    return-object p0

    .line 526
    :cond_1
    instance-of v0, p0, Lcom/alibaba/fastjson/a;

    if-eqz v0, :cond_2

    .line 527
    check-cast p0, Lcom/alibaba/fastjson/a;

    goto :goto_0

    .line 530
    :cond_2
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_4

    .line 531
    check-cast p0, Ljava/util/Map;

    .line 533
    new-instance v1, Lcom/alibaba/fastjson/e;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/e;-><init>(I)V

    .line 535
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 536
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 537
    invoke-static {v3}, Lcom/alibaba/fastjson/c/g;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 538
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/a;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 539
    invoke-virtual {v1, v3, v0}, Lcom/alibaba/fastjson/e;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    move-object p0, v1

    .line 542
    goto :goto_0

    .line 545
    :cond_4
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_6

    .line 546
    check-cast p0, Ljava/util/Collection;

    .line 548
    new-instance v0, Lcom/alibaba/fastjson/b;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/b;-><init>(I)V

    .line 550
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 551
    invoke-static {v2}, Lcom/alibaba/fastjson/a;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 552
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/b;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    move-object p0, v0

    .line 555
    goto :goto_0

    .line 558
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 560
    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 561
    check-cast p0, Ljava/lang/Enum;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 564
    :cond_7
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 565
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    .line 567
    new-instance v0, Lcom/alibaba/fastjson/b;

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/b;-><init>(I)V

    .line 569
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v2, :cond_8

    .line 570
    invoke-static {p0, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    .line 571
    invoke-static {v3}, Lcom/alibaba/fastjson/a;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 572
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/b;->add(Ljava/lang/Object;)Z

    .line 569
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_8
    move-object p0, v0

    .line 575
    goto/16 :goto_0

    .line 578
    :cond_9
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/a/i;->a(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 583
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0, v1}, Lcom/alibaba/fastjson/c/g;->a(Ljava/lang/Class;Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    .line 585
    new-instance v1, Lcom/alibaba/fastjson/e;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/e;-><init>(I)V

    .line 587
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/c/c;

    .line 588
    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson/c/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 589
    invoke-static {v3}, Lcom/alibaba/fastjson/a;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 591
    invoke-virtual {v0}, Lcom/alibaba/fastjson/c/c;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v3}, Lcom/alibaba/fastjson/e;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 595
    :catch_0
    move-exception v0

    .line 596
    new-instance v1, Lcom/alibaba/fastjson/d;

    const-string v2, "toJSON error"

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_a
    move-object p0, v1

    .line 594
    goto/16 :goto_0
.end method

.method public static final varargs toJSONBytes(Ljava/lang/Object;Lcom/alibaba/fastjson/b/an;[Lcom/alibaba/fastjson/b/ap;)[B
    .locals 6

    .prologue
    .line 461
    new-instance v1, Lcom/alibaba/fastjson/b/ao;

    invoke-direct {v1}, Lcom/alibaba/fastjson/b/ao;-><init>()V

    .line 464
    :try_start_0
    new-instance v2, Lcom/alibaba/fastjson/b/z;

    invoke-direct {v2, v1, p1}, Lcom/alibaba/fastjson/b/z;-><init>(Lcom/alibaba/fastjson/b/ao;Lcom/alibaba/fastjson/b/an;)V

    .line 465
    array-length v3, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, p2, v0

    .line 466
    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Lcom/alibaba/fastjson/b/z;->a(Lcom/alibaba/fastjson/b/ap;Z)V

    .line 465
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 469
    :cond_0
    invoke-virtual {v2, p0}, Lcom/alibaba/fastjson/b/z;->d(Ljava/lang/Object;)V

    .line 471
    const-string v0, "UTF-8"

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/b/ao;->a(Ljava/lang/String;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 473
    invoke-virtual {v1}, Lcom/alibaba/fastjson/b/ao;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/alibaba/fastjson/b/ao;->close()V

    throw v0
.end method

.method public static final varargs toJSONBytes(Ljava/lang/Object;[Lcom/alibaba/fastjson/b/ap;)[B
    .locals 6

    .prologue
    .line 413
    new-instance v1, Lcom/alibaba/fastjson/b/ao;

    invoke-direct {v1}, Lcom/alibaba/fastjson/b/ao;-><init>()V

    .line 416
    :try_start_0
    new-instance v2, Lcom/alibaba/fastjson/b/z;

    invoke-direct {v2, v1}, Lcom/alibaba/fastjson/b/z;-><init>(Lcom/alibaba/fastjson/b/ao;)V

    .line 417
    array-length v3, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, p1, v0

    .line 418
    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Lcom/alibaba/fastjson/b/z;->a(Lcom/alibaba/fastjson/b/ap;Z)V

    .line 417
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 421
    :cond_0
    invoke-virtual {v2, p0}, Lcom/alibaba/fastjson/b/z;->d(Ljava/lang/Object;)V

    .line 423
    const-string v0, "UTF-8"

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/b/ao;->a(Ljava/lang/String;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 425
    invoke-virtual {v1}, Lcom/alibaba/fastjson/b/ao;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/alibaba/fastjson/b/ao;->close()V

    throw v0
.end method

.method public static final toJSONString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 366
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/alibaba/fastjson/b/ap;

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/a;->toJSONString(Ljava/lang/Object;[Lcom/alibaba/fastjson/b/ap;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final varargs toJSONString(Ljava/lang/Object;Lcom/alibaba/fastjson/b/an;[Lcom/alibaba/fastjson/b/ap;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 430
    new-instance v1, Lcom/alibaba/fastjson/b/ao;

    invoke-direct {v1}, Lcom/alibaba/fastjson/b/ao;-><init>()V

    .line 433
    :try_start_0
    new-instance v2, Lcom/alibaba/fastjson/b/z;

    invoke-direct {v2, v1, p1}, Lcom/alibaba/fastjson/b/z;-><init>(Lcom/alibaba/fastjson/b/ao;Lcom/alibaba/fastjson/b/an;)V

    .line 434
    array-length v3, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, p2, v0

    .line 435
    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Lcom/alibaba/fastjson/b/z;->a(Lcom/alibaba/fastjson/b/ap;Z)V

    .line 434
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 438
    :cond_0
    invoke-virtual {v2, p0}, Lcom/alibaba/fastjson/b/z;->d(Ljava/lang/Object;)V

    .line 440
    invoke-virtual {v1}, Lcom/alibaba/fastjson/b/ao;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 442
    invoke-virtual {v1}, Lcom/alibaba/fastjson/b/ao;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/alibaba/fastjson/b/ao;->close()V

    throw v0
.end method

.method public static final toJSONString(Ljava/lang/Object;Z)Ljava/lang/String;
    .locals 3

    .prologue
    .line 478
    if-nez p1, :cond_0

    .line 479
    invoke-static {p0}, Lcom/alibaba/fastjson/a;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 482
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/alibaba/fastjson/b/ap;

    const/4 v1, 0x0

    sget-object v2, Lcom/alibaba/fastjson/b/ap;->PrettyFormat:Lcom/alibaba/fastjson/b/ap;

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/a;->toJSONString(Ljava/lang/Object;[Lcom/alibaba/fastjson/b/ap;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static final varargs toJSONString(Ljava/lang/Object;[Lcom/alibaba/fastjson/b/ap;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 370
    new-instance v1, Lcom/alibaba/fastjson/b/ao;

    invoke-direct {v1}, Lcom/alibaba/fastjson/b/ao;-><init>()V

    .line 373
    :try_start_0
    new-instance v2, Lcom/alibaba/fastjson/b/z;

    invoke-direct {v2, v1}, Lcom/alibaba/fastjson/b/z;-><init>(Lcom/alibaba/fastjson/b/ao;)V

    .line 374
    array-length v3, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, p1, v0

    .line 375
    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Lcom/alibaba/fastjson/b/z;->a(Lcom/alibaba/fastjson/b/ap;Z)V

    .line 374
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 378
    :cond_0
    invoke-virtual {v2, p0}, Lcom/alibaba/fastjson/b/z;->d(Ljava/lang/Object;)V

    .line 380
    invoke-virtual {v1}, Lcom/alibaba/fastjson/b/ao;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 382
    invoke-virtual {v1}, Lcom/alibaba/fastjson/b/ao;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/alibaba/fastjson/b/ao;->close()V

    throw v0
.end method

.method public static final varargs toJSONStringWithDateFormat(Ljava/lang/Object;Ljava/lang/String;[Lcom/alibaba/fastjson/b/ap;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 390
    new-instance v1, Lcom/alibaba/fastjson/b/ao;

    invoke-direct {v1}, Lcom/alibaba/fastjson/b/ao;-><init>()V

    .line 393
    :try_start_0
    new-instance v2, Lcom/alibaba/fastjson/b/z;

    invoke-direct {v2, v1}, Lcom/alibaba/fastjson/b/z;-><init>(Lcom/alibaba/fastjson/b/ao;)V

    .line 394
    array-length v3, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, p2, v0

    .line 395
    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Lcom/alibaba/fastjson/b/z;->a(Lcom/alibaba/fastjson/b/ap;Z)V

    .line 394
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 398
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson/b/ap;->WriteDateUseDateFormat:Lcom/alibaba/fastjson/b/ap;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lcom/alibaba/fastjson/b/z;->a(Lcom/alibaba/fastjson/b/ap;Z)V

    .line 400
    if-eqz p1, :cond_1

    .line 401
    invoke-virtual {v2, p1}, Lcom/alibaba/fastjson/b/z;->a(Ljava/lang/String;)V

    .line 404
    :cond_1
    invoke-virtual {v2, p0}, Lcom/alibaba/fastjson/b/z;->d(Ljava/lang/Object;)V

    .line 406
    invoke-virtual {v1}, Lcom/alibaba/fastjson/b/ao;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 408
    invoke-virtual {v1}, Lcom/alibaba/fastjson/b/ao;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/alibaba/fastjson/b/ao;->close()V

    throw v0
.end method

.method public static final varargs toJSONStringZ(Ljava/lang/Object;Lcom/alibaba/fastjson/b/an;[Lcom/alibaba/fastjson/b/ap;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 447
    new-instance v1, Lcom/alibaba/fastjson/b/ao;

    invoke-direct {v1, p2}, Lcom/alibaba/fastjson/b/ao;-><init>([Lcom/alibaba/fastjson/b/ap;)V

    .line 450
    :try_start_0
    new-instance v0, Lcom/alibaba/fastjson/b/z;

    invoke-direct {v0, v1, p1}, Lcom/alibaba/fastjson/b/z;-><init>(Lcom/alibaba/fastjson/b/ao;Lcom/alibaba/fastjson/b/an;)V

    .line 452
    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson/b/z;->d(Ljava/lang/Object;)V

    .line 454
    invoke-virtual {v1}, Lcom/alibaba/fastjson/b/ao;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 456
    invoke-virtual {v1}, Lcom/alibaba/fastjson/b/ao;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/alibaba/fastjson/b/ao;->close()V

    throw v0
.end method

.method public static final toJavaObject(Lcom/alibaba/fastjson/a;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/a;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 601
    invoke-static {}, Lcom/alibaba/fastjson/a/i;->a()Lcom/alibaba/fastjson/a/i;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/alibaba/fastjson/c/g;->a(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/a/i;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public toJSONString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 493
    new-instance v1, Lcom/alibaba/fastjson/b/ao;

    invoke-direct {v1}, Lcom/alibaba/fastjson/b/ao;-><init>()V

    .line 495
    :try_start_0
    new-instance v0, Lcom/alibaba/fastjson/b/z;

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/b/z;-><init>(Lcom/alibaba/fastjson/b/ao;)V

    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson/b/z;->d(Ljava/lang/Object;)V

    .line 496
    invoke-virtual {v1}, Lcom/alibaba/fastjson/b/ao;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 498
    invoke-virtual {v1}, Lcom/alibaba/fastjson/b/ao;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/alibaba/fastjson/b/ao;->close()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 489
    invoke-virtual {p0}, Lcom/alibaba/fastjson/a;->toJSONString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeJSONString(Ljava/lang/Appendable;)V
    .locals 4

    .prologue
    .line 503
    new-instance v1, Lcom/alibaba/fastjson/b/ao;

    invoke-direct {v1}, Lcom/alibaba/fastjson/b/ao;-><init>()V

    .line 505
    :try_start_0
    new-instance v0, Lcom/alibaba/fastjson/b/z;

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/b/z;-><init>(Lcom/alibaba/fastjson/b/ao;)V

    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson/b/z;->d(Ljava/lang/Object;)V

    .line 506
    invoke-virtual {v1}, Lcom/alibaba/fastjson/b/ao;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 510
    invoke-virtual {v1}, Lcom/alibaba/fastjson/b/ao;->close()V

    .line 512
    return-void

    .line 507
    :catch_0
    move-exception v0

    .line 508
    :try_start_1
    new-instance v2, Lcom/alibaba/fastjson/d;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 510
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/alibaba/fastjson/b/ao;->close()V

    throw v0
.end method
