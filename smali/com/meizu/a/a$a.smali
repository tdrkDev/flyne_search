.class Lcom/meizu/a/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/meizu/a/a;


# direct methods
.method private constructor <init>(Lcom/meizu/a/a;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lcom/meizu/a/a$a;->a:Lcom/meizu/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/a/a;Lcom/meizu/a/a$1;)V
    .locals 0

    .prologue
    .line 201
    invoke-direct {p0, p1}, Lcom/meizu/a/a$a;-><init>(Lcom/meizu/a/a;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 205
    invoke-static {}, Lcom/meizu/a/a;->b()Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v3

    .line 206
    if-nez v3, :cond_1

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    const/4 v2, 0x0

    .line 211
    const/4 v1, 0x1

    .line 212
    :try_start_0
    iget-object v4, p0, Lcom/meizu/a/a$a;->a:Lcom/meizu/a/a;

    invoke-static {v4}, Lcom/meizu/a/a;->a(Lcom/meizu/a/a;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    iget-object v6, p0, Lcom/meizu/a/a$a;->a:Lcom/meizu/a/a;

    invoke-static {v6}, Lcom/meizu/a/a;->d(Lcom/meizu/a/a;)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    move v1, v0

    .line 215
    :cond_2
    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, p0, Lcom/meizu/a/a$a;->a:Lcom/meizu/a/a;

    invoke-static {v5}, Lcom/meizu/a/a;->a(Lcom/meizu/a/a;)Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 216
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    :try_start_1
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss.SSS"

    sget-object v5, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v4, v2, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    move v2, v0

    .line 218
    :goto_1
    if-ge v2, v3, :cond_4

    .line 219
    invoke-static {}, Lcom/meizu/a/a;->b()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/a/a$b;

    .line 220
    new-instance v5, Ljava/util/Date;

    invoke-static {v0}, Lcom/meizu/a/a$b;->a(Lcom/meizu/a/a$b;)J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 221
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/meizu/a/a$a;->a:Lcom/meizu/a/a;

    invoke-static {v6}, Lcom/meizu/a/a;->e(Lcom/meizu/a/a;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Lcom/meizu/a/a$b;->b(Lcom/meizu/a/a$b;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Lcom/meizu/a/a$b;->c(Lcom/meizu/a/a$b;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Lcom/meizu/a/a$b;->d(Lcom/meizu/a/a$b;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 222
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 223
    const-string v5, "\n"

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 224
    invoke-static {v0}, Lcom/meizu/a/a$b;->e(Lcom/meizu/a/a$b;)Ljava/lang/Throwable;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 225
    invoke-static {v0}, Lcom/meizu/a/a$b;->e(Lcom/meizu/a/a$b;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 227
    :cond_3
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 218
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_1

    .line 229
    :cond_4
    invoke-static {}, Lcom/meizu/a/a;->b()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 230
    const-string v0, "FileLogger"

    const-string v2, "flush"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 234
    if-eqz v1, :cond_0

    .line 235
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    goto/16 :goto_0

    .line 231
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 232
    :goto_2
    :try_start_2
    const-string v2, "FileLogger"

    const-string v3, "write file exception"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 234
    if-eqz v1, :cond_0

    .line 235
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    goto/16 :goto_0

    .line 234
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_3
    if-eqz v1, :cond_5

    .line 235
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    :cond_5
    throw v0

    .line 234
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 231
    :catch_1
    move-exception v0

    goto :goto_2
.end method
