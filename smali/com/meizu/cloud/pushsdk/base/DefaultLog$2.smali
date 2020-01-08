.class Lcom/meizu/cloud/pushsdk/base/DefaultLog$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/cloud/pushsdk/base/DefaultLog;->flush(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/cloud/pushsdk/base/DefaultLog;


# direct methods
.method constructor <init>(Lcom/meizu/cloud/pushsdk/base/DefaultLog;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/base/DefaultLog$2;->this$0:Lcom/meizu/cloud/pushsdk/base/DefaultLog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 139
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/base/DefaultLog$2;->this$0:Lcom/meizu/cloud/pushsdk/base/DefaultLog;

    invoke-static {v1}, Lcom/meizu/cloud/pushsdk/base/DefaultLog;->access$000(Lcom/meizu/cloud/pushsdk/base/DefaultLog;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 140
    :try_start_0
    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/base/DefaultLog$2;->this$0:Lcom/meizu/cloud/pushsdk/base/DefaultLog;

    invoke-static {v2}, Lcom/meizu/cloud/pushsdk/base/DefaultLog;->access$100(Lcom/meizu/cloud/pushsdk/base/DefaultLog;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 141
    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/base/DefaultLog$2;->this$0:Lcom/meizu/cloud/pushsdk/base/DefaultLog;

    invoke-static {v2}, Lcom/meizu/cloud/pushsdk/base/DefaultLog;->access$000(Lcom/meizu/cloud/pushsdk/base/DefaultLog;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 142
    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/base/DefaultLog$2;->this$0:Lcom/meizu/cloud/pushsdk/base/DefaultLog;

    invoke-static {v2}, Lcom/meizu/cloud/pushsdk/base/DefaultLog;->access$000(Lcom/meizu/cloud/pushsdk/base/DefaultLog;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 143
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    :try_start_1
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/base/DefaultLog$2;->this$0:Lcom/meizu/cloud/pushsdk/base/DefaultLog;

    invoke-static {v1}, Lcom/meizu/cloud/pushsdk/base/DefaultLog;->access$300(Lcom/meizu/cloud/pushsdk/base/DefaultLog;)Lcom/meizu/cloud/pushsdk/base/EncryptionWriter;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/base/DefaultLog$2;->this$0:Lcom/meizu/cloud/pushsdk/base/DefaultLog;

    invoke-static {v2}, Lcom/meizu/cloud/pushsdk/base/DefaultLog;->access$200(Lcom/meizu/cloud/pushsdk/base/DefaultLog;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/meizu/cloud/pushsdk/base/EncryptionWriter;->open(Ljava/lang/String;)V

    .line 146
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/cloud/pushsdk/base/DefaultLog$LogInfo;

    .line 147
    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/base/DefaultLog$2;->this$0:Lcom/meizu/cloud/pushsdk/base/DefaultLog;

    invoke-static {v2}, Lcom/meizu/cloud/pushsdk/base/DefaultLog;->access$300(Lcom/meizu/cloud/pushsdk/base/DefaultLog;)Lcom/meizu/cloud/pushsdk/base/EncryptionWriter;

    move-result-object v2

    iget-object v3, v0, Lcom/meizu/cloud/pushsdk/base/DefaultLog$LogInfo;->header:Ljava/lang/String;

    iget-object v4, v0, Lcom/meizu/cloud/pushsdk/base/DefaultLog$LogInfo;->tag:Ljava/lang/String;

    iget-object v0, v0, Lcom/meizu/cloud/pushsdk/base/DefaultLog$LogInfo;->msg:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v0}, Lcom/meizu/cloud/pushsdk/base/EncryptionWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 149
    :catch_0
    move-exception v0

    .line 153
    :try_start_2
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/base/DefaultLog$2;->this$0:Lcom/meizu/cloud/pushsdk/base/DefaultLog;

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/base/DefaultLog;->access$300(Lcom/meizu/cloud/pushsdk/base/DefaultLog;)Lcom/meizu/cloud/pushsdk/base/EncryptionWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/base/EncryptionWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 158
    :goto_1
    return-void

    .line 143
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 153
    :cond_0
    :try_start_4
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/base/DefaultLog$2;->this$0:Lcom/meizu/cloud/pushsdk/base/DefaultLog;

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/base/DefaultLog;->access$300(Lcom/meizu/cloud/pushsdk/base/DefaultLog;)Lcom/meizu/cloud/pushsdk/base/EncryptionWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/base/EncryptionWriter;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 154
    :catch_1
    move-exception v0

    goto :goto_1

    .line 152
    :catchall_1
    move-exception v0

    .line 153
    :try_start_5
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/base/DefaultLog$2;->this$0:Lcom/meizu/cloud/pushsdk/base/DefaultLog;

    invoke-static {v1}, Lcom/meizu/cloud/pushsdk/base/DefaultLog;->access$300(Lcom/meizu/cloud/pushsdk/base/DefaultLog;)Lcom/meizu/cloud/pushsdk/base/EncryptionWriter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/cloud/pushsdk/base/EncryptionWriter;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 156
    :goto_2
    throw v0

    .line 154
    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_1
.end method
