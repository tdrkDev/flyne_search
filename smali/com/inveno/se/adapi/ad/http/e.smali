.class public Lcom/inveno/se/adapi/ad/http/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inveno/se/adapi/ad/http/e$a;
    }
.end annotation


# instance fields
.field private a:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/inveno/se/adapi/ad/http/e$a;

    invoke-direct {v0, p0}, Lcom/inveno/se/adapi/ad/http/e$a;-><init>(Lcom/inveno/se/adapi/ad/http/e;)V

    iput-object v0, p0, Lcom/inveno/se/adapi/ad/http/e;->a:Landroid/os/Handler;

    :cond_0
    return-void
.end method


# virtual methods
.method protected a(ILjava/lang/Object;)Landroid/os/Message;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/adapi/ad/http/e;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inveno/se/adapi/ad/http/e;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->what:I

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_0
.end method

.method public a()V
    .locals 0

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p2}, Lcom/inveno/se/adapi/ad/http/e;->b(Ljava/lang/String;)V

    return-void
.end method

.method public a(I[Lorg/apache/http/Header;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p3}, Lcom/inveno/se/adapi/ad/http/e;->a(ILjava/lang/String;)V

    return-void
.end method

.method protected a(Landroid/os/Message;)V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/String;

    aget-object v2, v0, v3

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aget-object v0, v0, v4

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/inveno/se/adapi/ad/http/e;->c(Ljava/lang/String;JI)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v1, v0, v3

    check-cast v1, [Lorg/apache/http/Header;

    check-cast v1, [Lorg/apache/http/Header;

    aget-object v0, v0, v4

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v2, v1, v0}, Lcom/inveno/se/adapi/ad/http/e;->c(I[Lorg/apache/http/Header;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Throwable;

    aget-object v0, v0, v3

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/inveno/se/adapi/ad/http/e;->c(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/inveno/se/adapi/ad/http/e;->b()V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lcom/inveno/se/adapi/ad/http/e;->a()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/inveno/se/adapi/ad/http/e;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method protected a(Ljava/lang/Throwable;[B)V
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    aput-object p2, v0, v2

    invoke-virtual {p0, v2, v0}, Lcom/inveno/se/adapi/ad/http/e;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inveno/se/adapi/ad/http/e;->b(Landroid/os/Message;)V

    return-void
.end method

.method protected a(Lorg/apache/http/HttpResponse;)V
    .locals 4

    const/4 v1, 0x0

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v2, Lorg/apache/http/entity/BufferedHttpEntity;

    invoke-direct {v2, v0}, Lorg/apache/http/entity/BufferedHttpEntity;-><init>(Lorg/apache/http/HttpEntity;)V

    const-string v0, "UTF-8"

    invoke-static {v2, v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v2, 0x12c

    if-lt v0, v2, :cond_1

    new-instance v0, Lorg/apache/http/client/HttpResponseException;

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/inveno/se/adapi/ad/http/e;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_1
    return-void

    :catch_0
    move-exception v0

    move-object v2, v0

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v2, v0}, Lcom/inveno/se/adapi/ad/http/e;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v2

    invoke-virtual {p0, v0, v2, v1}, Lcom/inveno/se/adapi/ad/http/e;->b(I[Lorg/apache/http/Header;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method protected b(I[Lorg/apache/http/Header;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x4

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/inveno/se/adapi/ad/http/e;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inveno/se/adapi/ad/http/e;->b(Landroid/os/Message;)V

    return-void
.end method

.method protected b(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/adapi/ad/http/e;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inveno/se/adapi/ad/http/e;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/inveno/se/adapi/ad/http/e;->a(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public b(Ljava/lang/String;JI)V
    .locals 0

    return-void
.end method

.method protected b(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    aput-object p2, v0, v2

    invoke-virtual {p0, v2, v0}, Lcom/inveno/se/adapi/ad/http/e;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inveno/se/adapi/ad/http/e;->b(Landroid/os/Message;)V

    return-void
.end method

.method protected c()V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/inveno/se/adapi/ad/http/e;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inveno/se/adapi/ad/http/e;->b(Landroid/os/Message;)V

    return-void
.end method

.method protected c(I[Lorg/apache/http/Header;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/inveno/se/adapi/ad/http/e;->a(I[Lorg/apache/http/Header;Ljava/lang/String;)V

    return-void
.end method

.method protected c(Ljava/lang/String;JI)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/inveno/se/adapi/ad/http/e;->b(Ljava/lang/String;JI)V

    return-void
.end method

.method protected c(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/inveno/se/adapi/ad/http/e;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method protected d()V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/inveno/se/adapi/ad/http/e;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inveno/se/adapi/ad/http/e;->b(Landroid/os/Message;)V

    return-void
.end method
