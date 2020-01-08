.class public final Lcom/inveno/se/config/a;
.super Ljava/lang/Object;


# direct methods
.method private static final a(IIIII[I)I
    .locals 3

    ushr-int/lit8 v0, p2, 0x5

    shl-int/lit8 v1, p1, 0x2

    xor-int/2addr v0, v1

    ushr-int/lit8 v1, p1, 0x3

    shl-int/lit8 v2, p2, 0x4

    xor-int/2addr v1, v2

    add-int/2addr v0, v1

    xor-int v1, p0, p1

    and-int/lit8 v2, p3, 0x3

    xor-int/2addr v2, p4

    aget v2, p5, v2

    xor-int/2addr v2, p2

    add-int/2addr v1, v2

    xor-int/2addr v0, v1

    return v0
.end method

.method public static final a([B[B)[B
    .locals 3

    const/4 v2, 0x0

    array-length v0, p0

    if-nez v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/inveno/se/config/a;->a([BZ)[I

    move-result-object v0

    invoke-static {p1, v2}, Lcom/inveno/se/config/a;->a([BZ)[I

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inveno/se/config/a;->a([I[I)[I

    move-result-object v0

    invoke-static {v0, v2}, Lcom/inveno/se/config/a;->a([IZ)[B

    move-result-object p0

    goto :goto_0
.end method

.method private static final a([IZ)[B
    .locals 5

    array-length v0, p0

    shl-int/lit8 v1, v0, 0x2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "toByteArray n:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " includeLength:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " data:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLogB(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget v0, p0, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "toByteArray m:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/inveno/se/tools/LogTools;->showLogB(Ljava/lang/String;)V

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    move v0, v1

    :cond_1
    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_2

    ushr-int/lit8 v3, v2, 0x2

    aget v3, p0, v3

    and-int/lit8 v4, v2, 0x3

    shl-int/lit8 v4, v4, 0x3

    ushr-int/2addr v3, v4

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method private static final a([BZ)[I
    .locals 7

    array-length v0, p0

    and-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_0

    array-length v0, p0

    ushr-int/lit8 v0, v0, 0x2

    move v1, v0

    :goto_0
    if-eqz p1, :cond_1

    add-int/lit8 v0, v1, 0x1

    new-array v0, v0, [I

    array-length v2, p0

    aput v2, v0, v1

    :goto_1
    array-length v2, p0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_2

    ushr-int/lit8 v3, v1, 0x2

    aget v4, v0, v3

    aget-byte v5, p0, v1

    and-int/lit16 v5, v5, 0xff

    and-int/lit8 v6, v1, 0x3

    shl-int/lit8 v6, v6, 0x3

    shl-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_0
    array-length v0, p0

    ushr-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    new-array v0, v1, [I

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method private static final a([I[I)[I
    .locals 10

    const/4 v1, 0x4

    const/4 v6, 0x0

    array-length v0, p0

    add-int/lit8 v8, v0, -0x1

    const/4 v0, 0x1

    if-ge v8, v0, :cond_1

    :cond_0
    return-object p0

    :cond_1
    array-length v0, p1

    if-ge v0, v1, :cond_3

    new-array v5, v1, [I

    array-length v0, p1

    invoke-static {p1, v6, v5, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    aget v2, p0, v8

    aget v0, p0, v6

    const/16 v0, 0x34

    add-int/lit8 v1, v8, 0x1

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x6

    move v1, v6

    :goto_1
    add-int/lit8 v7, v0, -0x1

    if-lez v0, :cond_0

    const v0, -0x61c88647

    add-int/2addr v0, v1

    ushr-int/lit8 v1, v0, 0x2

    and-int/lit8 v4, v1, 0x3

    move v3, v6

    :goto_2
    if-ge v3, v8, :cond_2

    add-int/lit8 v1, v3, 0x1

    aget v1, p0, v1

    aget v9, p0, v3

    invoke-static/range {v0 .. v5}, Lcom/inveno/se/config/a;->a(IIIII[I)I

    move-result v1

    add-int v2, v9, v1

    aput v2, p0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    aget v1, p0, v6

    aget v9, p0, v8

    invoke-static/range {v0 .. v5}, Lcom/inveno/se/config/a;->a(IIIII[I)I

    move-result v1

    add-int v2, v9, v1

    aput v2, p0, v8

    move v1, v0

    move v0, v7

    goto :goto_1

    :cond_3
    move-object v5, p1

    goto :goto_0
.end method

.method public static final b([B[B)[B
    .locals 2

    const/4 v1, 0x0

    array-length v0, p0

    if-nez v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-static {p0, v1}, Lcom/inveno/se/config/a;->a([BZ)[I

    move-result-object v0

    invoke-static {p1, v1}, Lcom/inveno/se/config/a;->a([BZ)[I

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inveno/se/config/a;->b([I[I)[I

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/inveno/se/config/a;->a([IZ)[B

    move-result-object p0

    goto :goto_0
.end method

.method private static final b([I[I)[I
    .locals 10

    const/4 v1, 0x4

    const v9, -0x61c88647

    const/4 v8, 0x0

    array-length v0, p0

    add-int/lit8 v6, v0, -0x1

    const/4 v0, 0x1

    if-ge v6, v0, :cond_1

    :cond_0
    return-object p0

    :cond_1
    array-length v0, p1

    if-ge v0, v1, :cond_3

    new-array v5, v1, [I

    array-length v0, p1

    invoke-static {p1, v8, v5, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    aget v0, p0, v6

    aget v1, p0, v8

    const/16 v0, 0x34

    add-int/lit8 v2, v6, 0x1

    div-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x6

    mul-int/2addr v0, v9

    :goto_1
    if-eqz v0, :cond_0

    ushr-int/lit8 v2, v0, 0x2

    and-int/lit8 v4, v2, 0x3

    move v3, v6

    :goto_2
    if-lez v3, :cond_2

    add-int/lit8 v2, v3, -0x1

    aget v2, p0, v2

    aget v7, p0, v3

    invoke-static/range {v0 .. v5}, Lcom/inveno/se/config/a;->a(IIIII[I)I

    move-result v1

    sub-int v1, v7, v1

    aput v1, p0, v3

    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_2
    aget v2, p0, v6

    aget v7, p0, v8

    invoke-static/range {v0 .. v5}, Lcom/inveno/se/config/a;->a(IIIII[I)I

    move-result v1

    sub-int v1, v7, v1

    aput v1, p0, v8

    sub-int/2addr v0, v9

    goto :goto_1

    :cond_3
    move-object v5, p1

    goto :goto_0
.end method
