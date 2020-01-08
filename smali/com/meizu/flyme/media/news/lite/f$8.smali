.class Lcom/meizu/flyme/media/news/lite/f$8;
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
.field final synthetic a:[Z

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcom/meizu/flyme/media/news/lite/i;

.field final synthetic e:I

.field final synthetic f:Ljava/util/Set;

.field final synthetic g:Ljava/util/concurrent/CountDownLatch;

.field final synthetic h:Lcom/meizu/flyme/media/news/lite/f;


# direct methods
.method constructor <init>(Lcom/meizu/flyme/media/news/lite/f;[ZIILcom/meizu/flyme/media/news/lite/i;ILjava/util/Set;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .prologue
    .line 1621
    iput-object p1, p0, Lcom/meizu/flyme/media/news/lite/f$8;->h:Lcom/meizu/flyme/media/news/lite/f;

    iput-object p2, p0, Lcom/meizu/flyme/media/news/lite/f$8;->a:[Z

    iput p3, p0, Lcom/meizu/flyme/media/news/lite/f$8;->b:I

    iput p4, p0, Lcom/meizu/flyme/media/news/lite/f$8;->c:I

    iput-object p5, p0, Lcom/meizu/flyme/media/news/lite/f$8;->d:Lcom/meizu/flyme/media/news/lite/i;

    iput p6, p0, Lcom/meizu/flyme/media/news/lite/f$8;->e:I

    iput-object p7, p0, Lcom/meizu/flyme/media/news/lite/f$8;->f:Ljava/util/Set;

    iput-object p8, p0, Lcom/meizu/flyme/media/news/lite/f$8;->g:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 1625
    :try_start_0
    iget-object v6, p0, Lcom/meizu/flyme/media/news/lite/f$8;->a:[Z

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/f$8;->h:Lcom/meizu/flyme/media/news/lite/f;

    iget v1, p0, Lcom/meizu/flyme/media/news/lite/f$8;->b:I

    iget v2, p0, Lcom/meizu/flyme/media/news/lite/f$8;->c:I

    iget-object v3, p0, Lcom/meizu/flyme/media/news/lite/f$8;->d:Lcom/meizu/flyme/media/news/lite/i;

    iget v4, p0, Lcom/meizu/flyme/media/news/lite/f$8;->e:I

    iget-object v5, p0, Lcom/meizu/flyme/media/news/lite/f$8;->f:Ljava/util/Set;

    invoke-static/range {v0 .. v5}, Lcom/meizu/flyme/media/news/lite/f;->a(Lcom/meizu/flyme/media/news/lite/f;IILcom/meizu/flyme/media/news/lite/i;ILjava/util/Set;)Z

    move-result v0

    aput-boolean v0, v6, v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1629
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/f$8;->g:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1631
    :goto_0
    return-void

    .line 1626
    :catch_0
    move-exception v0

    .line 1627
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1629
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/f$8;->g:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/meizu/flyme/media/news/lite/f$8;->g:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
.end method
