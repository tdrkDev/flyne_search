.class public Lcom/meizu/commonwidget/avastar/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/commonwidget/avastar/b$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(DI)D
    .locals 6

    .prologue
    .line 55
    if-gez p2, :cond_1

    .line 56
    const-wide/16 v0, 0x0

    .line 62
    :cond_0
    return-wide v0

    .line 59
    :cond_1
    const/4 v0, 0x0

    move v2, v0

    move-wide v0, p0

    :goto_0
    if-ge v2, p2, :cond_0

    .line 60
    mul-double v4, p0, v0

    .line 59
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move-wide v0, v4

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)D
    .locals 12

    .prologue
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    const/4 v1, 0x0

    .line 10
    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 11
    const/4 v2, -0x1

    if-le v0, v2, :cond_0

    .line 12
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    new-array v4, v2, [I

    move v2, v1

    .line 14
    :goto_1
    if-ge v2, v0, :cond_1

    .line 15
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aput v3, v4, v2

    .line 14
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    move v0, v1

    .line 11
    goto :goto_0

    :cond_1
    move v2, v0

    .line 19
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 20
    sub-int v3, v2, v0

    .line 21
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 22
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sub-int v3, v5, v3

    aput v3, v4, v2

    .line 19
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 24
    :cond_2
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aput v3, v4, v2

    goto :goto_3

    .line 28
    :cond_3
    const-wide/16 v2, 0x0

    .line 31
    :goto_4
    array-length v5, v4

    if-ge v1, v5, :cond_7

    .line 32
    if-nez v0, :cond_5

    .line 33
    aget v5, v4, v1

    int-to-double v6, v5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    sub-int v5, v1, v5

    invoke-static {v10, v11, v5}, Lcom/meizu/commonwidget/avastar/b;->a(DI)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v2, v6

    .line 31
    :cond_4
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 35
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v0

    if-ge v1, v5, :cond_6

    .line 36
    aget v5, v4, v1

    if-eqz v5, :cond_4

    .line 37
    const-wide/high16 v6, 0x4014000000000000L    # 5.0

    mul-double/2addr v2, v6

    aget v5, v4, v1

    int-to-double v6, v5

    add-double/2addr v2, v6

    goto :goto_5

    .line 40
    :cond_6
    aget v5, v4, v1

    if-eqz v5, :cond_4

    .line 41
    aget v5, v4, v1

    int-to-double v6, v5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    sub-int v5, v1, v5

    invoke-static {v10, v11, v5}, Lcom/meizu/commonwidget/avastar/b;->a(DI)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v2, v6

    goto :goto_5

    .line 50
    :cond_7
    return-wide v2
.end method
