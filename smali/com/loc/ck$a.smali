.class public final Lcom/loc/ck$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loc/ck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/loc/ck;


# direct methods
.method public constructor <init>(Lcom/loc/ck;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/ck$a;->a:Lcom/loc/ck;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :try_start_1
    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "c"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/loc/ck$a;->a:Lcom/loc/ck;

    iget-object v5, v4, Lcom/loc/ck;->l:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v4, Lcom/loc/ck;->e:Landroid/content/Context;

    invoke-static {v5}, Lcom/loc/bz;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/loc/ck;->l:Ljava/lang/String;

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v4, v4, Lcom/loc/ck;->l:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_4

    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/loc/ck$a;->a:Lcom/loc/ck;

    const-string v0, "invalid handlder scode!!!"

    invoke-static {v0}, Lcom/loc/ck;->a(Ljava/lang/String;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v0

    iget-object v3, p0, Lcom/loc/ck$a;->a:Lcom/loc/ck;

    invoke-virtual {v0}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->k()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v2, v0, v4}, Lcom/loc/ck;->a(Lcom/loc/ck;Landroid/os/Messenger;Lcom/amap/api/location/AMapLocation;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4

    :cond_2
    :goto_1
    return-void

    :cond_3
    move v0, v3

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_2
    :try_start_2
    const-string v3, "APSServiceCore"

    const-string v4, "ActionHandler handlerMessage"

    invoke-static {v0, v3, v4}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_5
    :goto_3
    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "actionHandler"

    const-string v2, "handleMessage"

    invoke-static {v0, v1, v2}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    :try_start_3
    iget-object v0, p0, Lcom/loc/ck$a;->a:Lcom/loc/ck;

    invoke-static {v0, v1}, Lcom/loc/ck;->a(Lcom/loc/ck;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/loc/ck$a;->a:Lcom/loc/ck;

    invoke-static {v0, v2, v1}, Lcom/loc/ck;->a(Lcom/loc/ck;Landroid/os/Messenger;Landroid/os/Bundle;)V

    goto :goto_3

    :pswitch_2
    iget-object v0, p0, Lcom/loc/ck$a;->a:Lcom/loc/ck;

    invoke-static {v0, v1}, Lcom/loc/ck;->a(Lcom/loc/ck;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/loc/ck$a;->a:Lcom/loc/ck;

    invoke-static {v0, v2, v1}, Lcom/loc/ck;->b(Lcom/loc/ck;Landroid/os/Messenger;Landroid/os/Bundle;)V

    goto :goto_3

    :pswitch_3
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/loc/ck$a;->a:Lcom/loc/ck;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/loc/ck;->a(Lcom/loc/ck;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/loc/ck$a;->a:Lcom/loc/ck;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    iget-boolean v1, v0, Lcom/loc/ck;->q:Z

    if-nez v1, :cond_5

    new-instance v1, Lcom/loc/ck$c;

    invoke-direct {v1, v0}, Lcom/loc/ck$c;-><init>(Lcom/loc/ck;)V

    iput-object v1, v0, Lcom/loc/ck;->r:Lcom/loc/ck$c;

    iget-object v1, v0, Lcom/loc/ck;->r:Lcom/loc/ck$c;

    invoke-virtual {v1}, Lcom/loc/ck$c;->start()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/loc/ck;->q:Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    :try_start_5
    const-string v1, "APSServiceCore"

    const-string v2, "startSocket"

    invoke-static {v0, v1, v2}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :pswitch_4
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/loc/ck$a;->a:Lcom/loc/ck;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/loc/ck;->a(Lcom/loc/ck;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/loc/ck$a;->a:Lcom/loc/ck;

    invoke-virtual {v0}, Lcom/loc/ck;->a()V

    goto :goto_3

    :pswitch_5
    iget-object v0, p0, Lcom/loc/ck$a;->a:Lcom/loc/ck;

    invoke-static {v0, v1}, Lcom/loc/ck;->a(Lcom/loc/ck;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/loc/ck$a;->a:Lcom/loc/ck;

    invoke-static {v0}, Lcom/loc/ck;->a(Lcom/loc/ck;)V

    goto :goto_3

    :pswitch_6
    iget-object v0, p0, Lcom/loc/ck$a;->a:Lcom/loc/ck;

    invoke-static {v0, v1}, Lcom/loc/ck;->a(Lcom/loc/ck;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/loc/ck$a;->a:Lcom/loc/ck;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    :try_start_6
    invoke-static {}, Lcom/loc/by;->e()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/loc/ck;->f:Lcom/loc/aw;

    invoke-virtual {v1}, Lcom/loc/aw;->d()V

    :cond_6
    :goto_4
    iget-object v0, v0, Lcom/loc/ck;->d:Lcom/loc/ck$a;

    const/4 v1, 0x5

    invoke-static {}, Lcom/loc/by;->d()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/loc/ck$a;->sendEmptyMessageDelayed(IJ)Z
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_3

    :catch_3
    move-exception v0

    :try_start_7
    const-string v1, "APSServiceCore"

    const-string v2, "doOffFusion"

    invoke-static {v0, v1, v2}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_3

    :cond_7
    :try_start_8
    iget-object v1, v0, Lcom/loc/ck;->e:Landroid/content/Context;

    invoke-static {v1}, Lcom/loc/ci;->d(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, v0, Lcom/loc/ck;->f:Lcom/loc/aw;

    invoke-virtual {v1}, Lcom/loc/aw;->d()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_4

    :pswitch_7
    :try_start_9
    iget-object v0, p0, Lcom/loc/ck$a;->a:Lcom/loc/ck;

    invoke-static {v0, v1}, Lcom/loc/ck;->a(Lcom/loc/ck;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/loc/ck$a;->a:Lcom/loc/ck;

    invoke-static {v0}, Lcom/loc/ck;->b(Lcom/loc/ck;)V

    goto/16 :goto_3

    :pswitch_8
    iget-object v0, p0, Lcom/loc/ck$a;->a:Lcom/loc/ck;

    invoke-static {v0, v1}, Lcom/loc/ck;->a(Lcom/loc/ck;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/loc/ck$a;->a:Lcom/loc/ck;

    invoke-static {v0, v2}, Lcom/loc/ck;->a(Lcom/loc/ck;Landroid/os/Messenger;)V

    goto/16 :goto_3

    :pswitch_9
    iget-object v0, p0, Lcom/loc/ck$a;->a:Lcom/loc/ck;

    invoke-static {v0, v1}, Lcom/loc/ck;->a(Lcom/loc/ck;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/loc/ck$a;->a:Lcom/loc/ck;

    invoke-virtual {v0, v2, v1}, Lcom/loc/ck;->a(Landroid/os/Messenger;Landroid/os/Bundle;)V

    goto/16 :goto_3

    :pswitch_a
    iget-object v0, p0, Lcom/loc/ck$a;->a:Lcom/loc/ck;

    invoke-virtual {v0}, Lcom/loc/ck;->b()V

    goto/16 :goto_3

    :pswitch_b
    iget-object v0, p0, Lcom/loc/ck$a;->a:Lcom/loc/ck;

    iget-object v0, v0, Lcom/loc/ck;->h:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_3

    :catch_4
    move-exception v0

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method
