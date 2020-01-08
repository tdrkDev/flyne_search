.class Lcom/inveno/transcode/view/TranscodeObject$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inveno/transcode/view/TranscodeObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/inveno/transcode/view/TranscodeObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/inveno/transcode/view/TranscodeObject;)V
    .locals 1

    .prologue
    .line 590
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 591
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/inveno/transcode/view/TranscodeObject$a;->a:Ljava/lang/ref/WeakReference;

    .line 592
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12

    .prologue
    .line 597
    iget-object v1, p0, Lcom/inveno/transcode/view/TranscodeObject$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/inveno/transcode/view/TranscodeObject;

    .line 598
    if-nez v8, :cond_1

    .line 688
    :cond_0
    :goto_0
    return-void

    .line 602
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 604
    :pswitch_1
    invoke-virtual {v8}, Lcom/inveno/transcode/view/TranscodeObject;->getTranscodeInner()Lcom/inveno/transcode/view/TranscodeObject$b;

    move-result-object v1

    invoke-virtual {v8}, Lcom/inveno/transcode/view/TranscodeObject;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Lcom/inveno/transcode/view/TranscodeObject;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/inveno/transcode/view/TranscodeObject;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8}, Lcom/inveno/transcode/view/TranscodeObject;->getSource()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8}, Lcom/inveno/transcode/view/TranscodeObject;->getTime()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8}, Lcom/inveno/transcode/view/TranscodeObject;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8}, Lcom/inveno/transcode/view/TranscodeObject;->getOriginal()Ljava/lang/String;

    move-result-object v8

    invoke-static/range {v1 .. v8}, Lcom/inveno/transcode/view/TranscodeObject$b;->a(Lcom/inveno/transcode/view/TranscodeObject$b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 607
    :pswitch_2
    invoke-virtual {v8}, Lcom/inveno/transcode/view/TranscodeObject;->getTranscodeInner()Lcom/inveno/transcode/view/TranscodeObject$b;

    move-result-object v1

    invoke-static {v1}, Lcom/inveno/transcode/view/TranscodeObject$b;->a(Lcom/inveno/transcode/view/TranscodeObject$b;)V

    goto :goto_0

    .line 610
    :pswitch_3
    invoke-virtual {v8}, Lcom/inveno/transcode/view/TranscodeObject;->getTranscodeInner()Lcom/inveno/transcode/view/TranscodeObject$b;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/inveno/transcode/view/TranscodeObject$b;->a(Lcom/inveno/transcode/view/TranscodeObject$b;Ljava/lang/String;)V

    goto :goto_0

    .line 613
    :pswitch_4
    invoke-virtual {v8}, Lcom/inveno/transcode/view/TranscodeObject;->getTranscodeInner()Lcom/inveno/transcode/view/TranscodeObject$b;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/inveno/transcode/view/TranscodeObject$b;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 617
    :pswitch_5
    :try_start_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    move-object v0, v1

    check-cast v0, [Ljava/lang/String;

    move-object v6, v0

    .line 618
    invoke-virtual {v8}, Lcom/inveno/transcode/view/TranscodeObject;->getTranscodeInner()Lcom/inveno/transcode/view/TranscodeObject$b;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v6, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    aget-object v3, v6, v3

    const/4 v4, 0x2

    aget-object v4, v6, v4

    const/4 v5, 0x3

    aget-object v5, v6, v5

    const/4 v7, 0x4

    aget-object v6, v6, v7

    invoke-virtual/range {v1 .. v6}, Lcom/inveno/transcode/view/TranscodeObject$b;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 619
    :catch_0
    move-exception v1

    .line 620
    invoke-static {}, Lcom/inveno/transcode/presenter/DefaultTranscodeConfig;->isLogOpen()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 621
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 627
    :pswitch_6
    :try_start_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    check-cast v1, [Ljava/lang/String;

    .line 628
    const/4 v2, 0x0

    aget-object v2, v1, v2

    const/4 v3, 0x1

    aget-object v3, v1, v3

    const/4 v4, 0x2

    aget-object v4, v1, v4

    const/4 v5, 0x3

    aget-object v5, v1, v5

    const/4 v6, 0x4

    aget-object v6, v1, v6

    const/4 v7, 0x5

    aget-object v7, v1, v7

    move-object v1, v8

    invoke-virtual/range {v1 .. v7}, Lcom/inveno/transcode/view/TranscodeObject;->transcodeWithUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 629
    :catch_1
    move-exception v1

    .line 630
    invoke-static {}, Lcom/inveno/transcode/presenter/DefaultTranscodeConfig;->isLogOpen()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 631
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 637
    :pswitch_7
    :try_start_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    move-object v0, v1

    check-cast v0, [Ljava/lang/String;

    move-object v9, v0

    .line 638
    invoke-virtual {v8}, Lcom/inveno/transcode/view/TranscodeObject;->getmTranscodeOrigin()Lcom/inveno/transcode/view/ITranscodeOrigin;

    move-result-object v10

    const/4 v11, 0x1

    new-instance v1, Lcom/inveno/transcode/view/TranscodeParams;

    invoke-virtual {v8}, Lcom/inveno/transcode/view/TranscodeObject;->getUid()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, v9, v3

    const/4 v4, 0x1

    aget-object v4, v9, v4

    const/4 v5, 0x2

    aget-object v5, v9, v5

    const/4 v6, 0x3

    aget-object v6, v9, v6

    const/4 v7, 0x4

    aget-object v7, v9, v7

    const/4 v8, 0x5

    aget-object v8, v9, v8

    invoke-direct/range {v1 .. v8}, Lcom/inveno/transcode/view/TranscodeParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v10, v11, v1}, Lcom/inveno/transcode/view/ITranscodeOrigin;->recommendTranscode(ZLcom/inveno/transcode/view/TranscodeParams;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 639
    :catch_2
    move-exception v1

    .line 640
    invoke-static {}, Lcom/inveno/transcode/presenter/DefaultTranscodeConfig;->isLogOpen()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 641
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 647
    :pswitch_8
    :try_start_3
    invoke-virtual {v8}, Lcom/inveno/transcode/view/TranscodeObject;->getITranscodeJsonInfo()Lcom/inveno/transcode/view/ITranscodeJsonInfo;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v1}, Lcom/inveno/transcode/view/ITranscodeJsonInfo;->getJson(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 648
    :catch_3
    move-exception v1

    .line 649
    invoke-static {}, Lcom/inveno/transcode/presenter/DefaultTranscodeConfig;->isLogOpen()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 650
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 657
    :pswitch_9
    :try_start_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    check-cast v1, [Ljava/lang/String;

    .line 658
    invoke-virtual {v8}, Lcom/inveno/transcode/view/TranscodeObject;->getIDetailJSReportParams()Lcom/inveno/transcode/view/IDetailJSReportParams;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, v1, v3

    const/4 v4, 0x1

    aget-object v4, v1, v4

    const/4 v5, 0x2

    aget-object v5, v1, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x3

    aget-object v1, v1, v6

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v3, v4, v5, v1}, Lcom/inveno/transcode/view/IDetailJSReportParams;->onJsLoad(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    .line 659
    :catch_4
    move-exception v1

    .line 660
    invoke-static {}, Lcom/inveno/transcode/presenter/DefaultTranscodeConfig;->isLogOpen()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 661
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 669
    :pswitch_a
    :try_start_5
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    check-cast v1, [Ljava/lang/String;

    .line 670
    invoke-virtual {v8}, Lcom/inveno/transcode/view/TranscodeObject;->getIDetailJSReportParams()Lcom/inveno/transcode/view/IDetailJSReportParams;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, v1, v3

    const/4 v4, 0x1

    aget-object v4, v1, v4

    const/4 v5, 0x2

    aget-object v5, v1, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x3

    aget-object v1, v1, v6

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v3, v4, v5, v1}, Lcom/inveno/transcode/view/IDetailJSReportParams;->onJsMove(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_0

    .line 671
    :catch_5
    move-exception v1

    .line 672
    invoke-static {}, Lcom/inveno/transcode/presenter/DefaultTranscodeConfig;->isLogOpen()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 673
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 679
    :pswitch_b
    :try_start_6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    check-cast v1, [Ljava/lang/String;

    .line 680
    invoke-virtual {v8}, Lcom/inveno/transcode/view/TranscodeObject;->getIDetailJSReportParams()Lcom/inveno/transcode/view/IDetailJSReportParams;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, v1, v3

    const/4 v4, 0x1

    aget-object v4, v1, v4

    const/4 v5, 0x2

    aget-object v5, v1, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x3

    aget-object v1, v1, v6

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v3, v4, v5, v1}, Lcom/inveno/transcode/view/IDetailJSReportParams;->onJsClick(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto/16 :goto_0

    .line 681
    :catch_6
    move-exception v1

    .line 682
    invoke-static {}, Lcom/inveno/transcode/presenter/DefaultTranscodeConfig;->isLogOpen()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 683
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 602
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method
