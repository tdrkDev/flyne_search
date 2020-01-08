.class Lcom/meizu/flyme/media/news/lite/f$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/flyme/media/news/lite/f;->a(IIILcom/meizu/flyme/media/news/lite/i;Lcom/meizu/flyme/media/news/lite/f$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/meizu/flyme/media/news/lite/i;

.field final synthetic b:I

.field final synthetic c:Ljava/util/concurrent/CountDownLatch;

.field final synthetic d:Lcom/meizu/flyme/media/news/lite/f;


# direct methods
.method constructor <init>(Lcom/meizu/flyme/media/news/lite/f;Lcom/meizu/flyme/media/news/lite/i;ILjava/util/concurrent/CountDownLatch;)V
    .locals 0

    .prologue
    .line 1634
    iput-object p1, p0, Lcom/meizu/flyme/media/news/lite/f$9;->d:Lcom/meizu/flyme/media/news/lite/f;

    iput-object p2, p0, Lcom/meizu/flyme/media/news/lite/f$9;->a:Lcom/meizu/flyme/media/news/lite/i;

    iput p3, p0, Lcom/meizu/flyme/media/news/lite/f$9;->b:I

    iput-object p4, p0, Lcom/meizu/flyme/media/news/lite/f$9;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1638
    :try_start_0
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/f$9;->d:Lcom/meizu/flyme/media/news/lite/f;

    iget-object v1, p0, Lcom/meizu/flyme/media/news/lite/f$9;->a:Lcom/meizu/flyme/media/news/lite/i;

    invoke-virtual {v1}, Lcom/meizu/flyme/media/news/lite/i;->b()I

    move-result v1

    iget-object v2, p0, Lcom/meizu/flyme/media/news/lite/f$9;->a:Lcom/meizu/flyme/media/news/lite/i;

    invoke-virtual {v2}, Lcom/meizu/flyme/media/news/lite/i;->a()I

    move-result v2

    iget v3, p0, Lcom/meizu/flyme/media/news/lite/f$9;->b:I

    invoke-static {v0, v1, v2, v3}, Lcom/meizu/flyme/media/news/lite/f;->a(Lcom/meizu/flyme/media/news/lite/f;III)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1642
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/f$9;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1644
    :goto_0
    return-void

    .line 1639
    :catch_0
    move-exception v0

    .line 1640
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1642
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/f$9;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/meizu/flyme/media/news/lite/f$9;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
.end method
