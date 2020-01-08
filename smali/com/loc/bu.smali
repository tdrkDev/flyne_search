.class public final Lcom/loc/bu;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Lcom/loc/bu;


# instance fields
.field a:Lcom/loc/aj;

.field private c:Landroid/content/Context;

.field private d:I

.field private e:I

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/loc/bu;->b:Lcom/loc/bu;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/loc/bu;->a:Lcom/loc/aj;

    iput-object v0, p0, Lcom/loc/bu;->c:Landroid/content/Context;

    iput v1, p0, Lcom/loc/bu;->d:I

    sget v0, Lcom/loc/bz;->e:I

    iput v0, p0, Lcom/loc/bu;->e:I

    iput-boolean v1, p0, Lcom/loc/bu;->f:Z

    iput-object p1, p0, Lcom/loc/bu;->c:Landroid/content/Context;

    invoke-static {}, Lcom/loc/aj;->a()Lcom/loc/aj;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/bu;->a:Lcom/loc/aj;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/loc/bu;
    .locals 1

    sget-object v0, Lcom/loc/bu;->b:Lcom/loc/bu;

    if-nez v0, :cond_0

    new-instance v0, Lcom/loc/bu;

    invoke-direct {v0, p0}, Lcom/loc/bu;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/loc/bu;->b:Lcom/loc/bu;

    :cond_0
    sget-object v0, Lcom/loc/bu;->b:Lcom/loc/bu;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/loc/bu;->d:I

    return v0
.end method

