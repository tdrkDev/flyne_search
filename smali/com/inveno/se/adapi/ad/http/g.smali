.class public Lcom/inveno/se/adapi/ad/http/g;
.super Lcom/inveno/se/adapi/ad/http/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inveno/se/adapi/ad/http/g$a;
    }
.end annotation


# instance fields
.field private a:Ljava/io/File;

.field private b:Ljava/io/File;

.field private c:Ljava/io/File;

.field private d:Ljava/io/RandomAccessFile;

.field private e:J

.field private f:J

.field private g:J

.field private h:J

.field private i:D

.field private j:J

.field private k:J

.field private l:Z

.field private m:Ljava/lang/String;

.field private n:Ljava/util/Timer;

.field private o:Ljava/lang/String;

.field private p:I

.field private q:Lcom/inveno/se/adapi/ad/a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    invoke-direct {p0}, Lcom/inveno/se/adapi/ad/http/e;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inveno/se/adapi/ad/http/g;->l:Z

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/inveno/se/adapi/ad/http/g;->n:Ljava/util/Timer;

    iput-object p1, p0, Lcom/inveno/se/adapi/ad/http/g;->m:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/inveno/se/adapi/ad/http/g;->c:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/inveno/se/adapi/ad/http/g;->a:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".download"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/inveno/se/adapi/ad/http/g;->b:Ljava/io/File;

    iput-object p4, p0, Lcom/inveno/se/adapi/ad/http/g;->o:Ljava/lang/String;

    iput p5, p0, Lcom/inveno/se/adapi/ad/http/g;->p:I

    invoke-direct {p0}, Lcom/inveno/se/adapi/ad/http/g;->k()V

    return-void
.end method

.method static synthetic a(Lcom/inveno/se/adapi/ad/http/g;D)D
    .locals 1

    iput-wide p1, p0, Lcom/inveno/se/adapi/ad/http/g;->i:D

    return-wide p1
.end method

.method static synthetic a(Lcom/inveno/se/adapi/ad/http/g;J)J
    .locals 1

    iput-wide p1, p0, Lcom/inveno/se/adapi/ad/http/g;->k:J

    return-wide p1
.end method

