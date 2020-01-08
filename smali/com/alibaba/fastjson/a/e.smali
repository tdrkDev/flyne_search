.class public Lcom/alibaba/fastjson/a/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final q:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<[C>;>;"
        }
    .end annotation
.end field

.field private static u:[Z

.field private static final v:[C

.field private static final w:[I


# instance fields
.field a:Z

.field public b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field private final f:[C

.field private g:I

.field private final h:I

.field private i:I

.field private j:C

.field private k:I

.field private l:[C

.field private m:I

.field private n:I

.field private o:I

.field private p:Lcom/alibaba/fastjson/a/g;

.field private r:I

.field private s:Ljava/util/Calendar;

.field private t:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 86
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/a/e;->q:Ljava/lang/ThreadLocal;

    .line 195
    const/16 v0, 0x100

    new-array v0, v0, [Z

    sput-object v0, Lcom/alibaba/fastjson/a/e;->u:[Z

    .line 197
    sget-object v0, Lcom/alibaba/fastjson/a/e;->u:[Z

    const/16 v1, 0x20

    aput-boolean v2, v0, v1

    .line 198
    sget-object v0, Lcom/alibaba/fastjson/a/e;->u:[Z

    const/16 v1, 0xa

    aput-boolean v2, v0, v1

    .line 199
    sget-object v0, Lcom/alibaba/fastjson/a/e;->u:[Z

    const/16 v1, 0xd

    aput-boolean v2, v0, v1

    .line 200
    sget-object v0, Lcom/alibaba/fastjson/a/e;->u:[Z

    const/16 v1, 0x9

    aput-boolean v2, v0, v1

    .line 201
    sget-object v0, Lcom/alibaba/fastjson/a/e;->u:[Z

    const/16 v1, 0xc

    aput-boolean v2, v0, v1

    .line 202
    sget-object v0, Lcom/alibaba/fastjson/a/e;->u:[Z

    const/16 v1, 0x8

    aput-boolean v2, v0, v1

    .line 803
    const-string v0, "\"@type\":\""

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/a/e;->v:[C

    .line 1533
    const/16 v0, 0x67

    new-array v0, v0, [I

    sput-object v0, Lcom/alibaba/fastjson/a/e;->w:[I

    .line 1536
    const/16 v0, 0x30

    :goto_0
    const/16 v1, 0x39

    if-gt v0, v1, :cond_0

    .line 1537
    sget-object v1, Lcom/alibaba/fastjson/a/e;->w:[I

    add-int/lit8 v2, v0, -0x30

    aput v2, v1, v0

    .line 1536
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1540
    :cond_0
    const/16 v0, 0x61

    :goto_1
    const/16 v1, 0x66

    if-gt v0, v1, :cond_1

    .line 1541
    sget-object v1, Lcom/alibaba/fastjson/a/e;->w:[I

    add-int/lit8 v2, v0, -0x61

    add-int/lit8 v2, v2, 0xa

    aput v2, v1, v0

    .line 1540
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1543
    :cond_1
    const/16 v0, 0x41

    :goto_2
    const/16 v1, 0x46

    if-gt v0, v1, :cond_2

    .line 1544
    sget-object v1, Lcom/alibaba/fastjson/a/e;->w:[I

    add-int/lit8 v2, v0, -0x41

    add-int/lit8 v2, v2, 0xa

    aput v2, v1, v0

    .line 1543
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1546
    :cond_2
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 95
    sget v0, Lcom/alibaba/fastjson/a;->DEFAULT_PARSER_FEATURE:I

    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/a/e;-><init>(Ljava/lang/String;I)V

    .line 96
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 99
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {p0, v0, v1, p2}, Lcom/alibaba/fastjson/a/e;-><init>([CII)V

    .line 100
    return-void
.end method

.method public constructor <init>([CII)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    sget-object v0, Lcom/alibaba/fastjson/a/g;->a:Lcom/alibaba/fastjson/a/g;

    iput-object v0, p0, Lcom/alibaba/fastjson/a/e;->p:Lcom/alibaba/fastjson/a/g;

    .line 88
    sget v0, Lcom/alibaba/fastjson/a;->DEFAULT_PARSER_FEATURE:I

    iput v0, p0, Lcom/alibaba/fastjson/a/e;->r:I

    .line 90
    iput-object v1, p0, Lcom/alibaba/fastjson/a/e;->s:Ljava/util/Calendar;

    .line 92
    iput-boolean v2, p0, Lcom/alibaba/fastjson/a/e;->t:Z

    .line 883
    iput v2, p0, Lcom/alibaba/fastjson/a/e;->b:I

    .line 1792
    const-string v0, "0000-00-00"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/alibaba/fastjson/a/e;->c:I

    .line 1793
    const-string v0, "0000-00-00T00:00:00"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/alibaba/fastjson/a/e;->d:I

    .line 1794
    const-string v0, "0000-00-00T00:00:00.000"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/alibaba/fastjson/a/e;->e:I

    .line 107
    iput p3, p0, Lcom/alibaba/fastjson/a/e;->r:I

    .line 109
    sget-object v0, Lcom/alibaba/fastjson/a/e;->q:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    .line 111
    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    iput-object v0, p0, Lcom/alibaba/fastjson/a/e;->l:[C

    .line 113
    sget-object v0, Lcom/alibaba/fastjson/a/e;->q:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/a/e;->l:[C

    if-nez v0, :cond_1

    .line 117
    const/16 v0, 0x40

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/alibaba/fastjson/a/e;->l:[C

    .line 120
    :cond_1
    iput p2, p0, Lcom/alibaba/fastjson/a/e;->i:I

    .line 122
    array-length v0, p1

    if-ne p2, v0, :cond_2

    .line 123
    array-length v0, p1

    if-lez v0, :cond_4

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-char v0, p1, v0

    invoke-static {v0}, Lcom/alibaba/fastjson/a/e;->a(C)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 124
    add-int/lit8 p2, p2, -0x1

    .line 131
    :cond_2
    :goto_0
    iput-object p1, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    .line 132
    iput p2, p0, Lcom/alibaba/fastjson/a/e;->h:I

    .line 133
    iget-object v0, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v1, p0, Lcom/alibaba/fastjson/a/e;->h:I

    const/16 v2, 0x1a

    aput-char v2, v0, v1

    .line 134
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/fastjson/a/e;->g:I

    .line 136
    iget-object v0, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    .line 137
    iget-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    const v1, 0xfeff

    if-ne v0, v1, :cond_3

    .line 138
    iget-object v0, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    .line 140
    :cond_3
    return-void

    .line 126
    :cond_4
    add-int/lit8 v0, p2, 0x1

    new-array v0, v0, [C

    .line 127
    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v0

    .line 128
    goto :goto_0
.end method

.method private varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/a/e;->o:I

    .line 182
    return-void
.end method

.method public static final a(C)Z
    .locals 1

    .prologue
    .line 174
    const/16 v0, 0x20

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    const/16 v0, 0xc

    if-eq p0, v0, :cond_0

    const/16 v0, 0x8

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final b(C)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1471
    iget v0, p0, Lcom/alibaba/fastjson/a/e;->m:I

    iget-object v1, p0, Lcom/alibaba/fastjson/a/e;->l:[C

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 1472
    iget-object v0, p0, Lcom/alibaba/fastjson/a/e;->l:[C

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    .line 1473
    iget-object v1, p0, Lcom/alibaba/fastjson/a/e;->l:[C

    iget-object v2, p0, Lcom/alibaba/fastjson/a/e;->l:[C

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1474
    iput-object v0, p0, Lcom/alibaba/fastjson/a/e;->l:[C

    .line 1476
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/a/e;->l:[C

    iget v1, p0, Lcom/alibaba/fastjson/a/e;->m:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/a/e;->m:I

    aput-char p1, v0, v1

    .line 1477
    return-void
.end method


# virtual methods
.method public A()I
    .locals 8

    .prologue
    const/4 v0, 0x0

    const v7, -0xccccccc

    .line 1687
    .line 1689
    iget v2, p0, Lcom/alibaba/fastjson/a/e;->n:I

    iget v1, p0, Lcom/alibaba/fastjson/a/e;->n:I

    iget v3, p0, Lcom/alibaba/fastjson/a/e;->m:I

    add-int v5, v1, v3

    .line 1694
    iget-object v1, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v3, p0, Lcom/alibaba/fastjson/a/e;->n:I

    aget-char v1, v1, v3

    const/16 v3, 0x2d

    if-ne v1, v3, :cond_2

    .line 1695
    const/4 v3, 0x1

    .line 1696
    const/high16 v1, -0x80000000

    .line 1697
    add-int/lit8 v2, v2, 0x1

    move v4, v3

    move v3, v1

    move v1, v2

    .line 1701
    :goto_0
    if-eqz v4, :cond_0

    .line 1702
    :cond_0
    if-ge v1, v5, :cond_9

    .line 1703
    sget-object v0, Lcom/alibaba/fastjson/a/e;->w:[I

    iget-object v6, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    add-int/lit8 v2, v1, 0x1

    aget-char v1, v6, v1

    aget v0, v0, v1

    .line 1704
    neg-int v0, v0

    .line 1706
    :goto_1
    if-ge v2, v5, :cond_8

    .line 1708
    iget-object v6, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    add-int/lit8 v1, v2, 0x1

    aget-char v2, v6, v2

    .line 1710
    const/16 v6, 0x4c

    if-eq v2, v6, :cond_1

    const/16 v6, 0x53

    if-eq v2, v6, :cond_1

    const/16 v6, 0x42

    if-ne v2, v6, :cond_3

    .line 1726
    :cond_1
    :goto_2
    if-eqz v4, :cond_7

    .line 1727
    iget v2, p0, Lcom/alibaba/fastjson/a/e;->n:I

    add-int/lit8 v2, v2, 0x1

    if-le v1, v2, :cond_6

    .line 1733
    :goto_3
    return v0

    .line 1699
    :cond_2
    const v1, -0x7fffffff

    move v3, v1

    move v4, v0

    move v1, v2

    goto :goto_0

    .line 1714
    :cond_3
    sget-object v6, Lcom/alibaba/fastjson/a/e;->w:[I

    aget v2, v6, v2

    .line 1716
    if-ge v0, v7, :cond_4

    .line 1717
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/a/e;->B()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1719
    :cond_4
    mul-int/lit8 v0, v0, 0xa

    .line 1720
    add-int v6, v3, v2

    if-ge v0, v6, :cond_5

    .line 1721
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/a/e;->B()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1723
    :cond_5
    sub-int/2addr v0, v2

    move v2, v1

    .line 1724
    goto :goto_1

    .line 1730
    :cond_6
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/a/e;->B()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1733
    :cond_7
    neg-int v0, v0

    goto :goto_3

    :cond_8
    move v1, v2

    goto :goto_2

    :cond_9
    move v2, v1

    goto :goto_1
.end method

.method public final B()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1738
    iget-object v0, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v1, p0, Lcom/alibaba/fastjson/a/e;->n:I

    iget v2, p0, Lcom/alibaba/fastjson/a/e;->m:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    aget-char v1, v0, v1

    .line 1740
    iget v0, p0, Lcom/alibaba/fastjson/a/e;->m:I

    .line 1741
    const/16 v2, 0x4c

    if-eq v1, v2, :cond_0

    const/16 v2, 0x53

    if-eq v1, v2, :cond_0

    const/16 v2, 0x42

    if-eq v1, v2, :cond_0

    const/16 v2, 0x46

    if-eq v1, v2, :cond_0

    const/16 v2, 0x44

    if-ne v1, v2, :cond_1

    .line 1742
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 1745
    :cond_1
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v3, p0, Lcom/alibaba/fastjson/a/e;->n:I

    invoke-direct {v1, v2, v3, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v1
.end method

.method public C()F
    .locals 1

    .prologue
    .line 1749
    invoke-virtual {p0}, Lcom/alibaba/fastjson/a/e;->B()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public D()D
    .locals 2

    .prologue
    .line 1753
    invoke-virtual {p0}, Lcom/alibaba/fastjson/a/e;->B()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public E()Ljava/math/BigDecimal;
    .locals 4

    .prologue
    .line 1774
    iget-object v0, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v1, p0, Lcom/alibaba/fastjson/a/e;->n:I

    iget v2, p0, Lcom/alibaba/fastjson/a/e;->m:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    aget-char v1, v0, v1

    .line 1776
    iget v0, p0, Lcom/alibaba/fastjson/a/e;->m:I

    .line 1777
    const/16 v2, 0x4c

    if-eq v1, v2, :cond_0

    const/16 v2, 0x53

    if-eq v1, v2, :cond_0

    const/16 v2, 0x42

    if-eq v1, v2, :cond_0

    const/16 v2, 0x46

    if-eq v1, v2, :cond_0

    const/16 v2, 0x44

    if-ne v1, v2, :cond_1

    .line 1778
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 1781
    :cond_1
    new-instance v1, Ljava/math/BigDecimal;

    iget-object v2, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v3, p0, Lcom/alibaba/fastjson/a/e;->n:I

    invoke-direct {v1, v2, v3, v0}, Ljava/math/BigDecimal;-><init>([CII)V

    return-object v1
.end method

.method public F()Z
    .locals 11

    .prologue
    .line 1797
    iget v0, p0, Lcom/alibaba/fastjson/a/e;->h:I

    iget v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    sub-int/2addr v0, v1

    .line 1799
    iget v1, p0, Lcom/alibaba/fastjson/a/e;->c:I

    if-ge v0, v1, :cond_0

    .line 1800
    const/4 v0, 0x0

    .line 1982
    :goto_0
    return v0

    .line 1803
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v2, p0, Lcom/alibaba/fastjson/a/e;->g:I

    aget-char v1, v1, v2

    .line 1804
    iget-object v2, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v3, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v3, v3, 0x1

    aget-char v2, v2, v3

    .line 1805
    iget-object v3, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v4, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v4, v4, 0x2

    aget-char v3, v3, v4

    .line 1806
    iget-object v4, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v5, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v5, v5, 0x3

    aget-char v4, v4, v5

    .line 1807
    const/16 v5, 0x31

    if-eq v1, v5, :cond_1

    const/16 v5, 0x32

    if-eq v1, v5, :cond_1

    .line 1808
    const/4 v0, 0x0

    goto :goto_0

    .line 1810
    :cond_1
    const/16 v5, 0x30

    if-lt v2, v5, :cond_2

    const/16 v5, 0x39

    if-le v2, v5, :cond_3

    .line 1811
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1813
    :cond_3
    const/16 v5, 0x30

    if-lt v3, v5, :cond_4

    const/16 v5, 0x39

    if-le v3, v5, :cond_5

    .line 1814
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 1816
    :cond_5
    const/16 v5, 0x30

    if-lt v4, v5, :cond_6

    const/16 v5, 0x39

    if-le v4, v5, :cond_7

    .line 1817
    :cond_6
    const/4 v0, 0x0

    goto :goto_0

    .line 1820
    :cond_7
    iget-object v5, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v6, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v6, v6, 0x4

    aget-char v5, v5, v6

    const/16 v6, 0x2d

    if-eq v5, v6, :cond_8

    .line 1821
    const/4 v0, 0x0

    goto :goto_0

    .line 1824
    :cond_8
    iget-object v5, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v6, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v6, v6, 0x5

    aget-char v5, v5, v6

    .line 1825
    iget-object v6, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v7, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v7, v7, 0x6

    aget-char v6, v6, v7

    .line 1826
    const/16 v7, 0x30

    if-ne v5, v7, :cond_a

    .line 1827
    const/16 v7, 0x31

    if-lt v6, v7, :cond_9

    const/16 v7, 0x39

    if-le v6, v7, :cond_c

    .line 1828
    :cond_9
    const/4 v0, 0x0

    goto :goto_0

    .line 1830
    :cond_a
    const/16 v7, 0x31

    if-ne v5, v7, :cond_b

    .line 1831
    const/16 v7, 0x30

    if-eq v6, v7, :cond_c

    const/16 v7, 0x31

    if-eq v6, v7, :cond_c

    const/16 v7, 0x32

    if-eq v6, v7, :cond_c

    .line 1832
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1835
    :cond_b
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1838
    :cond_c
    iget-object v7, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v8, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v8, v8, 0x7

    aget-char v7, v7, v8

    const/16 v8, 0x2d

    if-eq v7, v8, :cond_d

    .line 1839
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1842
    :cond_d
    iget-object v7, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v8, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v8, v8, 0x8

    aget-char v7, v7, v8

    .line 1843
    iget-object v8, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v9, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v9, v9, 0x9

    aget-char v8, v8, v9

    .line 1844
    const/16 v9, 0x30

    if-ne v7, v9, :cond_f

    .line 1845
    const/16 v9, 0x31

    if-lt v8, v9, :cond_e

    const/16 v9, 0x39

    if-le v8, v9, :cond_14

    .line 1846
    :cond_e
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1848
    :cond_f
    const/16 v9, 0x31

    if-eq v7, v9, :cond_10

    const/16 v9, 0x32

    if-ne v7, v9, :cond_12

    .line 1849
    :cond_10
    const/16 v9, 0x30

    if-lt v8, v9, :cond_11

    const/16 v9, 0x39

    if-le v8, v9, :cond_14

    .line 1850
    :cond_11
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1852
    :cond_12
    const/16 v9, 0x33

    if-ne v7, v9, :cond_13

    .line 1853
    const/16 v9, 0x30

    if-eq v8, v9, :cond_14

    const/16 v9, 0x31

    if-eq v8, v9, :cond_14

    .line 1854
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1857
    :cond_13
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1860
    :cond_14
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    .line 1861
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v10

    invoke-static {v10, v9}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v9

    iput-object v9, p0, Lcom/alibaba/fastjson/a/e;->s:Ljava/util/Calendar;

    .line 1862
    sget-object v9, Lcom/alibaba/fastjson/a/e;->w:[I

    aget v1, v9, v1

    mul-int/lit16 v1, v1, 0x3e8

    sget-object v9, Lcom/alibaba/fastjson/a/e;->w:[I

    aget v2, v9, v2

    mul-int/lit8 v2, v2, 0x64

    add-int/2addr v1, v2

    sget-object v2, Lcom/alibaba/fastjson/a/e;->w:[I

    aget v2, v2, v3

    mul-int/lit8 v2, v2, 0xa

    add-int/2addr v1, v2

    sget-object v2, Lcom/alibaba/fastjson/a/e;->w:[I

    aget v2, v2, v4

    add-int/2addr v1, v2

    .line 1863
    sget-object v2, Lcom/alibaba/fastjson/a/e;->w:[I

    aget v2, v2, v5

    mul-int/lit8 v2, v2, 0xa

    sget-object v3, Lcom/alibaba/fastjson/a/e;->w:[I

    aget v3, v3, v6

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    .line 1864
    sget-object v3, Lcom/alibaba/fastjson/a/e;->w:[I

    aget v3, v3, v7

    mul-int/lit8 v3, v3, 0xa

    sget-object v4, Lcom/alibaba/fastjson/a/e;->w:[I

    aget v4, v4, v8

    add-int/2addr v3, v4

    .line 1865
    iget-object v4, p0, Lcom/alibaba/fastjson/a/e;->s:Ljava/util/Calendar;

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v1}, Ljava/util/Calendar;->set(II)V

    .line 1866
    iget-object v1, p0, Lcom/alibaba/fastjson/a/e;->s:Ljava/util/Calendar;

    const/4 v4, 0x2

    invoke-virtual {v1, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 1867
    iget-object v1, p0, Lcom/alibaba/fastjson/a/e;->s:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 1869
    iget-object v1, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v2, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v2, v2, 0xa

    aget-char v1, v1, v2

    .line 1870
    const/16 v2, 0x54

    if-ne v1, v2, :cond_15

    .line 1871
    iget v1, p0, Lcom/alibaba/fastjson/a/e;->d:I

    if-ge v0, v1, :cond_18

    .line 1872
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1874
    :cond_15
    const/16 v0, 0x22

    if-eq v1, v0, :cond_16

    const/16 v0, 0x1a

    if-ne v1, v0, :cond_17

    .line 1875
    :cond_16
    iget-object v0, p0, Lcom/alibaba/fastjson/a/e;->s:Ljava/util/Calendar;

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 1876
    iget-object v0, p0, Lcom/alibaba/fastjson/a/e;->s:Ljava/util/Calendar;

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 1877
    iget-object v0, p0, Lcom/alibaba/fastjson/a/e;->s:Ljava/util/Calendar;

    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 1878
    iget-object v0, p0, Lcom/alibaba/fastjson/a/e;->s:Ljava/util/Calendar;

    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 1880
    iget-object v0, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v1, v1, 0xa

    iput v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    .line 1882
    const/4 v0, 0x5

    iput v0, p0, Lcom/alibaba/fastjson/a/e;->o:I

    .line 1883
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1885
    :cond_17
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1888
    :cond_18
    iget-object v1, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v2, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v2, v2, 0xb

    aget-char v1, v1, v2

    .line 1889
    iget-object v2, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v3, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v3, v3, 0xc

    aget-char v2, v2, v3

    .line 1890
    const/16 v3, 0x30

    if-ne v1, v3, :cond_1a

    .line 1891
    const/16 v3, 0x30

    if-lt v2, v3, :cond_19

    const/16 v3, 0x39

    if-le v2, v3, :cond_1f

    .line 1892
    :cond_19
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1894
    :cond_1a
    const/16 v3, 0x31

    if-ne v1, v3, :cond_1c

    .line 1895
    const/16 v3, 0x30

    if-lt v2, v3, :cond_1b

    const/16 v3, 0x39

    if-le v2, v3, :cond_1f

    .line 1896
    :cond_1b
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1898
    :cond_1c
    const/16 v3, 0x32

    if-ne v1, v3, :cond_1e

    .line 1899
    const/16 v3, 0x30

    if-lt v2, v3, :cond_1d

    const/16 v3, 0x34

    if-le v2, v3, :cond_1f

    .line 1900
    :cond_1d
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1903
    :cond_1e
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1906
    :cond_1f
    iget-object v3, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v4, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v4, v4, 0xd

    aget-char v3, v3, v4

    const/16 v4, 0x3a

    if-eq v3, v4, :cond_20

    .line 1907
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1910
    :cond_20
    iget-object v3, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v4, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v4, v4, 0xe

    aget-char v3, v3, v4

    .line 1911
    iget-object v4, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v5, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    .line 1912
    const/16 v5, 0x30

    if-lt v3, v5, :cond_22

    const/16 v5, 0x35

    if-gt v3, v5, :cond_22

    .line 1913
    const/16 v5, 0x30

    if-lt v4, v5, :cond_21

    const/16 v5, 0x39

    if-le v4, v5, :cond_24

    .line 1914
    :cond_21
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1916
    :cond_22
    const/16 v5, 0x36

    if-ne v3, v5, :cond_23

    .line 1917
    const/16 v5, 0x30

    if-eq v4, v5, :cond_24

    .line 1918
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1921
    :cond_23
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1924
    :cond_24
    iget-object v5, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v6, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v6, v6, 0x10

    aget-char v5, v5, v6

    const/16 v6, 0x3a

    if-eq v5, v6, :cond_25

    .line 1925
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1928
    :cond_25
    iget-object v5, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v6, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v6, v6, 0x11

    aget-char v5, v5, v6

    .line 1929
    iget-object v6, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v7, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v7, v7, 0x12

    aget-char v6, v6, v7

    .line 1930
    const/16 v7, 0x30

    if-lt v5, v7, :cond_27

    const/16 v7, 0x35

    if-gt v5, v7, :cond_27

    .line 1931
    const/16 v7, 0x30

    if-lt v6, v7, :cond_26

    const/16 v7, 0x39

    if-le v6, v7, :cond_29

    .line 1932
    :cond_26
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1934
    :cond_27
    const/16 v7, 0x36

    if-ne v5, v7, :cond_28

    .line 1935
    const/16 v7, 0x30

    if-eq v6, v7, :cond_29

    .line 1936
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1939
    :cond_28
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1942
    :cond_29
    sget-object v7, Lcom/alibaba/fastjson/a/e;->w:[I

    aget v1, v7, v1

    mul-int/lit8 v1, v1, 0xa

    sget-object v7, Lcom/alibaba/fastjson/a/e;->w:[I

    aget v2, v7, v2

    add-int/2addr v1, v2

    .line 1943
    sget-object v2, Lcom/alibaba/fastjson/a/e;->w:[I

    aget v2, v2, v3

    mul-int/lit8 v2, v2, 0xa

    sget-object v3, Lcom/alibaba/fastjson/a/e;->w:[I

    aget v3, v3, v4

    add-int/2addr v2, v3

    .line 1944
    sget-object v3, Lcom/alibaba/fastjson/a/e;->w:[I

    aget v3, v3, v5

    mul-int/lit8 v3, v3, 0xa

    sget-object v4, Lcom/alibaba/fastjson/a/e;->w:[I

    aget v4, v4, v6

    add-int/2addr v3, v4

    .line 1945
    iget-object v4, p0, Lcom/alibaba/fastjson/a/e;->s:Ljava/util/Calendar;

    const/16 v5, 0xb

    invoke-virtual {v4, v5, v1}, Ljava/util/Calendar;->set(II)V

    .line 1946
    iget-object v1, p0, Lcom/alibaba/fastjson/a/e;->s:Ljava/util/Calendar;

    const/16 v4, 0xc

    invoke-virtual {v1, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 1947
    iget-object v1, p0, Lcom/alibaba/fastjson/a/e;->s:Ljava/util/Calendar;

    const/16 v2, 0xd

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 1949
    iget-object v1, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v2, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v2, v2, 0x13

    aget-char v1, v1, v2

    .line 1950
    const/16 v2, 0x2e

    if-ne v1, v2, :cond_2a

    .line 1951
    iget v1, p0, Lcom/alibaba/fastjson/a/e;->e:I

    if-ge v0, v1, :cond_2b

    .line 1952
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1955
    :cond_2a
    iget-object v0, p0, Lcom/alibaba/fastjson/a/e;->s:Ljava/util/Calendar;

    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 1957
    iget-object v0, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v1, v1, 0x13

    iput v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    .line 1959
    const/4 v0, 0x5

    iput v0, p0, Lcom/alibaba/fastjson/a/e;->o:I

    .line 1960
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1963
    :cond_2b
    iget-object v0, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v1, v1, 0x14

    aget-char v0, v0, v1

    .line 1964
    iget-object v1, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v2, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v2, v2, 0x15

    aget-char v1, v1, v2

    .line 1965
    iget-object v2, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v3, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v3, v3, 0x16

    aget-char v2, v2, v3

    .line 1966
    const/16 v3, 0x30

    if-lt v0, v3, :cond_2c

    const/16 v3, 0x39

    if-le v0, v3, :cond_2d

    .line 1967
    :cond_2c
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1969
    :cond_2d
    const/16 v3, 0x30

    if-lt v1, v3, :cond_2e

    const/16 v3, 0x39

    if-le v1, v3, :cond_2f

    .line 1970
    :cond_2e
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1972
    :cond_2f
    const/16 v3, 0x30

    if-lt v2, v3, :cond_30

    const/16 v3, 0x39

    if-le v2, v3, :cond_31

    .line 1973
    :cond_30
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1976
    :cond_31
    sget-object v3, Lcom/alibaba/fastjson/a/e;->w:[I

    aget v0, v3, v0

    mul-int/lit8 v0, v0, 0x64

    sget-object v3, Lcom/alibaba/fastjson/a/e;->w:[I

    aget v1, v3, v1

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    sget-object v1, Lcom/alibaba/fastjson/a/e;->w:[I

    aget v1, v1, v2

    add-int/2addr v0, v1

    .line 1977
    iget-object v1, p0, Lcom/alibaba/fastjson/a/e;->s:Ljava/util/Calendar;

    const/16 v2, 0xe

    invoke-virtual {v1, v2, v0}, Ljava/util/Calendar;->set(II)V

    .line 1979
    iget-object v0, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v1, v1, 0x17

    iput v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    .line 1981
    const/4 v0, 0x5

    iput v0, p0, Lcom/alibaba/fastjson/a/e;->o:I

    .line 1982
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public G()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 1986
    iget-object v0, p0, Lcom/alibaba/fastjson/a/e;->s:Ljava/util/Calendar;

    return-object v0
.end method

.method public H()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1990
    iget v1, p0, Lcom/alibaba/fastjson/a/e;->o:I

    sparse-switch v1, :sswitch_data_0

    .line 1998
    :goto_0
    :sswitch_0
    return v0

    .line 1992
    :sswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1990
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0xd -> :sswitch_0
        0x14 -> :sswitch_1
    .end sparse-switch
.end method

.method public I()V
    .locals 3

    .prologue
    .line 2003
    iget-object v0, p0, Lcom/alibaba/fastjson/a/e;->l:[C

    array-length v0, v0

    const/16 v1, 0x2000

    if-gt v0, v1, :cond_0

    .line 2004
    sget-object v0, Lcom/alibaba/fastjson/a/e;->q:Ljava/lang/ThreadLocal;

    new-instance v1, Ljava/lang/ref/SoftReference;

    iget-object v2, p0, Lcom/alibaba/fastjson/a/e;->l:[C

    invoke-direct {v1, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 2007
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/fastjson/a/e;->l:[C

    .line 2008
    return-void
.end method

.method public final a(Lcom/alibaba/fastjson/a/j;)Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0x6c

    const/4 v2, 0x1

    .line 753
    sget-object v1, Lcom/alibaba/fastjson/a/b;->b:[Z

    .line 754
    iget-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    .line 756
    iget-char v3, p0, Lcom/alibaba/fastjson/a/e;->j:C

    array-length v4, v1

    if-ge v3, v4, :cond_0

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_1

    :cond_0
    move v1, v2

    .line 757
    :goto_0
    if-nez v1, :cond_2

    .line 758
    new-instance v0, Lcom/alibaba/fastjson/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal identifier : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-char v2, p0, Lcom/alibaba/fastjson/a/e;->j:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 756
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 761
    :cond_2
    sget-object v1, Lcom/alibaba/fastjson/a/b;->c:[Z

    .line 765
    iget v3, p0, Lcom/alibaba/fastjson/a/e;->g:I

    iput v3, p0, Lcom/alibaba/fastjson/a/e;->n:I

    .line 766
    iput v2, p0, Lcom/alibaba/fastjson/a/e;->m:I

    .line 769
    :goto_1
    iget-object v2, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v3, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/alibaba/fastjson/a/e;->g:I

    aget-char v2, v2, v3

    .line 771
    array-length v3, v1

    if-ge v2, v3, :cond_3

    .line 772
    aget-boolean v3, v1, v2

    if-nez v3, :cond_3

    .line 783
    iget-object v1, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v2, p0, Lcom/alibaba/fastjson/a/e;->g:I

    aget-char v1, v1, v2

    iput-char v1, p0, Lcom/alibaba/fastjson/a/e;->j:C

    .line 784
    const/16 v1, 0x12

    iput v1, p0, Lcom/alibaba/fastjson/a/e;->o:I

    .line 787
    iget v1, p0, Lcom/alibaba/fastjson/a/e;->m:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    const v1, 0x33c587

    if-ne v0, v1, :cond_4

    iget-object v1, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v2, p0, Lcom/alibaba/fastjson/a/e;->n:I

    aget-char v1, v1, v2

    const/16 v2, 0x6e

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v2, p0, Lcom/alibaba/fastjson/a/e;->n:I

    add-int/lit8 v2, v2, 0x1

    aget-char v1, v1, v2

    const/16 v2, 0x75

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v2, p0, Lcom/alibaba/fastjson/a/e;->n:I

    add-int/lit8 v2, v2, 0x2

    aget-char v1, v1, v2

    if-ne v1, v5, :cond_4

    iget-object v1, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v2, p0, Lcom/alibaba/fastjson/a/e;->n:I

    add-int/lit8 v2, v2, 0x3

    aget-char v1, v1, v2

    if-ne v1, v5, :cond_4

    .line 789
    const/4 v0, 0x0

    .line 792
    :goto_2
    return-object v0

    .line 777
    :cond_3
    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v2

    .line 779
    iget v2, p0, Lcom/alibaba/fastjson/a/e;->m:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/a/e;->m:I

    goto :goto_1

    .line 792
    :cond_4
    iget-object v1, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v2, p0, Lcom/alibaba/fastjson/a/e;->n:I

    iget v3, p0, Lcom/alibaba/fastjson/a/e;->m:I

    invoke-virtual {p1, v1, v2, v3, v0}, Lcom/alibaba/fastjson/a/j;->a([CIII)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method public final a(Lcom/alibaba/fastjson/a/j;C)Ljava/lang/String;
    .locals 12

    .prologue
    const/16 v11, 0x5c

    const/4 v10, 0x4

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 1105
    .line 1107
    iget v0, p0, Lcom/alibaba/fastjson/a/e;->g:I

    iput v0, p0, Lcom/alibaba/fastjson/a/e;->n:I

    .line 1108
    iput v1, p0, Lcom/alibaba/fastjson/a/e;->m:I

    move v0, v1

    move v2, v1

    .line 1112
    :goto_0
    iget-object v4, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v5, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/alibaba/fastjson/a/e;->g:I

    aget-char v4, v4, v5

    .line 1114
    if-ne v4, p2, :cond_0

    .line 1205
    iput v10, p0, Lcom/alibaba/fastjson/a/e;->o:I

    .line 1206
    iget-object v3, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v4, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/alibaba/fastjson/a/e;->g:I

    aget-char v3, v3, v4

    iput-char v3, p0, Lcom/alibaba/fastjson/a/e;->j:C

    .line 1208
    if-nez v0, :cond_8

    .line 1209
    iget-object v0, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v1, p0, Lcom/alibaba/fastjson/a/e;->n:I

    add-int/lit8 v1, v1, 0x1

    iget v3, p0, Lcom/alibaba/fastjson/a/e;->m:I

    invoke-virtual {p1, v0, v1, v3, v2}, Lcom/alibaba/fastjson/a/j;->a([CIII)Ljava/lang/String;

    move-result-object v0

    .line 1211
    :goto_1
    return-object v0

    .line 1118
    :cond_0
    const/16 v5, 0x1a

    if-ne v4, v5, :cond_1

    .line 1119
    new-instance v0, Lcom/alibaba/fastjson/d;

    const-string v1, "unclosed.str"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1122
    :cond_1
    if-ne v4, v11, :cond_5

    .line 1123
    if-nez v0, :cond_4

    .line 1126
    iget v0, p0, Lcom/alibaba/fastjson/a/e;->m:I

    iget-object v4, p0, Lcom/alibaba/fastjson/a/e;->l:[C

    array-length v4, v4

    if-lt v0, v4, :cond_3

    .line 1127
    iget-object v0, p0, Lcom/alibaba/fastjson/a/e;->l:[C

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    .line 1128
    iget v4, p0, Lcom/alibaba/fastjson/a/e;->m:I

    if-le v4, v0, :cond_2

    .line 1129
    iget v0, p0, Lcom/alibaba/fastjson/a/e;->m:I

    .line 1131
    :cond_2
    new-array v0, v0, [C

    .line 1132
    iget-object v4, p0, Lcom/alibaba/fastjson/a/e;->l:[C

    iget-object v5, p0, Lcom/alibaba/fastjson/a/e;->l:[C

    array-length v5, v5

    invoke-static {v4, v1, v0, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1133
    iput-object v0, p0, Lcom/alibaba/fastjson/a/e;->l:[C

    .line 1136
    :cond_3
    iget-object v0, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v4, p0, Lcom/alibaba/fastjson/a/e;->n:I

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lcom/alibaba/fastjson/a/e;->l:[C

    iget v6, p0, Lcom/alibaba/fastjson/a/e;->m:I

    invoke-static {v0, v4, v5, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v0, v3

    .line 1139
    :cond_4
    iget-object v4, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v5, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/alibaba/fastjson/a/e;->g:I

    aget-char v4, v4, v5

    .line 1141
    sparse-switch v4, :sswitch_data_0

    .line 1185
    iput-char v4, p0, Lcom/alibaba/fastjson/a/e;->j:C

    .line 1186
    new-instance v0, Lcom/alibaba/fastjson/d;

    const-string v1, "unclosed.str.lit"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1143
    :sswitch_0
    mul-int/lit8 v2, v2, 0x1f

    add-int/lit8 v2, v2, 0x22

    .line 1144
    const/16 v4, 0x22

    invoke-direct {p0, v4}, Lcom/alibaba/fastjson/a/e;->b(C)V

    goto/16 :goto_0

    .line 1147
    :sswitch_1
    mul-int/lit8 v2, v2, 0x1f

    add-int/lit8 v2, v2, 0x5c

    .line 1148
    invoke-direct {p0, v11}, Lcom/alibaba/fastjson/a/e;->b(C)V

    goto/16 :goto_0

    .line 1151
    :sswitch_2
    mul-int/lit8 v2, v2, 0x1f

    add-int/lit8 v2, v2, 0x2f

    .line 1152
    const/16 v4, 0x2f

    invoke-direct {p0, v4}, Lcom/alibaba/fastjson/a/e;->b(C)V

    goto/16 :goto_0

    .line 1155
    :sswitch_3
    mul-int/lit8 v2, v2, 0x1f

    add-int/lit8 v2, v2, 0x8

    .line 1156
    const/16 v4, 0x8

    invoke-direct {p0, v4}, Lcom/alibaba/fastjson/a/e;->b(C)V

    goto/16 :goto_0

    .line 1160
    :sswitch_4
    mul-int/lit8 v2, v2, 0x1f

    add-int/lit8 v2, v2, 0xc

    .line 1161
    const/16 v4, 0xc

    invoke-direct {p0, v4}, Lcom/alibaba/fastjson/a/e;->b(C)V

    goto/16 :goto_0

    .line 1164
    :sswitch_5
    mul-int/lit8 v2, v2, 0x1f

    add-int/lit8 v2, v2, 0xa

    .line 1165
    const/16 v4, 0xa

    invoke-direct {p0, v4}, Lcom/alibaba/fastjson/a/e;->b(C)V

    goto/16 :goto_0

    .line 1168
    :sswitch_6
    mul-int/lit8 v2, v2, 0x1f

    add-int/lit8 v2, v2, 0xd

    .line 1169
    const/16 v4, 0xd

    invoke-direct {p0, v4}, Lcom/alibaba/fastjson/a/e;->b(C)V

    goto/16 :goto_0

    .line 1172
    :sswitch_7
    mul-int/lit8 v2, v2, 0x1f

    add-int/lit8 v2, v2, 0x9

    .line 1173
    const/16 v4, 0x9

    invoke-direct {p0, v4}, Lcom/alibaba/fastjson/a/e;->b(C)V

    goto/16 :goto_0

    .line 1176
    :sswitch_8
    iget-object v4, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v5, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/alibaba/fastjson/a/e;->g:I

    aget-char v4, v4, v5

    .line 1177
    iget-object v5, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v6, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/alibaba/fastjson/a/e;->g:I

    aget-char v5, v5, v6

    .line 1178
    iget-object v6, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v7, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/alibaba/fastjson/a/e;->g:I

    aget-char v6, v6, v7

    .line 1179
    iget-object v7, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v8, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/alibaba/fastjson/a/e;->g:I

    aget-char v7, v7, v8

    .line 1180
    new-instance v8, Ljava/lang/String;

    new-array v9, v10, [C

    aput-char v4, v9, v1

    aput-char v5, v9, v3

    const/4 v4, 0x2

    aput-char v6, v9, v4

    const/4 v4, 0x3

    aput-char v7, v9, v4

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([C)V

    const/16 v4, 0x10

    invoke-static {v8, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    .line 1181
    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, v4

    .line 1182
    int-to-char v4, v4

    invoke-direct {p0, v4}, Lcom/alibaba/fastjson/a/e;->b(C)V

    goto/16 :goto_0

    .line 1191
    :cond_5
    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, v4

    .line 1193
    if-nez v0, :cond_6

    .line 1194
    iget v4, p0, Lcom/alibaba/fastjson/a/e;->m:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/alibaba/fastjson/a/e;->m:I

    goto/16 :goto_0

    .line 1198
    :cond_6
    iget v5, p0, Lcom/alibaba/fastjson/a/e;->m:I

    iget-object v6, p0, Lcom/alibaba/fastjson/a/e;->l:[C

    array-length v6, v6

    if-ne v5, v6, :cond_7

    .line 1199
    invoke-direct {p0, v4}, Lcom/alibaba/fastjson/a/e;->b(C)V

    goto/16 :goto_0

    .line 1201
    :cond_7
    iget-object v5, p0, Lcom/alibaba/fastjson/a/e;->l:[C

    iget v6, p0, Lcom/alibaba/fastjson/a/e;->m:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/alibaba/fastjson/a/e;->m:I

    aput-char v4, v5, v6

    goto/16 :goto_0

    .line 1211
    :cond_8
    iget-object v0, p0, Lcom/alibaba/fastjson/a/e;->l:[C

    iget v3, p0, Lcom/alibaba/fastjson/a/e;->m:I

    invoke-virtual {p1, v0, v1, v3, v2}, Lcom/alibaba/fastjson/a/j;->a([CIII)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 1141
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x2f -> :sswitch_2
        0x46 -> :sswitch_4
        0x5c -> :sswitch_1
        0x62 -> :sswitch_3
        0x66 -> :sswitch_4
        0x6e -> :sswitch_5
        0x72 -> :sswitch_6
        0x74 -> :sswitch_7
        0x75 -> :sswitch_8
    .end sparse-switch
.end method

.method public final a(I)V
    .locals 7

    .prologue
    const/16 v6, 0x30

    const/16 v5, 0x22

    const/16 v4, 0xe

    const/16 v3, 0xc

    const/4 v2, 0x0

    .line 239
    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    const/16 v1, 0x3a

    if-ne v0, v1, :cond_0

    .line 240
    iget-object v0, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    .line 253
    :goto_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 254
    iget-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    if-lt v0, v6, :cond_2

    iget-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    const/16 v1, 0x39

    if-gt v0, v1, :cond_2

    .line 255
    iput v2, p0, Lcom/alibaba/fastjson/a/e;->m:I

    .line 256
    iget v0, p0, Lcom/alibaba/fastjson/a/e;->g:I

    iput v0, p0, Lcom/alibaba/fastjson/a/e;->k:I

    .line 257
    invoke-virtual {p0}, Lcom/alibaba/fastjson/a/e;->u()V

    .line 315
    :goto_2
    return-void

    .line 244
    :cond_0
    iget-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    invoke-static {v0}, Lcom/alibaba/fastjson/a/e;->a(C)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 245
    iget-object v0, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    goto :goto_0

    .line 249
    :cond_1
    new-instance v0, Lcom/alibaba/fastjson/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not match \':\', actual "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-char v2, p0, Lcom/alibaba/fastjson/a/e;->j:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 261
    :cond_2
    iget-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    if-ne v0, v5, :cond_9

    .line 262
    iput v2, p0, Lcom/alibaba/fastjson/a/e;->m:I

    .line 263
    iget v0, p0, Lcom/alibaba/fastjson/a/e;->g:I

    iput v0, p0, Lcom/alibaba/fastjson/a/e;->k:I

    .line 264
    invoke-virtual {p0}, Lcom/alibaba/fastjson/a/e;->m()V

    goto :goto_2

    .line 267
    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    .line 268
    iget-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    if-ne v0, v5, :cond_4

    .line 269
    iput v2, p0, Lcom/alibaba/fastjson/a/e;->m:I

    .line 270
    iget v0, p0, Lcom/alibaba/fastjson/a/e;->g:I

    iput v0, p0, Lcom/alibaba/fastjson/a/e;->k:I

    .line 271
    invoke-virtual {p0}, Lcom/alibaba/fastjson/a/e;->m()V

    goto :goto_2

    .line 275
    :cond_4
    iget-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    if-lt v0, v6, :cond_9

    iget-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    const/16 v1, 0x39

    if-gt v0, v1, :cond_9

    .line 276
    iput v2, p0, Lcom/alibaba/fastjson/a/e;->m:I

    .line 277
    iget v0, p0, Lcom/alibaba/fastjson/a/e;->g:I

    iput v0, p0, Lcom/alibaba/fastjson/a/e;->k:I

    .line 278
    invoke-virtual {p0}, Lcom/alibaba/fastjson/a/e;->u()V

    goto :goto_2

    .line 282
    :cond_5
    if-ne p1, v3, :cond_7

    .line 283
    iget-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    const/16 v1, 0x7b

    if-ne v0, v1, :cond_6

    .line 284
    iput v3, p0, Lcom/alibaba/fastjson/a/e;->o:I

    .line 285
    iget-object v0, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    goto :goto_2

    .line 288
    :cond_6
    iget-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    const/16 v1, 0x5b

    if-ne v0, v1, :cond_9

    .line 289
    iput v4, p0, Lcom/alibaba/fastjson/a/e;->o:I

    .line 290
    iget-object v0, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    goto/16 :goto_2

    .line 293
    :cond_7
    if-ne p1, v4, :cond_9

    .line 294
    iget-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    const/16 v1, 0x5b

    if-ne v0, v1, :cond_8

    .line 295
    iput v4, p0, Lcom/alibaba/fastjson/a/e;->o:I

    .line 296
    iget-object v0, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    goto/16 :goto_2

    .line 300
    :cond_8
    iget-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    const/16 v1, 0x7b

    if-ne v0, v1, :cond_9

    .line 301
    iput v3, p0, Lcom/alibaba/fastjson/a/e;->o:I

    .line 302
    iget-object v0, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    goto/16 :goto_2

    .line 307
    :cond_9
    iget-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    invoke-static {v0}, Lcom/alibaba/fastjson/a/e;->a(C)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 308
    iget-object v0, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    goto/16 :goto_1

    .line 312
    :cond_a
    invoke-virtual {p0}, Lcom/alibaba/fastjson/a/e;->k()V

    goto/16 :goto_2
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 147
    iput-boolean p1, p0, Lcom/alibaba/fastjson/a/e;->t:Z

    .line 148
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/alibaba/fastjson/a/e;->t:Z

    return v0
.end method

.method public a(Lcom/alibaba/fastjson/a/d;)Z
    .locals 1

    .prologue
    .line 1789
    iget v0, p0, Lcom/alibaba/fastjson/a/e;->r:I

    invoke-static {v0, p1}, Lcom/alibaba/fastjson/a/d;->a(ILcom/alibaba/fastjson/a/d;)Z

    move-result v0

    return v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lcom/alibaba/fastjson/a/e;->g:I

    return v0
.end method

.method public b(Z)Ljava/lang/Number;
    .locals 4

    .prologue
    .line 1757
    iget-object v0, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v1, p0, Lcom/alibaba/fastjson/a/e;->n:I

    iget v2, p0, Lcom/alibaba/fastjson/a/e;->m:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    aget-char v0, v0, v1

    .line 1758
    const/16 v1, 0x46

    if-ne v0, v1, :cond_0

    .line 1759
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v2, p0, Lcom/alibaba/fastjson/a/e;->n:I

    iget v3, p0, Lcom/alibaba/fastjson/a/e;->m:I

    add-int/lit8 v3, v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 1769
    :goto_0
    return-object v0

    .line 1762
    :cond_0
    const/16 v1, 0x44

    if-ne v0, v1, :cond_1

    .line 1763
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v2, p0, Lcom/alibaba/fastjson/a/e;->n:I

    iget v3, p0, Lcom/alibaba/fastjson/a/e;->m:I

    add-int/lit8 v3, v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    .line 1766
    :cond_1
    if-eqz p1, :cond_2

    .line 1767
    invoke-virtual {p0}, Lcom/alibaba/fastjson/a/e;->E()Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_0

    .line 1769
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/a/e;->D()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0
.end method

.method public b(Lcom/alibaba/fastjson/a/j;)Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x27

    const/16 v2, 0x22

    const/4 v0, 0x0

    .line 1066
    invoke-virtual {p0}, Lcom/alibaba/fastjson/a/e;->f()V

    .line 1068
    iget-char v1, p0, Lcom/alibaba/fastjson/a/e;->j:C

    if-ne v1, v2, :cond_0

    .line 1069
    invoke-virtual {p0, p1, v2}, Lcom/alibaba/fastjson/a/e;->a(Lcom/alibaba/fastjson/a/j;C)Ljava/lang/String;

    move-result-object v0

    .line 1101
    :goto_0
    return-object v0

    .line 1072
    :cond_0
    iget-char v1, p0, Lcom/alibaba/fastjson/a/e;->j:C

    if-ne v1, v3, :cond_2

    .line 1073
    sget-object v0, Lcom/alibaba/fastjson/a/d;->AllowSingleQuotes:Lcom/alibaba/fastjson/a/d;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/a/e;->a(Lcom/alibaba/fastjson/a/d;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1074
    new-instance v0, Lcom/alibaba/fastjson/d;

    const-string v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1077
    :cond_1
    invoke-virtual {p0, p1, v3}, Lcom/alibaba/fastjson/a/e;->a(Lcom/alibaba/fastjson/a/j;C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1080
    :cond_2
    iget-char v1, p0, Lcom/alibaba/fastjson/a/e;->j:C

    const/16 v2, 0x7d

    if-ne v1, v2, :cond_3

    .line 1081
    iget-object v1, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v2, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/a/e;->g:I

    aget-char v1, v1, v2

    iput-char v1, p0, Lcom/alibaba/fastjson/a/e;->j:C

    .line 1082
    const/16 v1, 0xd

    iput v1, p0, Lcom/alibaba/fastjson/a/e;->o:I

    goto :goto_0

    .line 1086
    :cond_3
    iget-char v1, p0, Lcom/alibaba/fastjson/a/e;->j:C

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_4

    .line 1087
    iget-object v1, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v2, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/a/e;->g:I

    aget-char v1, v1, v2

    iput-char v1, p0, Lcom/alibaba/fastjson/a/e;->j:C

    .line 1088
    const/16 v1, 0x10

    iput v1, p0, Lcom/alibaba/fastjson/a/e;->o:I

    goto :goto_0

    .line 1092
    :cond_4
    iget-char v1, p0, Lcom/alibaba/fastjson/a/e;->j:C

    const/16 v2, 0x1a

    if-ne v1, v2, :cond_5

    .line 1093
    const/16 v1, 0x14

    iput v1, p0, Lcom/alibaba/fastjson/a/e;->o:I

    goto :goto_0

    .line 1097
    :cond_5
    sget-object v0, Lcom/alibaba/fastjson/a/d;->AllowUnQuotedFieldNames:Lcom/alibaba/fastjson/a/d;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/a/e;->a(Lcom/alibaba/fastjson/a/d;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1098
    new-instance v0, Lcom/alibaba/fastjson/d;

    const-string v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1101
    :cond_6
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/a/e;->a(Lcom/alibaba/fastjson/a/j;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public b(I)V
    .locals 7

    .prologue
    const/16 v6, 0x7b

    const/16 v5, 0x5b

    const/16 v4, 0xe

    const/4 v3, 0x0

    const/16 v2, 0xc

    .line 327
    :goto_0
    sparse-switch p1, :sswitch_data_0

    .line 448
    :cond_0
    iget-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    if-eq v0, v2, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    const/16 v1, 0x8

    if-ne v0, v1, :cond_e

    .line 449
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    goto :goto_0

    .line 329
    :sswitch_0
    iget-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    if-ne v0, v6, :cond_2

    .line 330
    iput v2, p0, Lcom/alibaba/fastjson/a/e;->o:I

    .line 331
    iget-object v0, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    .line 456
    :goto_1
    return-void

    .line 334
    :cond_2
    iget-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    if-ne v0, v5, :cond_0

    .line 335
    iput v4, p0, Lcom/alibaba/fastjson/a/e;->o:I

    .line 336
    iget-object v0, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    goto :goto_1

    .line 341
    :sswitch_1
    iget-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    const/16 v1, 0x2c

    if-ne v0, v1, :cond_3

    .line 342
    const/16 v0, 0x10

    iput v0, p0, Lcom/alibaba/fastjson/a/e;->o:I

    .line 343
    iget-object v0, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    goto :goto_1

    .line 347
    :cond_3
    iget-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    const/16 v1, 0x7d

    if-ne v0, v1, :cond_4

    .line 348
    const/16 v0, 0xd

    iput v0, p0, Lcom/alibaba/fastjson/a/e;->o:I

    .line 349
    iget-object v0, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    goto :goto_1

    .line 353
    :cond_4
    iget-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    const/16 v1, 0x5d

    if-ne v0, v1, :cond_5

    .line 354
    const/16 v0, 0xf

    iput v0, p0, Lcom/alibaba/fastjson/a/e;->o:I

    .line 355
    iget-object v0, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    goto :goto_1

    .line 359
    :cond_5
    iget-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_0

    .line 360
    const/16 v0, 0x14

    iput v0, p0, Lcom/alibaba/fastjson/a/e;->o:I

    goto :goto_1

    .line 365
    :sswitch_2
    iget-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    const/16 v1, 0x30

    if-lt v0, v1, :cond_6

    iget-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    const/16 v1, 0x39

    if-gt v0, v1, :cond_6

    .line 366
    iput v3, p0, Lcom/alibaba/fastjson/a/e;->m:I

    .line 367
    iget v0, p0, Lcom/alibaba/fastjson/a/e;->g:I

    iput v0, p0, Lcom/alibaba/fastjson/a/e;->k:I

    .line 368
    invoke-virtual {p0}, Lcom/alibaba/fastjson/a/e;->u()V

    goto :goto_1

    .line 372
    :cond_6
    iget-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    const/16 v1, 0x22

    if-ne v0, v1, :cond_7

    .line 373
    iput v3, p0, Lcom/alibaba/fastjson/a/e;->m:I

    .line 374
    iget v0, p0, Lcom/alibaba/fastjson/a/e;->g:I

    iput v0, p0, Lcom/alibaba/fastjson/a/e;->k:I

    .line 375
    invoke-virtual {p0}, Lcom/alibaba/fastjson/a/e;->m()V

    goto/16 :goto_1

    .line 379
    :cond_7
    iget-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    if-ne v0, v5, :cond_8

    .line 380
    iput v4, p0, Lcom/alibaba/fastjson/a/e;->o:I

    .line 381
    iget-object v0, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    goto/16 :goto_1

    .line 385
    :cond_8
    iget-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    if-ne v0, v6, :cond_0

    .line 386
    iput v2, p0, Lcom/alibaba/fastjson/a/e;->o:I

    .line 387
    iget-object v0, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    goto/16 :goto_1

    .line 393
    :sswitch_3
    iget-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    const/16 v1, 0x22

    if-ne v0, v1, :cond_9

    .line 394
    iput v3, p0, Lcom/alibaba/fastjson/a/e;->m:I

    .line 395
    iget v0, p0, Lcom/alibaba/fastjson/a/e;->g:I

    iput v0, p0, Lcom/alibaba/fastjson/a/e;->k:I

    .line 396
    invoke-virtual {p0}, Lcom/alibaba/fastjson/a/e;->m()V

    goto/16 :goto_1

    .line 400
    :cond_9
    iget-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    const/16 v1, 0x30

    if-lt v0, v1, :cond_a

    iget-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    const/16 v1, 0x39

    if-gt v0, v1, :cond_a

    .line 401
    iput v3, p0, Lcom/alibaba/fastjson/a/e;->m:I

    .line 402
    iget v0, p0, Lcom/alibaba/fastjson/a/e;->g:I

    iput v0, p0, Lcom/alibaba/fastjson/a/e;->k:I

    .line 403
    invoke-virtual {p0}, Lcom/alibaba/fastjson/a/e;->u()V

    goto/16 :goto_1

    .line 407
    :cond_a
    iget-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    if-ne v0, v5, :cond_b

    .line 408
    iput v4, p0, Lcom/alibaba/fastjson/a/e;->o:I

    .line 409
    iget-object v0, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    goto/16 :goto_1

    .line 413
    :cond_b
    iget-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    if-ne v0, v6, :cond_0

    .line 414
    iput v2, p0, Lcom/alibaba/fastjson/a/e;->o:I

    .line 415
    iget-object v0, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    goto/16 :goto_1

    .line 420
    :sswitch_4
    iget-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    if-ne v0, v5, :cond_c

    .line 421
    iput v4, p0, Lcom/alibaba/fastjson/a/e;->o:I

    .line 422
    iget-object v0, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    goto/16 :goto_1

    .line 426
    :cond_c
    iget-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    if-ne v0, v6, :cond_0

    .line 427
    iput v2, p0, Lcom/alibaba/fastjson/a/e;->o:I

    .line 428
    iget-object v0, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    goto/16 :goto_1

    .line 433
    :sswitch_5
    iget-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    const/16 v1, 0x5d

    if-ne v0, v1, :cond_d

    .line 434
    const/16 v0, 0xf

    iput v0, p0, Lcom/alibaba/fastjson/a/e;->o:I

    .line 435
    iget-object v0, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    goto/16 :goto_1

    .line 439
    :cond_d
    :sswitch_6
    iget-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_0

    .line 440
    const/16 v0, 0x14

    iput v0, p0, Lcom/alibaba/fastjson/a/e;->o:I

    goto/16 :goto_1

    .line 453
    :cond_e
    invoke-virtual {p0}, Lcom/alibaba/fastjson/a/e;->k()V

    goto/16 :goto_1

    .line 327
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_2
        0x4 -> :sswitch_3
        0xc -> :sswitch_0
        0xe -> :sswitch_4
        0xf -> :sswitch_5
        0x10 -> :sswitch_1
        0x14 -> :sswitch_6
    .end sparse-switch
.end method

.method public final c(Lcom/alibaba/fastjson/a/j;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1512
    if-nez p1, :cond_1

    .line 1513
    iget-boolean v0, p0, Lcom/alibaba/fastjson/a/e;->a:Z

    if-nez v0, :cond_0

    .line 1514
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v2, p0, Lcom/alibaba/fastjson/a/e;->n:I

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/alibaba/fastjson/a/e;->m:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 1523
    :goto_0
    return-object v0

    .line 1516
    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson/a/e;->l:[C

    iget v2, p0, Lcom/alibaba/fastjson/a/e;->m:I

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0

    .line 1520
    :cond_1
    iget-boolean v0, p0, Lcom/alibaba/fastjson/a/e;->a:Z

    if-nez v0, :cond_2

    .line 1521
    iget-object v0, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v1, p0, Lcom/alibaba/fastjson/a/e;->n:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/alibaba/fastjson/a/e;->m:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/alibaba/fastjson/a/j;->a([CII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1523
    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson/a/e;->l:[C

    iget v1, p0, Lcom/alibaba/fastjson/a/e;->m:I

    invoke-virtual {p1, v0, v3, v1}, Lcom/alibaba/fastjson/a/j;->a([CII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public c()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 163
    move v0, v1

    :goto_0
    iget v2, p0, Lcom/alibaba/fastjson/a/e;->h:I

    if-ge v0, v2, :cond_1

    .line 164
    iget-object v2, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    aget-char v2, v2, v0

    invoke-static {v2}, Lcom/alibaba/fastjson/a/e;->a(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 169
    :goto_1
    return v1

    .line 163
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 169
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Lcom/alibaba/fastjson/a/e;->o:I

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Lcom/alibaba/fastjson/a/e;->o:I

    invoke-static {v0}, Lcom/alibaba/fastjson/a/f;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final f()V
    .locals 2

    .prologue
    .line 207
    :goto_0
    sget-object v0, Lcom/alibaba/fastjson/a/e;->u:[Z

    iget-char v1, p0, Lcom/alibaba/fastjson/a/e;->j:C

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    goto :goto_0

    .line 214
    :cond_0
    return-void
.end method

.method public final g()C
    .locals 1

    .prologue
    .line 217
    iget-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    return v0
.end method

.method public final h()V
    .locals 3

    .prologue
    .line 222
    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    const/16 v1, 0x3a

    if-ne v0, v1, :cond_0

    .line 223
    iget-object v0, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    .line 224
    invoke-virtual {p0}, Lcom/alibaba/fastjson/a/e;->k()V

    .line 225
    return-void

    .line 228
    :cond_0
    iget-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 229
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    goto :goto_0

    .line 233
    :cond_2
    new-instance v0, Lcom/alibaba/fastjson/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not match \':\' - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-char v2, p0, Lcom/alibaba/fastjson/a/e;->j:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final i()V
    .locals 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    .line 319
    return-void
.end method

.method public final j()V
    .locals 1

    .prologue
    .line 322
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/fastjson/a/e;->m:I

    .line 323
    return-void
.end method

.method public final k()V
    .locals 4

    .prologue
    const/16 v2, 0x14

    const/4 v3, 0x0

    .line 459
    iput v3, p0, Lcom/alibaba/fastjson/a/e;->m:I

    .line 462
    :goto_0
    iget v0, p0, Lcom/alibaba/fastjson/a/e;->g:I

    iput v0, p0, Lcom/alibaba/fastjson/a/e;->k:I

    .line 464
    iget-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    .line 465
    invoke-virtual {p0}, Lcom/alibaba/fastjson/a/e;->m()V

    .line 559
    :goto_1
    return-void

    .line 469
    :cond_0
    iget-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    const/16 v1, 0x2c

    if-ne v0, v1, :cond_1

    .line 470
    iget-object v0, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    .line 471
    const/16 v0, 0x10

    iput v0, p0, Lcom/alibaba/fastjson/a/e;->o:I

    goto :goto_1

    .line 475
    :cond_1
    iget-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    const/16 v1, 0x30

    if-lt v0, v1, :cond_2

    iget-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    const/16 v1, 0x39

    if-gt v0, v1, :cond_2

    .line 476
    invoke-virtual {p0}, Lcom/alibaba/fastjson/a/e;->u()V

    goto :goto_1

    .line 480
    :cond_2
    iget-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_3

    .line 481
    invoke-virtual {p0}, Lcom/alibaba/fastjson/a/e;->u()V

    goto :goto_1

    .line 485
    :cond_3
    iget-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    sparse-switch v0, :sswitch_data_0

    .line 547
    iget v0, p0, Lcom/alibaba/fastjson/a/e;->g:I

    iget v1, p0, Lcom/alibaba/fastjson/a/e;->h:I

    if-eq v0, v1, :cond_4

    iget-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_7

    iget v0, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/alibaba/fastjson/a/e;->h:I

    if-ne v0, v1, :cond_7

    .line 548
    :cond_4
    iget v0, p0, Lcom/alibaba/fastjson/a/e;->o:I

    if-ne v0, v2, :cond_6

    .line 549
    new-instance v0, Lcom/alibaba/fastjson/d;

    const-string v1, "EOF error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 487
    :sswitch_0
    sget-object v0, Lcom/alibaba/fastjson/a/d;->AllowSingleQuotes:Lcom/alibaba/fastjson/a/d;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/a/e;->a(Lcom/alibaba/fastjson/a/d;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 488
    new-instance v0, Lcom/alibaba/fastjson/d;

    const-string v1, "Feature.AllowSingleQuotes is false"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 490
    :cond_5
    invoke-virtual {p0}, Lcom/alibaba/fastjson/a/e;->l()V

    goto :goto_1

    .line 498
    :sswitch_1
    iget-object v0, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    goto/16 :goto_0

    .line 501
    :sswitch_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/a/e;->o()V

    goto :goto_1

    .line 504
    :sswitch_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson/a/e;->q()V

    goto :goto_1

    .line 507
    :sswitch_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson/a/e;->p()V

    goto/16 :goto_1

    .line 510
    :sswitch_5
    invoke-virtual {p0}, Lcom/alibaba/fastjson/a/e;->s()V

    goto/16 :goto_1

    .line 513
    :sswitch_6
    invoke-virtual {p0}, Lcom/alibaba/fastjson/a/e;->r()V

    goto/16 :goto_1

    .line 516
    :sswitch_7
    invoke-virtual {p0}, Lcom/alibaba/fastjson/a/e;->t()V

    goto/16 :goto_1

    .line 519
    :sswitch_8
    iget-object v0, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    .line 520
    const/16 v0, 0xa

    iput v0, p0, Lcom/alibaba/fastjson/a/e;->o:I

    goto/16 :goto_1

    .line 523
    :sswitch_9
    iget-object v0, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    .line 524
    const/16 v0, 0xb

    iput v0, p0, Lcom/alibaba/fastjson/a/e;->o:I

    goto/16 :goto_1

    .line 527
    :sswitch_a
    iget-object v0, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    .line 528
    const/16 v0, 0xe

    iput v0, p0, Lcom/alibaba/fastjson/a/e;->o:I

    goto/16 :goto_1

    .line 531
    :sswitch_b
    iget-object v0, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    .line 532
    const/16 v0, 0xf

    iput v0, p0, Lcom/alibaba/fastjson/a/e;->o:I

    goto/16 :goto_1

    .line 535
    :sswitch_c
    iget-object v0, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    .line 536
    const/16 v0, 0xc

    iput v0, p0, Lcom/alibaba/fastjson/a/e;->o:I

    goto/16 :goto_1

    .line 539
    :sswitch_d
    iget-object v0, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    .line 540
    const/16 v0, 0xd

    iput v0, p0, Lcom/alibaba/fastjson/a/e;->o:I

    goto/16 :goto_1

    .line 543
    :sswitch_e
    iget-object v0, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    .line 544
    const/16 v0, 0x11

    iput v0, p0, Lcom/alibaba/fastjson/a/e;->o:I

    goto/16 :goto_1

    .line 552
    :cond_6
    iput v2, p0, Lcom/alibaba/fastjson/a/e;->o:I

    .line 553
    iget v0, p0, Lcom/alibaba/fastjson/a/e;->i:I

    iput v0, p0, Lcom/alibaba/fastjson/a/e;->g:I

    iput v0, p0, Lcom/alibaba/fastjson/a/e;->k:I

    goto/16 :goto_1

    .line 555
    :cond_7
    const-string v0, "illegal.char"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-char v2, p0, Lcom/alibaba/fastjson/a/e;->j:C

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-direct {p0, v0, v1}, Lcom/alibaba/fastjson/a/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 556
    iget-object v0, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    goto/16 :goto_1

    .line 485
    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_1
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0xc -> :sswitch_1
        0xd -> :sswitch_1
        0x20 -> :sswitch_1
        0x27 -> :sswitch_0
        0x28 -> :sswitch_8
        0x29 -> :sswitch_9
        0x3a -> :sswitch_e
        0x44 -> :sswitch_7
        0x53 -> :sswitch_4
        0x54 -> :sswitch_3
        0x5b -> :sswitch_a
        0x5d -> :sswitch_b
        0x66 -> :sswitch_5
        0x6e -> :sswitch_6
        0x74 -> :sswitch_2
        0x7b -> :sswitch_c
        0x7d -> :sswitch_d
    .end sparse-switch
.end method

.method public final l()V
    .locals 11

    .prologue
    const/16 v10, 0x5c

    const/16 v9, 0x27

    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 568
    iget v0, p0, Lcom/alibaba/fastjson/a/e;->g:I

    iput v0, p0, Lcom/alibaba/fastjson/a/e;->n:I

    .line 569
    iput-boolean v6, p0, Lcom/alibaba/fastjson/a/e;->a:Z

    .line 572
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    aget-char v0, v0, v1

    .line 574
    if-ne v0, v9, :cond_0

    .line 653
    iput v8, p0, Lcom/alibaba/fastjson/a/e;->o:I

    .line 654
    iget-object v0, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    .line 655
    return-void

    .line 578
    :cond_0
    const/16 v1, 0x1a

    if-ne v0, v1, :cond_1

    .line 579
    new-instance v0, Lcom/alibaba/fastjson/d;

    const-string v1, "unclosed single-quote string"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 582
    :cond_1
    if-ne v0, v10, :cond_4

    .line 583
    iget-boolean v0, p0, Lcom/alibaba/fastjson/a/e;->a:Z

    if-nez v0, :cond_3

    .line 584
    iput-boolean v7, p0, Lcom/alibaba/fastjson/a/e;->a:Z

    .line 586
    iget v0, p0, Lcom/alibaba/fastjson/a/e;->m:I

    iget-object v1, p0, Lcom/alibaba/fastjson/a/e;->l:[C

    array-length v1, v1

    if-le v0, v1, :cond_2

    .line 587
    iget v0, p0, Lcom/alibaba/fastjson/a/e;->m:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    .line 588
    iget-object v1, p0, Lcom/alibaba/fastjson/a/e;->l:[C

    iget-object v2, p0, Lcom/alibaba/fastjson/a/e;->l:[C

    array-length v2, v2

    invoke-static {v1, v6, v0, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 589
    iput-object v0, p0, Lcom/alibaba/fastjson/a/e;->l:[C

    .line 592
    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v1, p0, Lcom/alibaba/fastjson/a/e;->n:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/alibaba/fastjson/a/e;->l:[C

    iget v3, p0, Lcom/alibaba/fastjson/a/e;->m:I

    invoke-static {v0, v1, v2, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 595
    :cond_3
    iget-object v0, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    aget-char v0, v0, v1

    .line 597
    sparse-switch v0, :sswitch_data_0

    .line 635
    iput-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    .line 636
    new-instance v0, Lcom/alibaba/fastjson/d;

    const-string v1, "unclosed single-quote string"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 599
    :sswitch_0
    const/16 v0, 0x22

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/a/e;->b(C)V

    goto :goto_0

    .line 602
    :sswitch_1
    invoke-direct {p0, v10}, Lcom/alibaba/fastjson/a/e;->b(C)V

    goto :goto_0

    .line 605
    :sswitch_2
    const/16 v0, 0x2f

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/a/e;->b(C)V

    goto :goto_0

    .line 608
    :sswitch_3
    invoke-direct {p0, v9}, Lcom/alibaba/fastjson/a/e;->b(C)V

    goto :goto_0

    .line 611
    :sswitch_4
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/a/e;->b(C)V

    goto/16 :goto_0

    .line 615
    :sswitch_5
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/a/e;->b(C)V

    goto/16 :goto_0

    .line 618
    :sswitch_6
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/a/e;->b(C)V

    goto/16 :goto_0

    .line 621
    :sswitch_7
    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/a/e;->b(C)V

    goto/16 :goto_0

    .line 624
    :sswitch_8
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/a/e;->b(C)V

    goto/16 :goto_0

    .line 627
    :sswitch_9
    iget-object v0, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    aget-char v0, v0, v1

    .line 628
    iget-object v1, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v2, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/a/e;->g:I

    aget-char v1, v1, v2

    .line 629
    iget-object v2, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v3, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/alibaba/fastjson/a/e;->g:I

    aget-char v2, v2, v3

    .line 630
    iget-object v3, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v4, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/alibaba/fastjson/a/e;->g:I

    aget-char v3, v3, v4

    .line 631
    new-instance v4, Ljava/lang/String;

    new-array v5, v8, [C

    aput-char v0, v5, v6

    aput-char v1, v5, v7

    const/4 v0, 0x2

    aput-char v2, v5, v0

    const/4 v0, 0x3

    aput-char v3, v5, v0

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([C)V

    const/16 v0, 0x10

    invoke-static {v4, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 632
    int-to-char v0, v0

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/a/e;->b(C)V

    goto/16 :goto_0

    .line 641
    :cond_4
    iget-boolean v1, p0, Lcom/alibaba/fastjson/a/e;->a:Z

    if-nez v1, :cond_5

    .line 642
    iget v0, p0, Lcom/alibaba/fastjson/a/e;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/a/e;->m:I

    goto/16 :goto_0

    .line 646
    :cond_5
    iget v1, p0, Lcom/alibaba/fastjson/a/e;->m:I

    iget-object v2, p0, Lcom/alibaba/fastjson/a/e;->l:[C

    array-length v2, v2

    if-ne v1, v2, :cond_6

    .line 647
    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/a/e;->b(C)V

    goto/16 :goto_0

    .line 649
    :cond_6
    iget-object v1, p0, Lcom/alibaba/fastjson/a/e;->l:[C

    iget v2, p0, Lcom/alibaba/fastjson/a/e;->m:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/alibaba/fastjson/a/e;->m:I

    aput-char v0, v1, v2

    goto/16 :goto_0

    .line 597
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x27 -> :sswitch_3
        0x2f -> :sswitch_2
        0x46 -> :sswitch_5
        0x5c -> :sswitch_1
        0x62 -> :sswitch_4
        0x66 -> :sswitch_5
        0x6e -> :sswitch_6
        0x72 -> :sswitch_7
        0x74 -> :sswitch_8
        0x75 -> :sswitch_9
    .end sparse-switch
.end method

.method public final m()V
    .locals 11

    .prologue
    const/16 v10, 0x5c

    const/16 v9, 0x22

    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 658
    iget v0, p0, Lcom/alibaba/fastjson/a/e;->g:I

    iput v0, p0, Lcom/alibaba/fastjson/a/e;->n:I

    .line 659
    iput-boolean v6, p0, Lcom/alibaba/fastjson/a/e;->a:Z

    .line 662
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    aget-char v0, v0, v1

    .line 664
    if-ne v0, v9, :cond_0

    .line 748
    iput v8, p0, Lcom/alibaba/fastjson/a/e;->o:I

    .line 749
    iget-object v0, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    .line 750
    return-void

    .line 668
    :cond_0
    if-ne v0, v10, :cond_4

    .line 669
    iget-boolean v0, p0, Lcom/alibaba/fastjson/a/e;->a:Z

    if-nez v0, :cond_3

    .line 670
    iput-boolean v7, p0, Lcom/alibaba/fastjson/a/e;->a:Z

    .line 672
    iget v0, p0, Lcom/alibaba/fastjson/a/e;->m:I

    iget-object v1, p0, Lcom/alibaba/fastjson/a/e;->l:[C

    array-length v1, v1

    if-lt v0, v1, :cond_2

    .line 673
    iget-object v0, p0, Lcom/alibaba/fastjson/a/e;->l:[C

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    .line 674
    iget v1, p0, Lcom/alibaba/fastjson/a/e;->m:I

    if-le v1, v0, :cond_1

    .line 675
    iget v0, p0, Lcom/alibaba/fastjson/a/e;->m:I

    .line 677
    :cond_1
    new-array v0, v0, [C

    .line 678
    iget-object v1, p0, Lcom/alibaba/fastjson/a/e;->l:[C

    iget-object v2, p0, Lcom/alibaba/fastjson/a/e;->l:[C

    array-length v2, v2

    invoke-static {v1, v6, v0, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 679
    iput-object v0, p0, Lcom/alibaba/fastjson/a/e;->l:[C

    .line 682
    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v1, p0, Lcom/alibaba/fastjson/a/e;->n:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/alibaba/fastjson/a/e;->l:[C

    iget v3, p0, Lcom/alibaba/fastjson/a/e;->m:I

    invoke-static {v0, v1, v2, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 685
    :cond_3
    iget-object v0, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    aget-char v0, v0, v1

    .line 687
    sparse-switch v0, :sswitch_data_0

    .line 730
    iput-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    .line 731
    new-instance v1, Lcom/alibaba/fastjson/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unclosed string : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;)V

    throw v1

    .line 689
    :sswitch_0
    invoke-direct {p0, v9}, Lcom/alibaba/fastjson/a/e;->b(C)V

    goto :goto_0

    .line 692
    :sswitch_1
    invoke-direct {p0, v10}, Lcom/alibaba/fastjson/a/e;->b(C)V

    goto :goto_0

    .line 695
    :sswitch_2
    const/16 v0, 0x2f

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/a/e;->b(C)V

    goto/16 :goto_0

    .line 698
    :sswitch_3
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/a/e;->b(C)V

    goto/16 :goto_0

    .line 702
    :sswitch_4
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/a/e;->b(C)V

    goto/16 :goto_0

    .line 705
    :sswitch_5
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/a/e;->b(C)V

    goto/16 :goto_0

    .line 708
    :sswitch_6
    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/a/e;->b(C)V

    goto/16 :goto_0

    .line 711
    :sswitch_7
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/a/e;->b(C)V

    goto/16 :goto_0

    .line 714
    :sswitch_8
    iget-object v0, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    aget-char v0, v0, v1

    .line 715
    iget-object v1, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v2, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/a/e;->g:I

    aget-char v1, v1, v2

    .line 717
    sget-object v2, Lcom/alibaba/fastjson/a/e;->w:[I

    aget v0, v2, v0

    mul-int/lit8 v0, v0, 0x10

    sget-object v2, Lcom/alibaba/fastjson/a/e;->w:[I

    aget v1, v2, v1

    add-int/2addr v0, v1

    .line 718
    int-to-char v0, v0

    .line 719
    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/a/e;->b(C)V

    goto/16 :goto_0

    .line 722
    :sswitch_9
    iget-object v0, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    aget-char v0, v0, v1

    .line 723
    iget-object v1, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v2, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/a/e;->g:I

    aget-char v1, v1, v2

    .line 724
    iget-object v2, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v3, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/alibaba/fastjson/a/e;->g:I

    aget-char v2, v2, v3

    .line 725
    iget-object v3, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v4, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/alibaba/fastjson/a/e;->g:I

    aget-char v3, v3, v4

    .line 726
    new-instance v4, Ljava/lang/String;

    new-array v5, v8, [C

    aput-char v0, v5, v6

    aput-char v1, v5, v7

    const/4 v0, 0x2

    aput-char v2, v5, v0

    const/4 v0, 0x3

    aput-char v3, v5, v0

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([C)V

    const/16 v0, 0x10

    invoke-static {v4, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 727
    int-to-char v0, v0

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/a/e;->b(C)V

    goto/16 :goto_0

    .line 736
    :cond_4
    iget-boolean v1, p0, Lcom/alibaba/fastjson/a/e;->a:Z

    if-nez v1, :cond_5

    .line 737
    iget v0, p0, Lcom/alibaba/fastjson/a/e;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/a/e;->m:I

    goto/16 :goto_0

    .line 741
    :cond_5
    iget v1, p0, Lcom/alibaba/fastjson/a/e;->m:I

    iget-object v2, p0, Lcom/alibaba/fastjson/a/e;->l:[C

    array-length v2, v2

    if-ne v1, v2, :cond_6

    .line 742
    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/a/e;->b(C)V

    goto/16 :goto_0

    .line 744
    :cond_6
    iget-object v1, p0, Lcom/alibaba/fastjson/a/e;->l:[C

    iget v2, p0, Lcom/alibaba/fastjson/a/e;->m:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/alibaba/fastjson/a/e;->m:I

    aput-char v0, v1, v2

    goto/16 :goto_0

    .line 687
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x2f -> :sswitch_2
        0x46 -> :sswitch_4
        0x5c -> :sswitch_1
        0x62 -> :sswitch_3
        0x66 -> :sswitch_4
        0x6e -> :sswitch_5
        0x72 -> :sswitch_6
        0x74 -> :sswitch_7
        0x75 -> :sswitch_9
        0x78 -> :sswitch_8
    .end sparse-switch
.end method

.method public n()[B
    .locals 3

    .prologue
    .line 1062
    iget-object v0, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v1, p0, Lcom/alibaba/fastjson/a/e;->n:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/alibaba/fastjson/a/e;->m:I

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/c/a;->a([CII)[B

    move-result-object v0

    return-object v0
.end method

.method public o()V
    .locals 3

    .prologue
    .line 1216
    iget-object v0, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/a/e;->g:I

    aget-char v0, v0, v1

    const/16 v1, 0x74

    if-eq v0, v1, :cond_0

    .line 1217
    new-instance v0, Lcom/alibaba/fastjson/d;

    const-string v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1219
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/a/e;->g:I

    aget-char v0, v0, v1

    const/16 v1, 0x72

    if-eq v0, v1, :cond_1

    .line 1220
    new-instance v0, Lcom/alibaba/fastjson/d;

    const-string v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1222
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/a/e;->g:I

    aget-char v0, v0, v1

    const/16 v1, 0x75

    if-eq v0, v1, :cond_2

    .line 1223
    new-instance v0, Lcom/alibaba/fastjson/d;

    const-string v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1225
    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/a/e;->g:I

    aget-char v0, v0, v1

    const/16 v1, 0x65

    if-eq v0, v1, :cond_3

    .line 1226
    new-instance v0, Lcom/alibaba/fastjson/d;

    const-string v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1229
    :cond_3
    iget-object v0, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    .line 1231
    iget-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    const/16 v1, 0x20

    if-eq v0, v1, :cond_4

    iget-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_4

    iget-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_4

    iget-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_4

    iget-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    const/16 v1, 0xa

    if-eq v0, v1, :cond_4

    iget-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    const/16 v1, 0xd

    if-eq v0, v1, :cond_4

    iget-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    const/16 v1, 0x9

    if-eq v0, v1, :cond_4

    iget-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_4

    iget-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    const/16 v1, 0xc

    if-eq v0, v1, :cond_4

    iget-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    const/16 v1, 0x8

    if-ne v0, v1, :cond_5

    .line 1233
    :cond_4
    const/4 v0, 0x6

    iput v0, p0, Lcom/alibaba/fastjson/a/e;->o:I

    .line 1237
    return-void

    .line 1235
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson/d;

    const-string v1, "scan true error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public p()V
    .locals 3

    .prologue
    .line 1240
    iget-object v0, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/a/e;->g:I

    aget-char v0, v0, v1

    const/16 v1, 0x53

    if-eq v0, v1, :cond_0

    .line 1241
    new-instance v0, Lcom/alibaba/fastjson/d;

    const-string v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1243
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/a/e;->g:I

    aget-char v0, v0, v1

    const/16 v1, 0x65

    if-eq v0, v1, :cond_1

    .line 1244
    new-instance v0, Lcom/alibaba/fastjson/d;

    const-string v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1246
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/a/e;->g:I

    aget-char v0, v0, v1

    const/16 v1, 0x74

    if-eq v0, v1, :cond_2

    .line 1247
    new-instance v0, Lcom/alibaba/fastjson/d;

    const-string v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1250
    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    .line 1252
    iget-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    const/16 v1, 0x20

    if-eq v0, v1, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    const/16 v1, 0xa

    if-eq v0, v1, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    const/16 v1, 0xd

    if-eq v0, v1, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    const/16 v1, 0x9

    if-eq v0, v1, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    const/16 v1, 0xc

    if-eq v0, v1, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    const/16 v1, 0x28

    if-ne v0, v1, :cond_4

    .line 1253
    :cond_3
    const/16 v0, 0x15

    iput v0, p0, Lcom/alibaba/fastjson/a/e;->o:I

    .line 1257
    return-void

    .line 1255
    :cond_4
    new-instance v0, Lcom/alibaba/fastjson/d;

    const-string v1, "scan set error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public q()V
    .locals 4

    .prologue
    const/16 v3, 0x65

    .line 1260
    iget-object v0, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/a/e;->g:I

    aget-char v0, v0, v1

    const/16 v1, 0x54

    if-eq v0, v1, :cond_0

    .line 1261
    new-instance v0, Lcom/alibaba/fastjson/d;

    const-string v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1263
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/a/e;->g:I

    aget-char v0, v0, v1

    const/16 v1, 0x72

    if-eq v0, v1, :cond_1

    .line 1264
    new-instance v0, Lcom/alibaba/fastjson/d;

    const-string v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1266
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/a/e;->g:I

    aget-char v0, v0, v1

    if-eq v0, v3, :cond_2

    .line 1267
    new-instance v0, Lcom/alibaba/fastjson/d;

    const-string v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1269
    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/a/e;->g:I

    aget-char v0, v0, v1

    if-eq v0, v3, :cond_3

    .line 1270
    new-instance v0, Lcom/alibaba/fastjson/d;

    const-string v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1272
    :cond_3
    iget-object v0, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/a/e;->g:I

    aget-char v0, v0, v1

    const/16 v1, 0x53

    if-eq v0, v1, :cond_4

    .line 1273
    new-instance v0, Lcom/alibaba/fastjson/d;

    const-string v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1275
    :cond_4
    iget-object v0, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/a/e;->g:I

    aget-char v0, v0, v1

    if-eq v0, v3, :cond_5

    .line 1276
    new-instance v0, Lcom/alibaba/fastjson/d;

    const-string v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1278
    :cond_5
    iget-object v0, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/a/e;->g:I

    aget-char v0, v0, v1

    const/16 v1, 0x74

    if-eq v0, v1, :cond_6

    .line 1279
    new-instance v0, Lcom/alibaba/fastjson/d;

    const-string v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1282
    :cond_6
    iget-object v0, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    .line 1284
    iget-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    const/16 v1, 0x20

    if-eq v0, v1, :cond_7

    iget-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    const/16 v1, 0xa

    if-eq v0, v1, :cond_7

    iget-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    const/16 v1, 0xd

    if-eq v0, v1, :cond_7

    iget-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    const/16 v1, 0x9

    if-eq v0, v1, :cond_7

    iget-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    const/16 v1, 0xc

    if-eq v0, v1, :cond_7

    iget-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    const/16 v1, 0x8

    if-eq v0, v1, :cond_7

    iget-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_7

    iget-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    const/16 v1, 0x28

    if-ne v0, v1, :cond_8

    .line 1285
    :cond_7
    const/16 v0, 0x16

    iput v0, p0, Lcom/alibaba/fastjson/a/e;->o:I

    .line 1289
    return-void

    .line 1287
    :cond_8
    new-instance v0, Lcom/alibaba/fastjson/d;

    const-string v1, "scan set error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public r()V
    .locals 8

    .prologue
    const/16 v7, 0xd

    const/16 v6, 0xc

    const/16 v5, 0xa

    const/16 v4, 0x9

    const/16 v3, 0x8

    .line 1292
    iget-object v0, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/a/e;->g:I

    aget-char v0, v0, v1

    const/16 v1, 0x6e

    if-eq v0, v1, :cond_0

    .line 1293
    new-instance v0, Lcom/alibaba/fastjson/d;

    const-string v1, "error parse null or new"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1296
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    aget-char v0, v0, v1

    const/16 v1, 0x75

    if-ne v0, v1, :cond_5

    .line 1297
    iget v0, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/a/e;->g:I

    .line 1298
    iget-object v0, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/a/e;->g:I

    aget-char v0, v0, v1

    const/16 v1, 0x6c

    if-eq v0, v1, :cond_1

    .line 1299
    new-instance v0, Lcom/alibaba/fastjson/d;

    const-string v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1301
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/a/e;->g:I

    aget-char v0, v0, v1

    const/16 v1, 0x6c

    if-eq v0, v1, :cond_2

    .line 1302
    new-instance v0, Lcom/alibaba/fastjson/d;

    const-string v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1304
    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    .line 1306
    iget-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    const/16 v1, 0x20

    if-eq v0, v1, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    if-eq v0, v5, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    if-eq v0, v7, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    if-eq v0, v4, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    if-eq v0, v6, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    if-ne v0, v3, :cond_4

    .line 1308
    :cond_3
    iput v3, p0, Lcom/alibaba/fastjson/a/e;->o:I

    .line 1331
    :goto_0
    return-void

    .line 1310
    :cond_4
    new-instance v0, Lcom/alibaba/fastjson/d;

    const-string v1, "scan true error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1315
    :cond_5
    iget-object v0, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    aget-char v0, v0, v1

    const/16 v1, 0x65

    if-eq v0, v1, :cond_6

    .line 1316
    new-instance v0, Lcom/alibaba/fastjson/d;

    const-string v1, "error parse e"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1319
    :cond_6
    iget v0, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/a/e;->g:I

    .line 1320
    iget-object v0, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/a/e;->g:I

    aget-char v0, v0, v1

    const/16 v1, 0x77

    if-eq v0, v1, :cond_7

    .line 1321
    new-instance v0, Lcom/alibaba/fastjson/d;

    const-string v1, "error parse w"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1323
    :cond_7
    iget-object v0, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    .line 1325
    iget-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    const/16 v1, 0x20

    if-eq v0, v1, :cond_8

    iget-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_8

    iget-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_8

    iget-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_8

    iget-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    if-eq v0, v5, :cond_8

    iget-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    if-eq v0, v7, :cond_8

    iget-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    if-eq v0, v4, :cond_8

    iget-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_8

    iget-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    if-eq v0, v6, :cond_8

    iget-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    if-ne v0, v3, :cond_9

    .line 1327
    :cond_8
    iput v4, p0, Lcom/alibaba/fastjson/a/e;->o:I

    goto :goto_0

    .line 1329
    :cond_9
    new-instance v0, Lcom/alibaba/fastjson/d;

    const-string v1, "scan true error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public s()V
    .locals 3

    .prologue
    .line 1334
    iget-object v0, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/a/e;->g:I

    aget-char v0, v0, v1

    const/16 v1, 0x66

    if-eq v0, v1, :cond_0

    .line 1335
    new-instance v0, Lcom/alibaba/fastjson/d;

    const-string v1, "error parse false"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1337
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/a/e;->g:I

    aget-char v0, v0, v1

    const/16 v1, 0x61

    if-eq v0, v1, :cond_1

    .line 1338
    new-instance v0, Lcom/alibaba/fastjson/d;

    const-string v1, "error parse false"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1340
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/a/e;->g:I

    aget-char v0, v0, v1

    const/16 v1, 0x6c

    if-eq v0, v1, :cond_2

    .line 1341
    new-instance v0, Lcom/alibaba/fastjson/d;

    const-string v1, "error parse false"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1343
    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/a/e;->g:I

    aget-char v0, v0, v1

    const/16 v1, 0x73

    if-eq v0, v1, :cond_3

    .line 1344
    new-instance v0, Lcom/alibaba/fastjson/d;

    const-string v1, "error parse false"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1346
    :cond_3
    iget-object v0, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/a/e;->g:I

    aget-char v0, v0, v1

    const/16 v1, 0x65

    if-eq v0, v1, :cond_4

    .line 1347
    new-instance v0, Lcom/alibaba/fastjson/d;

    const-string v1, "error parse false"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1350
    :cond_4
    iget-object v0, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    .line 1352
    iget-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    const/16 v1, 0x20

    if-eq v0, v1, :cond_5

    iget-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_5

    iget-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_5

    iget-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_5

    iget-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    const/16 v1, 0xa

    if-eq v0, v1, :cond_5

    iget-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    const/16 v1, 0xd

    if-eq v0, v1, :cond_5

    iget-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    const/16 v1, 0x9

    if-eq v0, v1, :cond_5

    iget-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_5

    iget-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    const/16 v1, 0xc

    if-eq v0, v1, :cond_5

    iget-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    const/16 v1, 0x8

    if-ne v0, v1, :cond_6

    .line 1354
    :cond_5
    const/4 v0, 0x7

    iput v0, p0, Lcom/alibaba/fastjson/a/e;->o:I

    .line 1358
    return-void

    .line 1356
    :cond_6
    new-instance v0, Lcom/alibaba/fastjson/d;

    const-string v1, "scan false error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public t()V
    .locals 2

    .prologue
    .line 1361
    iget v0, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/alibaba/fastjson/a/e;->n:I

    .line 1362
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/fastjson/a/e;->a:Z

    .line 1365
    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson/a/e;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/a/e;->m:I

    .line 1367
    iget-object v0, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/a/e;->g:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    .line 1368
    iget-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1372
    invoke-virtual {p0}, Lcom/alibaba/fastjson/a/e;->w()Ljava/lang/String;

    move-result-object v0

    .line 1374
    iget-object v1, p0, Lcom/alibaba/fastjson/a/e;->p:Lcom/alibaba/fastjson/a/g;

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/a/g;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1375
    if-eqz v0, :cond_1

    .line 1376
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/alibaba/fastjson/a/e;->o:I

    .line 1380
    :goto_0
    return-void

    .line 1378
    :cond_1
    const/16 v0, 0x12

    iput v0, p0, Lcom/alibaba/fastjson/a/e;->o:I

    goto :goto_0
.end method

.method public u()V
    .locals 8

    .prologue
    const/16 v7, 0x44

    const/16 v6, 0x2d

    const/16 v5, 0x39

    const/16 v4, 0x30

    const/4 v1, 0x1

    .line 1385
    iget v0, p0, Lcom/alibaba/fastjson/a/e;->g:I

    iput v0, p0, Lcom/alibaba/fastjson/a/e;->n:I

    .line 1387
    iget-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    if-ne v0, v6, :cond_0

    .line 1388
    iget v0, p0, Lcom/alibaba/fastjson/a/e;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/a/e;->m:I

    .line 1389
    iget-object v0, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v2, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/a/e;->g:I

    aget-char v0, v0, v2

    iput-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    .line 1393
    :cond_0
    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    if-lt v0, v4, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    if-gt v0, v5, :cond_1

    .line 1394
    iget v0, p0, Lcom/alibaba/fastjson/a/e;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/a/e;->m:I

    .line 1398
    iget-object v0, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v2, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/a/e;->g:I

    aget-char v0, v0, v2

    iput-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    goto :goto_0

    .line 1401
    :cond_1
    const/4 v0, 0x0

    .line 1403
    iget-char v2, p0, Lcom/alibaba/fastjson/a/e;->j:C

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_3

    .line 1404
    iget v0, p0, Lcom/alibaba/fastjson/a/e;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/a/e;->m:I

    .line 1405
    iget-object v0, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v2, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/a/e;->g:I

    aget-char v0, v0, v2

    iput-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    .line 1409
    :goto_1
    iget-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    if-lt v0, v4, :cond_2

    iget-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    if-gt v0, v5, :cond_2

    .line 1410
    iget v0, p0, Lcom/alibaba/fastjson/a/e;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/a/e;->m:I

    .line 1414
    iget-object v0, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v2, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/a/e;->g:I

    aget-char v0, v0, v2

    iput-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    goto :goto_1

    :cond_2
    move v0, v1

    .line 1418
    :cond_3
    iget-char v2, p0, Lcom/alibaba/fastjson/a/e;->j:C

    const/16 v3, 0x4c

    if-ne v2, v3, :cond_5

    .line 1419
    iget v1, p0, Lcom/alibaba/fastjson/a/e;->m:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/a/e;->m:I

    .line 1420
    iget-object v1, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v2, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/a/e;->g:I

    aget-char v1, v1, v2

    iput-char v1, p0, Lcom/alibaba/fastjson/a/e;->j:C

    .line 1460
    :cond_4
    :goto_2
    if-eqz v0, :cond_10

    .line 1461
    const/4 v0, 0x3

    iput v0, p0, Lcom/alibaba/fastjson/a/e;->o:I

    .line 1465
    :goto_3
    return-void

    .line 1421
    :cond_5
    iget-char v2, p0, Lcom/alibaba/fastjson/a/e;->j:C

    const/16 v3, 0x53

    if-ne v2, v3, :cond_6

    .line 1422
    iget v1, p0, Lcom/alibaba/fastjson/a/e;->m:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/a/e;->m:I

    .line 1423
    iget-object v1, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v2, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/a/e;->g:I

    aget-char v1, v1, v2

    iput-char v1, p0, Lcom/alibaba/fastjson/a/e;->j:C

    goto :goto_2

    .line 1424
    :cond_6
    iget-char v2, p0, Lcom/alibaba/fastjson/a/e;->j:C

    const/16 v3, 0x42

    if-ne v2, v3, :cond_7

    .line 1425
    iget v1, p0, Lcom/alibaba/fastjson/a/e;->m:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/a/e;->m:I

    .line 1426
    iget-object v1, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v2, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/a/e;->g:I

    aget-char v1, v1, v2

    iput-char v1, p0, Lcom/alibaba/fastjson/a/e;->j:C

    goto :goto_2

    .line 1427
    :cond_7
    iget-char v2, p0, Lcom/alibaba/fastjson/a/e;->j:C

    const/16 v3, 0x46

    if-ne v2, v3, :cond_8

    .line 1428
    iget v0, p0, Lcom/alibaba/fastjson/a/e;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/a/e;->m:I

    .line 1429
    iget-object v0, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v2, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/a/e;->g:I

    aget-char v0, v0, v2

    iput-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    move v0, v1

    .line 1430
    goto :goto_2

    .line 1431
    :cond_8
    iget-char v2, p0, Lcom/alibaba/fastjson/a/e;->j:C

    if-ne v2, v7, :cond_9

    .line 1432
    iget v0, p0, Lcom/alibaba/fastjson/a/e;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/a/e;->m:I

    .line 1433
    iget-object v0, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v2, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/a/e;->g:I

    aget-char v0, v0, v2

    iput-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    move v0, v1

    .line 1434
    goto :goto_2

    .line 1435
    :cond_9
    iget-char v2, p0, Lcom/alibaba/fastjson/a/e;->j:C

    const/16 v3, 0x65

    if-eq v2, v3, :cond_a

    iget-char v2, p0, Lcom/alibaba/fastjson/a/e;->j:C

    const/16 v3, 0x45

    if-ne v2, v3, :cond_4

    .line 1436
    :cond_a
    iget v0, p0, Lcom/alibaba/fastjson/a/e;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/a/e;->m:I

    .line 1437
    iget-object v0, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v2, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/a/e;->g:I

    aget-char v0, v0, v2

    iput-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    .line 1439
    iget-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    const/16 v2, 0x2b

    if-eq v0, v2, :cond_b

    iget-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    if-ne v0, v6, :cond_c

    .line 1440
    :cond_b
    iget v0, p0, Lcom/alibaba/fastjson/a/e;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/a/e;->m:I

    .line 1441
    iget-object v0, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v2, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/a/e;->g:I

    aget-char v0, v0, v2

    iput-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    .line 1445
    :cond_c
    :goto_4
    iget-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    if-lt v0, v4, :cond_d

    iget-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    if-gt v0, v5, :cond_d

    .line 1446
    iget v0, p0, Lcom/alibaba/fastjson/a/e;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/a/e;->m:I

    .line 1450
    iget-object v0, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v2, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/a/e;->g:I

    aget-char v0, v0, v2

    iput-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    goto :goto_4

    .line 1453
    :cond_d
    iget-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    if-eq v0, v7, :cond_e

    iget-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    const/16 v2, 0x46

    if-ne v0, v2, :cond_f

    .line 1454
    :cond_e
    iget-object v0, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v2, p0, Lcom/alibaba/fastjson/a/e;->g:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/a/e;->g:I

    aget-char v0, v0, v2

    iput-char v0, p0, Lcom/alibaba/fastjson/a/e;->j:C

    :cond_f
    move v0, v1

    .line 1457
    goto/16 :goto_2

    .line 1463
    :cond_10
    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/fastjson/a/e;->o:I

    goto/16 :goto_3
.end method

.method public final v()I
    .locals 1

    .prologue
    .line 1484
    iget v0, p0, Lcom/alibaba/fastjson/a/e;->k:I

    return v0
.end method

.method public final w()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1491
    iget-boolean v0, p0, Lcom/alibaba/fastjson/a/e;->a:Z

    if-nez v0, :cond_0

    .line 1492
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v2, p0, Lcom/alibaba/fastjson/a/e;->n:I

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/alibaba/fastjson/a/e;->m:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 1494
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson/a/e;->l:[C

    const/4 v2, 0x0

    iget v3, p0, Lcom/alibaba/fastjson/a/e;->m:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0
.end method

.method public x()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1500
    iget-boolean v1, p0, Lcom/alibaba/fastjson/a/e;->a:Z

    if-eqz v1, :cond_1

    .line 1508
    :cond_0
    :goto_0
    return v0

    .line 1504
    :cond_1
    iget v1, p0, Lcom/alibaba/fastjson/a/e;->m:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 1508
    iget-object v1, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v2, p0, Lcom/alibaba/fastjson/a/e;->n:I

    add-int/lit8 v2, v2, 0x1

    aget-char v1, v1, v2

    const/16 v2, 0x24

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v2, p0, Lcom/alibaba/fastjson/a/e;->n:I

    add-int/lit8 v2, v2, 0x2

    aget-char v1, v1, v2

    const/16 v2, 0x72

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v2, p0, Lcom/alibaba/fastjson/a/e;->n:I

    add-int/lit8 v2, v2, 0x3

    aget-char v1, v1, v2

    const/16 v2, 0x65

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v2, p0, Lcom/alibaba/fastjson/a/e;->n:I

    add-int/lit8 v2, v2, 0x4

    aget-char v1, v1, v2

    const/16 v2, 0x66

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public y()Ljava/lang/Number;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 1549
    const-wide/16 v4, 0x0

    .line 1550
    const/4 v7, 0x0

    .line 1551
    iget v6, p0, Lcom/alibaba/fastjson/a/e;->n:I

    iget v0, p0, Lcom/alibaba/fastjson/a/e;->n:I

    iget v1, p0, Lcom/alibaba/fastjson/a/e;->m:I

    add-int/2addr v1, v0

    .line 1556
    const/16 v0, 0x20

    .line 1558
    if-lez v1, :cond_0

    .line 1559
    iget-object v2, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    add-int/lit8 v3, v1, -0x1

    aget-char v2, v2, v3

    sparse-switch v2, :sswitch_data_0

    .line 1577
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v3, p0, Lcom/alibaba/fastjson/a/e;->n:I

    aget-char v2, v2, v3

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_1

    .line 1578
    const/4 v7, 0x1

    .line 1579
    const-wide/high16 v2, -0x8000000000000000L

    .line 1580
    add-int/lit8 v6, v6, 0x1

    move-wide v8, v2

    move v10, v7

    move v3, v6

    .line 1584
    :goto_1
    if-eqz v10, :cond_2

    const-wide v6, -0xcccccccccccccccL

    .line 1585
    :goto_2
    if-ge v3, v1, :cond_e

    .line 1586
    sget-object v4, Lcom/alibaba/fastjson/a/e;->w:[I

    iget-object v5, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    add-int/lit8 v2, v3, 0x1

    aget-char v3, v5, v3

    aget v3, v4, v3

    .line 1587
    neg-int v3, v3

    int-to-long v4, v3

    .line 1589
    :goto_3
    if-ge v2, v1, :cond_5

    .line 1591
    sget-object v11, Lcom/alibaba/fastjson/a/e;->w:[I

    iget-object v12, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    add-int/lit8 v3, v2, 0x1

    aget-char v2, v12, v2

    aget v2, v11, v2

    .line 1592
    cmp-long v11, v4, v6

    if-gez v11, :cond_3

    .line 1593
    new-instance v0, Ljava/math/BigInteger;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/a/e;->B()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 1632
    :goto_4
    return-object v0

    .line 1561
    :sswitch_0
    add-int/lit8 v1, v1, -0x1

    .line 1562
    const/16 v0, 0x4c

    .line 1563
    goto :goto_0

    .line 1565
    :sswitch_1
    add-int/lit8 v1, v1, -0x1

    .line 1566
    const/16 v0, 0x53

    .line 1567
    goto :goto_0

    .line 1569
    :sswitch_2
    add-int/lit8 v1, v1, -0x1

    .line 1570
    const/16 v0, 0x42

    .line 1571
    goto :goto_0

    .line 1582
    :cond_1
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v8, v2

    move v10, v7

    move v3, v6

    goto :goto_1

    .line 1584
    :cond_2
    const-wide v6, -0xcccccccccccccccL

    goto :goto_2

    .line 1595
    :cond_3
    const-wide/16 v12, 0xa

    mul-long/2addr v4, v12

    .line 1596
    int-to-long v12, v2

    add-long/2addr v12, v8

    cmp-long v11, v4, v12

    if-gez v11, :cond_4

    .line 1597
    new-instance v0, Ljava/math/BigInteger;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/a/e;->B()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    goto :goto_4

    .line 1599
    :cond_4
    int-to-long v12, v2

    sub-long/2addr v4, v12

    move v2, v3

    goto :goto_3

    .line 1602
    :cond_5
    if-eqz v10, :cond_a

    .line 1603
    iget v1, p0, Lcom/alibaba/fastjson/a/e;->n:I

    add-int/lit8 v1, v1, 0x1

    if-le v2, v1, :cond_9

    .line 1604
    const-wide/32 v2, -0x80000000

    cmp-long v1, v4, v2

    if-ltz v1, :cond_8

    const/16 v1, 0x4c

    if-eq v0, v1, :cond_8

    .line 1605
    const/16 v1, 0x53

    if-ne v0, v1, :cond_6

    .line 1606
    long-to-int v0, v4

    int-to-short v0, v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    goto :goto_4

    .line 1609
    :cond_6
    const/16 v1, 0x42

    if-ne v0, v1, :cond_7

    .line 1610
    long-to-int v0, v4

    int-to-byte v0, v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    goto :goto_4

    .line 1613
    :cond_7
    long-to-int v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_4

    .line 1615
    :cond_8
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_4

    .line 1617
    :cond_9
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/a/e;->B()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1620
    :cond_a
    neg-long v2, v4

    .line 1621
    const-wide/32 v4, 0x7fffffff

    cmp-long v1, v2, v4

    if-gtz v1, :cond_d

    const/16 v1, 0x4c

    if-eq v0, v1, :cond_d

    .line 1622
    const/16 v1, 0x53

    if-ne v0, v1, :cond_b

    .line 1623
    long-to-int v0, v2

    int-to-short v0, v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    goto/16 :goto_4

    .line 1626
    :cond_b
    const/16 v1, 0x42

    if-ne v0, v1, :cond_c

    .line 1627
    long-to-int v0, v2

    int-to-byte v0, v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    goto/16 :goto_4

    .line 1630
    :cond_c
    long-to-int v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_4

    .line 1632
    :cond_d
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_4

    :cond_e
    move v2, v3

    goto/16 :goto_3

    .line 1559
    nop

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_2
        0x4c -> :sswitch_0
        0x53 -> :sswitch_1
    .end sparse-switch
.end method

.method public z()J
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    const-wide v10, -0xcccccccccccccccL

    .line 1637
    const-wide/16 v0, 0x0

    .line 1638
    const/4 v5, 0x0

    .line 1639
    iget v4, p0, Lcom/alibaba/fastjson/a/e;->n:I

    iget v2, p0, Lcom/alibaba/fastjson/a/e;->n:I

    iget v3, p0, Lcom/alibaba/fastjson/a/e;->m:I

    add-int v7, v2, v3

    .line 1644
    iget-object v2, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    iget v3, p0, Lcom/alibaba/fastjson/a/e;->n:I

    aget-char v2, v2, v3

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_2

    .line 1645
    const/4 v5, 0x1

    .line 1646
    const-wide/high16 v2, -0x8000000000000000L

    .line 1647
    add-int/lit8 v4, v4, 0x1

    move v6, v5

    move v12, v4

    move-wide v4, v2

    move v2, v12

    .line 1651
    :goto_0
    if-eqz v6, :cond_0

    .line 1652
    :cond_0
    if-ge v2, v7, :cond_9

    .line 1653
    sget-object v0, Lcom/alibaba/fastjson/a/e;->w:[I

    iget-object v1, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    add-int/lit8 v3, v2, 0x1

    aget-char v1, v1, v2

    aget v0, v0, v1

    .line 1654
    neg-int v0, v0

    int-to-long v0, v0

    .line 1656
    :goto_1
    if-ge v3, v7, :cond_8

    .line 1658
    iget-object v8, p0, Lcom/alibaba/fastjson/a/e;->f:[C

    add-int/lit8 v2, v3, 0x1

    aget-char v3, v8, v3

    .line 1660
    const/16 v8, 0x4c

    if-eq v3, v8, :cond_1

    const/16 v8, 0x53

    if-eq v3, v8, :cond_1

    const/16 v8, 0x42

    if-ne v3, v8, :cond_3

    .line 1675
    :cond_1
    :goto_2
    if-eqz v6, :cond_7

    .line 1676
    iget v3, p0, Lcom/alibaba/fastjson/a/e;->n:I

    add-int/lit8 v3, v3, 0x1

    if-le v2, v3, :cond_6

    .line 1682
    :goto_3
    return-wide v0

    .line 1649
    :cond_2
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    move v6, v5

    move v12, v4

    move-wide v4, v2

    move v2, v12

    goto :goto_0

    .line 1664
    :cond_3
    sget-object v8, Lcom/alibaba/fastjson/a/e;->w:[I

    aget v3, v8, v3

    .line 1665
    cmp-long v8, v0, v10

    if-gez v8, :cond_4

    .line 1666
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/a/e;->B()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1668
    :cond_4
    const-wide/16 v8, 0xa

    mul-long/2addr v0, v8

    .line 1669
    int-to-long v8, v3

    add-long/2addr v8, v4

    cmp-long v8, v0, v8

    if-gez v8, :cond_5

    .line 1670
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/a/e;->B()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1672
    :cond_5
    int-to-long v8, v3

    sub-long/2addr v0, v8

    move v3, v2

    .line 1673
    goto :goto_1

    .line 1679
    :cond_6
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/a/e;->B()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1682
    :cond_7
    neg-long v0, v0

    goto :goto_3

    :cond_8
    move v2, v3

    goto :goto_2

    :cond_9
    move v3, v2

    goto :goto_1
.end method
