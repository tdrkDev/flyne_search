.class public Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;",
        ">;"
    }
.end annotation


# static fields
.field public static final EMPTY:Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;

.field static final HEX_DIGITS:[C

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final data:[B

.field transient hashCode:I

.field transient utf8:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->HEX_DIGITS:[C

    .line 53
    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->of([B)Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->EMPTY:Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;

    return-void

    .line 48
    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method constructor <init>([B)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->data:[B

    .line 61
    return-void
.end method

.method public static decodeBase64(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;
    .locals 2

    .prologue
    .line 139
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "base64 == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_0
    invoke-static {p0}, Lcom/meizu/cloud/pushsdk/networking/okio/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v1

    .line 141
    if-eqz v1, :cond_1

    new-instance v0, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;

    invoke-direct {v0, v1}, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;-><init>([B)V

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static decodeHex(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;
    .locals 4

    .prologue
    .line 157
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "hex == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected hex string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v1, v0, [B

    .line 161
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 162
    mul-int/lit8 v2, v0, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->decodeHexDigit(C)I

    move-result v2

    shl-int/lit8 v2, v2, 0x4

    .line 163
    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->decodeHexDigit(C)I

    move-result v3

    .line 164
    add-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 161
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 166
    :cond_2
    invoke-static {v1}, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->of([B)Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method private static decodeHexDigit(C)I
    .locals 3

    .prologue
    .line 170
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    add-int/lit8 v0, p0, -0x30

    .line 172
    :goto_0
    return v0

    .line 171
    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x66

    if-gt p0, v0, :cond_1

    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 172
    :cond_1
    const/16 v0, 0x41

    if-lt p0, v0, :cond_2

    const/16 v0, 0x46

    if-gt p0, v0, :cond_2

    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 173
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected hex digit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private digest(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;
    .locals 2

    .prologue
    .line 120
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->data:[B

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->of([B)Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 121
    :catch_0
    move-exception v0

    .line 122
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static encodeUtf8(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;
    .locals 2

    .prologue
    .line 86
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "s == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_0
    new-instance v0, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;

    sget-object v1, Lcom/meizu/cloud/pushsdk/networking/okio/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;-><init>([B)V

    .line 88
    iput-object p0, v0, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->utf8:Ljava/lang/String;

    .line 89
    return-object v0
.end method

.method public static varargs of([B)Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;
    .locals 2

    .prologue
    .line 67
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "data == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_0
    new-instance v1, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;

    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-direct {v1, v0}, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;-><init>([B)V

    return-object v1
.end method

.method public static of([BII)Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;
    .locals 6

    .prologue
    .line 76
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "data == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_0
    array-length v0, p0

    int-to-long v0, v0

    int-to-long v2, p1

    int-to-long v4, p2

    invoke-static/range {v0 .. v5}, Lcom/meizu/cloud/pushsdk/networking/okio/Util;->checkOffsetAndCount(JJJ)V

    .line 79
    new-array v0, p2, [B

    .line 80
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 81
    new-instance v1, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;

    invoke-direct {v1, v0}, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;-><init>([B)V

    return-object v1
.end method

.method public static read(Ljava/io/InputStream;I)Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 183
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "in == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :cond_0
    if-gez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    :cond_1
    new-array v1, p1, [B

    .line 187
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_3

    .line 188
    sub-int v2, p1, v0

    invoke-virtual {p0, v1, v0, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 189
    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 187
    :cond_2
    add-int/2addr v0, v2

    goto :goto_0

    .line 191
    :cond_3
    new-instance v0, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;

    invoke-direct {v0, v1}, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;-><init>([B)V

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 363
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 364
    invoke-static {p1, v0}, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->read(Ljava/io/InputStream;I)Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;

    move-result-object v0

    .line 366
    :try_start_0
    const-class v1, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;

    const-string v2, "data"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 367
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 368
    iget-object v0, v0, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->data:[B

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 374
    return-void

    .line 369
    :catch_0
    move-exception v0

    .line 370
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 371
    :catch_1
    move-exception v0

    .line 372
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 377
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->data:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 378
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->data:[B

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->write([B)V

    .line 379
    return-void
.end method


# virtual methods
.method public base64()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->data:[B

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/networking/okio/Base64;->encode([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public base64Url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->data:[B

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/networking/okio/Base64;->encodeUrl([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public compareTo(Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;)I
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, -0x1

    .line 338
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->size()I

    move-result v4

    .line 339
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->size()I

    move-result v5

    .line 340
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v6

    move v3, v2

    :goto_0
    if-ge v3, v6, :cond_3

    .line 341
    invoke-virtual {p0, v3}, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->getByte(I)B

    move-result v7

    and-int/lit16 v7, v7, 0xff

    .line 342
    invoke-virtual {p1, v3}, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->getByte(I)B

    move-result v8

    and-int/lit16 v8, v8, 0xff

    .line 343
    if-ne v7, v8, :cond_0

    .line 340
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 344
    :cond_0
    if-ge v7, v8, :cond_2

    .line 347
    :cond_1
    :goto_1
    return v0

    :cond_2
    move v0, v1

    .line 344
    goto :goto_1

    .line 346
    :cond_3
    if-ne v4, v5, :cond_4

    move v0, v2

    goto :goto_1

    .line 347
    :cond_4
    if-lt v4, v5, :cond_1

    move v0, v1

    goto :goto_1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 47
    check-cast p1, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;

    invoke-virtual {p0, p1}, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->compareTo(Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 326
    if-ne p1, p0, :cond_0

    .line 327
    :goto_0
    return v1

    :cond_0
    instance-of v0, p1, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;

    .line 328
    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->size()I

    move-result v0

    iget-object v3, p0, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->data:[B

    array-length v3, v3

    if-ne v0, v3, :cond_1

    check-cast p1, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->data:[B

    iget-object v3, p0, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->data:[B

    array-length v3, v3

    .line 329
    invoke-virtual {p1, v2, v0, v2, v3}, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->rangeEquals(I[BII)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    move v1, v0

    .line 327
    goto :goto_0

    :cond_1
    move v0, v2

    .line 329
    goto :goto_1
.end method

.method public getByte(I)B
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->data:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 333
    iget v0, p0, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->hashCode:I

    .line 334
    if-eqz v0, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->data:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    iput v0, p0, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->hashCode:I

    goto :goto_0
.end method

.method public hex()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 146
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->data:[B

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v2, v1, [C

    .line 148
    iget-object v3, p0, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->data:[B

    array-length v4, v3

    move v1, v0

    :goto_0
    if-ge v0, v4, :cond_0

    aget-byte v5, v3, v0

    .line 149
    add-int/lit8 v6, v1, 0x1

    sget-object v7, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->HEX_DIGITS:[C

    shr-int/lit8 v8, v5, 0x4

    and-int/lit8 v8, v8, 0xf

    aget-char v7, v7, v8

    aput-char v7, v2, v1

    .line 150
    add-int/lit8 v1, v6, 0x1

    sget-object v7, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->HEX_DIGITS:[C

    and-int/lit8 v5, v5, 0xf

    aget-char v5, v7, v5

    aput-char v5, v2, v6

    .line 148
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 152
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public md5()Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;
    .locals 1

    .prologue
    .line 110
    const-string v0, "MD5"

    invoke-direct {p0, v0}, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->digest(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public rangeEquals(ILcom/meizu/cloud/pushsdk/networking/okio/ByteString;II)Z
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->data:[B

    invoke-virtual {p2, p3, v0, p1, p4}, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->rangeEquals(I[BII)Z

    move-result v0

    return v0
.end method

.method public rangeEquals(I[BII)Z
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->data:[B

    array-length v0, v0

    sub-int/2addr v0, p4

    if-gt p1, v0, :cond_0

    array-length v0, p2

    sub-int/2addr v0, p4

    if-gt p3, v0, :cond_0

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->data:[B

    .line 322
    invoke-static {v0, p1, p2, p3, p4}, Lcom/meizu/cloud/pushsdk/networking/okio/Util;->arrayRangeEquals([BI[BII)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 320
    :goto_0
    return v0

    .line 322
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sha256()Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;
    .locals 1

    .prologue
    .line 115
    const-string v0, "SHA-256"

    invoke-direct {p0, v0}, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->digest(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->data:[B

    array-length v0, v0

    return v0
.end method

.method public substring(I)Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->data:[B

    array-length v0, v0

    invoke-virtual {p0, p1, v0}, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->substring(II)Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public substring(II)Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;
    .locals 4

    .prologue
    .line 258
    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "beginIndex < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->data:[B

    array-length v0, v0

    if-le p2, v0, :cond_1

    .line 260
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endIndex > length("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->data:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 263
    :cond_1
    sub-int v0, p2, p1

    .line 264
    if-gez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "endIndex < beginIndex"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 266
    :cond_2
    if-nez p1, :cond_3

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->data:[B

    array-length v1, v1

    if-ne p2, v1, :cond_3

    .line 272
    :goto_0
    return-object p0

    .line 270
    :cond_3
    new-array v1, v0, [B

    .line 271
    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->data:[B

    const/4 v3, 0x0

    invoke-static {v2, p1, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 272
    new-instance p0, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;

    invoke-direct {p0, v1}, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;-><init>([B)V

    goto :goto_0
.end method

.method public toAsciiLowercase()Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;
    .locals 6

    .prologue
    const/16 v5, 0x5a

    const/16 v4, 0x41

    .line 201
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->data:[B

    array-length v0, v0

    if-ge v1, v0, :cond_5

    .line 202
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->data:[B

    aget-byte v3, v0, v1

    .line 203
    if-lt v3, v4, :cond_0

    if-le v3, v5, :cond_1

    .line 201
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 207
    :cond_1
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->data:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 208
    add-int/lit8 v2, v1, 0x1

    add-int/lit8 v3, v3, 0x20

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    move v1, v2

    .line 209
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_4

    .line 210
    aget-byte v2, v0, v1

    .line 211
    if-lt v2, v4, :cond_2

    if-le v2, v5, :cond_3

    .line 209
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 212
    :cond_3
    add-int/lit8 v2, v2, 0x20

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_2

    .line 214
    :cond_4
    new-instance p0, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;

    invoke-direct {p0, v0}, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;-><init>([B)V

    .line 216
    :cond_5
    return-object p0
.end method

.method public toAsciiUppercase()Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;
    .locals 6

    .prologue
    const/16 v5, 0x7a

    const/16 v4, 0x61

    .line 226
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->data:[B

    array-length v0, v0

    if-ge v1, v0, :cond_5

    .line 227
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->data:[B

    aget-byte v3, v0, v1

    .line 228
    if-lt v3, v4, :cond_0

    if-le v3, v5, :cond_1

    .line 226
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 232
    :cond_1
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->data:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 233
    add-int/lit8 v2, v1, 0x1

    add-int/lit8 v3, v3, -0x20

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    move v1, v2

    .line 234
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_4

    .line 235
    aget-byte v2, v0, v1

    .line 236
    if-lt v2, v4, :cond_2

    if-le v2, v5, :cond_3

    .line 234
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 237
    :cond_3
    add-int/lit8 v2, v2, -0x20

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_2

    .line 239
    :cond_4
    new-instance p0, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;

    invoke-direct {p0, v0}, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;-><init>([B)V

    .line 241
    :cond_5
    return-object p0
.end method

.method public toByteArray()[B
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->data:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 351
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->data:[B

    array-length v0, v0

    if-nez v0, :cond_0

    .line 352
    const-string v0, "ByteString[size=0]"

    .line 359
    :goto_0
    return-object v0

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->data:[B

    array-length v0, v0

    const/16 v1, 0x10

    if-gt v0, v1, :cond_1

    .line 356
    const-string v0, "ByteString[size=%s data=%s]"

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->data:[B

    array-length v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->hex()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 359
    :cond_1
    const-string v0, "ByteString[size=%s md5=%s]"

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->data:[B

    array-length v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->md5()Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->hex()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public utf8()Ljava/lang/String;
    .locals 3

    .prologue
    .line 94
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->utf8:Ljava/lang/String;

    .line 96
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->data:[B

    sget-object v2, Lcom/meizu/cloud/pushsdk/networking/okio/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->utf8:Ljava/lang/String;

    goto :goto_0
.end method

.method write(Lcom/meizu/cloud/pushsdk/networking/okio/Buffer;)V
    .locals 3

    .prologue
    .line 302
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->data:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->data:[B

    array-length v2, v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/meizu/cloud/pushsdk/networking/okio/Buffer;->write([BII)Lcom/meizu/cloud/pushsdk/networking/okio/Buffer;

    .line 303
    return-void
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 296
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "out == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->data:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 298
    return-void
.end method
