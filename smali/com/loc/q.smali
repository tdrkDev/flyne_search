.class public final Lcom/loc/q;
.super Ljava/lang/Thread;
.source "SourceFile"

# interfaces
.implements Lcom/loc/am$a;


# instance fields
.field private a:Lcom/loc/r;

.field private b:Lcom/loc/am;

.field private c:Lcom/loc/cy;

.field private d:Ljava/lang/String;

.field private e:Ljava/io/RandomAccessFile;

.field private f:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/loc/r;Lcom/loc/cy;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/q;->f:Landroid/content/Context;

    iput-object p3, p0, Lcom/loc/q;->c:Lcom/loc/cy;

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p2, p0, Lcom/loc/q;->a:Lcom/loc/r;

    new-instance v0, Lcom/loc/am;

    new-instance v1, Lcom/loc/v;

    iget-object v2, p0, Lcom/loc/q;->a:Lcom/loc/r;

    invoke-direct {v1, v2}, Lcom/loc/v;-><init>(Lcom/loc/r;)V

    invoke-direct {v0, v1}, Lcom/loc/am;-><init>(Lcom/loc/ap;)V

    iput-object v0, p0, Lcom/loc/q;->b:Lcom/loc/am;

    iget-object v0, p0, Lcom/loc/q;->a:Lcom/loc/r;

    iget-object v0, v0, Lcom/loc/r;->a:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/loc/w;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/q;->d:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "dDownLoad"

    const-string v2, "DexDownLoad()"

    invoke-static {v0, v1, v2}, Lcom/loc/dc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Lcom/loc/g;)Z
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/loc/q;->a:Lcom/loc/r;

    iget-object v0, v0, Lcom/loc/r;->b:Ljava/lang/String;

    const-string v2, "used"

    invoke-static {p1, v0, v2}, Lcom/loc/w$a;->a(Lcom/loc/g;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/ab;

    invoke-virtual {v0}, Lcom/loc/ab;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/loc/q;->a:Lcom/loc/r;

    iget-object v2, v2, Lcom/loc/r;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/loc/ac;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v2, "dDownLoad"

    const-string v3, "isUsed()"

    invoke-static {v0, v2, v3}, Lcom/loc/dc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private a(Lcom/loc/g;Lcom/loc/ab;Lcom/loc/r;)Z
    .locals 6

    const/4 v0, 0x1

    iget-object v1, p3, Lcom/loc/r;->b:Ljava/lang/String;

    iget-object v2, p3, Lcom/loc/r;->c:Ljava/lang/String;

    iget-object v3, p3, Lcom/loc/r;->d:Ljava/lang/String;

    iget-object v4, p3, Lcom/loc/r;->e:Ljava/lang/String;

    const-string v4, "errorstatus"

    invoke-virtual {p2}, Lcom/loc/ab;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/loc/q;->f:Landroid/content/Context;

    iget-object v3, p0, Lcom/loc/q;->c:Lcom/loc/cy;

    invoke-virtual {v3}, Lcom/loc/cy;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/loc/q;->c:Lcom/loc/cy;

    invoke-virtual {v4}, Lcom/loc/cy;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/loc/w;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/loc/q;->f:Landroid/content/Context;

    iget-object v2, p0, Lcom/loc/q;->c:Lcom/loc/cy;

    invoke-static {v1, p1, v2}, Lcom/loc/w;->a(Landroid/content/Context;Lcom/loc/g;Lcom/loc/cy;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/loc/q;->f:Landroid/content/Context;

    iget-object v2, p0, Lcom/loc/q;->c:Lcom/loc/cy;

    invoke-static {v1, v2}, Lcom/loc/w;->a(Landroid/content/Context;Lcom/loc/cy;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_1
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/loc/q;->d:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/loc/q;->f:Landroid/content/Context;

    invoke-static {v4, v1, v2}, Lcom/loc/w;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1, v2, v3}, Lcom/loc/ab;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v4, Lcom/loc/ab;

    invoke-virtual {p1, v2, v4}, Lcom/loc/g;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_0

    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/loc/q;->f:Landroid/content/Context;

    iget-object v4, p0, Lcom/loc/q;->c:Lcom/loc/cy;

    invoke-virtual {v4}, Lcom/loc/cy;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v1, v4}, Lcom/loc/w;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/loc/q;->f:Landroid/content/Context;

    iget-object v2, p0, Lcom/loc/q;->c:Lcom/loc/cy;

    iget-object v4, p0, Lcom/loc/q;->d:Ljava/lang/String;

    invoke-static {v1, p1, v2, v4, v3}, Lcom/loc/w;->a(Landroid/content/Context;Lcom/loc/g;Lcom/loc/cy;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/loc/q;->f:Landroid/content/Context;

    iget-object v2, p0, Lcom/loc/q;->c:Lcom/loc/cy;

    invoke-static {v1, v2}, Lcom/loc/w;->a(Landroid/content/Context;Lcom/loc/cy;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v2, "dDownLoad"

    const-string v3, "processDownloadedFile()"

    invoke-static {v1, v2, v3}, Lcom/loc/dc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private e()Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/loc/q;->c:Lcom/loc/cy;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/loc/q;->c:Lcom/loc/cy;

    invoke-virtual {v2}, Lcom/loc/cy;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/loc/q;->a:Lcom/loc/r;

    iget-object v3, v3, Lcom/loc/r;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/loc/q;->c:Lcom/loc/cy;

    invoke-virtual {v2}, Lcom/loc/cy;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/loc/q;->a:Lcom/loc/r;

    iget-object v3, v3, Lcom/loc/r;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    :goto_0
    if-eqz v2, :cond_5

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v3, p0, Lcom/loc/q;->a:Lcom/loc/r;

    iget v3, v3, Lcom/loc/r;->g:I

    if-lt v2, v3, :cond_1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v3, p0, Lcom/loc/q;->a:Lcom/loc/r;

    iget v3, v3, Lcom/loc/r;->f:I

    if-gt v2, v3, :cond_1

    move v2, v0

    :goto_1
    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/loc/q;->f:Landroid/content/Context;

    invoke-static {v2}, Lcom/loc/ct;->m(Landroid/content/Context;)I

    move-result v2

    if-ne v2, v0, :cond_2

    move v2, v0

    :goto_2
    if-eqz v2, :cond_5

    new-instance v2, Lcom/loc/g;

    iget-object v3, p0, Lcom/loc/q;->f:Landroid/content/Context;

    invoke-static {}, Lcom/loc/aa;->b()Lcom/loc/aa;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/loc/g;-><init>(Landroid/content/Context;Lcom/loc/f;)V

    invoke-direct {p0, v2}, Lcom/loc/q;->a(Lcom/loc/g;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v2, v0

    :goto_3
    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/loc/q;->f:Landroid/content/Context;

    iget-object v3, p0, Lcom/loc/q;->c:Lcom/loc/cy;

    invoke-virtual {v3}, Lcom/loc/cy;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/loc/w;->b(Landroid/content/Context;Ljava/lang/String;)V

    :goto_4
    return v0

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_1

    :cond_2
    move v2, v1

    goto :goto_2

    :cond_3
    iget-object v3, p0, Lcom/loc/q;->a:Lcom/loc/r;

    iget-object v3, v3, Lcom/loc/r;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/loc/w$a;->a(Lcom/loc/g;Ljava/lang/String;)Lcom/loc/ab;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v4, p0, Lcom/loc/q;->a:Lcom/loc/r;

    invoke-direct {p0, v2, v3, v4}, Lcom/loc/q;->a(Lcom/loc/g;Lcom/loc/ab;Lcom/loc/r;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_3

    :cond_4
    move v2, v1

    goto :goto_3

    :cond_5
    move v0, v1

    goto :goto_4

    :catch_0
    move-exception v0

    const-string v2, "dDownLoad"

    const-string v3, "isNeedDownload()"

    invoke-static {v0, v2, v3}, Lcom/loc/dc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_4
.end method


# virtual methods
.method public final a()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/loc/q;->start()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "dDownLoad"

    const-string v2, "startDownload()"

    invoke-static {v0, v1, v2}, Lcom/loc/dc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a([BJ)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/loc/q;->e:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/loc/q;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v1, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/loc/q;->e:Ljava/io/RandomAccessFile;

    :cond_1
    iget-object v0, p0, Lcom/loc/q;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p2, p3}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v0, p0, Lcom/loc/q;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "dDownLoad"

    const-string v2, "onDownload()"

    invoke-static {v0, v1, v2}, Lcom/loc/dc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/loc/q;->e:Ljava/io/RandomAccessFile;

    invoke-static {v0}, Lcom/loc/ac;->a(Ljava/io/Closeable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public final c()V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/loc/q;->e:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/loc/q;->e:Ljava/io/RandomAccessFile;

    invoke-static {v0}, Lcom/loc/ac;->a(Ljava/io/Closeable;)V

    iget-object v0, p0, Lcom/loc/q;->a:Lcom/loc/r;

    invoke-virtual {v0}, Lcom/loc/r;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/loc/q;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/loc/ac;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/loc/q;->a:Lcom/loc/r;

    iget-object v4, v0, Lcom/loc/r;->c:Ljava/lang/String;

    new-instance v6, Lcom/loc/g;

    iget-object v0, p0, Lcom/loc/q;->f:Landroid/content/Context;

    invoke-static {}, Lcom/loc/aa;->b()Lcom/loc/aa;

    move-result-object v1

    invoke-direct {v6, v0, v1}, Lcom/loc/g;-><init>(Landroid/content/Context;Lcom/loc/f;)V

    new-instance v0, Lcom/loc/ab$a;

    iget-object v1, p0, Lcom/loc/q;->a:Lcom/loc/r;

    iget-object v1, v1, Lcom/loc/r;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/loc/q;->a:Lcom/loc/r;

    iget-object v3, v3, Lcom/loc/r;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/loc/q;->a:Lcom/loc/r;

    iget-object v5, v5, Lcom/loc/r;->d:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/loc/ab$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "copy"

    invoke-virtual {v0, v1}, Lcom/loc/ab$a;->a(Ljava/lang/String;)Lcom/loc/ab$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loc/ab$a;->a()Lcom/loc/ab;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/q;->a:Lcom/loc/r;

    iget-object v1, v1, Lcom/loc/r;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/loc/q;->a:Lcom/loc/r;

    iget-object v2, v2, Lcom/loc/r;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/loc/q;->a:Lcom/loc/r;

    iget-object v3, v3, Lcom/loc/r;->d:Ljava/lang/String;

    invoke-static {v1, v2, v4, v3}, Lcom/loc/ab;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/loc/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/q;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/loc/q;->a:Lcom/loc/r;

    iget-object v1, v1, Lcom/loc/r;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/loc/q;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/loc/q;->c:Lcom/loc/cy;

    iget-object v2, p0, Lcom/loc/q;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/loc/q;->a:Lcom/loc/r;

    iget-object v3, v3, Lcom/loc/r;->d:Ljava/lang/String;

    invoke-static {v0, v6, v1, v2, v3}, Lcom/loc/w;->a(Landroid/content/Context;Lcom/loc/g;Lcom/loc/cy;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/q;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/loc/q;->c:Lcom/loc/cy;

    invoke-static {v0, v1}, Lcom/loc/w;->a(Landroid/content/Context;Lcom/loc/cy;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    new-instance v0, Lcom/loc/at;

    iget-object v1, p0, Lcom/loc/q;->f:Landroid/content/Context;

    iget-object v2, p0, Lcom/loc/q;->c:Lcom/loc/cy;

    invoke-virtual {v2}, Lcom/loc/cy;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/loc/q;->c:Lcom/loc/cy;

    invoke-virtual {v3}, Lcom/loc/cy;->b()Ljava/lang/String;

    move-result-object v3

    const-string v4, "O008"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/loc/at;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "{\"param_int_first\":1}"

    invoke-virtual {v0, v1}, Lcom/loc/at;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/loc/q;->f:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/loc/au;->a(Lcom/loc/at;Landroid/content/Context;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "dDownLoad"

    const-string v2, "onFinish()"

    invoke-static {v0, v1, v2}, Lcom/loc/dc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    :try_start_4
    const-string v1, "dDownLoad"

    const-string v2, "clearMarker()"

    invoke-static {v0, v1, v2}, Lcom/loc/dc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_2
    move-exception v0

    const-string v1, "dDownLoad"

    const-string v2, "onFinish1"

    invoke-static {v0, v1, v2}, Lcom/loc/dc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :cond_1
    :try_start_5
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/loc/q;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v0

    :try_start_6
    const-string v1, "dDownLoad"

    const-string v2, "onFinish"

    invoke-static {v0, v1, v2}, Lcom/loc/dc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0
.end method

.method public final d()V
    .locals 0

    return-void
.end method

.method public final run()V
    .locals 5

    :try_start_0
    invoke-direct {p0}, Lcom/loc/q;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/loc/at;

    iget-object v1, p0, Lcom/loc/q;->f:Landroid/content/Context;

    iget-object v2, p0, Lcom/loc/q;->c:Lcom/loc/cy;

    invoke-virtual {v2}, Lcom/loc/cy;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/loc/q;->c:Lcom/loc/cy;

    invoke-virtual {v3}, Lcom/loc/cy;->b()Ljava/lang/String;

    move-result-object v3

    const-string v4, "O008"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/loc/at;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "{\"param_int_first\":0}"

    invoke-virtual {v0, v1}, Lcom/loc/at;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/loc/q;->f:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/loc/au;->a(Lcom/loc/at;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/loc/q;->b:Lcom/loc/am;

    invoke-virtual {v0, p0}, Lcom/loc/am;->a(Lcom/loc/am$a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "dDownLoad"

    const-string v2, "run()"

    invoke-static {v0, v1, v2}, Lcom/loc/dc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