.method static synthetic a(Lcom/inveno/se/adapi/ad/http/g;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/inveno/se/adapi/ad/http/g;->l:Z

    return v0
.end method

.method static synthetic b(Lcom/inveno/se/adapi/ad/http/g;)J
    .locals 2

    iget-wide v0, p0, Lcom/inveno/se/adapi/ad/http/g;->h:J

    return-wide v0
.end method

.method static synthetic b(Lcom/inveno/se/adapi/ad/http/g;J)J
    .locals 1

    iput-wide p1, p0, Lcom/inveno/se/adapi/ad/http/g;->j:J

    return-wide p1
.end method

.method static synthetic c(Lcom/inveno/se/adapi/ad/http/g;J)J
    .locals 1

    iput-wide p1, p0, Lcom/inveno/se/adapi/ad/http/g;->e:J

    return-wide p1
.end method

.method static synthetic c(Lcom/inveno/se/adapi/ad/http/g;)Ljava/util/Timer;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/adapi/ad/http/g;->n:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic d(Lcom/inveno/se/adapi/ad/http/g;)D
    .locals 2

    iget-wide v0, p0, Lcom/inveno/se/adapi/ad/http/g;->i:D

    return-wide v0
.end method

.method static synthetic d(Lcom/inveno/se/adapi/ad/http/g;J)J
    .locals 1

    iput-wide p1, p0, Lcom/inveno/se/adapi/ad/http/g;->h:J

    return-wide p1
.end method

.method static synthetic e(Lcom/inveno/se/adapi/ad/http/g;)J
    .locals 2

    iget-wide v0, p0, Lcom/inveno/se/adapi/ad/http/g;->e:J

    return-wide v0
.end method

.method static synthetic f(Lcom/inveno/se/adapi/ad/http/g;)J
    .locals 2

    iget-wide v0, p0, Lcom/inveno/se/adapi/ad/http/g;->f:J

    return-wide v0
.end method

.method static synthetic g(Lcom/inveno/se/adapi/ad/http/g;)J
    .locals 2

    iget-wide v0, p0, Lcom/inveno/se/adapi/ad/http/g;->j:J

    return-wide v0
.end method

.method static synthetic h(Lcom/inveno/se/adapi/ad/http/g;)J
    .locals 2

    iget-wide v0, p0, Lcom/inveno/se/adapi/ad/http/g;->g:J

    return-wide v0
.end method

.method static synthetic i(Lcom/inveno/se/adapi/ad/http/g;)J
    .locals 2

    iget-wide v0, p0, Lcom/inveno/se/adapi/ad/http/g;->k:J

    return-wide v0
.end method

.method private k()V
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/adapi/ad/http/g;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/inveno/se/adapi/ad/http/g;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-void
.end method

.method private l()V
    .locals 6

    iget-object v0, p0, Lcom/inveno/se/adapi/ad/http/g;->n:Ljava/util/Timer;

    new-instance v1, Lcom/inveno/se/adapi/ad/http/h;

    invoke-direct {v1, p0}, Lcom/inveno/se/adapi/ad/http/h;-><init>(Lcom/inveno/se/adapi/ad/http/g;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x190

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/InputStream;Ljava/io/RandomAccessFile;)I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v4, -0x1

    const/4 v1, -0x1

    const/16 v2, 0x2000

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    new-array v6, v2, [B

    new-instance v7, Ljava/io/BufferedInputStream;

    invoke-direct {v7, p1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    const-string v2, "FileHttpResponseHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "length"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    move-wide v2, v4

    :cond_2
    :goto_1
    iget-boolean v8, p0, Lcom/inveno/se/adapi/ad/http/g;->l:Z

    if-nez v8, :cond_3

    const/4 v8, 0x0

    const/16 v9, 0x2000

    invoke-virtual {v7, v6, v8, v9}, Ljava/io/BufferedInputStream;->read([BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-ne v8, v1, :cond_4

    :cond_3
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->close()V

    invoke-virtual {v7}, Ljava/io/BufferedInputStream;->close()V

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    goto :goto_0

    :cond_4
    const/4 v9, 0x0

    :try_start_1
    invoke-virtual {p2, v6, v9, v8}, Ljava/io/RandomAccessFile;->write([BII)V

    add-int/2addr v0, v8

    iget-wide v8, p0, Lcom/inveno/se/adapi/ad/http/g;->i:D

    const-wide/16 v10, 0x0

    cmpl-double v8, v8, v10

    if-nez v8, :cond_6

    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-lez v8, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v2

    const-wide/16 v10, 0x7530

    cmp-long v8, v8, v10

    if-lez v8, :cond_2

    new-instance v0, Lorg/apache/http/conn/ConnectTimeoutException;

    const-string v1, "connection time out."

    invoke-direct {v0, v1}, Lorg/apache/http/conn/ConnectTimeoutException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->close()V

    invoke-virtual {v7}, Ljava/io/BufferedInputStream;->close()V

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    throw v0

    :cond_5
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v2

    goto :goto_1

    :cond_6
    move-wide v2, v4

    goto :goto_1
.end method

.method public a(ILjava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/inveno/se/adapi/ad/http/e;->a(ILjava/lang/String;)V

    return-void
.end method

.method public a(I[B)V
    .locals 0

    invoke-virtual {p0, p2}, Lcom/inveno/se/adapi/ad/http/g;->a([B)V

    return-void
.end method

.method public a(I[Lorg/apache/http/Header;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/inveno/se/adapi/ad/http/e;->a(I[Lorg/apache/http/Header;Ljava/lang/String;)V

    return-void
.end method

.method public a(J)V
    .locals 1

    iput-wide p1, p0, Lcom/inveno/se/adapi/ad/http/g;->f:J

    return-void
.end method

.method protected a(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/inveno/se/adapi/ad/http/e;->a(Landroid/os/Message;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    aget-object v0, v0, v2

    check-cast v0, [B

    check-cast v0, [B

    invoke-virtual {p0, v1, v0}, Lcom/inveno/se/adapi/ad/http/g;->c(I[B)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lcom/inveno/se/adapi/ad/a;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/adapi/ad/http/g;->q:Lcom/inveno/se/adapi/ad/a;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected a(Ljava/lang/String;JI)V
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v3

    const/4 v1, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v3, v0}, Lcom/inveno/se/adapi/ad/http/g;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inveno/se/adapi/ad/http/g;->b(Landroid/os/Message;)V

    return-void
.end method

.method protected a(Ljava/lang/Throwable;[B)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/inveno/se/adapi/ad/http/g;->n:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    aput-object p2, v0, v2

    invoke-virtual {p0, v2, v0}, Lcom/inveno/se/adapi/ad/http/g;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inveno/se/adapi/ad/http/g;->b(Landroid/os/Message;)V

    return-void
.end method

.method protected a(Lorg/apache/http/HttpResponse;)V
    .locals 10

    const/4 v6, 0x0

    const-wide/16 v4, -0x1

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/inveno/se/adapi/ad/http/g;->j:J

    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    int-to-long v2, v0

    :cond_0
    iget-wide v8, p0, Lcom/inveno/se/adapi/ad/http/g;->f:J

    add-long/2addr v2, v8

    iput-wide v2, p0, Lcom/inveno/se/adapi/ad/http/g;->g:J

    const-string v0, "FileHttpResponseHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "totalSize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v8, p0, Lcom/inveno/se/adapi/ad/http/g;->g:J

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inveno/se/adapi/ad/http/g;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-wide v2, p0, Lcom/inveno/se/adapi/ad/http/g;->g:J

    iget-object v0, p0, Lcom/inveno/se/adapi/ad/http/g;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v8

    cmp-long v0, v2, v8

    if-nez v0, :cond_3

    const-string v0, "FileHttpResponseHandler"

    const-string v2, "Output file already exists. Skipping download."

    invoke-static {v0, v2}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/inveno/se/exception/FileAlreadyExistException;

    const-string v2, "Output file already exists. Skipping download."

    invoke-direct {v0, v2}, Lcom/inveno/se/exception/FileAlreadyExistException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/inveno/se/exception/FileAlreadyExistException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    :catch_0
    move-exception v0

    move-wide v2, v4

    :goto_0
    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/inveno/se/adapi/ad/http/g;->l:Z

    if-nez v2, :cond_1

    if-eqz v0, :cond_7

    :cond_1
    const-string v2, "\u8fdb\u4e86\u9519\u8bef\u4e86"

    invoke-static {v2}, Lcom/inveno/se/tools/LogTools;->showLogA(Ljava/lang/String;)V

    if-eqz v0, :cond_2

    const-string v2, "FileHttpResponseHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Download failed."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    instance-of v2, v0, Lcom/inveno/se/exception/FileAlreadyExistException;

    if-eqz v2, :cond_6

    const-string v0, "\u4e0b\u8f7d\u6210\u529f\uff01"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/inveno/se/adapi/ad/http/g;->b(I[B)V

    :goto_1
    return-void

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/inveno/se/adapi/ad/http/g;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "FileHttpResponseHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inveno/se/adapi/ad/http/g;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/inveno/se/adapi/ad/http/g;->f:J

    const-string v0, "FileHttpResponseHandler"

    const-string v2, "File is not complete, download now."

    invoke-static {v0, v2}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "FileHttpResponseHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File length:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/inveno/se/adapi/ad/http/g;->b:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " totalSize:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v8, p0, Lcom/inveno/se/adapi/ad/http/g;->g:J

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    new-instance v0, Lcom/inveno/se/adapi/ad/http/g$a;

    iget-object v2, p0, Lcom/inveno/se/adapi/ad/http/g;->b:Ljava/io/File;

    const-string v3, "rw"

    invoke-direct {v0, p0, v2, v3}, Lcom/inveno/se/adapi/ad/http/g$a;-><init>(Lcom/inveno/se/adapi/ad/http/g;Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/inveno/se/adapi/ad/http/g;->d:Ljava/io/RandomAccessFile;

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0}, Lcom/inveno/se/adapi/ad/http/g;->l()V

    iget-object v2, p0, Lcom/inveno/se/adapi/ad/http/g;->d:Ljava/io/RandomAccessFile;

    invoke-virtual {p0, v0, v2}, Lcom/inveno/se/adapi/ad/http/g;->a(Ljava/io/InputStream;Ljava/io/RandomAccessFile;)I

    move-result v0

    iget-wide v2, p0, Lcom/inveno/se/adapi/ad/http/g;->f:J

    int-to-long v8, v0

    add-long/2addr v2, v8

    iget-wide v8, p0, Lcom/inveno/se/adapi/ad/http/g;->g:J

    cmp-long v2, v2, v8

    if-eqz v2, :cond_5

    iget-wide v2, p0, Lcom/inveno/se/adapi/ad/http/g;->g:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/inveno/se/adapi/ad/http/g;->l:Z

    if-nez v2, :cond_5

    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Download incomplete: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " != "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v8, p0, Lcom/inveno/se/adapi/ad/http/g;->g:J

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_1
    move-exception v0

    move-wide v2, v4

    goto/16 :goto_0

    :cond_5
    const-string v2, "FileHttpResponseHandler"

    const-string v3, "Download completed successfully."

    invoke-static {v2, v3}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/inveno/se/exception/FileAlreadyExistException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    int-to-long v2, v0

    move-object v0, v6

    goto/16 :goto_0

    :catch_2
    move-exception v0

    move-wide v2, v4

    goto/16 :goto_0

    :catch_3
    move-exception v0

    move-wide v2, v4

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p0, v0, v6}, Lcom/inveno/se/adapi/ad/http/g;->a(Ljava/lang/Throwable;[B)V

    goto/16 :goto_1

    :cond_7
    iget-object v0, p0, Lcom/inveno/se/adapi/ad/http/g;->b:Ljava/io/File;

    iget-object v2, p0, Lcom/inveno/se/adapi/ad/http/g;->a:Ljava/io/File;

    invoke-virtual {v0, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    const-string v0, "\u4e0b\u8f7d\u6210\u529f\uff01"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/inveno/se/adapi/ad/http/g;->b(I[B)V

    goto/16 :goto_1
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/inveno/se/adapi/ad/http/g;->l:Z

    return-void
.end method

.method public a([B)V
    .locals 0

    return-void
.end method

.method protected b(I[B)V
    .locals 4

    const/4 v0, 0x4

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/inveno/se/adapi/ad/http/g;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inveno/se/adapi/ad/http/g;->b(Landroid/os/Message;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/inveno/se/adapi/ad/http/e;->b(Ljava/lang/String;)V

    return-void
.end method

.method protected c(I[B)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/inveno/se/adapi/ad/http/g;->a(I[B)V

    return-void
.end method

.method public e()Lcom/inveno/se/adapi/ad/a;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/adapi/ad/http/g;->q:Lcom/inveno/se/adapi/ad/a;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/adapi/ad/http/g;->o:Ljava/lang/String;

    return-object v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lcom/inveno/se/adapi/ad/http/g;->p:I

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/adapi/ad/http/g;->m:Ljava/lang/String;

    return-object v0
.end method

.method public i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/inveno/se/adapi/ad/http/g;->l:Z

    return v0
.end method

.method public j()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/adapi/ad/http/g;->b:Ljava/io/File;

    return-object v0
.end method
