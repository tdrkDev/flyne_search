.class Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meizu/cloud/pushsdk/networking/okio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout;->sink(Lcom/meizu/cloud/pushsdk/networking/okio/Sink;)Lcom/meizu/cloud/pushsdk/networking/okio/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout;

.field final synthetic val$sink:Lcom/meizu/cloud/pushsdk/networking/okio/Sink;


# direct methods
.method constructor <init>(Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout;Lcom/meizu/cloud/pushsdk/networking/okio/Sink;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout$1;->this$0:Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout;

    iput-object p2, p0, Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout$1;->val$sink:Lcom/meizu/cloud/pushsdk/networking/okio/Sink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 177
    const/4 v1, 0x0

    .line 178
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout$1;->this$0:Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout;

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout;->enter()V

    .line 180
    :try_start_0
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout$1;->val$sink:Lcom/meizu/cloud/pushsdk/networking/okio/Sink;

    invoke-interface {v0}, Lcom/meizu/cloud/pushsdk/networking/okio/Sink;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    const/4 v0, 0x1

    .line 185
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout$1;->this$0:Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout;

    invoke-virtual {v1, v0}, Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout;->exit(Z)V

    .line 187
    return-void

    .line 182
    :catch_0
    move-exception v0

    .line 183
    :try_start_1
    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout$1;->this$0:Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout;

    invoke-virtual {v2, v0}, Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout;->exit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 185
    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout$1;->this$0:Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout;

    invoke-virtual {v2, v1}, Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout;->exit(Z)V

    throw v0
.end method

.method public flush()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 164
    const/4 v1, 0x0

    .line 165
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout$1;->this$0:Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout;

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout;->enter()V

    .line 167
    :try_start_0
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout$1;->val$sink:Lcom/meizu/cloud/pushsdk/networking/okio/Sink;

    invoke-interface {v0}, Lcom/meizu/cloud/pushsdk/networking/okio/Sink;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    const/4 v0, 0x1

    .line 172
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout$1;->this$0:Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout;

    invoke-virtual {v1, v0}, Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout;->exit(Z)V

    .line 174
    return-void

    .line 169
    :catch_0
    move-exception v0

    .line 170
    :try_start_1
    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout$1;->this$0:Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout;

    invoke-virtual {v2, v0}, Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout;->exit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout$1;->this$0:Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout;

    invoke-virtual {v2, v1}, Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout;->exit(Z)V

    throw v0
.end method

.method public timeout()Lcom/meizu/cloud/pushsdk/networking/okio/Timeout;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout$1;->this$0:Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncTimeout.sink("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout$1;->val$sink:Lcom/meizu/cloud/pushsdk/networking/okio/Sink;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/meizu/cloud/pushsdk/networking/okio/Buffer;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 151
    const/4 v1, 0x0

    .line 152
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout$1;->this$0:Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout;

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout;->enter()V

    .line 154
    :try_start_0
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout$1;->val$sink:Lcom/meizu/cloud/pushsdk/networking/okio/Sink;

    invoke-interface {v0, p1, p2, p3}, Lcom/meizu/cloud/pushsdk/networking/okio/Sink;->write(Lcom/meizu/cloud/pushsdk/networking/okio/Buffer;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    const/4 v0, 0x1

    .line 159
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout$1;->this$0:Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout;

    invoke-virtual {v1, v0}, Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout;->exit(Z)V

    .line 161
    return-void

    .line 156
    :catch_0
    move-exception v0

    .line 157
    :try_start_1
    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout$1;->this$0:Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout;

    invoke-virtual {v2, v0}, Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout;->exit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 159
    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout$1;->this$0:Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout;

    invoke-virtual {v2, v1}, Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout;->exit(Z)V

    throw v0
.end method
