.class Lcom/inveno/reportsdk/y;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inveno/reportsdk/y$a;
    }
.end annotation


# static fields
.field private static a:Lcom/inveno/reportsdk/y;


# instance fields
.field private b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private c:Lcom/inveno/reportsdk/y$a;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/inveno/reportsdk/y;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/inveno/reportsdk/y$a;

    invoke-direct {v0, p0}, Lcom/inveno/reportsdk/y$a;-><init>(Lcom/inveno/reportsdk/y;)V

    iput-object v0, p0, Lcom/inveno/reportsdk/y;->c:Lcom/inveno/reportsdk/y$a;

    return-void
.end method

.method static declared-synchronized a()Lcom/inveno/reportsdk/y;
    .locals 2

    const-class v1, Lcom/inveno/reportsdk/y;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/inveno/reportsdk/y;->a:Lcom/inveno/reportsdk/y;

    if-nez v0, :cond_0

    new-instance v0, Lcom/inveno/reportsdk/y;

    invoke-direct {v0}, Lcom/inveno/reportsdk/y;-><init>()V

    sput-object v0, Lcom/inveno/reportsdk/y;->a:Lcom/inveno/reportsdk/y;

    :cond_0
    sget-object v0, Lcom/inveno/reportsdk/y;->a:Lcom/inveno/reportsdk/y;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/inveno/reportsdk/y;Lcom/inveno/reportsdk/x;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/inveno/reportsdk/y;->c(Lcom/inveno/reportsdk/x;)V

    return-void
.end method

