.class public final Lcom/meizu/flyme/media/news/lite/f$b;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/flyme/media/news/lite/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private a:Lcom/meizu/flyme/media/news/protocol/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/meizu/flyme/media/news/protocol/b",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;",
            ">;>;"
        }
    .end annotation
.end field

.field private volatile b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;",
            ">;"
        }
    .end annotation
.end field

.field private c:I


# direct methods
.method public constructor <init>(Lcom/meizu/flyme/media/news/protocol/b;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/meizu/flyme/media/news/protocol/b",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;",
            ">;>;I)V"
        }
    .end annotation

    .prologue
    .line 2134
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2135
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/flyme/media/news/lite/f$b;->b:Ljava/util/List;

    .line 2136
    iput p2, p0, Lcom/meizu/flyme/media/news/lite/f$b;->c:I

    .line 2137
    iput-object p1, p0, Lcom/meizu/flyme/media/news/lite/f$b;->a:Lcom/meizu/flyme/media/news/protocol/b;

    .line 2138
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 2145
    iget v0, p0, Lcom/meizu/flyme/media/news/lite/f$b;->c:I

    return v0
.end method

.method public a(II)V
    .locals 4

    .prologue
    .line 2167
    const v0, 0xc1025

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/meizu/flyme/media/news/lite/f$b;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    int-to-long v2, p2

    invoke-virtual {p0, v0, v2, v3}, Lcom/meizu/flyme/media/news/lite/f$b;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2168
    return-void
.end method

.method public a(Lcom/meizu/flyme/media/news/protocol/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/meizu/flyme/media/news/protocol/b",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 2149
    const v0, 0xc1024

    invoke-virtual {p0, v0}, Lcom/meizu/flyme/media/news/lite/f$b;->removeMessages(I)V

    .line 2150
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/flyme/media/news/lite/f$b;->a:Lcom/meizu/flyme/media/news/protocol/b;

    .line 2151
    return-void
.end method

.method public a(Ljava/util/List;Ljava/lang/Throwable;JI)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/flyme/media/news/lite/NewsFullArticleBean;",
            ">;",
            "Ljava/lang/Throwable;",
            "JI)V"
        }
    .end annotation

    .prologue
    const v1, 0xc1024

    .line 2158
    if-eqz p1, :cond_0

    .line 2159
    invoke-static {p1}, Lcom/meizu/flyme/media/news/a/c;->a(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/flyme/media/news/lite/f$b;->b:Ljava/util/List;

    .line 2161
    :cond_0
    invoke-virtual {p0, v1}, Lcom/meizu/flyme/media/news/lite/f$b;->removeMessages(I)V

    .line 2162
    const v0, 0xc1025

    invoke-virtual {p0, v0}, Lcom/meizu/flyme/media/news/lite/f$b;->removeMessages(I)V

    .line 2163
    const/4 v0, 0x0

    invoke-virtual {p0, v1, p5, v0, p2}, Lcom/meizu/flyme/media/news/lite/f$b;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, p3, p4}, Lcom/meizu/flyme/media/news/lite/f$b;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2164
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 2172
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 2191
    const-string v0, "NewsFullManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/meizu/flyme/media/news/helper/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2195
    :cond_0
    :goto_0
    return-void

    .line 2174
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Throwable;

    .line 2175
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 2176
    iget-object v2, p0, Lcom/meizu/flyme/media/news/lite/f$b;->a:Lcom/meizu/flyme/media/news/protocol/b;

    if-eqz v2, :cond_1

    .line 2177
    iget-object v2, p0, Lcom/meizu/flyme/media/news/lite/f$b;->a:Lcom/meizu/flyme/media/news/protocol/b;

    iget-object v3, p0, Lcom/meizu/flyme/media/news/lite/f$b;->b:Ljava/util/List;

    iget v4, p0, Lcom/meizu/flyme/media/news/lite/f$b;->c:I

    invoke-interface {v2, v3, v0, v1, v4}, Lcom/meizu/flyme/media/news/protocol/b;->a(Ljava/lang/Object;Ljava/lang/Throwable;II)V

    .line 2179
    :cond_1
    const-string v2, "NewsFullManager"

    const-string v3, "onReceiveValue: requestType=%d articles=%s error=%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    .line 2180
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    const/4 v1, 0x1

    iget-object v5, p0, Lcom/meizu/flyme/media/news/lite/f$b;->b:Ljava/util/List;

    invoke-static {}, Lcom/meizu/flyme/media/news/lite/f;->n()Lcom/meizu/flyme/media/news/protocol/c;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/meizu/flyme/media/news/helper/a;->a(Ljava/lang/Object;Lcom/meizu/flyme/media/news/protocol/c;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x2

    aput-object v0, v4, v1

    .line 2179
    invoke-static {v2, v3, v4}, Lcom/meizu/flyme/media/news/helper/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 2184
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2185
    iget-object v1, p0, Lcom/meizu/flyme/media/news/lite/f$b;->a:Lcom/meizu/flyme/media/news/protocol/b;

    if-eqz v1, :cond_0

    .line 2186
    iget-object v1, p0, Lcom/meizu/flyme/media/news/lite/f$b;->a:Lcom/meizu/flyme/media/news/protocol/b;

    iget v2, p0, Lcom/meizu/flyme/media/news/lite/f$b;->c:I

    invoke-interface {v1, v0, v2}, Lcom/meizu/flyme/media/news/protocol/b;->a(II)V

    goto :goto_0

    .line 2172
    nop

    :pswitch_data_0
    .packed-switch 0xc1024
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
