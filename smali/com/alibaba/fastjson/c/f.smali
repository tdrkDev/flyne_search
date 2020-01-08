.class public Lcom/alibaba/fastjson/c/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<[C>;>;"
        }
    .end annotation
.end field

.field private static final b:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<[B>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/c/f;->a:Ljava/lang/ThreadLocal;

    .line 72
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/c/f;->b:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private static a(III)I
    .locals 1

    .prologue
    .line 53
    move v0, p0

    .line 55
    :cond_0
    if-lt v0, p2, :cond_1

    move p2, v0

    .line 66
    :goto_0
    return p2

    .line 59
    :cond_1
    mul-int/lit8 v0, v0, 0x2

    .line 61
    if-le v0, p1, :cond_0

    goto :goto_0
.end method

.method public static a()Ljava/nio/charset/CharsetDecoder;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/alibaba/fastjson/c/d;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    return-object v0
.end method

.method public static a(I)[C
    .locals 2

    .prologue
    .line 21
    sget-object v0, Lcom/alibaba/fastjson/c/f;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    .line 23
    if-nez v0, :cond_1

    .line 24
    invoke-static {p0}, Lcom/alibaba/fastjson/c/f;->c(I)[C

    move-result-object v0

    .line 37
    :cond_0
    :goto_0
    return-object v0

    .line 27
    :cond_1
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    .line 29
    if-nez v0, :cond_2

    .line 30
    invoke-static {p0}, Lcom/alibaba/fastjson/c/f;->c(I)[C

    move-result-object v0

    goto :goto_0

    .line 33
    :cond_2
    array-length v1, v0

    if-ge v1, p0, :cond_0

    .line 34
    invoke-static {p0}, Lcom/alibaba/fastjson/c/f;->c(I)[C

    move-result-object v0

    goto :goto_0
.end method

.method public static b(I)[B
    .locals 2

    .prologue
    .line 79
    sget-object v0, Lcom/alibaba/fastjson/c/f;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    .line 81
    if-nez v0, :cond_1

    .line 82
    invoke-static {p0}, Lcom/alibaba/fastjson/c/f;->d(I)[B

    move-result-object v0

    .line 95
    :cond_0
    :goto_0
    return-object v0

    .line 85
    :cond_1
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 87
    if-nez v0, :cond_2

    .line 88
    invoke-static {p0}, Lcom/alibaba/fastjson/c/f;->d(I)[B

    move-result-object v0

    goto :goto_0

    .line 91
    :cond_2
    array-length v1, v0

    if-ge v1, p0, :cond_0

    .line 92
    invoke-static {p0}, Lcom/alibaba/fastjson/c/f;->d(I)[B

    move-result-object v0

    goto :goto_0
.end method

.method private static c(I)[C
    .locals 3

    .prologue
    const/high16 v1, 0x20000

    .line 41
    const/16 v0, 0x400

    invoke-static {v0, v1, p0}, Lcom/alibaba/fastjson/c/f;->a(III)I

    move-result v0

    .line 43
    if-gt v0, v1, :cond_0

    .line 44
    new-array v0, v0, [C

    .line 45
    sget-object v1, Lcom/alibaba/fastjson/c/f;->a:Ljava/lang/ThreadLocal;

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 49
    :goto_0
    return-object v0

    :cond_0
    new-array v0, p0, [C

    goto :goto_0
.end method

.method private static d(I)[B
    .locals 3

    .prologue
    const/high16 v1, 0x20000

    .line 99
    const/16 v0, 0x400

    invoke-static {v0, v1, p0}, Lcom/alibaba/fastjson/c/f;->a(III)I

    move-result v0

    .line 101
    if-gt v0, v1, :cond_0

    .line 102
    new-array v0, v0, [B

    .line 103
    sget-object v1, Lcom/alibaba/fastjson/c/f;->b:Ljava/lang/ThreadLocal;

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 107
    :goto_0
    return-object v0

    :cond_0
    new-array v0, p0, [B

    goto :goto_0
.end method
