.class public Lcom/alibaba/fastjson/b/z;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/alibaba/fastjson/b/an;

.field private final b:Lcom/alibaba/fastjson/b/ao;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/b/ak;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/b/at;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/b/af;",
            ">;"
        }
    .end annotation
.end field

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/text/DateFormat;

.field private j:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/alibaba/fastjson/b/al;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/alibaba/fastjson/b/al;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 63
    new-instance v0, Lcom/alibaba/fastjson/b/ao;

    invoke-direct {v0}, Lcom/alibaba/fastjson/b/ao;-><init>()V

    invoke-static {}, Lcom/alibaba/fastjson/b/an;->a()Lcom/alibaba/fastjson/b/an;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/alibaba/fastjson/b/z;-><init>(Lcom/alibaba/fastjson/b/ao;Lcom/alibaba/fastjson/b/an;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/fastjson/b/ao;)V
    .locals 1

    .prologue
    .line 67
    invoke-static {}, Lcom/alibaba/fastjson/b/an;->a()Lcom/alibaba/fastjson/b/an;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/b/z;-><init>(Lcom/alibaba/fastjson/b/ao;Lcom/alibaba/fastjson/b/an;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/fastjson/b/ao;Lcom/alibaba/fastjson/b/an;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object v1, p0, Lcom/alibaba/fastjson/b/z;->c:Ljava/util/List;

    .line 50
    iput-object v1, p0, Lcom/alibaba/fastjson/b/z;->d:Ljava/util/List;

    .line 51
    iput-object v1, p0, Lcom/alibaba/fastjson/b/z;->e:Ljava/util/List;

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/fastjson/b/z;->f:I

    .line 54
    const-string v0, "\t"

    iput-object v0, p0, Lcom/alibaba/fastjson/b/z;->g:Ljava/lang/String;

    .line 56
    sget-object v0, Lcom/alibaba/fastjson/a;->DEFFAULT_DATE_FORMAT:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/fastjson/b/z;->h:Ljava/lang/String;

    .line 59
    iput-object v1, p0, Lcom/alibaba/fastjson/b/z;->j:Ljava/util/IdentityHashMap;

    .line 80
    iput-object p1, p0, Lcom/alibaba/fastjson/b/z;->b:Lcom/alibaba/fastjson/b/ao;

    .line 81
    iput-object p2, p0, Lcom/alibaba/fastjson/b/z;->a:Lcom/alibaba/fastjson/b/an;

    .line 82
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Lcom/alibaba/fastjson/b/aj;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/alibaba/fastjson/b/aj;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 393
    iget-object v0, p0, Lcom/alibaba/fastjson/b/z;->a:Lcom/alibaba/fastjson/b/an;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/b/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/b/aj;

    .line 395
    if-nez v0, :cond_0

    .line 396
    const-class v0, Ljava/util/Map;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 397
    iget-object v0, p0, Lcom/alibaba/fastjson/b/z;->a:Lcom/alibaba/fastjson/b/an;

    sget-object v1, Lcom/alibaba/fastjson/b/ae;->a:Lcom/alibaba/fastjson/b/ae;

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/fastjson/b/an;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 454
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson/b/z;->a:Lcom/alibaba/fastjson/b/an;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/b/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/b/aj;

    .line 456
    :cond_0
    :goto_1
    return-object v0

    .line 398
    :cond_1
    const-class v0, Ljava/util/List;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 399
    iget-object v0, p0, Lcom/alibaba/fastjson/b/z;->a:Lcom/alibaba/fastjson/b/an;

    sget-object v1, Lcom/alibaba/fastjson/b/ac;->a:Lcom/alibaba/fastjson/b/ac;

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/fastjson/b/an;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 400
    :cond_2
    const-class v0, Ljava/util/Collection;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 401
    iget-object v0, p0, Lcom/alibaba/fastjson/b/z;->a:Lcom/alibaba/fastjson/b/an;

    sget-object v1, Lcom/alibaba/fastjson/b/k;->a:Lcom/alibaba/fastjson/b/k;

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/fastjson/b/an;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 402
    :cond_3
    const-class v0, Ljava/util/Date;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 403
    iget-object v0, p0, Lcom/alibaba/fastjson/b/z;->a:Lcom/alibaba/fastjson/b/an;

    sget-object v1, Lcom/alibaba/fastjson/b/m;->a:Lcom/alibaba/fastjson/b/m;

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/fastjson/b/an;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 404
    :cond_4
    const-class v0, Lcom/alibaba/fastjson/c;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 405
    iget-object v0, p0, Lcom/alibaba/fastjson/b/z;->a:Lcom/alibaba/fastjson/b/an;

    sget-object v1, Lcom/alibaba/fastjson/b/y;->a:Lcom/alibaba/fastjson/b/y;

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/fastjson/b/an;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 406
    :cond_5
    const-class v0, Lcom/alibaba/fastjson/f;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 407
    iget-object v0, p0, Lcom/alibaba/fastjson/b/z;->a:Lcom/alibaba/fastjson/b/an;

    sget-object v1, Lcom/alibaba/fastjson/b/aa;->a:Lcom/alibaba/fastjson/b/aa;

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/fastjson/b/an;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 408
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 409
    :cond_7
    iget-object v0, p0, Lcom/alibaba/fastjson/b/z;->a:Lcom/alibaba/fastjson/b/an;

    sget-object v1, Lcom/alibaba/fastjson/b/o;->a:Lcom/alibaba/fastjson/b/o;

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/fastjson/b/an;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 410
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 411
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 412
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/b/z;->a(Ljava/lang/Class;)Lcom/alibaba/fastjson/b/aj;

    move-result-object v1

    .line 413
    iget-object v2, p0, Lcom/alibaba/fastjson/b/z;->a:Lcom/alibaba/fastjson/b/an;

    new-instance v3, Lcom/alibaba/fastjson/b/b;

    invoke-direct {v3, v0, v1}, Lcom/alibaba/fastjson/b/b;-><init>(Ljava/lang/Class;Lcom/alibaba/fastjson/b/aj;)V

    invoke-virtual {v2, p1, v3}, Lcom/alibaba/fastjson/b/an;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 414
    :cond_9
    const-class v0, Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 415
    iget-object v0, p0, Lcom/alibaba/fastjson/b/z;->a:Lcom/alibaba/fastjson/b/an;

    new-instance v1, Lcom/alibaba/fastjson/b/q;

    invoke-direct {v1, p1}, Lcom/alibaba/fastjson/b/q;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/fastjson/b/an;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 416
    :cond_a
    const-class v0, Ljava/util/TimeZone;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 417
    iget-object v0, p0, Lcom/alibaba/fastjson/b/z;->a:Lcom/alibaba/fastjson/b/an;

    sget-object v1, Lcom/alibaba/fastjson/b/ar;->a:Lcom/alibaba/fastjson/b/ar;

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/fastjson/b/an;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 418
    :cond_b
    const-class v0, Ljava/lang/Appendable;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 419
    iget-object v0, p0, Lcom/alibaba/fastjson/b/z;->a:Lcom/alibaba/fastjson/b/an;

    sget-object v1, Lcom/alibaba/fastjson/b/a;->a:Lcom/alibaba/fastjson/b/a;

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/fastjson/b/an;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 420
    :cond_c
    const-class v0, Ljava/nio/charset/Charset;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 421
    iget-object v0, p0, Lcom/alibaba/fastjson/b/z;->a:Lcom/alibaba/fastjson/b/an;

    sget-object v1, Lcom/alibaba/fastjson/b/as;->a:Lcom/alibaba/fastjson/b/as;

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/fastjson/b/an;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 422
    :cond_d
    const-class v0, Ljava/util/Enumeration;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 423
    iget-object v0, p0, Lcom/alibaba/fastjson/b/z;->a:Lcom/alibaba/fastjson/b/an;

    sget-object v1, Lcom/alibaba/fastjson/b/p;->a:Lcom/alibaba/fastjson/b/p;

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/fastjson/b/an;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 424
    :cond_e
    const-class v0, Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 425
    iget-object v0, p0, Lcom/alibaba/fastjson/b/z;->a:Lcom/alibaba/fastjson/b/an;

    sget-object v1, Lcom/alibaba/fastjson/b/g;->a:Lcom/alibaba/fastjson/b/g;

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/fastjson/b/an;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 429
    :cond_f
    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v3

    array-length v4, v3

    move v0, v1

    :goto_2
    if-ge v0, v4, :cond_15

    aget-object v5, v3, v0

    .line 430
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "net.sf.cglib.proxy.Factory"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    move v0, v1

    move v1, v2

    .line 439
    :goto_3
    if-nez v1, :cond_10

    if-eqz v0, :cond_13

    .line 440
    :cond_10
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 442
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/b/z;->a(Ljava/lang/Class;)Lcom/alibaba/fastjson/b/aj;

    move-result-object v0

    .line 443
    iget-object v1, p0, Lcom/alibaba/fastjson/b/z;->a:Lcom/alibaba/fastjson/b/an;

    invoke-virtual {v1, p1, v0}, Lcom/alibaba/fastjson/b/an;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 433
    :cond_11
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "javassist.util.proxy.ProxyObject"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    move v0, v2

    .line 435
    goto :goto_3

    .line 429
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 447
    :cond_13
    invoke-static {p1}, Ljava/lang/reflect/Proxy;->isProxyClass(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 448
    iget-object v0, p0, Lcom/alibaba/fastjson/b/z;->a:Lcom/alibaba/fastjson/b/an;

    iget-object v1, p0, Lcom/alibaba/fastjson/b/z;->a:Lcom/alibaba/fastjson/b/an;

    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/b/an;->a(Ljava/lang/Class;)Lcom/alibaba/fastjson/b/aj;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/fastjson/b/an;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 450
    :cond_14
    iget-object v0, p0, Lcom/alibaba/fastjson/b/z;->a:Lcom/alibaba/fastjson/b/an;

    iget-object v1, p0, Lcom/alibaba/fastjson/b/z;->a:Lcom/alibaba/fastjson/b/an;

    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/b/an;->a(Ljava/lang/Class;)Lcom/alibaba/fastjson/b/aj;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/fastjson/b/an;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_15
    move v0, v1

    goto :goto_3
.end method

.method public a(Ljava/lang/Object;)Lcom/alibaba/fastjson/b/al;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/alibaba/fastjson/b/z;->j:Ljava/util/IdentityHashMap;

    if-nez v0, :cond_0

    .line 182
    const/4 v0, 0x0

    .line 185
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/b/z;->j:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/b/al;

    goto :goto_0
.end method

.method public a()Ljava/text/DateFormat;
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/alibaba/fastjson/b/z;->i:Ljava/text/DateFormat;

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/alibaba/fastjson/b/z;->h:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alibaba/fastjson/b/z;->i:Ljava/text/DateFormat;

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/b/z;->i:Ljava/text/DateFormat;

    return-object v0
.end method

.method public a(Lcom/alibaba/fastjson/b/al;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/alibaba/fastjson/b/z;->k:Lcom/alibaba/fastjson/b/al;

    .line 113
    return-void
.end method

.method public a(Lcom/alibaba/fastjson/b/al;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 116
    sget-object v0, Lcom/alibaba/fastjson/b/ap;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/b/ap;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/b/z;->a(Lcom/alibaba/fastjson/b/ap;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    :goto_0
    return-void

    .line 120
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/b/al;

    invoke-direct {v0, p1, p2, p3}, Lcom/alibaba/fastjson/b/al;-><init>(Lcom/alibaba/fastjson/b/al;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alibaba/fastjson/b/z;->k:Lcom/alibaba/fastjson/b/al;

    .line 121
    iget-object v0, p0, Lcom/alibaba/fastjson/b/z;->j:Ljava/util/IdentityHashMap;

    if-nez v0, :cond_1

    .line 122
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/b/z;->j:Ljava/util/IdentityHashMap;

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson/b/z;->j:Ljava/util/IdentityHashMap;

    iget-object v1, p0, Lcom/alibaba/fastjson/b/z;->k:Lcom/alibaba/fastjson/b/al;

    invoke-virtual {v0, p2, v1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public a(Lcom/alibaba/fastjson/b/ap;Z)V
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/alibaba/fastjson/b/z;->b:Lcom/alibaba/fastjson/b/ao;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson/b/ao;->a(Lcom/alibaba/fastjson/b/ap;Z)V

    .line 310
    return-void
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 359
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/alibaba/fastjson/b/z;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    .line 360
    return-void
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 3

    .prologue
    .line 364
    if-nez p1, :cond_0

    .line 365
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/fastjson/b/z;->b:Lcom/alibaba/fastjson/b/ao;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/b/ao;->a()V

    .line 377
    :goto_0
    return-void

    .line 369
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 371
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/b/z;->a(Ljava/lang/Class;)Lcom/alibaba/fastjson/b/aj;

    move-result-object v0

    .line 373
    invoke-interface {v0, p0, p1, p2, p3}, Lcom/alibaba/fastjson/b/aj;->a(Lcom/alibaba/fastjson/b/z;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 374
    :catch_0
    move-exception v0

    .line 375
    new-instance v1, Lcom/alibaba/fastjson/d;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 380
    instance-of v0, p1, Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 381
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/util/Date;

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 382
    iget-object v1, p0, Lcom/alibaba/fastjson/b/z;->b:Lcom/alibaba/fastjson/b/ao;

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/b/ao;->b(Ljava/lang/String;)V

    .line 386
    :goto_0
    return-void

    .line 385
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/b/z;->d(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 101
    iput-object p1, p0, Lcom/alibaba/fastjson/b/z;->h:Ljava/lang/String;

    .line 102
    iget-object v0, p0, Lcom/alibaba/fastjson/b/z;->i:Ljava/text/DateFormat;

    if-eqz v0, :cond_0

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/fastjson/b/z;->i:Ljava/text/DateFormat;

    .line 105
    :cond_0
    return-void
.end method

.method public a(Lcom/alibaba/fastjson/b/ap;)Z
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/alibaba/fastjson/b/z;->b:Lcom/alibaba/fastjson/b/ao;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/b/ao;->a(Lcom/alibaba/fastjson/b/ap;)Z

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 154
    iget-object v2, p0, Lcom/alibaba/fastjson/b/z;->b:Lcom/alibaba/fastjson/b/ao;

    sget-object v3, Lcom/alibaba/fastjson/b/ap;->WriteClassName:Lcom/alibaba/fastjson/b/ap;

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/b/ao;->a(Lcom/alibaba/fastjson/b/ap;)Z

    move-result v2

    .line 156
    if-nez v2, :cond_1

    .line 169
    :cond_0
    :goto_0
    return v0

    .line 160
    :cond_1
    if-nez p1, :cond_2

    .line 161
    sget-object v2, Lcom/alibaba/fastjson/b/ap;->NotWriteRootClassName:Lcom/alibaba/fastjson/b/ap;

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/b/z;->a(Lcom/alibaba/fastjson/b/ap;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 162
    iget-object v2, p0, Lcom/alibaba/fastjson/b/z;->k:Lcom/alibaba/fastjson/b/al;

    invoke-virtual {v2}, Lcom/alibaba/fastjson/b/al;->a()Lcom/alibaba/fastjson/b/al;

    move-result-object v2

    if-nez v2, :cond_3

    move v2, v1

    .line 163
    :goto_1
    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    .line 169
    goto :goto_0

    :cond_3
    move v2, v0

    .line 162
    goto :goto_1
.end method

.method public b()Lcom/alibaba/fastjson/b/al;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/alibaba/fastjson/b/z;->k:Lcom/alibaba/fastjson/b/al;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 389
    sget-object v0, Lcom/alibaba/fastjson/b/aq;->a:Lcom/alibaba/fastjson/b/aq;

    invoke-virtual {v0, p0, p1}, Lcom/alibaba/fastjson/b/aq;->a(Lcom/alibaba/fastjson/b/z;Ljava/lang/String;)V

    .line 390
    return-void
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 189
    sget-object v1, Lcom/alibaba/fastjson/b/ap;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/b/ap;

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/b/z;->a(Lcom/alibaba/fastjson/b/ap;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 197
    :cond_0
    :goto_0
    return v0

    .line 193
    :cond_1
    iget-object v1, p0, Lcom/alibaba/fastjson/b/z;->j:Ljava/util/IdentityHashMap;

    if-eqz v1, :cond_0

    .line 197
    iget-object v0, p0, Lcom/alibaba/fastjson/b/z;->j:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/b/at;",
            ">;"
        }
    .end annotation

    .prologue
    .line 254
    iget-object v0, p0, Lcom/alibaba/fastjson/b/z;->d:Ljava/util/List;

    return-object v0
.end method

.method public c(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 201
    sget-object v0, Lcom/alibaba/fastjson/b/ap;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/b/ap;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/b/z;->a(Lcom/alibaba/fastjson/b/ap;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    :goto_0
    return-void

    .line 205
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/b/z;->b()Lcom/alibaba/fastjson/b/al;

    move-result-object v0

    .line 206
    invoke-virtual {v0}, Lcom/alibaba/fastjson/b/al;->b()Ljava/lang/Object;

    move-result-object v1

    .line 208
    if-ne p1, v1, :cond_1

    .line 209
    iget-object v0, p0, Lcom/alibaba/fastjson/b/z;->b:Lcom/alibaba/fastjson/b/ao;

    const-string v1, "{\"$ref\":\"@\"}"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/b/ao;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 213
    :cond_1
    invoke-virtual {v0}, Lcom/alibaba/fastjson/b/al;->a()Lcom/alibaba/fastjson/b/al;

    move-result-object v1

    .line 215
    if-eqz v1, :cond_3

    .line 216
    invoke-virtual {v1}, Lcom/alibaba/fastjson/b/al;->b()Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_3

    .line 217
    iget-object v0, p0, Lcom/alibaba/fastjson/b/z;->b:Lcom/alibaba/fastjson/b/ao;

    const-string v1, "{\"$ref\":\"..\"}"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/b/ao;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 227
    :cond_2
    invoke-virtual {v0}, Lcom/alibaba/fastjson/b/al;->a()Lcom/alibaba/fastjson/b/al;

    move-result-object v0

    .line 224
    :cond_3
    invoke-virtual {v0}, Lcom/alibaba/fastjson/b/al;->a()Lcom/alibaba/fastjson/b/al;

    move-result-object v1

    if-nez v1, :cond_2

    .line 230
    invoke-virtual {v0}, Lcom/alibaba/fastjson/b/al;->b()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_4

    .line 231
    iget-object v0, p0, Lcom/alibaba/fastjson/b/z;->b:Lcom/alibaba/fastjson/b/ao;

    const-string v1, "{\"$ref\":\"$\"}"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/b/ao;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 235
    :cond_4
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/b/z;->a(Ljava/lang/Object;)Lcom/alibaba/fastjson/b/al;

    move-result-object v0

    .line 237
    invoke-virtual {v0}, Lcom/alibaba/fastjson/b/al;->c()Ljava/lang/String;

    move-result-object v0

    .line 239
    iget-object v1, p0, Lcom/alibaba/fastjson/b/z;->b:Lcom/alibaba/fastjson/b/ao;

    const-string v2, "{\"$ref\":\""

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/b/ao;->write(Ljava/lang/String;)V

    .line 240
    iget-object v1, p0, Lcom/alibaba/fastjson/b/z;->b:Lcom/alibaba/fastjson/b/ao;

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/b/ao;->write(Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Lcom/alibaba/fastjson/b/z;->b:Lcom/alibaba/fastjson/b/ao;

    const-string v1, "\"}"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/b/ao;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 262
    iget v0, p0, Lcom/alibaba/fastjson/b/z;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/b/z;->f:I

    .line 263
    return-void
.end method

.method public final d(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 343
    if-nez p1, :cond_0

    .line 344
    iget-object v0, p0, Lcom/alibaba/fastjson/b/z;->b:Lcom/alibaba/fastjson/b/ao;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/b/ao;->a()V

    .line 356
    :goto_0
    return-void

    .line 348
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 349
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/b/z;->a(Ljava/lang/Class;)Lcom/alibaba/fastjson/b/aj;

    move-result-object v0

    .line 352
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v0, p0, p1, v1, v2}, Lcom/alibaba/fastjson/b/aj;->a(Lcom/alibaba/fastjson/b/z;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 353
    :catch_0
    move-exception v0

    .line 354
    new-instance v1, Lcom/alibaba/fastjson/d;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public e()V
    .locals 1

    .prologue
    .line 266
    iget v0, p0, Lcom/alibaba/fastjson/b/z;->f:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/alibaba/fastjson/b/z;->f:I

    .line 267
    return-void
.end method

.method public f()V
    .locals 3

    .prologue
    .line 270
    iget-object v0, p0, Lcom/alibaba/fastjson/b/z;->b:Lcom/alibaba/fastjson/b/ao;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/b/ao;->a(C)V

    .line 271
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/alibaba/fastjson/b/z;->f:I

    if-ge v0, v1, :cond_0

    .line 272
    iget-object v1, p0, Lcom/alibaba/fastjson/b/z;->b:Lcom/alibaba/fastjson/b/ao;

    iget-object v2, p0, Lcom/alibaba/fastjson/b/z;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/b/ao;->write(Ljava/lang/String;)V

    .line 271
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 274
    :cond_0
    return-void
.end method

.method public g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/b/af;",
            ">;"
        }
    .end annotation

    .prologue
    .line 285
    iget-object v0, p0, Lcom/alibaba/fastjson/b/z;->e:Ljava/util/List;

    return-object v0
.end method

.method public h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/b/ak;",
            ">;"
        }
    .end annotation

    .prologue
    .line 297
    iget-object v0, p0, Lcom/alibaba/fastjson/b/z;->c:Ljava/util/List;

    return-object v0
.end method

.method public i()Lcom/alibaba/fastjson/b/ao;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/alibaba/fastjson/b/z;->b:Lcom/alibaba/fastjson/b/ao;

    return-object v0
.end method

.method public j()V
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/alibaba/fastjson/b/z;->b:Lcom/alibaba/fastjson/b/ao;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/b/ao;->a()V

    .line 318
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/alibaba/fastjson/b/z;->b:Lcom/alibaba/fastjson/b/ao;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/b/ao;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
