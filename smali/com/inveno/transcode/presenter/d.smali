.class public Lcom/inveno/transcode/presenter/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inveno/transcode/presenter/d$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/inveno/transcode/view/TranscodeParams;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/inveno/transcode/presenter/c;

.field private c:I

.field private final d:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final e:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/inveno/transcode/presenter/d;->c:I

    .line 49
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcom/inveno/transcode/presenter/d;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 52
    new-instance v0, Lcom/inveno/transcode/presenter/e;

    invoke-direct {v0, p0}, Lcom/inveno/transcode/presenter/e;-><init>(Lcom/inveno/transcode/presenter/d;)V

    iput-object v0, p0, Lcom/inveno/transcode/presenter/d;->e:Ljava/lang/Runnable;

    return-void
.end method

.method public static final a()Lcom/inveno/transcode/presenter/d;
    .locals 1

    .prologue
    .line 201
    invoke-static {}, Lcom/inveno/transcode/presenter/d$a;->a()Lcom/inveno/transcode/presenter/d;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/inveno/transcode/presenter/d;)Ljava/util/Stack;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/inveno/transcode/presenter/d;->a:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic a(Lcom/inveno/transcode/presenter/d;Lorg/jsoup/select/Elements;Ljava/lang/String;)Lorg/jsoup/select/Elements;
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/inveno/transcode/presenter/d;->a(Lorg/jsoup/select/Elements;Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/inveno/transcode/presenter/d;Lorg/jsoup/select/Elements;Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/select/Elements;
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/inveno/transcode/presenter/d;->a(Lorg/jsoup/select/Elements;Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v0

    return-object v0
.end method

.method private a(Lorg/jsoup/select/Elements;Ljava/lang/String;)Lorg/jsoup/select/Elements;
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v3, 0x0

    .line 264
    const-string v0, "img"

    invoke-virtual {p1, v0}, Lorg/jsoup/select/Elements;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v4

    .line 265
    invoke-virtual {v4}, Lorg/jsoup/select/Elements;->size()I

    move-result v5

    move v2, v3

    .line 266
    :goto_0
    if-ge v2, v5, :cond_a

    .line 268
    invoke-virtual {v4, v2}, Lorg/jsoup/select/Elements;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/i;

    invoke-virtual {v0}, Lorg/jsoup/nodes/i;->parent()Lorg/jsoup/nodes/i;

    move-result-object v0

    const-string v1, "style"

    const-string v6, ""

    invoke-virtual {v0, v1, v6}, Lorg/jsoup/nodes/i;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/i;

    .line 269
    invoke-virtual {v4, v2}, Lorg/jsoup/select/Elements;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/i;

    const-string v1, "style"

    const-string v6, ""

    invoke-virtual {v0, v1, v6}, Lorg/jsoup/nodes/i;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/i;

    .line 272
    invoke-virtual {v4, v2}, Lorg/jsoup/select/Elements;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/i;

    const-string v1, "src"

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/i;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 274
    invoke-virtual {v4, v2}, Lorg/jsoup/select/Elements;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/i;

    const-string v6, "alt_src"

    invoke-virtual {v0, v6}, Lorg/jsoup/nodes/i;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 275
    invoke-virtual {v4, v2}, Lorg/jsoup/select/Elements;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/i;

    const-string v1, "alt_src"

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/i;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 278
    :cond_0
    invoke-virtual {v4, v2}, Lorg/jsoup/select/Elements;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/i;

    const-string v6, "data-original"

    invoke-virtual {v0, v6}, Lorg/jsoup/nodes/i;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 279
    invoke-virtual {v4, v2}, Lorg/jsoup/select/Elements;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/i;

    const-string v1, "data-original"

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/i;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 282
    :cond_1
    invoke-virtual {v4, v2}, Lorg/jsoup/select/Elements;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/i;

    const-string v6, "data-src"

    invoke-virtual {v0, v6}, Lorg/jsoup/nodes/i;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 283
    invoke-virtual {v4, v2}, Lorg/jsoup/select/Elements;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/i;

    const-string v1, "data-src"

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/i;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 286
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 266
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    .line 292
    :cond_3
    const/4 v0, 0x0

    .line 294
    const-string v6, "http"

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "https"

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 296
    invoke-virtual {v1, v3, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 297
    invoke-virtual {v1, v3, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 298
    const-string v8, "./"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 299
    invoke-virtual {v1, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 300
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/"

    invoke-virtual {p2, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p2, v3, v6}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "/"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_4
    :goto_2
    move-object v1, v0

    .line 331
    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 332
    const/16 v6, 0x13

    if-ge v0, v6, :cond_9

    .line 333
    invoke-virtual {v4, v2}, Lorg/jsoup/select/Elements;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/i;

    const-string v6, "src"

    invoke-virtual {v0, v6, v1}, Lorg/jsoup/nodes/i;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/i;

    goto :goto_1

    .line 301
    :cond_6
    const-string v8, "//"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 303
    :try_start_0
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 304
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_2

    .line 305
    :catch_0
    move-exception v1

    .line 306
    invoke-virtual {v1}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_2

    .line 307
    :catch_1
    move-exception v1

    .line 308
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 311
    :cond_7
    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 312
    invoke-virtual {v1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 313
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/"

    invoke-virtual {p2, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p2, v3, v6}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "/"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 314
    :cond_8
    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 316
    :try_start_1
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 317
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v0

    goto/16 :goto_2

    .line 318
    :catch_2
    move-exception v1

    .line 319
    invoke-virtual {v1}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto/16 :goto_2

    .line 320
    :catch_3
    move-exception v1

    .line 321
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 335
    :cond_9
    invoke-virtual {v4, v2}, Lorg/jsoup/select/Elements;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/i;

    const-string v6, "src"

    const-string v7, "images/imgload.png"

    invoke-virtual {v0, v6, v7}, Lorg/jsoup/nodes/i;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/i;

    .line 336
    invoke-virtual {v4, v2}, Lorg/jsoup/select/Elements;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/i;

    const-string v6, "data-url"

    invoke-virtual {v0, v6, v1}, Lorg/jsoup/nodes/i;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/i;

    goto/16 :goto_1

    .line 339
    :cond_a
    return-object p1
.end method

.method private a(Lorg/jsoup/select/Elements;Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/select/Elements;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 243
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p3, :cond_1

    .line 255
    :cond_0
    return-object p1

    .line 247
    :cond_1
    invoke-virtual {p1, p2}, Lorg/jsoup/select/Elements;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v4

    move v1, v2

    .line 248
    :goto_0
    invoke-virtual {v4}, Lorg/jsoup/select/Elements;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    move v3, v2

    .line 249
    :goto_1
    array-length v0, p3

    if-ge v3, v0, :cond_3

    .line 250
    invoke-virtual {v4, v1}, Lorg/jsoup/select/Elements;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/i;

    aget-object v5, p3, v3

    invoke-virtual {v0, v5}, Lorg/jsoup/nodes/i;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 251
    invoke-virtual {v4, v1}, Lorg/jsoup/select/Elements;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/i;

    aget-object v5, p3, v3

    const-string v6, ""

    invoke-virtual {v0, v5, v6}, Lorg/jsoup/nodes/i;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/i;

    .line 249
    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 248
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 238
    invoke-static {}, Lcom/inveno/transcode/a/b;->a()Lcom/inveno/transcode/a/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/inveno/transcode/a/b;->a(Ljava/lang/String;)Lcom/inveno/transcode/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/inveno/transcode/presenter/d;)Lcom/inveno/transcode/presenter/c;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/inveno/transcode/presenter/d;->b:Lcom/inveno/transcode/presenter/c;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/inveno/transcode/presenter/c;)V
    .locals 1

    .prologue
    .line 205
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/inveno/transcode/presenter/d;->a:Ljava/util/Stack;

    .line 206
    iput-object p1, p0, Lcom/inveno/transcode/presenter/d;->b:Lcom/inveno/transcode/presenter/c;

    .line 207
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 211
    :try_start_0
    iget-object v0, p0, Lcom/inveno/transcode/presenter/d;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/inveno/transcode/presenter/d;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    .line 212
    invoke-direct {p0, p5}, Lcom/inveno/transcode/presenter/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 213
    const/4 v0, 0x0

    .line 214
    invoke-static {}, Lcom/inveno/transcode/presenter/f;->b()Lcom/inveno/transcode/presenter/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inveno/transcode/presenter/f;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 215
    invoke-static {}, Lcom/inveno/transcode/presenter/f;->b()Lcom/inveno/transcode/presenter/f;

    move-result-object v0

    invoke-static {p1}, Lcom/inveno/transcode/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inveno/transcode/presenter/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 217
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 219
    iget-object v1, p0, Lcom/inveno/transcode/presenter/d;->b:Lcom/inveno/transcode/presenter/c;

    invoke-interface {v1, p1, v0}, Lcom/inveno/transcode/presenter/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    :goto_0
    return-void

    .line 221
    :cond_1
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    :try_start_1
    iget-object v8, p0, Lcom/inveno/transcode/presenter/d;->a:Ljava/util/Stack;

    new-instance v0, Lcom/inveno/transcode/view/TranscodeParams;

    const/4 v1, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/inveno/transcode/view/TranscodeParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 224
    :try_start_2
    iget-object v0, p0, Lcom/inveno/transcode/presenter/d;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/inveno/transcode/presenter/d;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 229
    :catch_0
    move-exception v0

    .line 230
    invoke-static {}, Lcom/inveno/transcode/presenter/DefaultTranscodeConfig;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 231
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 233
    :cond_2
    iget-object v0, p0, Lcom/inveno/transcode/presenter/d;->b:Lcom/inveno/transcode/presenter/c;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/inveno/transcode/presenter/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 223
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 227
    :cond_3
    iget-object v0, p0, Lcom/inveno/transcode/presenter/d;->b:Lcom/inveno/transcode/presenter/c;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/inveno/transcode/presenter/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0
.end method

.method public b()V
    .locals 4

    .prologue
    .line 344
    iget-object v0, p0, Lcom/inveno/transcode/presenter/d;->a:Ljava/util/Stack;

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/inveno/transcode/presenter/d;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/inveno/transcode/presenter/d;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_1

    .line 349
    :try_start_0
    iget-object v0, p0, Lcom/inveno/transcode/presenter/d;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 350
    iget-object v0, p0, Lcom/inveno/transcode/presenter/d;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    iget v1, p0, Lcom/inveno/transcode/presenter/d;->c:I

    int-to-long v2, v1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 352
    iget-object v0, p0, Lcom/inveno/transcode/presenter/d;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 360
    :cond_1
    :goto_0
    return-void

    .line 354
    :catch_0
    move-exception v0

    .line 355
    iget-object v0, p0, Lcom/inveno/transcode/presenter/d;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    goto :goto_0

    .line 356
    :catch_1
    move-exception v0

    goto :goto_0
.end method
