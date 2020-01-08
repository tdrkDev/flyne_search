.class Lcom/inveno/transcode/view/TranscodeObject$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inveno/transcode/view/TranscodeObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/inveno/transcode/view/TranscodeObject;

.field private b:Ljava/lang/String;

.field private c:Lcom/inveno/transcode/view/ITranscodeCallback;


# direct methods
.method public constructor <init>(Lcom/inveno/transcode/view/TranscodeObject;Lcom/inveno/transcode/view/ITranscodeCallback;)V
    .locals 2

    .prologue
    .line 357
    iput-object p1, p0, Lcom/inveno/transcode/view/TranscodeObject$b;->a:Lcom/inveno/transcode/view/TranscodeObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 358
    iput-object p2, p0, Lcom/inveno/transcode/view/TranscodeObject$b;->c:Lcom/inveno/transcode/view/ITranscodeCallback;

    .line 359
    invoke-static {}, Lcom/inveno/transcode/presenter/d;->a()Lcom/inveno/transcode/presenter/d;

    move-result-object v0

    invoke-static {p1}, Lcom/inveno/transcode/view/TranscodeObject;->access$200(Lcom/inveno/transcode/view/TranscodeObject;)Lcom/inveno/transcode/presenter/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inveno/transcode/presenter/d;->a(Lcom/inveno/transcode/presenter/c;)V

    .line 360
    return-void
.end method

