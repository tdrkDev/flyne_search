.class public Lcom/alibaba/fastjson/a/a/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson/a/a/am;


# static fields
.field public static final a:Lcom/alibaba/fastjson/a/a/s;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcom/alibaba/fastjson/a/a/s;

    invoke-direct {v0}, Lcom/alibaba/fastjson/a/a/s;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/a/a/s;->a:Lcom/alibaba/fastjson/a/a/s;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 487
    const/16 v0, 0xc

    return v0
.end method

.method public a(Lcom/alibaba/fastjson/a/c;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/a/c;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 437
    .line 439
    invoke-virtual {p1}, Lcom/alibaba/fastjson/a/c;->k()Lcom/alibaba/fastjson/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 440
    invoke-virtual {p1}, Lcom/alibaba/fastjson/a/c;->k()Lcom/alibaba/fastjson/a/e;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/a/e;->b(I)V

    .line 478
    :cond_0
    :goto_0
    return-object v2

    .line 443
    :cond_1
    const-class v0, Ljava/util/HashMap;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 444
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v1, v0

    .line 455
    :goto_1
    const-class v0, Ljava/lang/Class;

    if-ne p2, v0, :cond_6

    .line 456
    invoke-virtual {p1}, Lcom/alibaba/fastjson/a/c;->j()Ljava/lang/Object;

    move-result-object v0

    .line 457
    if-eqz v0, :cond_0

    .line 461
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_7

    .line 463
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 445
    :cond_2
    const-class v0, Ljava/util/TreeMap;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 446
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    move-object v1, v0

    goto :goto_1

    .line 447
    :cond_3
    const-class v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 448
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    move-object v1, v0

    goto :goto_1

    .line 449
    :cond_4
    const-class v0, Ljava/util/Properties;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 450
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    move-object v1, v0

    goto :goto_1

    .line 451
    :cond_5
    const-class v0, Ljava/util/IdentityHashMap;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 452
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    move-object v1, v0

    goto :goto_1

    .line 464
    :catch_0
    move-exception v0

    .line 465
    new-instance v1, Lcom/alibaba/fastjson/d;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 468
    :cond_6
    const-class v0, Ljava/io/Serializable;

    if-ne p2, v0, :cond_7

    .line 469
    invoke-virtual {p1}, Lcom/alibaba/fastjson/a/c;->j()Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 472
    :cond_7
    if-nez v1, :cond_8

    .line 473
    new-instance v0, Lcom/alibaba/fastjson/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not support type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 477
    :cond_8
    :try_start_1
    invoke-virtual {p0, p1, v1}, Lcom/alibaba/fastjson/a/a/s;->a(Lcom/alibaba/fastjson/a/c;Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/alibaba/fastjson/d; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    move-object v2, v1

    .line 478
    goto/16 :goto_0

    .line 479
    :catch_1
    move-exception v0

    .line 480
    throw v0

    .line 481
    :catch_2
    move-exception v0

    .line 482
    new-instance v1, Lcom/alibaba/fastjson/d;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_9
    move-object v1, v2

    goto/16 :goto_1
.end method

.method public a(Lcom/alibaba/fastjson/a/c;Ljava/lang/reflect/ParameterizedType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/a/c;",
            "Ljava/lang/reflect/ParameterizedType;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 384
    :try_start_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson/a/c;->k()Lcom/alibaba/fastjson/a/e;

    move-result-object v0

    .line 385
    invoke-virtual {v0}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 386
    invoke-virtual {v0}, Lcom/alibaba/fastjson/a/e;->k()V

    .line 387
    const/4 v0, 0x0

    .line 421
    :goto_0
    return-object v0

    .line 390
    :cond_0
    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 391
    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_7

    .line 392
    check-cast v0, Ljava/lang/Class;

    .line 394
    const-class v1, Ljava/util/Map;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 397
    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 398
    const-class v1, Ljava/util/Map;

    if-ne v0, v1, :cond_1

    .line 399
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 415
    :goto_1
    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v3, v0, v1

    .line 416
    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v4, v0, v1

    .line 418
    const-class v0, Ljava/lang/String;

    if-ne v3, v0, :cond_6

    .line 419
    invoke-virtual {p0, p1, v2, v4, p3}, Lcom/alibaba/fastjson/a/a/s;->a(Lcom/alibaba/fastjson/a/c;Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    .line 400
    :cond_1
    const-class v1, Ljava/util/SortedMap;

    if-ne v0, v1, :cond_2

    .line 401
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V
    :try_end_0
    .catch Lcom/alibaba/fastjson/d; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 428
    :catch_0
    move-exception v0

    .line 429
    throw v0

    .line 402
    :cond_2
    :try_start_1
    const-class v1, Ljava/util/concurrent/ConcurrentMap;

    if-ne v0, v1, :cond_3

    .line 403
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V
    :try_end_1
    .catch Lcom/alibaba/fastjson/d; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 430
    :catch_1
    move-exception v0

    .line 431
    new-instance v1, Lcom/alibaba/fastjson/d;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 405
    :cond_3
    :try_start_2
    new-instance v1, Lcom/alibaba/fastjson/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can not create instance : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;)V

    throw v1

    .line 408
    :cond_4
    const-class v1, Ljava/util/HashMap;

    if-ne v0, v1, :cond_5

    .line 409
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    goto :goto_1

    .line 411
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    move-object v2, v0

    goto :goto_1

    :cond_6
    move-object v0, p0

    move-object v1, p1

    move-object v5, p3

    .line 421
    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/fastjson/a/a/s;->a(Lcom/alibaba/fastjson/a/c;Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    .line 427
    :cond_7
    new-instance v0, Lcom/alibaba/fastjson/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not support type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Lcom/alibaba/fastjson/d; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
.end method

.method public a(Lcom/alibaba/fastjson/a/c;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/a/c;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 348
    instance-of v0, p2, Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 349
    check-cast p2, Ljava/lang/Class;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/a/a/s;->a(Lcom/alibaba/fastjson/a/c;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 374
    :goto_0
    return-object v0

    .line 352
    :cond_0
    instance-of v0, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_1

    .line 353
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson/a/a/s;->a(Lcom/alibaba/fastjson/a/c;Ljava/lang/reflect/ParameterizedType;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 356
    :cond_1
    instance-of v0, p2, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_2

    .line 357
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson/a/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 360
    :cond_2
    instance-of v0, p2, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_3

    .line 361
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson/a/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 364
    :cond_3
    instance-of v0, p2, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_4

    move-object v0, p2

    .line 365
    check-cast v0, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {v0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 366
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 367
    invoke-virtual {p1, v0, v1}, Lcom/alibaba/fastjson/a/c;->a(Ljava/lang/reflect/Type;Ljava/util/Collection;)V

    .line 368
    instance-of v2, v0, Ljava/lang/Class;

    if-eqz v2, :cond_4

    .line 369
    check-cast v0, Ljava/lang/Class;

    .line 370
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 372
    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_0

    .line 378
    :cond_4
    new-instance v0, Lcom/alibaba/fastjson/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not support type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/alibaba/fastjson/a/c;Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/a/c;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 41
    invoke-virtual {p1}, Lcom/alibaba/fastjson/a/c;->k()Lcom/alibaba/fastjson/a/e;

    move-result-object v3

    .line 43
    invoke-virtual {v3}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    invoke-virtual {v3}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 44
    new-instance v0, Lcom/alibaba/fastjson/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syntax error, expect {, actual "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Lcom/alibaba/fastjson/a/e;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson/a/c;->c()Lcom/alibaba/fastjson/a/i;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/alibaba/fastjson/a/i;->a(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/a/a/am;

    move-result-object v0

    .line 48
    invoke-virtual {p1}, Lcom/alibaba/fastjson/a/c;->c()Lcom/alibaba/fastjson/a/i;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/alibaba/fastjson/a/i;->a(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/a/a/am;

    move-result-object v1

    .line 49
    invoke-interface {v0}, Lcom/alibaba/fastjson/a/a/am;->a()I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/alibaba/fastjson/a/e;->b(I)V

    .line 51
    invoke-virtual {p1}, Lcom/alibaba/fastjson/a/c;->f()Lcom/alibaba/fastjson/a/h;

    move-result-object v2

    .line 54
    :cond_1
    :goto_0
    :try_start_0
    invoke-virtual {v3}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v4

    const/16 v5, 0xd

    if-ne v4, v5, :cond_2

    .line 55
    const/16 v0, 0x10

    invoke-virtual {v3, v0}, Lcom/alibaba/fastjson/a/e;->b(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/a/c;->a(Lcom/alibaba/fastjson/a/h;)V

    .line 137
    :goto_1
    return-object p2

    .line 59
    :cond_2
    :try_start_1
    invoke-virtual {v3}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_b

    invoke-virtual {v3}, Lcom/alibaba/fastjson/a/e;->x()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 60
    const/4 v0, 0x0

    .line 62
    const/4 v1, 0x4

    invoke-virtual {v3, v1}, Lcom/alibaba/fastjson/a/e;->a(I)V

    .line 63
    invoke-virtual {v3}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v1

    const/4 v4, 0x4

    if-ne v1, v4, :cond_9

    .line 64
    invoke-virtual {v3}, Lcom/alibaba/fastjson/a/e;->w()Ljava/lang/String;

    move-result-object v4

    .line 65
    const-string v1, "@"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 66
    invoke-virtual {v2}, Lcom/alibaba/fastjson/a/h;->a()Ljava/lang/Object;

    move-result-object v0

    .line 95
    :goto_2
    const/16 v1, 0xd

    invoke-virtual {v3, v1}, Lcom/alibaba/fastjson/a/e;->b(I)V

    .line 96
    invoke-virtual {v3}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v1

    const/16 v4, 0xd

    if-eq v1, v4, :cond_a

    .line 97
    new-instance v0, Lcom/alibaba/fastjson/d;

    const-string v1, "illegal ref"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 134
    :catchall_0
    move-exception v0

    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/a/c;->a(Lcom/alibaba/fastjson/a/h;)V

    throw v0

    .line 67
    :cond_3
    :try_start_2
    const-string v1, ".."

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 68
    invoke-virtual {v2}, Lcom/alibaba/fastjson/a/h;->b()Lcom/alibaba/fastjson/a/h;

    move-result-object v1

    .line 69
    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/h;->a()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 70
    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/h;->a()Ljava/lang/Object;

    move-result-object v0

    goto :goto_2

    .line 72
    :cond_4
    new-instance v5, Lcom/alibaba/fastjson/a/c$a;

    invoke-direct {v5, v1, v4}, Lcom/alibaba/fastjson/a/c$a;-><init>(Lcom/alibaba/fastjson/a/h;Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Lcom/alibaba/fastjson/a/c;->a(Lcom/alibaba/fastjson/a/c$a;)V

    .line 73
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/a/c;->a(I)V

    goto :goto_2

    .line 75
    :cond_5
    const-string v1, "$"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    move-object v1, v2

    .line 77
    :goto_3
    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/h;->b()Lcom/alibaba/fastjson/a/h;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 78
    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/h;->b()Lcom/alibaba/fastjson/a/h;

    move-result-object v1

    goto :goto_3

    .line 81
    :cond_6
    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/h;->a()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 82
    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/h;->a()Ljava/lang/Object;

    move-result-object v0

    goto :goto_2

    .line 84
    :cond_7
    new-instance v5, Lcom/alibaba/fastjson/a/c$a;

    invoke-direct {v5, v1, v4}, Lcom/alibaba/fastjson/a/c$a;-><init>(Lcom/alibaba/fastjson/a/h;Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Lcom/alibaba/fastjson/a/c;->a(Lcom/alibaba/fastjson/a/c$a;)V

    .line 85
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/a/c;->a(I)V

    goto :goto_2

    .line 88
    :cond_8
    new-instance v1, Lcom/alibaba/fastjson/a/c$a;

    invoke-direct {v1, v2, v4}, Lcom/alibaba/fastjson/a/c$a;-><init>(Lcom/alibaba/fastjson/a/h;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/a/c;->a(Lcom/alibaba/fastjson/a/c$a;)V

    .line 89
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/a/c;->a(I)V

    goto :goto_2

    .line 92
    :cond_9
    new-instance v0, Lcom/alibaba/fastjson/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "illegal ref, "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v3

    invoke-static {v3}, Lcom/alibaba/fastjson/a/f;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_a
    const/16 v1, 0x10

    invoke-virtual {v3, v1}, Lcom/alibaba/fastjson/a/e;->b(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 134
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/a/c;->a(Lcom/alibaba/fastjson/a/h;)V

    move-object p2, v0

    goto/16 :goto_1

    .line 107
    :cond_b
    :try_start_3
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v4

    if-nez v4, :cond_c

    invoke-virtual {v3}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_c

    const-string v4, "@type"

    invoke-virtual {v3}, Lcom/alibaba/fastjson/a/e;->w()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 108
    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson/a/e;->a(I)V

    .line 109
    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson/a/e;->b(I)V

    .line 110
    invoke-interface {v0}, Lcom/alibaba/fastjson/a/a/am;->a()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson/a/e;->b(I)V

    .line 113
    :cond_c
    const/4 v4, 0x0

    invoke-interface {v0, p1, p3, v4}, Lcom/alibaba/fastjson/a/a/am;->a(Lcom/alibaba/fastjson/a/c;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 115
    invoke-virtual {v3}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v5

    const/16 v6, 0x11

    if-eq v5, v6, :cond_d

    .line 116
    new-instance v0, Lcom/alibaba/fastjson/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "syntax error, expect :, actual "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_d
    invoke-interface {v1}, Lcom/alibaba/fastjson/a/a/am;->a()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/alibaba/fastjson/a/e;->b(I)V

    .line 121
    invoke-interface {v1, p1, p4, v4}, Lcom/alibaba/fastjson/a/a/am;->a(Lcom/alibaba/fastjson/a/c;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 123
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v6

    if-nez v6, :cond_e

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Lcom/alibaba/fastjson/a/h;->a()Ljava/lang/Object;

    move-result-object v6

    if-eq v6, p2, :cond_e

    .line 124
    invoke-virtual {p1, v2, p2, p5}, Lcom/alibaba/fastjson/a/c;->a(Lcom/alibaba/fastjson/a/h;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/a/h;

    .line 127
    :cond_e
    invoke-interface {p2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    invoke-virtual {v3}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v4

    const/16 v5, 0x10

    if-ne v4, v5, :cond_1

    .line 130
    invoke-interface {v0}, Lcom/alibaba/fastjson/a/a/am;->a()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson/a/e;->b(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method

.method public a(Lcom/alibaba/fastjson/a/c;Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/a/c;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map;"
        }
    .end annotation

    .prologue
    const/16 v8, 0x27

    const/16 v7, 0xd

    const/16 v6, 0x3a

    const/16 v5, 0x22

    .line 142
    invoke-virtual {p1}, Lcom/alibaba/fastjson/a/c;->k()Lcom/alibaba/fastjson/a/e;

    move-result-object v2

    .line 144
    invoke-virtual {v2}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    .line 145
    new-instance v0, Lcom/alibaba/fastjson/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "syntax error, expect {, actual "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson/a/c;->f()Lcom/alibaba/fastjson/a/h;

    move-result-object v3

    .line 151
    :cond_1
    :try_start_0
    invoke-virtual {v2}, Lcom/alibaba/fastjson/a/e;->f()V

    .line 152
    invoke-virtual {v2}, Lcom/alibaba/fastjson/a/e;->g()C

    move-result v0

    .line 153
    sget-object v1, Lcom/alibaba/fastjson/a/d;->AllowArbitraryCommas:Lcom/alibaba/fastjson/a/d;

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/a/c;->a(Lcom/alibaba/fastjson/a/d;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 154
    :goto_0
    const/16 v1, 0x2c

    if-ne v0, v1, :cond_2

    .line 155
    invoke-virtual {v2}, Lcom/alibaba/fastjson/a/e;->i()V

    .line 156
    invoke-virtual {v2}, Lcom/alibaba/fastjson/a/e;->f()V

    .line 157
    invoke-virtual {v2}, Lcom/alibaba/fastjson/a/e;->g()C

    move-result v0

    goto :goto_0

    .line 162
    :cond_2
    if-ne v0, v5, :cond_3

    .line 163
    invoke-virtual {p1}, Lcom/alibaba/fastjson/a/c;->b()Lcom/alibaba/fastjson/a/j;

    move-result-object v0

    const/16 v1, 0x22

    invoke-virtual {v2, v0, v1}, Lcom/alibaba/fastjson/a/e;->a(Lcom/alibaba/fastjson/a/j;C)Ljava/lang/String;

    move-result-object v0

    .line 164
    invoke-virtual {v2}, Lcom/alibaba/fastjson/a/e;->f()V

    .line 165
    invoke-virtual {v2}, Lcom/alibaba/fastjson/a/e;->g()C

    move-result v1

    .line 166
    if-eq v1, v6, :cond_8

    .line 167
    new-instance v0, Lcom/alibaba/fastjson/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "expect \':\' at "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcom/alibaba/fastjson/a/e;->v()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    :catchall_0
    move-exception v0

    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/a/c;->a(Lcom/alibaba/fastjson/a/h;)V

    throw v0

    .line 169
    :cond_3
    const/16 v1, 0x7d

    if-ne v0, v1, :cond_4

    .line 170
    :try_start_1
    invoke-virtual {v2}, Lcom/alibaba/fastjson/a/e;->i()V

    .line 171
    invoke-virtual {v2}, Lcom/alibaba/fastjson/a/e;->j()V

    .line 172
    const/16 v0, 0x10

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/a/e;->b(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 251
    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/a/c;->a(Lcom/alibaba/fastjson/a/h;)V

    :goto_1
    return-object p2

    .line 174
    :cond_4
    if-ne v0, v8, :cond_6

    .line 175
    :try_start_2
    sget-object v0, Lcom/alibaba/fastjson/a/d;->AllowSingleQuotes:Lcom/alibaba/fastjson/a/d;

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/a/c;->a(Lcom/alibaba/fastjson/a/d;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 176
    new-instance v0, Lcom/alibaba/fastjson/d;

    const-string v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_5
    invoke-virtual {p1}, Lcom/alibaba/fastjson/a/c;->b()Lcom/alibaba/fastjson/a/j;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v2, v0, v1}, Lcom/alibaba/fastjson/a/e;->a(Lcom/alibaba/fastjson/a/j;C)Ljava/lang/String;

    move-result-object v0

    .line 180
    invoke-virtual {v2}, Lcom/alibaba/fastjson/a/e;->f()V

    .line 181
    invoke-virtual {v2}, Lcom/alibaba/fastjson/a/e;->g()C

    move-result v1

    .line 182
    if-eq v1, v6, :cond_8

    .line 183
    new-instance v0, Lcom/alibaba/fastjson/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "expect \':\' at "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcom/alibaba/fastjson/a/e;->v()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    :cond_6
    sget-object v0, Lcom/alibaba/fastjson/a/d;->AllowUnQuotedFieldNames:Lcom/alibaba/fastjson/a/d;

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/a/c;->a(Lcom/alibaba/fastjson/a/d;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 187
    new-instance v0, Lcom/alibaba/fastjson/d;

    const-string v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_7
    invoke-virtual {p1}, Lcom/alibaba/fastjson/a/c;->b()Lcom/alibaba/fastjson/a/j;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/a/e;->a(Lcom/alibaba/fastjson/a/j;)Ljava/lang/String;

    move-result-object v0

    .line 191
    invoke-virtual {v2}, Lcom/alibaba/fastjson/a/e;->f()V

    .line 192
    invoke-virtual {v2}, Lcom/alibaba/fastjson/a/e;->g()C

    move-result v1

    .line 193
    if-eq v1, v6, :cond_8

    .line 194
    new-instance v0, Lcom/alibaba/fastjson/d;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "expect \':\' at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/alibaba/fastjson/a/e;->v()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", actual "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    move-object v1, v0

    .line 198
    invoke-virtual {v2}, Lcom/alibaba/fastjson/a/e;->i()V

    .line 199
    invoke-virtual {v2}, Lcom/alibaba/fastjson/a/e;->f()V

    .line 200
    invoke-virtual {v2}, Lcom/alibaba/fastjson/a/e;->g()C

    .line 202
    invoke-virtual {v2}, Lcom/alibaba/fastjson/a/e;->j()V

    .line 204
    const-string v0, "@type"

    if-ne v1, v0, :cond_b

    .line 205
    invoke-virtual {p1}, Lcom/alibaba/fastjson/a/c;->b()Lcom/alibaba/fastjson/a/j;

    move-result-object v0

    const/16 v1, 0x22

    invoke-virtual {v2, v0, v1}, Lcom/alibaba/fastjson/a/e;->a(Lcom/alibaba/fastjson/a/j;C)Ljava/lang/String;

    move-result-object v0

    .line 206
    invoke-static {v0}, Lcom/alibaba/fastjson/c/g;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 208
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_9

    .line 209
    const/16 v0, 0x10

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/a/e;->b(I)V

    .line 210
    invoke-virtual {v2}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v0

    if-ne v0, v7, :cond_1

    .line 211
    const/16 v0, 0x10

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/a/e;->b(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 251
    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/a/c;->a(Lcom/alibaba/fastjson/a/h;)V

    goto/16 :goto_1

    .line 217
    :cond_9
    :try_start_3
    invoke-virtual {p1}, Lcom/alibaba/fastjson/a/c;->c()Lcom/alibaba/fastjson/a/i;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/a/i;->a(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/a/a/am;

    move-result-object v1

    .line 219
    const/16 v4, 0x10

    invoke-virtual {v2, v4}, Lcom/alibaba/fastjson/a/e;->b(I)V

    .line 221
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/a/c;->a(I)V

    .line 223
    if-eqz v3, :cond_a

    instance-of v2, p4, Ljava/lang/Integer;

    if-nez v2, :cond_a

    .line 224
    invoke-virtual {p1}, Lcom/alibaba/fastjson/a/c;->i()V

    .line 227
    :cond_a
    invoke-interface {v1, p1, v0, p4}, Lcom/alibaba/fastjson/a/a/am;->a(Lcom/alibaba/fastjson/a/c;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 251
    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/a/c;->a(Lcom/alibaba/fastjson/a/h;)V

    move-object p2, v0

    goto/16 :goto_1

    .line 231
    :cond_b
    :try_start_4
    invoke-virtual {v2}, Lcom/alibaba/fastjson/a/e;->k()V

    .line 233
    invoke-virtual {v2}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v0

    const/16 v4, 0x8

    if-ne v0, v4, :cond_c

    .line 234
    const/4 v0, 0x0

    .line 235
    invoke-virtual {v2}, Lcom/alibaba/fastjson/a/e;->k()V

    .line 240
    :goto_2
    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    invoke-virtual {p1, p2, v1}, Lcom/alibaba/fastjson/a/c;->a(Ljava/util/Map;Ljava/lang/String;)V

    .line 243
    invoke-virtual {p1, v3, v0, v1}, Lcom/alibaba/fastjson/a/c;->a(Lcom/alibaba/fastjson/a/h;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/a/h;

    .line 245
    invoke-virtual {v2}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v0

    if-ne v0, v7, :cond_1

    .line 246
    invoke-virtual {v2}, Lcom/alibaba/fastjson/a/e;->k()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 251
    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/a/c;->a(Lcom/alibaba/fastjson/a/h;)V

    goto/16 :goto_1

    .line 237
    :cond_c
    :try_start_5
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson/a/c;->a(Ljava/lang/reflect/Type;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v0

    goto :goto_2
.end method

.method public a(Lcom/alibaba/fastjson/a/c;Ljava/lang/Object;)V
    .locals 13

    .prologue
    const/16 v12, 0xc

    const/4 v11, 0x2

    const/16 v10, 0xd

    const/16 v9, 0x10

    const/4 v8, 0x0

    .line 257
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 258
    invoke-virtual {p1}, Lcom/alibaba/fastjson/a/c;->c()Lcom/alibaba/fastjson/a/i;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/a/i;->b(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v2

    .line 260
    invoke-virtual {p1}, Lcom/alibaba/fastjson/a/c;->k()Lcom/alibaba/fastjson/a/e;

    move-result-object v3

    .line 262
    invoke-virtual {v3}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v0

    if-ne v0, v10, :cond_0

    .line 263
    invoke-virtual {v3, v9}, Lcom/alibaba/fastjson/a/e;->b(I)V

    .line 344
    :goto_0
    return-void

    .line 267
    :cond_0
    invoke-virtual {v3}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v0

    if-eq v0, v12, :cond_1

    invoke-virtual {v3}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v0

    if-eq v0, v9, :cond_1

    .line 268
    new-instance v0, Lcom/alibaba/fastjson/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syntax error, expect {, actual "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Lcom/alibaba/fastjson/a/e;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 271
    :cond_1
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/Object;

    .line 275
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/fastjson/a/c;->b()Lcom/alibaba/fastjson/a/j;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/alibaba/fastjson/a/e;->b(Lcom/alibaba/fastjson/a/j;)Ljava/lang/String;

    move-result-object v5

    .line 277
    if-nez v5, :cond_4

    .line 278
    invoke-virtual {v3}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v0

    if-ne v0, v10, :cond_3

    .line 279
    invoke-virtual {v3, v9}, Lcom/alibaba/fastjson/a/e;->b(I)V

    goto :goto_0

    .line 282
    :cond_3
    invoke-virtual {v3}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v0

    if-ne v0, v9, :cond_4

    .line 283
    sget-object v0, Lcom/alibaba/fastjson/a/d;->AllowArbitraryCommas:Lcom/alibaba/fastjson/a/d;

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/a/c;->a(Lcom/alibaba/fastjson/a/d;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 289
    :cond_4
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/a/a/u;

    .line 290
    if-nez v0, :cond_6

    .line 291
    sget-object v0, Lcom/alibaba/fastjson/a/d;->IgnoreNotMatch:Lcom/alibaba/fastjson/a/d;

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/a/c;->a(Lcom/alibaba/fastjson/a/d;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 292
    new-instance v0, Lcom/alibaba/fastjson/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setter not found, class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", property "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 295
    :cond_5
    invoke-virtual {v3}, Lcom/alibaba/fastjson/a/e;->h()V

    .line 296
    invoke-virtual {p1}, Lcom/alibaba/fastjson/a/c;->j()Ljava/lang/Object;

    .line 298
    invoke-virtual {v3}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v0

    if-ne v0, v10, :cond_2

    .line 299
    invoke-virtual {v3}, Lcom/alibaba/fastjson/a/e;->k()V

    goto/16 :goto_0

    .line 305
    :cond_6
    invoke-virtual {v0}, Lcom/alibaba/fastjson/a/a/u;->b()Ljava/lang/reflect/Method;

    move-result-object v0

    .line 306
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    aget-object v5, v5, v8

    .line 307
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v6

    aget-object v6, v6, v8

    .line 308
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v5, v7, :cond_7

    .line 309
    invoke-virtual {v3, v11}, Lcom/alibaba/fastjson/a/e;->a(I)V

    .line 310
    invoke-static {p1}, Lcom/alibaba/fastjson/a/a/z;->a(Lcom/alibaba/fastjson/a/c;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v8

    .line 329
    :goto_1
    :try_start_0
    invoke-virtual {v0, p2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    invoke-virtual {v3}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v0

    if-eq v0, v9, :cond_2

    .line 339
    invoke-virtual {v3}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v0

    if-ne v0, v10, :cond_2

    .line 340
    invoke-virtual {v3, v9}, Lcom/alibaba/fastjson/a/e;->b(I)V

    goto/16 :goto_0

    .line 311
    :cond_7
    const-class v7, Ljava/lang/String;

    if-ne v5, v7, :cond_8

    .line 312
    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Lcom/alibaba/fastjson/a/e;->a(I)V

    .line 313
    invoke-static {p1}, Lcom/alibaba/fastjson/a/a/aq;->a(Lcom/alibaba/fastjson/a/c;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v8

    goto :goto_1

    .line 314
    :cond_8
    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v5, v7, :cond_9

    .line 315
    invoke-virtual {v3, v11}, Lcom/alibaba/fastjson/a/e;->a(I)V

    .line 316
    invoke-static {p1}, Lcom/alibaba/fastjson/a/a/ah;->a(Lcom/alibaba/fastjson/a/c;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v8

    goto :goto_1

    .line 317
    :cond_9
    const-class v7, Ljava/util/List;

    if-ne v5, v7, :cond_a

    .line 318
    invoke-virtual {v3, v12}, Lcom/alibaba/fastjson/a/e;->a(I)V

    .line 319
    sget-object v5, Lcom/alibaba/fastjson/a/a/o;->a:Lcom/alibaba/fastjson/a/a/o;

    const/4 v7, 0x0

    invoke-virtual {v5, p1, v6, v7}, Lcom/alibaba/fastjson/a/a/o;->a(Lcom/alibaba/fastjson/a/c;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v8

    goto :goto_1

    .line 321
    :cond_a
    invoke-virtual {p1}, Lcom/alibaba/fastjson/a/c;->c()Lcom/alibaba/fastjson/a/i;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Lcom/alibaba/fastjson/a/i;->a(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/a/a/am;

    move-result-object v5

    .line 324
    invoke-interface {v5}, Lcom/alibaba/fastjson/a/a/am;->a()I

    move-result v7

    invoke-virtual {v3, v7}, Lcom/alibaba/fastjson/a/e;->a(I)V

    .line 325
    const/4 v7, 0x0

    invoke-interface {v5, p1, v6, v7}, Lcom/alibaba/fastjson/a/a/am;->a(Lcom/alibaba/fastjson/a/c;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v8

    goto :goto_1

    .line 330
    :catch_0
    move-exception v1

    .line 331
    new-instance v2, Lcom/alibaba/fastjson/d;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set proprety error, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Lcom/alibaba/fastjson/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
