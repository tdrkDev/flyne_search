.class Landroid/support/media/ExifInterface$ExifAttribute;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/media/ExifInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExifAttribute"
.end annotation


# instance fields
.field public final bytes:[B

.field public final format:I

.field public final numberOfComponents:I


# direct methods
.method private constructor <init>(II[B)V
    .locals 0

    .prologue
    .line 2936
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2937
    iput p1, p0, Landroid/support/media/ExifInterface$ExifAttribute;->format:I

    .line 2938
    iput p2, p0, Landroid/support/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    .line 2939
    iput-object p3, p0, Landroid/support/media/ExifInterface$ExifAttribute;->bytes:[B

    .line 2940
    return-void
.end method

.method synthetic constructor <init>(II[BLandroid/support/media/ExifInterface$1;)V
    .locals 0

    .prologue
    .line 2931
    invoke-direct {p0, p1, p2, p3}, Landroid/support/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-void
.end method

.method static synthetic access$500(Landroid/support/media/ExifInterface$ExifAttribute;Ljava/nio/ByteOrder;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2931
    invoke-direct {p0, p1}, Landroid/support/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static createByte(Ljava/lang/String;)Landroid/support/media/ExifInterface$ExifAttribute;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2986
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v3, :cond_0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x30

    if-lt v0, v1, :cond_0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x31

    if-gt v0, v1, :cond_0

    .line 2987
    new-array v1, v3, [B

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    .line 2988
    new-instance v0, Landroid/support/media/ExifInterface$ExifAttribute;

    array-length v2, v1

    invoke-direct {v0, v3, v2, v1}, Landroid/support/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    .line 2991
    :goto_0
    return-object v0

    .line 2990
    :cond_0
    invoke-static {}, Landroid/support/media/ExifInterface;->access$000()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 2991
    new-instance v0, Landroid/support/media/ExifInterface$ExifAttribute;

    array-length v2, v1

    invoke-direct {v0, v3, v2, v1}, Landroid/support/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    goto :goto_0
.end method

.method public static createDouble(DLjava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;
    .locals 2

    .prologue
    .line 3040
    const/4 v0, 0x1

    new-array v0, v0, [D

    const/4 v1, 0x0

    aput-wide p0, v0, v1

    invoke-static {v0, p2}, Landroid/support/media/ExifInterface$ExifAttribute;->createDouble([DLjava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;

    move-result-object v0

    return-object v0
.end method

.method public static createDouble([DLjava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;
    .locals 6

    .prologue
    const/16 v3, 0xc

    .line 3030
    sget-object v0, Landroid/support/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    aget v0, v0, v3

    array-length v1, p0

    mul-int/2addr v0, v1

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 3032
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 3033
    array-length v2, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-wide v4, p0, v0

    .line 3034
    invoke-virtual {v1, v4, v5}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    .line 3033
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3036
    :cond_0
    new-instance v0, Landroid/support/media/ExifInterface$ExifAttribute;

    array-length v2, p0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-direct {v0, v3, v2, v1}, Landroid/support/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v0
.end method

.method public static createSLong(ILjava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;
    .locals 2

    .prologue
    .line 2981
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p0, v0, v1

    invoke-static {v0, p1}, Landroid/support/media/ExifInterface$ExifAttribute;->createSLong([ILjava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;

    move-result-object v0

    return-object v0
.end method

.method public static createSLong([ILjava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;
    .locals 5

    .prologue
    const/16 v4, 0x9

    .line 2971
    sget-object v0, Landroid/support/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    aget v0, v0, v4

    array-length v1, p0

    mul-int/2addr v0, v1

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 2973
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 2974
    array-length v2, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget v3, p0, v0

    .line 2975
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2974
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2977
    :cond_0
    new-instance v0, Landroid/support/media/ExifInterface$ExifAttribute;

    array-length v2, p0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-direct {v0, v4, v2, v1}, Landroid/support/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v0
.end method

.method public static createSRational(Landroid/support/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;
    .locals 2

    .prologue
    .line 3026
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/support/media/ExifInterface$Rational;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0, p1}, Landroid/support/media/ExifInterface$ExifAttribute;->createSRational([Landroid/support/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;

    move-result-object v0

    return-object v0
.end method

.method public static createSRational([Landroid/support/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;
    .locals 7

    .prologue
    const/16 v6, 0xa

    .line 3015
    sget-object v0, Landroid/support/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    aget v0, v0, v6

    array-length v1, p0

    mul-int/2addr v0, v1

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 3017
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 3018
    array-length v2, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p0, v0

    .line 3019
    iget-wide v4, v3, Landroid/support/media/ExifInterface$Rational;->numerator:J

    long-to-int v4, v4

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 3020
    iget-wide v4, v3, Landroid/support/media/ExifInterface$Rational;->denominator:J

    long-to-int v3, v4

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 3018
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3022
    :cond_0
    new-instance v0, Landroid/support/media/ExifInterface$ExifAttribute;

    array-length v2, p0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-direct {v0, v6, v2, v1}, Landroid/support/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v0
.end method

.method public static createString(Ljava/lang/String;)Landroid/support/media/ExifInterface$ExifAttribute;
    .locals 4

    .prologue
    .line 2995
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/support/media/ExifInterface;->access$000()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 2996
    new-instance v1, Landroid/support/media/ExifInterface$ExifAttribute;

    const/4 v2, 0x2

    array-length v3, v0

    invoke-direct {v1, v2, v3, v0}, Landroid/support/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v1
.end method

.method public static createULong(JLjava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;
    .locals 2

    .prologue
    .line 2967
    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v1, 0x0

    aput-wide p0, v0, v1

    invoke-static {v0, p2}, Landroid/support/media/ExifInterface$ExifAttribute;->createULong([JLjava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;

    move-result-object v0

    return-object v0
.end method

.method public static createULong([JLjava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;
    .locals 7

    .prologue
    const/4 v6, 0x4

    .line 2957
    sget-object v0, Landroid/support/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    aget v0, v0, v6

    array-length v1, p0

    mul-int/2addr v0, v1

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 2959
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 2960
    array-length v2, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-wide v4, p0, v0

    .line 2961
    long-to-int v3, v4

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2960
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2963
    :cond_0
    new-instance v0, Landroid/support/media/ExifInterface$ExifAttribute;

    array-length v2, p0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-direct {v0, v6, v2, v1}, Landroid/support/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v0
.end method

.method public static createURational(Landroid/support/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;
    .locals 2

    .prologue
    .line 3011
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/support/media/ExifInterface$Rational;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0, p1}, Landroid/support/media/ExifInterface$ExifAttribute;->createURational([Landroid/support/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;

    move-result-object v0

    return-object v0
.end method

.method public static createURational([Landroid/support/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;
    .locals 7

    .prologue
    const/4 v6, 0x5

    .line 3000
    sget-object v0, Landroid/support/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    aget v0, v0, v6

    array-length v1, p0

    mul-int/2addr v0, v1

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 3002
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 3003
    array-length v2, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p0, v0

    .line 3004
    iget-wide v4, v3, Landroid/support/media/ExifInterface$Rational;->numerator:J

    long-to-int v4, v4

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 3005
    iget-wide v4, v3, Landroid/support/media/ExifInterface$Rational;->denominator:J

    long-to-int v3, v4

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 3003
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3007
    :cond_0
    new-instance v0, Landroid/support/media/ExifInterface$ExifAttribute;

    array-length v2, p0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-direct {v0, v6, v2, v1}, Landroid/support/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v0
.end method

.method public static createUShort(ILjava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;
    .locals 2

    .prologue
    .line 2953
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p0, v0, v1

    invoke-static {v0, p1}, Landroid/support/media/ExifInterface$ExifAttribute;->createUShort([ILjava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;

    move-result-object v0

    return-object v0
.end method

.method public static createUShort([ILjava/nio/ByteOrder;)Landroid/support/media/ExifInterface$ExifAttribute;
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 2943
    sget-object v0, Landroid/support/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    aget v0, v0, v4

    array-length v1, p0

    mul-int/2addr v0, v1

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 2945
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 2946
    array-length v2, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget v3, p0, v0

    .line 2947
    int-to-short v3, v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 2946
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2949
    :cond_0
    new-instance v0, Landroid/support/media/ExifInterface$ExifAttribute;

    array-length v2, p0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-direct {v0, v4, v2, v1}, Landroid/support/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v0
.end method

.method private getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;
    .locals 10

    .prologue
    const/4 v0, 0x1

    const/4 v7, 0x0

    const/4 v1, 0x0

    .line 3049
    .line 3051
    :try_start_0
    new-instance v8, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;

    iget-object v2, p0, Landroid/support/media/ExifInterface$ExifAttribute;->bytes:[B

    invoke-direct {v8, v2}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_f
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3052
    :try_start_1
    invoke-virtual {v8, p1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 3053
    iget v2, p0, Landroid/support/media/ExifInterface$ExifAttribute;->format:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    packed-switch v2, :pswitch_data_0

    .line 3160
    if-eqz v8, :cond_0

    .line 3162
    :try_start_2
    invoke-virtual {v8}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_c

    :cond_0
    :goto_0
    move-object v0, v7

    .line 3165
    :cond_1
    :goto_1
    return-object v0

    .line 3057
    :pswitch_0
    :try_start_3
    iget-object v1, p0, Landroid/support/media/ExifInterface$ExifAttribute;->bytes:[B

    array-length v1, v1

    if-ne v1, v0, :cond_2

    iget-object v1, p0, Landroid/support/media/ExifInterface$ExifAttribute;->bytes:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    if-ltz v1, :cond_2

    iget-object v1, p0, Landroid/support/media/ExifInterface$ExifAttribute;->bytes:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    if-gt v1, v0, :cond_2

    .line 3058
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [C

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/support/media/ExifInterface$ExifAttribute;->bytes:[B

    const/4 v4, 0x0

    aget-byte v3, v3, v4

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    aput-char v3, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3160
    if-eqz v8, :cond_1

    .line 3162
    :try_start_4
    invoke-virtual {v8}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 3163
    :catch_0
    move-exception v1

    .line 3164
    const-string v2, "ExifInterface"

    const-string v3, "IOException occurred while closing InputStream"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 3060
    :cond_2
    :try_start_5
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Landroid/support/media/ExifInterface$ExifAttribute;->bytes:[B

    invoke-static {}, Landroid/support/media/ExifInterface;->access$000()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 3160
    if-eqz v8, :cond_1

    .line 3162
    :try_start_6
    invoke-virtual {v8}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 3163
    :catch_1
    move-exception v1

    .line 3164
    const-string v2, "ExifInterface"

    const-string v3, "IOException occurred while closing InputStream"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 3065
    :pswitch_1
    :try_start_7
    iget v2, p0, Landroid/support/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    invoke-static {}, Landroid/support/media/ExifInterface;->access$100()[B

    move-result-object v3

    array-length v3, v3

    if-lt v2, v3, :cond_12

    move v2, v1

    .line 3067
    :goto_2
    invoke-static {}, Landroid/support/media/ExifInterface;->access$100()[B

    move-result-object v3

    array-length v3, v3

    if-ge v2, v3, :cond_3

    .line 3068
    iget-object v3, p0, Landroid/support/media/ExifInterface$ExifAttribute;->bytes:[B

    aget-byte v3, v3, v2

    invoke-static {}, Landroid/support/media/ExifInterface;->access$100()[B

    move-result-object v4

    aget-byte v4, v4, v2

    if-eq v3, v4, :cond_5

    move v0, v1

    .line 3073
    :cond_3
    if-eqz v0, :cond_12

    .line 3074
    invoke-static {}, Landroid/support/media/ExifInterface;->access$100()[B

    move-result-object v0

    array-length v1, v0

    move v0, v1

    .line 3078
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3079
    :goto_4
    iget v2, p0, Landroid/support/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v0, v2, :cond_4

    .line 3080
    iget-object v2, p0, Landroid/support/media/ExifInterface$ExifAttribute;->bytes:[B

    aget-byte v2, v2, v0

    .line 3081
    if-nez v2, :cond_6

    .line 3091
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result-object v0

    .line 3160
    if-eqz v8, :cond_1

    .line 3162
    :try_start_8
    invoke-virtual {v8}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_1

    .line 3163
    :catch_2
    move-exception v1

    .line 3164
    const-string v2, "ExifInterface"

    const-string v3, "IOException occurred while closing InputStream"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 3067
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 3084
    :cond_6
    const/16 v3, 0x20

    if-lt v2, v3, :cond_7

    .line 3085
    int-to-char v2, v2

    :try_start_9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3089
    :goto_5
    add-int/lit8 v0, v0, 0x1

    .line 3090
    goto :goto_4

    .line 3087
    :cond_7
    const/16 v2, 0x3f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_5

    .line 3156
    :catch_3
    move-exception v0

    move-object v1, v8

    .line 3157
    :goto_6
    :try_start_a
    const-string v2, "ExifInterface"

    const-string v3, "IOException occurred during reading a value"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 3160
    if-eqz v1, :cond_8

    .line 3162
    :try_start_b
    invoke-virtual {v1}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_d

    :cond_8
    :goto_7
    move-object v0, v7

    .line 3165
    goto/16 :goto_1

    .line 3094
    :pswitch_2
    :try_start_c
    iget v0, p0, Landroid/support/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array v0, v0, [I

    .line 3095
    :goto_8
    iget v2, p0, Landroid/support/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v1, v2, :cond_9

    .line 3096
    invoke-virtual {v8}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v2

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 3095
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 3160
    :cond_9
    if-eqz v8, :cond_1

    .line 3162
    :try_start_d
    invoke-virtual {v8}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4

    goto/16 :goto_1

    .line 3163
    :catch_4
    move-exception v1

    .line 3164
    const-string v2, "ExifInterface"

    const-string v3, "IOException occurred while closing InputStream"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 3101
    :pswitch_3
    :try_start_e
    iget v0, p0, Landroid/support/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array v0, v0, [J

    .line 3102
    :goto_9
    iget v2, p0, Landroid/support/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v1, v2, :cond_a

    .line 3103
    invoke-virtual {v8}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedInt()J

    move-result-wide v2

    aput-wide v2, v0, v1
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 3102
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 3160
    :cond_a
    if-eqz v8, :cond_1

    .line 3162
    :try_start_f
    invoke-virtual {v8}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_5

    goto/16 :goto_1

    .line 3163
    :catch_5
    move-exception v1

    .line 3164
    const-string v2, "ExifInterface"

    const-string v3, "IOException occurred while closing InputStream"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 3108
    :pswitch_4
    :try_start_10
    iget v0, p0, Landroid/support/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array v0, v0, [Landroid/support/media/ExifInterface$Rational;

    move v9, v1

    .line 3109
    :goto_a
    iget v1, p0, Landroid/support/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v9, v1, :cond_b

    .line 3110
    invoke-virtual {v8}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedInt()J

    move-result-wide v2

    .line 3111
    invoke-virtual {v8}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedInt()J

    move-result-wide v4

    .line 3112
    new-instance v1, Landroid/support/media/ExifInterface$Rational;

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Landroid/support/media/ExifInterface$Rational;-><init>(JJLandroid/support/media/ExifInterface$1;)V

    aput-object v1, v0, v9
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_3
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 3109
    add-int/lit8 v1, v9, 0x1

    move v9, v1

    goto :goto_a

    .line 3160
    :cond_b
    if-eqz v8, :cond_1

    .line 3162
    :try_start_11
    invoke-virtual {v8}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_6

    goto/16 :goto_1

    .line 3163
    :catch_6
    move-exception v1

    .line 3164
    const-string v2, "ExifInterface"

    const-string v3, "IOException occurred while closing InputStream"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 3117
    :pswitch_5
    :try_start_12
    iget v0, p0, Landroid/support/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array v0, v0, [I

    .line 3118
    :goto_b
    iget v2, p0, Landroid/support/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v1, v2, :cond_c

    .line 3119
    invoke-virtual {v8}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result v2

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_3
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 3118
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 3160
    :cond_c
    if-eqz v8, :cond_1

    .line 3162
    :try_start_13
    invoke-virtual {v8}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_7

    goto/16 :goto_1

    .line 3163
    :catch_7
    move-exception v1

    .line 3164
    const-string v2, "ExifInterface"

    const-string v3, "IOException occurred while closing InputStream"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 3124
    :pswitch_6
    :try_start_14
    iget v0, p0, Landroid/support/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array v0, v0, [I

    .line 3125
    :goto_c
    iget v2, p0, Landroid/support/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v1, v2, :cond_d

    .line 3126
    invoke-virtual {v8}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v2

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_3
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    .line 3125
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 3160
    :cond_d
    if-eqz v8, :cond_1

    .line 3162
    :try_start_15
    invoke-virtual {v8}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_8

    goto/16 :goto_1

    .line 3163
    :catch_8
    move-exception v1

    .line 3164
    const-string v2, "ExifInterface"

    const-string v3, "IOException occurred while closing InputStream"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 3131
    :pswitch_7
    :try_start_16
    iget v0, p0, Landroid/support/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array v0, v0, [Landroid/support/media/ExifInterface$Rational;

    move v9, v1

    .line 3132
    :goto_d
    iget v1, p0, Landroid/support/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v9, v1, :cond_e

    .line 3133
    invoke-virtual {v8}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v1

    int-to-long v2, v1

    .line 3134
    invoke-virtual {v8}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v1

    int-to-long v4, v1

    .line 3135
    new-instance v1, Landroid/support/media/ExifInterface$Rational;

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Landroid/support/media/ExifInterface$Rational;-><init>(JJLandroid/support/media/ExifInterface$1;)V

    aput-object v1, v0, v9
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_3
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    .line 3132
    add-int/lit8 v1, v9, 0x1

    move v9, v1

    goto :goto_d

    .line 3160
    :cond_e
    if-eqz v8, :cond_1

    .line 3162
    :try_start_17
    invoke-virtual {v8}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_9

    goto/16 :goto_1

    .line 3163
    :catch_9
    move-exception v1

    .line 3164
    const-string v2, "ExifInterface"

    const-string v3, "IOException occurred while closing InputStream"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 3140
    :pswitch_8
    :try_start_18
    iget v0, p0, Landroid/support/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array v0, v0, [D

    .line 3141
    :goto_e
    iget v2, p0, Landroid/support/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v1, v2, :cond_f

    .line 3142
    invoke-virtual {v8}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readFloat()F

    move-result v2

    float-to-double v2, v2

    aput-wide v2, v0, v1
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_3
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    .line 3141
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 3160
    :cond_f
    if-eqz v8, :cond_1

    .line 3162
    :try_start_19
    invoke-virtual {v8}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_a

    goto/16 :goto_1

    .line 3163
    :catch_a
    move-exception v1

    .line 3164
    const-string v2, "ExifInterface"

    const-string v3, "IOException occurred while closing InputStream"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 3147
    :pswitch_9
    :try_start_1a
    iget v0, p0, Landroid/support/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array v0, v0, [D

    .line 3148
    :goto_f
    iget v2, p0, Landroid/support/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v1, v2, :cond_10

    .line 3149
    invoke-virtual {v8}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->readDouble()D

    move-result-wide v2

    aput-wide v2, v0, v1
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_3
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1

    .line 3148
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 3160
    :cond_10
    if-eqz v8, :cond_1

    .line 3162
    :try_start_1b
    invoke-virtual {v8}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_b

    goto/16 :goto_1

    .line 3163
    :catch_b
    move-exception v1

    .line 3164
    const-string v2, "ExifInterface"

    const-string v3, "IOException occurred while closing InputStream"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 3163
    :catch_c
    move-exception v0

    .line 3164
    const-string v1, "ExifInterface"

    const-string v2, "IOException occurred while closing InputStream"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 3163
    :catch_d
    move-exception v0

    .line 3164
    const-string v1, "ExifInterface"

    const-string v2, "IOException occurred while closing InputStream"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    .line 3160
    :catchall_0
    move-exception v0

    move-object v8, v7

    :goto_10
    if-eqz v8, :cond_11

    .line 3162
    :try_start_1c
    invoke-virtual {v8}, Landroid/support/media/ExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_e

    .line 3165
    :cond_11
    :goto_11
    throw v0

    .line 3163
    :catch_e
    move-exception v1

    .line 3164
    const-string v2, "ExifInterface"

    const-string v3, "IOException occurred while closing InputStream"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_11

    .line 3160
    :catchall_1
    move-exception v0

    goto :goto_10

    :catchall_2
    move-exception v0

    move-object v8, v1

    goto :goto_10

    .line 3156
    :catch_f
    move-exception v0

    move-object v1, v7

    goto/16 :goto_6

    :cond_12
    move v0, v1

    goto/16 :goto_3

    .line 3053
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method


# virtual methods
.method public getDoubleValue(Ljava/nio/ByteOrder;)D
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3171
    invoke-direct {p0, p1}, Landroid/support/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v0

    .line 3172
    if-nez v0, :cond_0

    .line 3173
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "NULL can\'t be converted to a double value"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3175
    :cond_0
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 3176
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 3202
    :goto_0
    return-wide v0

    .line 3178
    :cond_1
    instance-of v1, v0, [J

    if-eqz v1, :cond_3

    .line 3179
    check-cast v0, [J

    check-cast v0, [J

    .line 3180
    array-length v1, v0

    if-ne v1, v3, :cond_2

    .line 3181
    aget-wide v0, v0, v2

    long-to-double v0, v0

    goto :goto_0

    .line 3183
    :cond_2
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "There are more than one component"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3185
    :cond_3
    instance-of v1, v0, [I

    if-eqz v1, :cond_5

    .line 3186
    check-cast v0, [I

    check-cast v0, [I

    .line 3187
    array-length v1, v0

    if-ne v1, v3, :cond_4

    .line 3188
    aget v0, v0, v2

    int-to-double v0, v0

    goto :goto_0

    .line 3190
    :cond_4
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "There are more than one component"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3192
    :cond_5
    instance-of v1, v0, [D

    if-eqz v1, :cond_7

    .line 3193
    check-cast v0, [D

    check-cast v0, [D

    .line 3194
    array-length v1, v0

    if-ne v1, v3, :cond_6

    .line 3195
    aget-wide v0, v0, v2

    goto :goto_0

    .line 3197
    :cond_6
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "There are more than one component"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3199
    :cond_7
    instance-of v1, v0, [Landroid/support/media/ExifInterface$Rational;

    if-eqz v1, :cond_9

    .line 3200
    check-cast v0, [Landroid/support/media/ExifInterface$Rational;

    check-cast v0, [Landroid/support/media/ExifInterface$Rational;

    .line 3201
    array-length v1, v0

    if-ne v1, v3, :cond_8

    .line 3202
    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/support/media/ExifInterface$Rational;->calculate()D

    move-result-wide v0

    goto :goto_0

    .line 3204
    :cond_8
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "There are more than one component"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3206
    :cond_9
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "Couldn\'t find a double value"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getIntValue(Ljava/nio/ByteOrder;)I
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3210
    invoke-direct {p0, p1}, Landroid/support/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v0

    .line 3211
    if-nez v0, :cond_0

    .line 3212
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "NULL can\'t be converted to a integer value"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3214
    :cond_0
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 3215
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 3227
    :goto_0
    return v0

    .line 3217
    :cond_1
    instance-of v1, v0, [J

    if-eqz v1, :cond_3

    .line 3218
    check-cast v0, [J

    check-cast v0, [J

    .line 3219
    array-length v1, v0

    if-ne v1, v3, :cond_2

    .line 3220
    aget-wide v0, v0, v2

    long-to-int v0, v0

    goto :goto_0

    .line 3222
    :cond_2
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "There are more than one component"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3224
    :cond_3
    instance-of v1, v0, [I

    if-eqz v1, :cond_5

    .line 3225
    check-cast v0, [I

    check-cast v0, [I

    .line 3226
    array-length v1, v0

    if-ne v1, v3, :cond_4

    .line 3227
    aget v0, v0, v2

    goto :goto_0

    .line 3229
    :cond_4
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "There are more than one component"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3231
    :cond_5
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "Couldn\'t find a integer value"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getStringValue(Ljava/nio/ByteOrder;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 3235
    invoke-direct {p0, p1}, Landroid/support/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v0

    .line 3236
    if-nez v0, :cond_0

    move-object v0, v2

    .line 3286
    :goto_0
    return-object v0

    .line 3239
    :cond_0
    instance-of v3, v0, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 3240
    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 3243
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 3244
    instance-of v4, v0, [J

    if-eqz v4, :cond_4

    .line 3245
    check-cast v0, [J

    check-cast v0, [J

    .line 3246
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_3

    .line 3247
    aget-wide v4, v0, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3248
    add-int/lit8 v2, v1, 0x1

    array-length v4, v0

    if-eq v2, v4, :cond_2

    .line 3249
    const-string v2, ","

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3246
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3252
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3254
    :cond_4
    instance-of v4, v0, [I

    if-eqz v4, :cond_7

    .line 3255
    check-cast v0, [I

    check-cast v0, [I

    .line 3256
    :goto_2
    array-length v2, v0

    if-ge v1, v2, :cond_6

    .line 3257
    aget v2, v0, v1

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3258
    add-int/lit8 v2, v1, 0x1

    array-length v4, v0

    if-eq v2, v4, :cond_5

    .line 3259
    const-string v2, ","

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3256
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3262
    :cond_6
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3264
    :cond_7
    instance-of v4, v0, [D

    if-eqz v4, :cond_a

    .line 3265
    check-cast v0, [D

    check-cast v0, [D

    .line 3266
    :goto_3
    array-length v2, v0

    if-ge v1, v2, :cond_9

    .line 3267
    aget-wide v4, v0, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 3268
    add-int/lit8 v2, v1, 0x1

    array-length v4, v0

    if-eq v2, v4, :cond_8

    .line 3269
    const-string v2, ","

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3266
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 3272
    :cond_9
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3274
    :cond_a
    instance-of v4, v0, [Landroid/support/media/ExifInterface$Rational;

    if-eqz v4, :cond_d

    .line 3275
    check-cast v0, [Landroid/support/media/ExifInterface$Rational;

    check-cast v0, [Landroid/support/media/ExifInterface$Rational;

    .line 3276
    :goto_4
    array-length v2, v0

    if-ge v1, v2, :cond_c

    .line 3277
    aget-object v2, v0, v1

    iget-wide v4, v2, Landroid/support/media/ExifInterface$Rational;->numerator:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3278
    const/16 v2, 0x2f

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3279
    aget-object v2, v0, v1

    iget-wide v4, v2, Landroid/support/media/ExifInterface$Rational;->denominator:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3280
    add-int/lit8 v2, v1, 0x1

    array-length v4, v0

    if-eq v2, v4, :cond_b

    .line 3281
    const-string v2, ","

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3276
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 3284
    :cond_c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_d
    move-object v0, v2

    .line 3286
    goto/16 :goto_0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 3290
    sget-object v0, Landroid/support/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    iget v1, p0, Landroid/support/media/ExifInterface$ExifAttribute;->format:I

    aget v0, v0, v1

    iget v1, p0, Landroid/support/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 3045
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/support/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    iget v2, p0, Landroid/support/media/ExifInterface$ExifAttribute;->format:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", data length:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/media/ExifInterface$ExifAttribute;->bytes:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