.method private a()V
    .locals 11

    .prologue
    .line 467
    iget-object v0, p0, Lcom/inveno/transcode/view/TranscodeObject$b;->c:Lcom/inveno/transcode/view/ITranscodeCallback;

    if-eqz v0, :cond_0

    .line 468
    iget-object v8, p0, Lcom/inveno/transcode/view/TranscodeObject$b;->c:Lcom/inveno/transcode/view/ITranscodeCallback;

    iget-object v0, p0, Lcom/inveno/transcode/view/TranscodeObject$b;->a:Lcom/inveno/transcode/view/TranscodeObject;

    invoke-static {v0}, Lcom/inveno/transcode/view/TranscodeObject;->access$300(Lcom/inveno/transcode/view/TranscodeObject;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-instance v0, Lcom/inveno/transcode/view/TranscodeParams;

    iget-object v1, p0, Lcom/inveno/transcode/view/TranscodeObject$b;->a:Lcom/inveno/transcode/view/TranscodeObject;

    invoke-static {v1}, Lcom/inveno/transcode/view/TranscodeObject;->access$1000(Lcom/inveno/transcode/view/TranscodeObject;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/inveno/transcode/view/TranscodeObject$b;->a:Lcom/inveno/transcode/view/TranscodeObject;

    invoke-static {v2}, Lcom/inveno/transcode/view/TranscodeObject;->access$000(Lcom/inveno/transcode/view/TranscodeObject;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/inveno/transcode/view/TranscodeObject$b;->a:Lcom/inveno/transcode/view/TranscodeObject;

    invoke-static {v3}, Lcom/inveno/transcode/view/TranscodeObject;->access$400(Lcom/inveno/transcode/view/TranscodeObject;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/inveno/transcode/view/TranscodeObject$b;->a:Lcom/inveno/transcode/view/TranscodeObject;

    invoke-static {v4}, Lcom/inveno/transcode/view/TranscodeObject;->access$500(Lcom/inveno/transcode/view/TranscodeObject;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/inveno/transcode/view/TranscodeObject$b;->a:Lcom/inveno/transcode/view/TranscodeObject;

    invoke-static {v5}, Lcom/inveno/transcode/view/TranscodeObject;->access$600(Lcom/inveno/transcode/view/TranscodeObject;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/inveno/transcode/view/TranscodeObject$b;->a:Lcom/inveno/transcode/view/TranscodeObject;

    invoke-static {v6}, Lcom/inveno/transcode/view/TranscodeObject;->access$300(Lcom/inveno/transcode/view/TranscodeObject;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/inveno/transcode/view/TranscodeObject$b;->a:Lcom/inveno/transcode/view/TranscodeObject;

    invoke-static {v7}, Lcom/inveno/transcode/view/TranscodeObject;->access$700(Lcom/inveno/transcode/view/TranscodeObject;)Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/inveno/transcode/view/TranscodeParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v9, v10, v0}, Lcom/inveno/transcode/view/ITranscodeCallback;->setUrl(Ljava/lang/String;ZLcom/inveno/transcode/view/TranscodeParams;)V

    .line 470
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/inveno/transcode/view/TranscodeObject$b;)V
    .locals 0

    .prologue
    .line 350
    invoke-direct {p0}, Lcom/inveno/transcode/view/TranscodeObject$b;->a()V

    return-void
.end method

.method static synthetic a(Lcom/inveno/transcode/view/TranscodeObject$b;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 350
    invoke-direct {p0, p1}, Lcom/inveno/transcode/view/TranscodeObject$b;->d(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/inveno/transcode/view/TranscodeObject$b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 350
    invoke-direct/range {p0 .. p7}, Lcom/inveno/transcode/view/TranscodeObject$b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 372
    invoke-static {}, Lcom/inveno/transcode/a/g;->a()Lcom/inveno/transcode/a/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/inveno/transcode/a/g;->a(Ljava/lang/String;)V

    .line 374
    iget-object v0, p0, Lcom/inveno/transcode/view/TranscodeObject$b;->a:Lcom/inveno/transcode/view/TranscodeObject;

    invoke-static {v0}, Lcom/inveno/transcode/view/TranscodeObject;->access$300(Lcom/inveno/transcode/view/TranscodeObject;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/inveno/transcode/presenter/f;->b()Lcom/inveno/transcode/presenter/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/transcode/presenter/f;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/inveno/transcode/view/TranscodeObject$b;->a:Lcom/inveno/transcode/view/TranscodeObject;

    invoke-static {v0}, Lcom/inveno/transcode/view/TranscodeObject;->access$000(Lcom/inveno/transcode/view/TranscodeObject;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 376
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/inveno/transcode/presenter/DefaultTranscodeConfig;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 377
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "url is empty,or open cache,but id is empty.id---===="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/inveno/transcode/view/TranscodeObject$b;->a:Lcom/inveno/transcode/view/TranscodeObject;

    invoke-static {v2}, Lcom/inveno/transcode/view/TranscodeObject;->access$000(Lcom/inveno/transcode/view/TranscodeObject;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "----url---==="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/inveno/transcode/view/TranscodeObject$b;->a:Lcom/inveno/transcode/view/TranscodeObject;

    invoke-static {v2}, Lcom/inveno/transcode/view/TranscodeObject;->access$300(Lcom/inveno/transcode/view/TranscodeObject;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 379
    :catch_0
    move-exception v0

    .line 380
    invoke-static {}, Lcom/inveno/transcode/presenter/DefaultTranscodeConfig;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 381
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 384
    :cond_1
    invoke-direct {p0}, Lcom/inveno/transcode/view/TranscodeObject$b;->a()V

    .line 388
    :goto_0
    return-void

    .line 386
    :cond_2
    invoke-static {}, Lcom/inveno/transcode/presenter/d;->a()Lcom/inveno/transcode/presenter/d;

    move-result-object v0

    iget-object v1, p0, Lcom/inveno/transcode/view/TranscodeObject$b;->a:Lcom/inveno/transcode/view/TranscodeObject;

    invoke-static {v1}, Lcom/inveno/transcode/view/TranscodeObject;->access$000(Lcom/inveno/transcode/view/TranscodeObject;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/inveno/transcode/view/TranscodeObject$b;->a:Lcom/inveno/transcode/view/TranscodeObject;

    invoke-static {v2}, Lcom/inveno/transcode/view/TranscodeObject;->access$400(Lcom/inveno/transcode/view/TranscodeObject;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/inveno/transcode/view/TranscodeObject$b;->a:Lcom/inveno/transcode/view/TranscodeObject;

    invoke-static {v3}, Lcom/inveno/transcode/view/TranscodeObject;->access$500(Lcom/inveno/transcode/view/TranscodeObject;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/inveno/transcode/view/TranscodeObject$b;->a:Lcom/inveno/transcode/view/TranscodeObject;

    invoke-static {v4}, Lcom/inveno/transcode/view/TranscodeObject;->access$600(Lcom/inveno/transcode/view/TranscodeObject;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/inveno/transcode/view/TranscodeObject$b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/inveno/transcode/view/TranscodeObject$b;->a:Lcom/inveno/transcode/view/TranscodeObject;

    invoke-static {v5}, Lcom/inveno/transcode/view/TranscodeObject;->access$300(Lcom/inveno/transcode/view/TranscodeObject;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/inveno/transcode/view/TranscodeObject$b;->a:Lcom/inveno/transcode/view/TranscodeObject;

    invoke-static {v6}, Lcom/inveno/transcode/view/TranscodeObject;->access$700(Lcom/inveno/transcode/view/TranscodeObject;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v6, p6

    :goto_1
    invoke-virtual/range {v0 .. v6}, Lcom/inveno/transcode/presenter/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v6, p0, Lcom/inveno/transcode/view/TranscodeObject$b;->a:Lcom/inveno/transcode/view/TranscodeObject;

    invoke-static {v6}, Lcom/inveno/transcode/view/TranscodeObject;->access$700(Lcom/inveno/transcode/view/TranscodeObject;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 396
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 418
    :cond_0
    :goto_0
    return-object p1

    .line 403
    :cond_1
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v0

    .line 417
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "MM-dd HH:mm"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 418
    new-instance v3, Ljava/util/Date;

    const-wide/16 v4, 0x3e8

    mul-long/2addr v0, v4

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 404
    :catch_0
    move-exception v0

    .line 405
    invoke-static {}, Lcom/inveno/transcode/presenter/DefaultTranscodeConfig;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 406
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0

    .line 409
    :catch_1
    move-exception v0

    .line 410
    invoke-static {}, Lcom/inveno/transcode/presenter/DefaultTranscodeConfig;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 411
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private d(Ljava/lang/String;)V
    .locals 11

    .prologue
    .line 423
    iput-object p1, p0, Lcom/inveno/transcode/view/TranscodeObject$b;->b:Ljava/lang/String;

    .line 424
    iget-object v0, p0, Lcom/inveno/transcode/view/TranscodeObject$b;->a:Lcom/inveno/transcode/view/TranscodeObject;

    invoke-static {v0}, Lcom/inveno/transcode/view/TranscodeObject;->access$800(Lcom/inveno/transcode/view/TranscodeObject;)Ljava/lang/String;

    .line 427
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "file://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 429
    sget-object v1, Lcom/inveno/transcode/presenter/DefaultTranscodeConfig$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    const-string v1, "invenoapp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    invoke-static {}, Lcom/inveno/transcode/a/g;->a()Lcom/inveno/transcode/a/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inveno/transcode/a/g;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    const-string v1, "invenouid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    iget-object v1, p0, Lcom/inveno/transcode/view/TranscodeObject$b;->a:Lcom/inveno/transcode/view/TranscodeObject;

    invoke-static {v1}, Lcom/inveno/transcode/view/TranscodeObject;->access$900(Lcom/inveno/transcode/view/TranscodeObject;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 443
    invoke-static {}, Lcom/inveno/transcode/a/g;->a()Lcom/inveno/transcode/a/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inveno/transcode/a/g;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    :goto_0
    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    const-string v1, "invenoid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    iget-object v1, p0, Lcom/inveno/transcode/view/TranscodeObject$b;->a:Lcom/inveno/transcode/view/TranscodeObject;

    invoke-static {v1}, Lcom/inveno/transcode/view/TranscodeObject;->access$000(Lcom/inveno/transcode/view/TranscodeObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    const-string v1, "transcode_version"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    const-string v1, "2.0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    const-string v1, "==================="

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    iget-object v1, p0, Lcom/inveno/transcode/view/TranscodeObject$b;->c:Lcom/inveno/transcode/view/ITranscodeCallback;

    if-eqz v1, :cond_0

    .line 461
    iget-object v8, p0, Lcom/inveno/transcode/view/TranscodeObject$b;->c:Lcom/inveno/transcode/view/ITranscodeCallback;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    new-instance v0, Lcom/inveno/transcode/view/TranscodeParams;

    iget-object v1, p0, Lcom/inveno/transcode/view/TranscodeObject$b;->a:Lcom/inveno/transcode/view/TranscodeObject;

    invoke-static {v1}, Lcom/inveno/transcode/view/TranscodeObject;->access$1000(Lcom/inveno/transcode/view/TranscodeObject;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/inveno/transcode/view/TranscodeObject$b;->a:Lcom/inveno/transcode/view/TranscodeObject;

    invoke-static {v2}, Lcom/inveno/transcode/view/TranscodeObject;->access$000(Lcom/inveno/transcode/view/TranscodeObject;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/inveno/transcode/view/TranscodeObject$b;->a:Lcom/inveno/transcode/view/TranscodeObject;

    invoke-static {v3}, Lcom/inveno/transcode/view/TranscodeObject;->access$400(Lcom/inveno/transcode/view/TranscodeObject;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/inveno/transcode/view/TranscodeObject$b;->a:Lcom/inveno/transcode/view/TranscodeObject;

    invoke-static {v4}, Lcom/inveno/transcode/view/TranscodeObject;->access$500(Lcom/inveno/transcode/view/TranscodeObject;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/inveno/transcode/view/TranscodeObject$b;->a:Lcom/inveno/transcode/view/TranscodeObject;

    invoke-static {v5}, Lcom/inveno/transcode/view/TranscodeObject;->access$600(Lcom/inveno/transcode/view/TranscodeObject;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/inveno/transcode/view/TranscodeObject$b;->a:Lcom/inveno/transcode/view/TranscodeObject;

    invoke-static {v6}, Lcom/inveno/transcode/view/TranscodeObject;->access$300(Lcom/inveno/transcode/view/TranscodeObject;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/inveno/transcode/view/TranscodeObject$b;->a:Lcom/inveno/transcode/view/TranscodeObject;

    invoke-static {v7}, Lcom/inveno/transcode/view/TranscodeObject;->access$700(Lcom/inveno/transcode/view/TranscodeObject;)Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/inveno/transcode/view/TranscodeParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v9, v10, v0}, Lcom/inveno/transcode/view/ITranscodeCallback;->setUrl(Ljava/lang/String;ZLcom/inveno/transcode/view/TranscodeParams;)V

    .line 463
    :cond_0
    return-void

    .line 445
    :cond_1
    iget-object v1, p0, Lcom/inveno/transcode/view/TranscodeObject$b;->a:Lcom/inveno/transcode/view/TranscodeObject;

    invoke-static {v1}, Lcom/inveno/transcode/view/TranscodeObject;->access$900(Lcom/inveno/transcode/view/TranscodeObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 476
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "invenoid"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 484
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 485
    invoke-static {}, Lcom/inveno/transcode/presenter/f;->b()Lcom/inveno/transcode/presenter/f;

    move-result-object v1

    invoke-static {v0}, Lcom/inveno/transcode/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/inveno/transcode/presenter/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 486
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 500
    :goto_1
    return-object v0

    .line 477
    :catch_0
    move-exception v0

    .line 478
    invoke-static {}, Lcom/inveno/transcode/presenter/DefaultTranscodeConfig;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 479
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 481
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 491
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/inveno/transcode/presenter/DefaultTranscodeConfig;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 492
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getArticleinfo-----invenoid is null,url--------=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 494
    :catch_1
    move-exception v0

    .line 495
    invoke-static {}, Lcom/inveno/transcode/presenter/DefaultTranscodeConfig;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 496
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 500
    :cond_2
    iget-object v0, p0, Lcom/inveno/transcode/view/TranscodeObject$b;->b:Ljava/lang/String;

    goto :goto_1
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 531
    iget-object v0, p0, Lcom/inveno/transcode/view/TranscodeObject$b;->c:Lcom/inveno/transcode/view/ITranscodeCallback;

    if-eqz v0, :cond_0

    .line 532
    iget-object v0, p0, Lcom/inveno/transcode/view/TranscodeObject$b;->c:Lcom/inveno/transcode/view/ITranscodeCallback;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/inveno/transcode/view/ITranscodeCallback;->share(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 510
    iget-object v0, p0, Lcom/inveno/transcode/view/TranscodeObject$b;->a:Lcom/inveno/transcode/view/TranscodeObject;

    invoke-static {v0}, Lcom/inveno/transcode/view/TranscodeObject;->access$1100(Lcom/inveno/transcode/view/TranscodeObject;)Lcom/inveno/transcode/view/ITranscodeOpenSource;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 511
    iget-object v0, p0, Lcom/inveno/transcode/view/TranscodeObject$b;->a:Lcom/inveno/transcode/view/TranscodeObject;

    invoke-static {v0}, Lcom/inveno/transcode/view/TranscodeObject;->access$1100(Lcom/inveno/transcode/view/TranscodeObject;)Lcom/inveno/transcode/view/ITranscodeOpenSource;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/inveno/transcode/view/ITranscodeOpenSource;->openSource(Ljava/lang/String;)V

    .line 527
    :cond_0
    :goto_0
    return-void

    .line 515
    :cond_1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 516
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 517
    iget-object v1, p0, Lcom/inveno/transcode/view/TranscodeObject$b;->a:Lcom/inveno/transcode/view/TranscodeObject;

    invoke-static {v1}, Lcom/inveno/transcode/view/TranscodeObject;->access$1200(Lcom/inveno/transcode/view/TranscodeObject;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 518
    :catch_0
    move-exception v0

    .line 519
    invoke-static {}, Lcom/inveno/transcode/presenter/DefaultTranscodeConfig;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 520
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 522
    :catch_1
    move-exception v0

    .line 523
    invoke-static {}, Lcom/inveno/transcode/presenter/DefaultTranscodeConfig;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 524
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
