.class public final Lcom/inveno/transcode/presenter/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inveno/transcode/presenter/a$b;,
        Lcom/inveno/transcode/presenter/a$a;,
        Lcom/inveno/transcode/presenter/a$c;
    }
.end annotation


# static fields
.field private static final a:Ljava/nio/charset/Charset;


# instance fields
.field private final b:Ljava/io/File;

.field private final c:Ljava/io/File;

.field private final d:Ljava/io/File;

.field private final e:I

.field private final f:J

.field private final g:I

.field private h:J

.field private i:Ljava/io/Writer;

.field private final j:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/inveno/transcode/presenter/a$b;",
            ">;"
        }
    .end annotation
.end field

.field private k:I

.field private l:J

.field private final m:Ljava/util/concurrent/ExecutorService;

.field private final n:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 96
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/inveno/transcode/presenter/a;->a:Ljava/nio/charset/Charset;

    return-void
.end method

.method private constructor <init>(Ljava/io/File;IIJ)V
    .locals 8

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput-wide v4, p0, Lcom/inveno/transcode/presenter/a;->h:J

    .line 147
    new-instance v0, Ljava/util/LinkedHashMap;

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {v0, v2, v1, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/inveno/transcode/presenter/a;->j:Ljava/util/LinkedHashMap;

    .line 156
    iput-wide v4, p0, Lcom/inveno/transcode/presenter/a;->l:J

    .line 255
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcom/inveno/transcode/presenter/a;->m:Ljava/util/concurrent/ExecutorService;

    .line 257
    new-instance v0, Lcom/inveno/transcode/presenter/b;

    invoke-direct {v0, p0}, Lcom/inveno/transcode/presenter/b;-><init>(Lcom/inveno/transcode/presenter/a;)V

    iput-object v0, p0, Lcom/inveno/transcode/presenter/a;->n:Ljava/util/concurrent/Callable;

    .line 274
    iput-object p1, p0, Lcom/inveno/transcode/presenter/a;->b:Ljava/io/File;

    .line 275
    iput p2, p0, Lcom/inveno/transcode/presenter/a;->e:I

    .line 276
    new-instance v0, Ljava/io/File;

    const-string v1, "journal"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/inveno/transcode/presenter/a;->c:Ljava/io/File;

    .line 277
    new-instance v0, Ljava/io/File;

    const-string v1, "journal.tmp"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/inveno/transcode/presenter/a;->d:Ljava/io/File;

    .line 278
    iput p3, p0, Lcom/inveno/transcode/presenter/a;->g:I

    .line 279
    iput-wide p4, p0, Lcom/inveno/transcode/presenter/a;->f:J

    .line 280
    return-void
.end method

.method static synthetic a(Lcom/inveno/transcode/presenter/a;I)I
    .locals 0

    .prologue
    .line 85
    iput p1, p0, Lcom/inveno/transcode/presenter/a;->k:I

    return p1
.end method

.method private declared-synchronized a(Ljava/lang/String;J)Lcom/inveno/transcode/presenter/a$a;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 503
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/inveno/transcode/presenter/a;->f()V

    .line 504
    invoke-direct {p0, p1}, Lcom/inveno/transcode/presenter/a;->e(Ljava/lang/String;)V

    .line 505
    iget-object v0, p0, Lcom/inveno/transcode/presenter/a;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/transcode/presenter/a$b;

    .line 506
    const-wide/16 v2, -0x1

    cmp-long v2, p2, v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_0

    .line 507
    invoke-static {v0}, Lcom/inveno/transcode/presenter/a$b;->e(Lcom/inveno/transcode/presenter/a$b;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    cmp-long v2, v2, p2

    if-eqz v2, :cond_1

    :cond_0
    move-object v0, v1

    .line 523
    :goto_0
    monitor-exit p0

    return-object v0

    .line 510
    :cond_1
    if-nez v0, :cond_2

    .line 511
    :try_start_1
    new-instance v0, Lcom/inveno/transcode/presenter/a$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/inveno/transcode/presenter/a$b;-><init>(Lcom/inveno/transcode/presenter/a;Ljava/lang/String;Lcom/inveno/transcode/presenter/b;)V

    .line 512
    iget-object v1, p0, Lcom/inveno/transcode/presenter/a;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 517
    :goto_1
    new-instance v0, Lcom/inveno/transcode/presenter/a$a;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/inveno/transcode/presenter/a$a;-><init>(Lcom/inveno/transcode/presenter/a;Lcom/inveno/transcode/presenter/a$b;Lcom/inveno/transcode/presenter/b;)V

    .line 518
    invoke-static {v1, v0}, Lcom/inveno/transcode/presenter/a$b;->a(Lcom/inveno/transcode/presenter/a$b;Lcom/inveno/transcode/presenter/a$a;)Lcom/inveno/transcode/presenter/a$a;

    .line 521
    iget-object v1, p0, Lcom/inveno/transcode/presenter/a;->i:Ljava/io/Writer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DIRTY "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 522
    iget-object v1, p0, Lcom/inveno/transcode/presenter/a;->i:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 503
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 513
    :cond_2
    :try_start_2
    invoke-static {v0}, Lcom/inveno/transcode/presenter/a$b;->a(Lcom/inveno/transcode/presenter/a$b;)Lcom/inveno/transcode/presenter/a$a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_3

    move-object v0, v1

    .line 514
    goto :goto_0

    :cond_3
    move-object v1, v0

    goto :goto_1
.end method

.method public static a(Ljava/io/File;IIJ)Lcom/inveno/transcode/presenter/a;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 294
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gtz v0, :cond_0

    .line 295
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxSize <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 297
    :cond_0
    if-gtz p2, :cond_1

    .line 298
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "valueCount <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 302
    :cond_1
    new-instance v0, Lcom/inveno/transcode/presenter/a;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/inveno/transcode/presenter/a;-><init>(Ljava/io/File;IIJ)V

    .line 303
    iget-object v1, v0, Lcom/inveno/transcode/presenter/a;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 305
    :try_start_0
    invoke-direct {v0}, Lcom/inveno/transcode/presenter/a;->b()V

    .line 306
    invoke-direct {v0}, Lcom/inveno/transcode/presenter/a;->c()V

    .line 307
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    iget-object v3, v0, Lcom/inveno/transcode/presenter/a;->c:Ljava/io/File;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    const/16 v3, 0x2000

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    iput-object v1, v0, Lcom/inveno/transcode/presenter/a;->i:Ljava/io/Writer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    :goto_0
    return-object v0

    .line 310
    :catch_0
    move-exception v1

    .line 313
    invoke-virtual {v0}, Lcom/inveno/transcode/presenter/a;->a()V

    .line 318
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 319
    new-instance v0, Lcom/inveno/transcode/presenter/a;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/inveno/transcode/presenter/a;-><init>(Ljava/io/File;IIJ)V

    .line 320
    invoke-direct {v0}, Lcom/inveno/transcode/presenter/a;->d()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/inveno/transcode/presenter/a;)Ljava/io/Writer;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/inveno/transcode/presenter/a;->i:Ljava/io/Writer;

    return-object v0
.end method

.method public static a(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 205
    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 206
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 207
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 208
    :cond_0
    const/16 v2, 0xa

    if-ne v1, v2, :cond_2

    .line 214
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 215
    if-lez v1, :cond_1

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_1

    .line 216
    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 218
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 212
    :cond_2
    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private declared-synchronized a(Lcom/inveno/transcode/presenter/a$a;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 551
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/inveno/transcode/presenter/a$a;->a(Lcom/inveno/transcode/presenter/a$a;)Lcom/inveno/transcode/presenter/a$b;

    move-result-object v2

    .line 552
    invoke-static {v2}, Lcom/inveno/transcode/presenter/a$b;->a(Lcom/inveno/transcode/presenter/a$b;)Lcom/inveno/transcode/presenter/a$a;

    move-result-object v1

    if-eq v1, p1, :cond_0

    .line 553
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 551
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 557
    :cond_0
    if-eqz p2, :cond_2

    :try_start_1
    invoke-static {v2}, Lcom/inveno/transcode/presenter/a$b;->d(Lcom/inveno/transcode/presenter/a$b;)Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v0

    .line 558
    :goto_0
    iget v3, p0, Lcom/inveno/transcode/presenter/a;->g:I

    if-ge v1, v3, :cond_2

    .line 559
    invoke-virtual {v2, v1}, Lcom/inveno/transcode/presenter/a$b;->b(I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 560
    invoke-virtual {p1}, Lcom/inveno/transcode/presenter/a$a;->b()V

    .line 561
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "edit didn\'t create file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 558
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 566
    :cond_2
    :goto_1
    iget v1, p0, Lcom/inveno/transcode/presenter/a;->g:I

    if-ge v0, v1, :cond_5

    .line 567
    invoke-virtual {v2, v0}, Lcom/inveno/transcode/presenter/a$b;->b(I)Ljava/io/File;

    move-result-object v1

    .line 568
    if-eqz p2, :cond_4

    .line 569
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 570
    invoke-virtual {v2, v0}, Lcom/inveno/transcode/presenter/a$b;->a(I)Ljava/io/File;

    move-result-object v3

    .line 571
    invoke-virtual {v1, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 572
    invoke-static {v2}, Lcom/inveno/transcode/presenter/a$b;->b(Lcom/inveno/transcode/presenter/a$b;)[J

    move-result-object v1

    aget-wide v4, v1, v0

    .line 573
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 574
    invoke-static {v2}, Lcom/inveno/transcode/presenter/a$b;->b(Lcom/inveno/transcode/presenter/a$b;)[J

    move-result-object v1

    aput-wide v6, v1, v0

    .line 575
    iget-wide v8, p0, Lcom/inveno/transcode/presenter/a;->h:J

    sub-long v4, v8, v4

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/inveno/transcode/presenter/a;->h:J

    .line 566
    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 578
    :cond_4
    invoke-static {v1}, Lcom/inveno/transcode/presenter/a;->b(Ljava/io/File;)V

    goto :goto_2

    .line 582
    :cond_5
    iget v0, p0, Lcom/inveno/transcode/presenter/a;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/inveno/transcode/presenter/a;->k:I

    .line 583
    const/4 v0, 0x0

    invoke-static {v2, v0}, Lcom/inveno/transcode/presenter/a$b;->a(Lcom/inveno/transcode/presenter/a$b;Lcom/inveno/transcode/presenter/a$a;)Lcom/inveno/transcode/presenter/a$a;

    .line 584
    invoke-static {v2}, Lcom/inveno/transcode/presenter/a$b;->d(Lcom/inveno/transcode/presenter/a$b;)Z

    move-result v0

    or-int/2addr v0, p2

    if-eqz v0, :cond_9

    .line 585
    const/4 v0, 0x1

    invoke-static {v2, v0}, Lcom/inveno/transcode/presenter/a$b;->a(Lcom/inveno/transcode/presenter/a$b;Z)Z

    .line 586
    iget-object v0, p0, Lcom/inveno/transcode/presenter/a;->i:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CLEAN "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2}, Lcom/inveno/transcode/presenter/a$b;->c(Lcom/inveno/transcode/presenter/a$b;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcom/inveno/transcode/presenter/a$b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 587
    if-eqz p2, :cond_6

    .line 588
    iget-wide v0, p0, Lcom/inveno/transcode/presenter/a;->l:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/inveno/transcode/presenter/a;->l:J

    invoke-static {v2, v0, v1}, Lcom/inveno/transcode/presenter/a$b;->a(Lcom/inveno/transcode/presenter/a$b;J)J

    .line 595
    :cond_6
    :goto_3
    iget-wide v0, p0, Lcom/inveno/transcode/presenter/a;->h:J

    iget-wide v2, p0, Lcom/inveno/transcode/presenter/a;->f:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_7

    invoke-direct {p0}, Lcom/inveno/transcode/presenter/a;->e()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 596
    :cond_7
    iget-object v0, p0, Lcom/inveno/transcode/presenter/a;->m:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/inveno/transcode/presenter/a;->n:Ljava/util/concurrent/Callable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 598
    :cond_8
    monitor-exit p0

    return-void

    .line 591
    :cond_9
    :try_start_2
    iget-object v0, p0, Lcom/inveno/transcode/presenter/a;->j:Ljava/util/LinkedHashMap;

    invoke-static {v2}, Lcom/inveno/transcode/presenter/a$b;->c(Lcom/inveno/transcode/presenter/a$b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    iget-object v0, p0, Lcom/inveno/transcode/presenter/a;->i:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "REMOVE "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2}, Lcom/inveno/transcode/presenter/a$b;->c(Lcom/inveno/transcode/presenter/a$b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method

.method static synthetic a(Lcom/inveno/transcode/presenter/a;Lcom/inveno/transcode/presenter/a$a;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Lcom/inveno/transcode/presenter/a;->a(Lcom/inveno/transcode/presenter/a$a;Z)V

    return-void
.end method

.method public static a(Ljava/io/Closeable;)V
    .locals 1

    .prologue
    .line 225
    if-eqz p0, :cond_0

    .line 227
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 228
    :catch_0
    move-exception v0

    .line 229
    throw v0

    .line 230
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static a(Ljava/io/File;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 240
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 241
    if-nez v1, :cond_0

    .line 242
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not a directory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 244
    :cond_0
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_3

    aget-object v3, v1, v0

    .line 245
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 246
    invoke-static {v3}, Lcom/inveno/transcode/presenter/a;->a(Ljava/io/File;)V

    .line 248
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_2

    .line 249
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to delete file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 244
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 252
    :cond_3
    return-void
.end method

.method private static a([Ljava/lang/Object;II)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II)[TT;"
        }
    .end annotation

    .prologue
    .line 161
    array-length v0, p0

    .line 162
    if-le p1, p2, :cond_0

    .line 163
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 165
    :cond_0
    if-ltz p1, :cond_1

    if-le p1, v0, :cond_2

    .line 166
    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 168
    :cond_2
    sub-int v1, p2, p1

    .line 169
    sub-int/2addr v0, p1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 171
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 172
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 173
    return-object v0
.end method

.method private b()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 325
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/inveno/transcode/presenter/a;->c:Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v2, 0x2000

    invoke-direct {v1, v0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 327
    :try_start_0
    invoke-static {v1}, Lcom/inveno/transcode/presenter/a;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 328
    invoke-static {v1}, Lcom/inveno/transcode/presenter/a;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    .line 329
    invoke-static {v1}, Lcom/inveno/transcode/presenter/a;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    .line 330
    invoke-static {v1}, Lcom/inveno/transcode/presenter/a;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    .line 331
    invoke-static {v1}, Lcom/inveno/transcode/presenter/a;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    .line 332
    const-string v6, "libcore.io.DiskLruCache"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "1"

    .line 333
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/inveno/transcode/presenter/a;->e:I

    .line 334
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/inveno/transcode/presenter/a;->g:I

    .line 335
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, ""

    .line 336
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 337
    :cond_0
    new-instance v3, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unexpected journal header: ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/inveno/transcode/presenter/a;->a(Ljava/io/Closeable;)V

    throw v0

    .line 343
    :cond_1
    :goto_0
    :try_start_1
    invoke-static {v1}, Lcom/inveno/transcode/presenter/a;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/inveno/transcode/presenter/a;->d(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 344
    :catch_0
    move-exception v0

    .line 349
    invoke-static {v1}, Lcom/inveno/transcode/presenter/a;->a(Ljava/io/Closeable;)V

    .line 351
    return-void
.end method

.method static synthetic b(Lcom/inveno/transcode/presenter/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/inveno/transcode/presenter/a;->g()V

    return-void
.end method

.method private static b(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 448
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 449
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 451
    :cond_0
    return-void
.end method

.method private c()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 389
    iget-object v0, p0, Lcom/inveno/transcode/presenter/a;->d:Ljava/io/File;

    invoke-static {v0}, Lcom/inveno/transcode/presenter/a;->b(Ljava/io/File;)V

    .line 390
    iget-object v0, p0, Lcom/inveno/transcode/presenter/a;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 391
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/transcode/presenter/a$b;

    .line 392
    invoke-static {v0}, Lcom/inveno/transcode/presenter/a$b;->a(Lcom/inveno/transcode/presenter/a$b;)Lcom/inveno/transcode/presenter/a$a;

    move-result-object v1

    if-nez v1, :cond_1

    move v1, v2

    .line 393
    :goto_1
    iget v4, p0, Lcom/inveno/transcode/presenter/a;->g:I

    if-ge v1, v4, :cond_0

    .line 394
    iget-wide v4, p0, Lcom/inveno/transcode/presenter/a;->h:J

    invoke-static {v0}, Lcom/inveno/transcode/presenter/a$b;->b(Lcom/inveno/transcode/presenter/a$b;)[J

    move-result-object v6

    aget-wide v6, v6, v1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/inveno/transcode/presenter/a;->h:J

    .line 393
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 397
    :cond_1
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/inveno/transcode/presenter/a$b;->a(Lcom/inveno/transcode/presenter/a$b;Lcom/inveno/transcode/presenter/a$a;)Lcom/inveno/transcode/presenter/a$a;

    move v1, v2

    .line 398
    :goto_2
    iget v4, p0, Lcom/inveno/transcode/presenter/a;->g:I

    if-ge v1, v4, :cond_2

    .line 399
    invoke-virtual {v0, v1}, Lcom/inveno/transcode/presenter/a$b;->a(I)Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Lcom/inveno/transcode/presenter/a;->b(Ljava/io/File;)V

    .line 400
    invoke-virtual {v0, v1}, Lcom/inveno/transcode/presenter/a$b;->b(I)Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Lcom/inveno/transcode/presenter/a;->b(Ljava/io/File;)V

    .line 398
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 402
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 405
    :cond_3
    return-void
.end method

.method static synthetic c(Lcom/inveno/transcode/presenter/a;)Z
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/inveno/transcode/presenter/a;->e()Z

    move-result v0

    return v0
.end method

.method private declared-synchronized d()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 412
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/inveno/transcode/presenter/a;->i:Ljava/io/Writer;

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/inveno/transcode/presenter/a;->i:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 416
    :cond_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v0, Ljava/io/FileWriter;

    iget-object v2, p0, Lcom/inveno/transcode/presenter/a;->d:Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    const/16 v2, 0x2000

    invoke-direct {v1, v0, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 417
    const-string v0, "libcore.io.DiskLruCache"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 418
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 419
    const-string v0, "1"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 420
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 421
    iget v0, p0, Lcom/inveno/transcode/presenter/a;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 422
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 423
    iget v0, p0, Lcom/inveno/transcode/presenter/a;->g:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 424
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 425
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 427
    iget-object v0, p0, Lcom/inveno/transcode/presenter/a;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/transcode/presenter/a$b;

    .line 428
    invoke-static {v0}, Lcom/inveno/transcode/presenter/a$b;->a(Lcom/inveno/transcode/presenter/a$b;)Lcom/inveno/transcode/presenter/a$a;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 429
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DIRTY "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/inveno/transcode/presenter/a$b;->c(Lcom/inveno/transcode/presenter/a$b;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 412
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 431
    :cond_1
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CLEAN "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/inveno/transcode/presenter/a$b;->c(Lcom/inveno/transcode/presenter/a$b;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/inveno/transcode/presenter/a$b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 435
    :cond_2
    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    .line 436
    iget-object v0, p0, Lcom/inveno/transcode/presenter/a;->d:Ljava/io/File;

    iget-object v1, p0, Lcom/inveno/transcode/presenter/a;->c:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 437
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/FileWriter;

    iget-object v2, p0, Lcom/inveno/transcode/presenter/a;->c:Ljava/io/File;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    const/16 v2, 0x2000

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    iput-object v0, p0, Lcom/inveno/transcode/presenter/a;->i:Ljava/io/Writer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 438
    monitor-exit p0

    return-void
.end method

.method static synthetic d(Lcom/inveno/transcode/presenter/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/inveno/transcode/presenter/a;->d()V

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 354
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 355
    array-length v0, v2

    if-ge v0, v4, :cond_0

    .line 356
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected journal line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 359
    :cond_0
    aget-object v1, v2, v7

    .line 360
    aget-object v0, v2, v5

    const-string v3, "REMOVE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    array-length v0, v2

    if-ne v0, v4, :cond_2

    .line 361
    iget-object v0, p0, Lcom/inveno/transcode/presenter/a;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    :cond_1
    :goto_0
    return-void

    .line 365
    :cond_2
    iget-object v0, p0, Lcom/inveno/transcode/presenter/a;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/transcode/presenter/a$b;

    .line 366
    if-nez v0, :cond_6

    .line 367
    new-instance v0, Lcom/inveno/transcode/presenter/a$b;

    invoke-direct {v0, p0, v1, v6}, Lcom/inveno/transcode/presenter/a$b;-><init>(Lcom/inveno/transcode/presenter/a;Ljava/lang/String;Lcom/inveno/transcode/presenter/b;)V

    .line 368
    iget-object v3, p0, Lcom/inveno/transcode/presenter/a;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 371
    :goto_1
    aget-object v0, v2, v5

    const-string v3, "CLEAN"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    array-length v0, v2

    iget v3, p0, Lcom/inveno/transcode/presenter/a;->g:I

    add-int/lit8 v3, v3, 0x2

    if-ne v0, v3, :cond_3

    .line 372
    invoke-static {v1, v7}, Lcom/inveno/transcode/presenter/a$b;->a(Lcom/inveno/transcode/presenter/a$b;Z)Z

    .line 373
    invoke-static {v1, v6}, Lcom/inveno/transcode/presenter/a$b;->a(Lcom/inveno/transcode/presenter/a$b;Lcom/inveno/transcode/presenter/a$a;)Lcom/inveno/transcode/presenter/a$a;

    .line 374
    array-length v0, v2

    invoke-static {v2, v4, v0}, Lcom/inveno/transcode/presenter/a;->a([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/inveno/transcode/presenter/a$b;->a(Lcom/inveno/transcode/presenter/a$b;[Ljava/lang/String;)V

    goto :goto_0

    .line 375
    :cond_3
    aget-object v0, v2, v5

    const-string v3, "DIRTY"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    array-length v0, v2

    if-ne v0, v4, :cond_4

    .line 376
    new-instance v0, Lcom/inveno/transcode/presenter/a$a;

    invoke-direct {v0, p0, v1, v6}, Lcom/inveno/transcode/presenter/a$a;-><init>(Lcom/inveno/transcode/presenter/a;Lcom/inveno/transcode/presenter/a$b;Lcom/inveno/transcode/presenter/b;)V

    invoke-static {v1, v0}, Lcom/inveno/transcode/presenter/a$b;->a(Lcom/inveno/transcode/presenter/a$b;Lcom/inveno/transcode/presenter/a$a;)Lcom/inveno/transcode/presenter/a$a;

    goto :goto_0

    .line 377
    :cond_4
    aget-object v0, v2, v5

    const-string v1, "READ"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    array-length v0, v2

    if-eq v0, v4, :cond_1

    .line 380
    :cond_5
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected journal line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    move-object v1, v0

    goto :goto_1
.end method

.method static synthetic e(Lcom/inveno/transcode/presenter/a;)I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/inveno/transcode/presenter/a;->g:I

    return v0
.end method

.method private e(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 702
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\r"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 703
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keys must not contain spaces or newlines: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 706
    :cond_1
    return-void
.end method

.method private e()Z
    .locals 2

    .prologue
    .line 605
    .line 606
    iget v0, p0, Lcom/inveno/transcode/presenter/a;->k:I

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/inveno/transcode/presenter/a;->k:I

    iget-object v1, p0, Lcom/inveno/transcode/presenter/a;->j:Ljava/util/LinkedHashMap;

    .line 607
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    .line 606
    :goto_0
    return v0

    .line 607
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic f(Lcom/inveno/transcode/presenter/a;)Ljava/io/File;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/inveno/transcode/presenter/a;->b:Ljava/io/File;

    return-object v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 652
    iget-object v0, p0, Lcom/inveno/transcode/presenter/a;->i:Ljava/io/Writer;

    if-nez v0, :cond_0

    .line 653
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 655
    :cond_0
    return-void
.end method

.method private g()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 684
    :goto_0
    iget-wide v0, p0, Lcom/inveno/transcode/presenter/a;->h:J

    iget-wide v2, p0, Lcom/inveno/transcode/presenter/a;->f:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 686
    iget-object v0, p0, Lcom/inveno/transcode/presenter/a;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 687
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/inveno/transcode/presenter/a;->c(Ljava/lang/String;)Z

    goto :goto_0

    .line 689
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)Lcom/inveno/transcode/presenter/a$c;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 459
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/inveno/transcode/presenter/a;->f()V

    .line 460
    invoke-direct {p0, p1}, Lcom/inveno/transcode/presenter/a;->e(Ljava/lang/String;)V

    .line 461
    iget-object v0, p0, Lcom/inveno/transcode/presenter/a;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/transcode/presenter/a$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 462
    if-nez v0, :cond_1

    .line 491
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v1

    .line 466
    :cond_1
    :try_start_1
    invoke-static {v0}, Lcom/inveno/transcode/presenter/a$b;->d(Lcom/inveno/transcode/presenter/a$b;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 475
    iget v2, p0, Lcom/inveno/transcode/presenter/a;->g:I

    new-array v6, v2, [Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 477
    const/4 v2, 0x0

    :goto_1
    :try_start_2
    iget v3, p0, Lcom/inveno/transcode/presenter/a;->g:I

    if-ge v2, v3, :cond_2

    .line 478
    new-instance v3, Ljava/io/FileInputStream;

    invoke-virtual {v0, v2}, Lcom/inveno/transcode/presenter/a$b;->a(I)Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    aput-object v3, v6, v2
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 477
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 485
    :cond_2
    :try_start_3
    iget v1, p0, Lcom/inveno/transcode/presenter/a;->k:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/inveno/transcode/presenter/a;->k:I

    .line 486
    iget-object v1, p0, Lcom/inveno/transcode/presenter/a;->i:Ljava/io/Writer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "READ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 487
    invoke-direct {p0}, Lcom/inveno/transcode/presenter/a;->e()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 488
    iget-object v1, p0, Lcom/inveno/transcode/presenter/a;->m:Ljava/util/concurrent/ExecutorService;

    iget-object v2, p0, Lcom/inveno/transcode/presenter/a;->n:Ljava/util/concurrent/Callable;

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 491
    :cond_3
    new-instance v1, Lcom/inveno/transcode/presenter/a$c;

    invoke-static {v0}, Lcom/inveno/transcode/presenter/a$b;->e(Lcom/inveno/transcode/presenter/a$b;)J

    move-result-wide v4

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/inveno/transcode/presenter/a$c;-><init>(Lcom/inveno/transcode/presenter/a;Ljava/lang/String;J[Ljava/io/InputStream;Lcom/inveno/transcode/presenter/b;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 459
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 480
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 697
    invoke-virtual {p0}, Lcom/inveno/transcode/presenter/a;->close()V

    .line 698
    iget-object v0, p0, Lcom/inveno/transcode/presenter/a;->b:Ljava/io/File;

    invoke-static {v0}, Lcom/inveno/transcode/presenter/a;->a(Ljava/io/File;)V

    .line 699
    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/inveno/transcode/presenter/a$a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 499
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/inveno/transcode/presenter/a;->a(Ljava/lang/String;J)Lcom/inveno/transcode/presenter/a$a;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized c(Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 617
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/inveno/transcode/presenter/a;->f()V

    .line 618
    invoke-direct {p0, p1}, Lcom/inveno/transcode/presenter/a;->e(Ljava/lang/String;)V

    .line 619
    iget-object v0, p0, Lcom/inveno/transcode/presenter/a;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/transcode/presenter/a$b;

    .line 620
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/inveno/transcode/presenter/a$b;->a(Lcom/inveno/transcode/presenter/a$b;)Lcom/inveno/transcode/presenter/a$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_2

    :cond_0
    move v0, v1

    .line 641
    :goto_0
    monitor-exit p0

    return v0

    .line 629
    :cond_1
    :try_start_1
    iget-wide v2, p0, Lcom/inveno/transcode/presenter/a;->h:J

    invoke-static {v0}, Lcom/inveno/transcode/presenter/a$b;->b(Lcom/inveno/transcode/presenter/a$b;)[J

    move-result-object v4

    aget-wide v4, v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/inveno/transcode/presenter/a;->h:J

    .line 630
    invoke-static {v0}, Lcom/inveno/transcode/presenter/a$b;->b(Lcom/inveno/transcode/presenter/a$b;)[J

    move-result-object v2

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v1

    .line 624
    add-int/lit8 v1, v1, 0x1

    :cond_2
    iget v2, p0, Lcom/inveno/transcode/presenter/a;->g:I

    if-ge v1, v2, :cond_3

    .line 625
    invoke-virtual {v0, v1}, Lcom/inveno/transcode/presenter/a$b;->a(I)Ljava/io/File;

    move-result-object v2

    .line 626
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_1

    .line 627
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to delete "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 617
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 633
    :cond_3
    :try_start_2
    iget v0, p0, Lcom/inveno/transcode/presenter/a;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/inveno/transcode/presenter/a;->k:I

    .line 634
    iget-object v0, p0, Lcom/inveno/transcode/presenter/a;->i:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "REMOVE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 635
    iget-object v0, p0, Lcom/inveno/transcode/presenter/a;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    invoke-direct {p0}, Lcom/inveno/transcode/presenter/a;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 638
    iget-object v0, p0, Lcom/inveno/transcode/presenter/a;->m:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/inveno/transcode/presenter/a;->n:Ljava/util/concurrent/Callable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 641
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public declared-synchronized close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 670
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/inveno/transcode/presenter/a;->i:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 681
    :goto_0
    monitor-exit p0

    return-void

    .line 673
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/inveno/transcode/presenter/a;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/transcode/presenter/a$b;

    .line 674
    invoke-static {v0}, Lcom/inveno/transcode/presenter/a$b;->a(Lcom/inveno/transcode/presenter/a$b;)Lcom/inveno/transcode/presenter/a$a;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 675
    invoke-static {v0}, Lcom/inveno/transcode/presenter/a$b;->a(Lcom/inveno/transcode/presenter/a$b;)Lcom/inveno/transcode/presenter/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/transcode/presenter/a$a;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 670
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 678
    :cond_2
    :try_start_2
    invoke-direct {p0}, Lcom/inveno/transcode/presenter/a;->g()V

    .line 679
    iget-object v0, p0, Lcom/inveno/transcode/presenter/a;->i:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 680
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inveno/transcode/presenter/a;->i:Ljava/io/Writer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
