.class public Lcom/alibaba/fastjson/a/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson/a/j$a;
    }
.end annotation


# instance fields
.field private final a:[Lcom/alibaba/fastjson/a/j$a;

.field private final b:[Ljava/lang/String;

.field private final c:[[C

.field private final d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    const/16 v0, 0x80

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/a/j;-><init>(I)V

    .line 34
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    add-int/lit8 v0, p1, -0x1

    iput v0, p0, Lcom/alibaba/fastjson/a/j;->d:I

    .line 38
    new-array v0, p1, [Lcom/alibaba/fastjson/a/j$a;

    iput-object v0, p0, Lcom/alibaba/fastjson/a/j;->a:[Lcom/alibaba/fastjson/a/j$a;

    .line 39
    new-array v0, p1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/fastjson/a/j;->b:[Ljava/lang/String;

    .line 40
    new-array v0, p1, [[C

    iput-object v0, p0, Lcom/alibaba/fastjson/a/j;->c:[[C

    .line 41
    return-void
.end method

.method public static final b([CII)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 120
    move v1, v0

    .line 123
    :goto_0
    if-ge v0, p2, :cond_0

    .line 124
    mul-int/lit8 v2, v1, 0x1f

    add-int/lit8 v1, p1, 0x1

    aget-char v3, p0, p1

    add-int/2addr v2, v3

    .line 123
    add-int/lit8 v0, v0, 0x1

    move p1, v1

    move v1, v2

    goto :goto_0

    .line 126
    :cond_0
    return v1
.end method


# virtual methods
.method public a([CII)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    invoke-static {p1, p2, p3}, Lcom/alibaba/fastjson/a/j;->b([CII)I

    move-result v0

    .line 46
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/alibaba/fastjson/a/j;->a([CIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a([CIII)Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 60
    iget v0, p0, Lcom/alibaba/fastjson/a/j;->d:I

    and-int v7, p4, v0

    .line 62
    iget-object v0, p0, Lcom/alibaba/fastjson/a/j;->b:[Ljava/lang/String;

    aget-object v3, v0, v7

    .line 66
    if-eqz v3, :cond_b

    .line 67
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, p3, :cond_3

    .line 68
    iget-object v0, p0, Lcom/alibaba/fastjson/a/j;->c:[[C

    aget-object v4, v0, v7

    move v0, v1

    .line 70
    :goto_0
    if-ge v0, p3, :cond_a

    .line 71
    add-int v5, p2, v0

    aget-char v5, p1, v5

    aget-char v6, v4, v0

    if-eq v5, v6, :cond_0

    move v0, v1

    .line 77
    :goto_1
    if-eqz v0, :cond_1

    move-object v0, v3

    .line 116
    :goto_2
    return-object v0

    .line 70
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v6, v0

    .line 87
    :goto_3
    iget-object v0, p0, Lcom/alibaba/fastjson/a/j;->a:[Lcom/alibaba/fastjson/a/j$a;

    aget-object v0, v0, v7

    move-object v4, v0

    move v0, v1

    :goto_4
    if-eqz v4, :cond_6

    .line 88
    iget-object v5, v4, Lcom/alibaba/fastjson/a/j$a;->c:[C

    .line 89
    array-length v3, v5

    if-ne p3, v3, :cond_2

    iget v3, v4, Lcom/alibaba/fastjson/a/j$a;->b:I

    if-ne p4, v3, :cond_2

    move v3, v1

    .line 91
    :goto_5
    if-ge v3, p3, :cond_9

    .line 92
    add-int v8, p2, v3

    aget-char v8, p1, v8

    aget-char v9, v5, v3

    if-eq v8, v9, :cond_4

    move v3, v1

    .line 98
    :goto_6
    if-nez v3, :cond_5

    .line 99
    add-int/lit8 v0, v0, 0x1

    .line 87
    :cond_2
    iget-object v3, v4, Lcom/alibaba/fastjson/a/j$a;->e:Lcom/alibaba/fastjson/a/j$a;

    move-object v4, v3

    goto :goto_4

    :cond_3
    move v6, v1

    .line 81
    goto :goto_3

    .line 91
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 102
    :cond_5
    iget-object v0, v4, Lcom/alibaba/fastjson/a/j$a;->a:Ljava/lang/String;

    goto :goto_2

    .line 105
    :cond_6
    const/16 v1, 0x8

    if-lt v0, v1, :cond_7

    .line 106
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    goto :goto_2

    .line 110
    :cond_7
    new-instance v0, Lcom/alibaba/fastjson/a/j$a;

    iget-object v1, p0, Lcom/alibaba/fastjson/a/j;->a:[Lcom/alibaba/fastjson/a/j$a;

    aget-object v5, v1, v7

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/fastjson/a/j$a;-><init>([CIIILcom/alibaba/fastjson/a/j$a;)V

    .line 111
    iget-object v1, p0, Lcom/alibaba/fastjson/a/j;->a:[Lcom/alibaba/fastjson/a/j$a;

    aput-object v0, v1, v7

    .line 112
    if-eqz v6, :cond_8

    .line 113
    iget-object v1, p0, Lcom/alibaba/fastjson/a/j;->b:[Ljava/lang/String;

    iget-object v2, v0, Lcom/alibaba/fastjson/a/j$a;->a:Ljava/lang/String;

    aput-object v2, v1, v7

    .line 114
    iget-object v1, p0, Lcom/alibaba/fastjson/a/j;->c:[[C

    iget-object v2, v0, Lcom/alibaba/fastjson/a/j$a;->c:[C

    aput-object v2, v1, v7

    .line 116
    :cond_8
    iget-object v0, v0, Lcom/alibaba/fastjson/a/j$a;->a:Ljava/lang/String;

    goto :goto_2

    :cond_9
    move v3, v2

    goto :goto_6

    :cond_a
    move v0, v2

    goto :goto_1

    :cond_b
    move v6, v2

    goto :goto_3
.end method