.method private b(Lcom/inveno/reportsdk/x;)V
    .locals 3
    .param p1    # Lcom/inveno/reportsdk/x;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "DataSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4e0a\u62a5\u6210\u529f\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inveno/reportsdk/y;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Lcom/inveno/reportsdk/i;->a()Lcom/inveno/reportsdk/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/reportsdk/i;->d()V

    iget v0, p1, Lcom/inveno/reportsdk/x;->b:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-static {}, Lcom/inveno/reportsdk/u;->a()Lcom/inveno/reportsdk/u;

    move-result-object v0

    new-instance v1, Lcom/inveno/reportsdk/c;

    invoke-direct {v1}, Lcom/inveno/reportsdk/c;-><init>()V

    invoke-virtual {v0, v1}, Lcom/inveno/reportsdk/u;->a(Lcom/inveno/reportsdk/t;)V

    return-void

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/inveno/reportsdk/y;->e(Lcom/inveno/reportsdk/x;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic b(Lcom/inveno/reportsdk/y;Lcom/inveno/reportsdk/x;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/inveno/reportsdk/y;->b(Lcom/inveno/reportsdk/x;)V

    return-void
.end method

.method private c(I)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const-string v0, "DataSDK"

    const-string v1, "\u83b7\u53d6\u5230uid\u89e6\u53d1\u4e0a\u62a5"

    invoke-static {v0, v1}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const-string v0, "DataSDK"

    const-string v1, "\u9000\u51fa\u5217\u8868\u89e6\u53d1\u4e0a\u62a5"

    invoke-static {v0, v1}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    const-string v0, "DataSDK"

    const-string v1, "\u6761\u76ee\u70b9\u51fb\u89e6\u53d1\u4e0a\u62a5"

    invoke-static {v0, v1}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    const-string v0, "DataSDK"

    const-string v1, "\u5185\u5bb9\u6761\u76ee\u9605\u8bfb\u7ed3\u675f\u89e6\u53d1\u4e0a\u62a5"

    invoke-static {v0, v1}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_5
    const-string v0, "DataSDK"

    const-string v1, "reset\u89e6\u53d1\u4e0a\u62a5"

    invoke-static {v0, v1}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_6
    const-string v0, "DataSDK"

    const-string v1, "\u9000\u51fa\u9875\u9762\u89e6\u53d1\u4e0a\u62a5"

    invoke-static {v0, v1}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_7
    const-string v0, "DataSDK"

    const-string v1, "\u540e\u53f0\u62a5\u6d3b\u4e8b\u4ef6\u89e6\u53d1\u4e0a\u62a5"

    invoke-static {v0, v1}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_8
    const-string v0, "DataSDK"

    const-string v1, "\u8fbe\u5230\u4e0a\u62a5\u7f13\u5b58\u4e0a\u9650\u89e6\u53d1\u4e0a\u62a5"

    invoke-static {v0, v1}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_9
    const-string v0, "DataSDK"

    const-string v1, "\u8f6e\u8be2\u65f6\u95f4\u5230\u89e6\u53d1\u4e0a\u62a5"

    invoke-static {v0, v1}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_a
    const-string v0, "DataSDK"

    const-string v1, "\u81ea\u5b9a\u4e49\u4e8b\u4ef6\u89e6\u53d1\u4e0a\u62a5"

    invoke-static {v0, v1}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_a
    .end packed-switch
.end method

.method private c(Lcom/inveno/reportsdk/x;)V
    .locals 3
    .param p1    # Lcom/inveno/reportsdk/x;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "DataSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4e0a\u62a5\u5931\u8d25\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inveno/reportsdk/y;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget v0, p1, Lcom/inveno/reportsdk/x;->b:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/inveno/reportsdk/y;->d(Lcom/inveno/reportsdk/x;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private c()Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/inveno/reportsdk/y;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    invoke-static {}, Lcom/inveno/reportsdk/CommonParams;->getInstance()Lcom/inveno/reportsdk/CommonParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inveno/reportsdk/CommonParams;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    sget-object v2, Lcom/inveno/reportsdk/XZSDKManager;->context:Landroid/content/Context;

    invoke-static {v2}, Ld/d;->a(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v0

    :goto_0
    if-nez v3, :cond_0

    if-nez v4, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    if-eqz v3, :cond_3

    const-string v0, "\u6b63\u5728\u4e0a\u62a5"

    :goto_1
    const-string v2, "DataSDK"

    invoke-static {v2, v0}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :cond_1
    return v0

    :cond_2
    move v2, v1

    goto :goto_0

    :cond_3
    if-eqz v4, :cond_4

    const-string v0, "\u6ca1\u6709uid"

    goto :goto_1

    :cond_4
    const-string v0, "\u6ca1\u6709\u7f51"

    goto :goto_1
.end method

.method private d(Lcom/inveno/reportsdk/x;)V
    .locals 3
    .param p1    # Lcom/inveno/reportsdk/x;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "DataSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5199\u5165\u78c1\u76d8\u7f13\u5b58\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/inveno/reportsdk/CommonParams;->getInstance()Lcom/inveno/reportsdk/CommonParams;

    move-result-object v0

    invoke-static {}, Lcom/inveno/reportsdk/CommonParams;->getInstance()Lcom/inveno/reportsdk/CommonParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inveno/reportsdk/CommonParams;->getSeq()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/inveno/reportsdk/CommonParams;->setSeq(I)V

    sget-object v0, Lcom/inveno/reportsdk/XZSDKManager;->context:Landroid/content/Context;

    invoke-static {}, Lcom/inveno/reportsdk/CommonParams;->getInstance()Lcom/inveno/reportsdk/CommonParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inveno/reportsdk/CommonParams;->getSeq()I

    move-result v1

    invoke-static {v0, v1}, Lcom/inveno/reportsdk/ac;->a(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Lcom/inveno/reportsdk/u;->a()Lcom/inveno/reportsdk/u;

    move-result-object v0

    new-instance v1, Lcom/inveno/reportsdk/s;

    invoke-direct {v1, p1}, Lcom/inveno/reportsdk/s;-><init>(Lcom/inveno/reportsdk/x;)V

    invoke-virtual {v0, v1}, Lcom/inveno/reportsdk/u;->a(Lcom/inveno/reportsdk/t;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private d(I)Z
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lcom/inveno/reportsdk/XZSDKManager;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/inveno/reportsdk/a;->a(Landroid/content/Context;)Lcom/inveno/reportsdk/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inveno/reportsdk/a;->a()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    :pswitch_0
    return v0

    :cond_0
    packed-switch p1, :pswitch_data_0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private e(Lcom/inveno/reportsdk/x;)V
    .locals 3
    .param p1    # Lcom/inveno/reportsdk/x;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "DataSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5220\u9664\u78c1\u76d8\u7f13\u5b58\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/inveno/reportsdk/u;->a()Lcom/inveno/reportsdk/u;

    move-result-object v0

    new-instance v1, Lcom/inveno/reportsdk/j;

    invoke-direct {v1, p1}, Lcom/inveno/reportsdk/j;-><init>(Lcom/inveno/reportsdk/x;)V

    invoke-virtual {v0, v1}, Lcom/inveno/reportsdk/u;->a(Lcom/inveno/reportsdk/t;)V

    return-void
.end method


# virtual methods
.method a(I)V
    .locals 4

    const/4 v3, 0x1

    invoke-direct {p0, p1}, Lcom/inveno/reportsdk/y;->c(I)V

    iget-object v0, p0, Lcom/inveno/reportsdk/y;->c:Lcom/inveno/reportsdk/y$a;

    invoke-virtual {v0, v3}, Lcom/inveno/reportsdk/y$a;->removeMessages(I)V

    iget-object v0, p0, Lcom/inveno/reportsdk/y;->c:Lcom/inveno/reportsdk/y$a;

    iget-object v1, p0, Lcom/inveno/reportsdk/y;->c:Lcom/inveno/reportsdk/y$a;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/inveno/reportsdk/y$a;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Lcom/inveno/reportsdk/y$a;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method a(Lcom/inveno/reportsdk/l$d;)V
    .locals 3

    const-string v0, "DataSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4e0a\u62a5\u63a8\u9001\u4e8b\u4ef6 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/inveno/reportsdk/l$d;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/inveno/reportsdk/x$a;

    invoke-static {}, Lcom/inveno/reportsdk/CommonParams;->getInstance()Lcom/inveno/reportsdk/CommonParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inveno/reportsdk/CommonParams;->getPushUpack()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/inveno/reportsdk/x$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/inveno/reportsdk/x$a;->a()Lcom/inveno/reportsdk/x;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/inveno/reportsdk/y;->a(Lcom/inveno/reportsdk/x;)V

    const-string v1, "DataSDK"

    invoke-static {v1, v0}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method a(Lcom/inveno/reportsdk/x;)V
    .locals 4
    .param p1    # Lcom/inveno/reportsdk/x;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/inveno/reportsdk/y;->c()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p1, Lcom/inveno/reportsdk/x;->b:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/inveno/reportsdk/y;->d(Lcom/inveno/reportsdk/x;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/inveno/reportsdk/y;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p1}, Lcom/inveno/reportsdk/x;->a()Ljava/util/Map;

    move-result-object v0

    const-string v1, "DataSDK"

    invoke-static {}, Lcom/inveno/reportsdk/p;->a()Lcom/inveno/reportsdk/p;

    move-result-object v2

    iget-object v2, v2, Lcom/inveno/reportsdk/p;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/inveno/reportsdk/ag;->b()Lcom/inveno/reportsdk/ag;

    move-result-object v1

    invoke-static {}, Lcom/inveno/reportsdk/p;->a()Lcom/inveno/reportsdk/p;

    move-result-object v2

    iget-object v2, v2, Lcom/inveno/reportsdk/p;->c:Ljava/lang/String;

    new-instance v3, Lcom/inveno/reportsdk/aa;

    invoke-direct {v3, p0, p1}, Lcom/inveno/reportsdk/aa;-><init>(Lcom/inveno/reportsdk/y;Lcom/inveno/reportsdk/x;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/inveno/reportsdk/ag;->a(Ljava/lang/String;Ljava/util/Map;Lcom/inveno/reportsdk/q;)V

    :try_start_0
    iget v0, p1, Lcom/inveno/reportsdk/x;->b:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    invoke-static {}, Lcom/inveno/reportsdk/CommonParams;->getInstance()Lcom/inveno/reportsdk/CommonParams;

    move-result-object v0

    invoke-static {}, Lcom/inveno/reportsdk/CommonParams;->getInstance()Lcom/inveno/reportsdk/CommonParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inveno/reportsdk/CommonParams;->getSeq()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/inveno/reportsdk/CommonParams;->setSeq(I)V

    :cond_2
    sget-object v0, Lcom/inveno/reportsdk/XZSDKManager;->context:Landroid/content/Context;

    invoke-static {}, Lcom/inveno/reportsdk/CommonParams;->getInstance()Lcom/inveno/reportsdk/CommonParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inveno/reportsdk/CommonParams;->getSeq()I

    move-result v1

    invoke-static {v0, v1}, Lcom/inveno/reportsdk/ac;->a(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method a(Ljava/lang/String;Lcom/inveno/se/callback/DownloadCallback;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/inveno/se/callback/DownloadCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/inveno/se/callback/DownloadCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/inveno/reportsdk/x$a;

    invoke-direct {v0, p1}, Lcom/inveno/reportsdk/x$a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/inveno/reportsdk/x$a;->a()Lcom/inveno/reportsdk/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/reportsdk/x;->b()Ljava/util/Map;

    move-result-object v0

    const-string v1, "DataSDK"

    invoke-static {}, Lcom/inveno/reportsdk/p;->a()Lcom/inveno/reportsdk/p;

    move-result-object v2

    iget-object v2, v2, Lcom/inveno/reportsdk/p;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/inveno/reportsdk/ag;->b()Lcom/inveno/reportsdk/ag;

    move-result-object v1

    invoke-static {}, Lcom/inveno/reportsdk/p;->a()Lcom/inveno/reportsdk/p;

    move-result-object v2

    iget-object v2, v2, Lcom/inveno/reportsdk/p;->d:Ljava/lang/String;

    new-instance v3, Lcom/inveno/reportsdk/z;

    invoke-direct {v3, p0, p2}, Lcom/inveno/reportsdk/z;-><init>(Lcom/inveno/reportsdk/y;Lcom/inveno/se/callback/DownloadCallback;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/inveno/reportsdk/ag;->a(Ljava/lang/String;Ljava/util/Map;Lcom/inveno/reportsdk/q;)V

    return-void
.end method

.method declared-synchronized b()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/inveno/reportsdk/y;->c:Lcom/inveno/reportsdk/y$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inveno/reportsdk/y;->c:Lcom/inveno/reportsdk/y$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/inveno/reportsdk/y$a;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/inveno/reportsdk/y;->c:Lcom/inveno/reportsdk/y$a;

    invoke-virtual {v0}, Lcom/inveno/reportsdk/y$a;->a()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inveno/reportsdk/y;->c:Lcom/inveno/reportsdk/y$a;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inveno/reportsdk/y;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    sput-object v0, Lcom/inveno/reportsdk/y;->a:Lcom/inveno/reportsdk/y;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method b(I)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/inveno/reportsdk/y;->d(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/inveno/reportsdk/y;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "DataSDK"

    const-string v1, "\u4e0e\u672a\u4e0a\u62a5\u4e8b\u4ef6\u5408\u5e76"

    invoke-static {v0, v1}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/inveno/reportsdk/n;->a()Lcom/inveno/reportsdk/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/reportsdk/n;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "DataSDK"

    const-string v1, "\u6ca1\u6709\u9700\u8981\u4e0a\u4f20\u7684\u4e8b\u4ef6"

    invoke-static {v0, v1}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "DataSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u672c\u6b21\u4e0a\u5831\u4e8b\u4ef6\uff1a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/inveno/reportsdk/x$a;

    invoke-static {}, Lcom/inveno/reportsdk/CommonParams;->getInstance()Lcom/inveno/reportsdk/CommonParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inveno/reportsdk/CommonParams;->getUpack()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/inveno/reportsdk/x$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/inveno/reportsdk/x$a;->a()Lcom/inveno/reportsdk/x;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inveno/reportsdk/y;->a(Lcom/inveno/reportsdk/x;)V

    goto :goto_0
.end method
