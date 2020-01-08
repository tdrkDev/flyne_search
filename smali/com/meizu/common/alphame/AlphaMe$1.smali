.class Lcom/meizu/common/alphame/AlphaMe$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/alphame/AlphaMe;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mRetryCount:I

.field final synthetic this$0:Lcom/meizu/common/alphame/AlphaMe;


# direct methods
.method constructor <init>(Lcom/meizu/common/alphame/AlphaMe;Landroid/os/Looper;)V
    .locals 1

    .prologue
    .line 37
    iput-object p1, p0, Lcom/meizu/common/alphame/AlphaMe$1;->this$0:Lcom/meizu/common/alphame/AlphaMe;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/common/alphame/AlphaMe$1;->mRetryCount:I

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 41
    monitor-enter p0

    .line 42
    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 67
    :goto_0
    monitor-exit p0

    .line 68
    :goto_1
    return-void

    .line 44
    :pswitch_0
    iget-object v1, p0, Lcom/meizu/common/alphame/AlphaMe$1;->this$0:Lcom/meizu/common/alphame/AlphaMe;

    invoke-static {v1}, Lcom/meizu/common/alphame/AlphaMe;->access$200(Lcom/meizu/common/alphame/AlphaMe;)Landroid/util/LongSparseArray;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    :try_start_1
    iget-object v1, p0, Lcom/meizu/common/alphame/AlphaMe$1;->this$0:Lcom/meizu/common/alphame/AlphaMe;

    invoke-static {v1}, Lcom/meizu/common/alphame/AlphaMe;->access$200(Lcom/meizu/common/alphame/AlphaMe;)Landroid/util/LongSparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit p0

    goto :goto_1

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 46
    :cond_0
    :try_start_3
    const-string v1, "AlphaMe"

    const-string v3, "Client handle binder died "

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 47
    :goto_2
    iget-object v0, p0, Lcom/meizu/common/alphame/AlphaMe$1;->this$0:Lcom/meizu/common/alphame/AlphaMe;

    invoke-static {v0}, Lcom/meizu/common/alphame/AlphaMe;->access$200(Lcom/meizu/common/alphame/AlphaMe;)Landroid/util/LongSparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 48
    iget-object v3, p0, Lcom/meizu/common/alphame/AlphaMe$1;->this$0:Lcom/meizu/common/alphame/AlphaMe;

    iget-object v0, p0, Lcom/meizu/common/alphame/AlphaMe$1;->this$0:Lcom/meizu/common/alphame/AlphaMe;

    invoke-static {v0}, Lcom/meizu/common/alphame/AlphaMe;->access$200(Lcom/meizu/common/alphame/AlphaMe;)Landroid/util/LongSparseArray;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/alphame/AlphaMe$ActionReceiver;

    invoke-virtual {v3, v0}, Lcom/meizu/common/alphame/AlphaMe;->registerActionReceiver(Lcom/meizu/common/alphame/AlphaMe$ActionReceiver;)V

    .line 47
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/alphame/AlphaMe$1;->this$0:Lcom/meizu/common/alphame/AlphaMe;

    invoke-static {v0}, Lcom/meizu/common/alphame/AlphaMe;->access$300(Lcom/meizu/common/alphame/AlphaMe;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 51
    const-string v0, "AlphaMe"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mRetryCount = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/meizu/common/alphame/AlphaMe$1;->mRetryCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/meizu/common/alphame/AlphaMe$1;->mRetryCount:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget v0, p0, Lcom/meizu/common/alphame/AlphaMe$1;->mRetryCount:I

    const/16 v1, 0xa

    if-gt v0, v1, :cond_2

    .line 53
    iget-object v0, p0, Lcom/meizu/common/alphame/AlphaMe$1;->this$0:Lcom/meizu/common/alphame/AlphaMe;

    invoke-static {v0}, Lcom/meizu/common/alphame/AlphaMe;->access$400(Lcom/meizu/common/alphame/AlphaMe;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 54
    iget-object v0, p0, Lcom/meizu/common/alphame/AlphaMe$1;->this$0:Lcom/meizu/common/alphame/AlphaMe;

    invoke-static {v0}, Lcom/meizu/common/alphame/AlphaMe;->access$400(Lcom/meizu/common/alphame/AlphaMe;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 64
    :goto_3
    monitor-exit v2

    goto/16 :goto_0

    .line 65
    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 56
    :cond_2
    :try_start_5
    const-string v0, "AlphaMe"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Restore actions fail, size = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/meizu/common/alphame/AlphaMe$1;->this$0:Lcom/meizu/common/alphame/AlphaMe;

    invoke-static {v3}, Lcom/meizu/common/alphame/AlphaMe;->access$200(Lcom/meizu/common/alphame/AlphaMe;)Landroid/util/LongSparseArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object v0, p0, Lcom/meizu/common/alphame/AlphaMe$1;->this$0:Lcom/meizu/common/alphame/AlphaMe;

    invoke-static {v0}, Lcom/meizu/common/alphame/AlphaMe;->access$200(Lcom/meizu/common/alphame/AlphaMe;)Landroid/util/LongSparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/common/alphame/AlphaMe$1;->mRetryCount:I

    goto :goto_3

    .line 61
    :cond_3
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/common/alphame/AlphaMe$1;->mRetryCount:I

    .line 62
    iget-object v0, p0, Lcom/meizu/common/alphame/AlphaMe$1;->this$0:Lcom/meizu/common/alphame/AlphaMe;

    invoke-static {v0}, Lcom/meizu/common/alphame/AlphaMe;->access$200(Lcom/meizu/common/alphame/AlphaMe;)Landroid/util/LongSparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    .line 42
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