.method public final a(Lcom/loc/bv;)Lcom/loc/aq;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Lcom/loc/bu;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/ci;->c(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/ci;->a(Landroid/net/NetworkInfo;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/loc/ci;->b()J

    move-result-wide v2

    iget-object v0, p0, Lcom/loc/bu;->a:Lcom/loc/aj;

    iget-boolean v0, p0, Lcom/loc/bu;->f:Z

    invoke-static {p1, v0}, Lcom/loc/aj;->a(Lcom/loc/ap;Z)Lcom/loc/aq;

    move-result-object v0

    invoke-static {}, Lcom/loc/ci;->b()J

    move-result-wide v4

    sub-long v2, v4, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    iput v1, p0, Lcom/loc/bu;->d:I

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;[BLjava/lang/String;Z)Lcom/loc/bv;
    .locals 7

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    new-instance v0, Lcom/loc/bv;

    invoke-static {}, Lcom/loc/bz;->b()Lcom/loc/cy;

    move-result-object v3

    invoke-direct {v0, p1, v3}, Lcom/loc/bv;-><init>(Landroid/content/Context;Lcom/loc/cy;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v1, "Content-Type"

    const-string v3, "application/octet-stream"

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Accept-Encoding"

    const-string v3, "gzip"

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "gzipped"

    const-string v3, "1"

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Connection"

    const-string v3, "Keep-Alive"

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "User-Agent"

    const-string v3, "AMAP_Location_SDK_Android 3.4.0"

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "KEY"

    invoke-static {p1}, Lcom/loc/cq;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "enginever"

    const-string v3, "4.7"

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/loc/cs;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "key="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/loc/cq;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v1, v3}, Lcom/loc/cs;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ts"

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "scode"

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "encr"

    const-string v3, "1"

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v2, v0, Lcom/loc/bv;->f:Ljava/util/Map;

    const-string v1, "loc"

    if-nez p4, :cond_0

    const-string v1, "locf"

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/loc/bv;->m:Z

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "platform=Android&sdkversion=%s&product=%s&loc_channel=%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "3.4.0"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    const/4 v1, 0x2

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/loc/bv;->k:Ljava/lang/String;

    iput-boolean p4, v0, Lcom/loc/bv;->j:Z

    iput-object p3, v0, Lcom/loc/bv;->g:Ljava/lang/String;

    invoke-static {p2}, Lcom/loc/ci;->a([B)[B

    move-result-object v1

    iput-object v1, v0, Lcom/loc/bv;->h:[B

    invoke-static {p1}, Lcom/loc/cw;->a(Landroid/content/Context;)Ljava/net/Proxy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/loc/bv;->a(Ljava/net/Proxy;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "output"

    const-string v3, "bin"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "policy"

    const-string v3, "3103"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v1, v0, Lcom/loc/bv;->l:Ljava/util/Map;

    iget v1, p0, Lcom/loc/bu;->e:I

    invoke-virtual {v0, v1}, Lcom/loc/bv;->a(I)V

    iget v1, p0, Lcom/loc/bu;->e:I

    invoke-virtual {v0, v1}, Lcom/loc/bv;->b(I)V

    iget-boolean v1, p0, Lcom/loc/bu;->f:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/loc/bv;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "http"

    const-string v3, "https"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/loc/bv;->g:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public final a([BLandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    const/4 v1, 0x0

    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-static {p2}, Lcom/loc/ci;->c(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/ci;->a(Landroid/net/NetworkInfo;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    :goto_0
    return-object v1

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Lcom/loc/bv;

    invoke-static {}, Lcom/loc/bz;->b()Lcom/loc/cy;

    move-result-object v3

    invoke-direct {v2, p2, v3}, Lcom/loc/bv;-><init>(Landroid/content/Context;Lcom/loc/cy;)V

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const-string v3, "Content-Type"

    const-string v4, "application/x-www-form-urlencoded"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "Connection"

    const-string v4, "Keep-Alive"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "User-Agent"

    const-string v4, "AMAP_Location_SDK_Android 3.4.0"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "custom"

    const-string v5, "26260A1F00020002"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "key"

    invoke-static {p2}, Lcom/loc/cq;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/loc/cs;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Lcom/loc/cz;->b(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p2, v4, v5}, Lcom/loc/cs;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "ts"

    invoke-interface {v3, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "scode"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-boolean v8, v2, Lcom/loc/bv;->m:Z

    invoke-virtual {v2, p1}, Lcom/loc/bv;->b([B)V

    iput-boolean v9, v2, Lcom/loc/bv;->j:Z

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "platform=Android&sdkversion=%s&product=%s&loc_channel=%s"

    new-array v6, v10, [Ljava/lang/Object;

    const-string v7, "3.4.0"

    aput-object v7, v6, v8

    const-string v7, "loc"

    aput-object v7, v6, v9

    const/4 v7, 0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/loc/bv;->k:Ljava/lang/String;

    iput-object v3, v2, Lcom/loc/bv;->l:Ljava/util/Map;

    iput-object v0, v2, Lcom/loc/bv;->f:Ljava/util/Map;

    iput-object p3, v2, Lcom/loc/bv;->g:Ljava/lang/String;

    invoke-static {p2}, Lcom/loc/cw;->a(Landroid/content/Context;)Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/loc/bv;->a(Ljava/net/Proxy;)V

    sget v0, Lcom/loc/bz;->e:I

    invoke-virtual {v2, v0}, Lcom/loc/bv;->a(I)V

    sget v0, Lcom/loc/bz;->e:I

    invoke-virtual {v2, v0}, Lcom/loc/bv;->b(I)V

    :try_start_0
    iget-object v0, p0, Lcom/loc/bu;->a:Lcom/loc/aj;

    invoke-static {v2}, Lcom/loc/aj;->a(Lcom/loc/ap;)[B

    move-result-object v2

    new-instance v0, Ljava/lang/String;

    const-string v3, "utf-8"

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v1, v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v2, "LocNetManager"

    const-string v3, "post"

    invoke-static {v0, v2, v3}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_1
.end method

.method public final a(JZ)V
    .locals 3

    :try_start_0
    iput-boolean p3, p0, Lcom/loc/bu;->f:Z

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    iput v0, p0, Lcom/loc/bu;->e:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "netmanager"

    const-string v2, "setOption"

    invoke-static {v0, v1, v2}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b([BLandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    invoke-static {p2}, Lcom/loc/ci;->c(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/ci;->a(Landroid/net/NetworkInfo;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    :goto_0
    return-object v1

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Lcom/loc/bt;

    invoke-direct {v2}, Lcom/loc/bt;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const-string v3, "Content-Type"

    const-string v4, "application/x-www-form-urlencoded"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "Connection"

    const-string v4, "Keep-Alive"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, v2, Lcom/loc/bt;->a:Ljava/util/Map;

    iput-object p3, v2, Lcom/loc/bt;->f:Ljava/lang/String;

    iput-object p1, v2, Lcom/loc/bt;->g:[B

    invoke-static {p2}, Lcom/loc/cw;->a(Landroid/content/Context;)Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/loc/bt;->a(Ljava/net/Proxy;)V

    sget v0, Lcom/loc/bz;->e:I

    invoke-virtual {v2, v0}, Lcom/loc/bt;->a(I)V

    sget v0, Lcom/loc/bz;->e:I

    invoke-virtual {v2, v0}, Lcom/loc/bt;->b(I)V

    :try_start_0
    iget-object v0, p0, Lcom/loc/bu;->a:Lcom/loc/aj;

    invoke-static {v2}, Lcom/loc/aj;->a(Lcom/loc/ap;)[B

    move-result-object v2

    new-instance v0, Ljava/lang/String;

    const-string v3, "utf-8"

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "LocNetManager"

    const-string v3, "post"

    invoke-static {v0, v2, v3}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_1
.end method
