.class Lcom/meizu/a/a$d;
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
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/meizu/a/a;

.field private b:Lcom/meizu/a/a$b;


# direct methods
.method constructor <init>(Lcom/meizu/a/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 150
    iput-object p1, p0, Lcom/meizu/a/a$d;->a:Lcom/meizu/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    new-instance v0, Lcom/meizu/a/a$b;

    invoke-direct {v0, p2, p3, p4, p5}, Lcom/meizu/a/a$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v0, p0, Lcom/meizu/a/a$d;->b:Lcom/meizu/a/a$b;

    .line 152
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 156
    iget-object v0, p0, Lcom/meizu/a/a$d;->a:Lcom/meizu/a/a;

    invoke-static {v0}, Lcom/meizu/a/a;->a(Lcom/meizu/a/a;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1

    .line 157
    const-string v0, "FileLogger"

    const-string v1, "log file is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v0, p0, Lcom/meizu/a/a$d;->a:Lcom/meizu/a/a;

    invoke-static {v0, v3}, Lcom/meizu/a/a;->a(Lcom/meizu/a/a;Z)Z

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/meizu/a/a$d;->a:Lcom/meizu/a/a;

    invoke-static {v0}, Lcom/meizu/a/a;->a(Lcom/meizu/a/a;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/meizu/a/a$d;->a:Lcom/meizu/a/a;

    invoke-static {v0}, Lcom/meizu/a/a;->a(Lcom/meizu/a/a;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_2

    .line 162
    const-string v0, "FileLogger"

    const-string v1, "log file is not file"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v0, p0, Lcom/meizu/a/a$d;->a:Lcom/meizu/a/a;

    invoke-static {v0, v3}, Lcom/meizu/a/a;->a(Lcom/meizu/a/a;Z)Z

    goto :goto_0

    .line 167
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/meizu/a/a$d;->a:Lcom/meizu/a/a;

    invoke-static {v0}, Lcom/meizu/a/a;->a(Lcom/meizu/a/a;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/meizu/a/a$d;->a:Lcom/meizu/a/a;

    invoke-static {v0}, Lcom/meizu/a/a;->a(Lcom/meizu/a/a;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-nez v0, :cond_3

    .line 168
    const-string v0, "FileLogger"

    const-string v1, "create log file failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v0, p0, Lcom/meizu/a/a$d;->a:Lcom/meizu/a/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/meizu/a/a;->a(Lcom/meizu/a/a;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 172
    :catch_0
    move-exception v0

    .line 173
    const-string v1, "FileLogger"

    const-string v2, "create log file exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 174
    iget-object v0, p0, Lcom/meizu/a/a$d;->a:Lcom/meizu/a/a;

    invoke-static {v0, v3}, Lcom/meizu/a/a;->a(Lcom/meizu/a/a;Z)Z

    goto :goto_0

    .line 177
    :cond_3
    invoke-static {}, Lcom/meizu/a/a;->b()Ljava/util/LinkedList;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/a/a$d;->b:Lcom/meizu/a/a$b;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 178
    invoke-static {}, Lcom/meizu/a/a;->b()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    .line 179
    const-string v1, "FileLogger"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 180
    const-string v1, "FileLogger"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mMaxCacheCount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/a/a$d;->a:Lcom/meizu/a/a;

    invoke-static {v3}, Lcom/meizu/a/a;->b(Lcom/meizu/a/a;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_4
    iget-object v1, p0, Lcom/meizu/a/a$d;->a:Lcom/meizu/a/a;

    invoke-static {v1}, Lcom/meizu/a/a;->b(Lcom/meizu/a/a;)I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 183
    invoke-static {}, Lcom/meizu/a/a;->c()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_5

    .line 184
    new-instance v0, Lcom/meizu/a/a$c;

    iget-object v1, p0, Lcom/meizu/a/a$d;->a:Lcom/meizu/a/a;

    invoke-direct {v0, v1}, Lcom/meizu/a/a$c;-><init>(Lcom/meizu/a/a;)V

    invoke-static {v0}, Lcom/meizu/a/a;->a(Landroid/os/Handler;)Landroid/os/Handler;

    .line 186
    :cond_5
    invoke-static {}, Lcom/meizu/a/a;->c()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    invoke-static {}, Lcom/meizu/a/a;->c()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 188
    invoke-static {}, Lcom/meizu/a/a;->c()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/a/a$d;->a:Lcom/meizu/a/a;

    invoke-static {v2}, Lcom/meizu/a/a;->c(Lcom/meizu/a/a;)J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 192
    :cond_6
    invoke-static {}, Lcom/meizu/a/a;->c()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 193
    invoke-static {}, Lcom/meizu/a/a;->c()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 195
    :cond_7
    new-instance v0, Lcom/meizu/a/a$a;

    iget-object v1, p0, Lcom/meizu/a/a$d;->a:Lcom/meizu/a/a;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/meizu/a/a$a;-><init>(Lcom/meizu/a/a;Lcom/meizu/a/a$1;)V

    .line 196
    invoke-virtual {v0}, Lcom/meizu/a/a$a;->run()V

    goto/16 :goto_0
.end method
