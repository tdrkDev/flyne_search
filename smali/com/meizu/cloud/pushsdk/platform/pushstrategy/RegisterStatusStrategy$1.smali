.class Lcom/meizu/cloud/pushsdk/platform/pushstrategy/RegisterStatusStrategy$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/cloud/pushsdk/platform/pushstrategy/RegisterStatusStrategy;-><init>(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;Ljava/util/concurrent/ScheduledExecutorService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/cloud/pushsdk/platform/pushstrategy/RegisterStatusStrategy;


# direct methods
.method constructor <init>(Lcom/meizu/cloud/pushsdk/platform/pushstrategy/RegisterStatusStrategy;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/RegisterStatusStrategy$1;->this$0:Lcom/meizu/cloud/pushsdk/platform/pushstrategy/RegisterStatusStrategy;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 42
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 48
    :goto_0
    return-void

    .line 44
    :pswitch_0
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/RegisterStatusStrategy$1;->this$0:Lcom/meizu/cloud/pushsdk/platform/pushstrategy/RegisterStatusStrategy;

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/RegisterStatusStrategy;->process()Z

    goto :goto_0

    .line 42
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
