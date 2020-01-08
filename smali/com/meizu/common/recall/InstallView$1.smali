.class Lcom/meizu/common/recall/InstallView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/recall/InstallView;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/recall/InstallView;


# direct methods
.method constructor <init>(Lcom/meizu/common/recall/InstallView;)V
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lcom/meizu/common/recall/InstallView$1;->this$0:Lcom/meizu/common/recall/InstallView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 230
    iget-object v0, p0, Lcom/meizu/common/recall/InstallView$1;->this$0:Lcom/meizu/common/recall/InstallView;

    invoke-static {v0}, Lcom/meizu/common/recall/InstallView;->access$000(Lcom/meizu/common/recall/InstallView;)Lcom/meizu/common/recall/InstallView$State;

    move-result-object v0

    sget-object v1, Lcom/meizu/common/recall/InstallView$State;->IDLE:Lcom/meizu/common/recall/InstallView$State;

    if-ne v0, v1, :cond_4

    .line 231
    iget-object v0, p0, Lcom/meizu/common/recall/InstallView$1;->this$0:Lcom/meizu/common/recall/InstallView;

    invoke-static {v0}, Lcom/meizu/common/recall/InstallView;->access$300(Lcom/meizu/common/recall/InstallView;)Lcom/meizu/common/recall/RecallUsageCollector;

    move-result-object v0

    const-string v1, "recall_click_install"

    iget-object v2, p0, Lcom/meizu/common/recall/InstallView$1;->this$0:Lcom/meizu/common/recall/InstallView;

    invoke-static {v2}, Lcom/meizu/common/recall/InstallView;->access$100(Lcom/meizu/common/recall/InstallView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/common/recall/InstallView$1;->this$0:Lcom/meizu/common/recall/InstallView;

    invoke-static {v3}, Lcom/meizu/common/recall/InstallView;->access$200(Lcom/meizu/common/recall/InstallView;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/meizu/common/recall/RecallUsageCollector;->onClickLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/meizu/common/recall/InstallView$1;->this$0:Lcom/meizu/common/recall/InstallView;

    iget-object v1, p0, Lcom/meizu/common/recall/InstallView$1;->this$0:Lcom/meizu/common/recall/InstallView;

    invoke-static {v1}, Lcom/meizu/common/recall/InstallView;->access$200(Lcom/meizu/common/recall/InstallView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/recall/InstallView;->getSystemAppPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 233
    if-nez v0, :cond_2

    .line 234
    iget-object v0, p0, Lcom/meizu/common/recall/InstallView$1;->this$0:Lcom/meizu/common/recall/InstallView;

    invoke-static {v0}, Lcom/meizu/common/recall/InstallView;->access$400(Lcom/meizu/common/recall/InstallView;)Lcom/meizu/common/recall/InstallView$OnInstallViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/meizu/common/recall/InstallView$1;->this$0:Lcom/meizu/common/recall/InstallView;

    invoke-static {v0}, Lcom/meizu/common/recall/InstallView;->access$400(Lcom/meizu/common/recall/InstallView;)Lcom/meizu/common/recall/InstallView$OnInstallViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/meizu/common/recall/InstallView$OnInstallViewListener;->onFindSystemAppPathFailed()V

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/recall/InstallView$1;->this$0:Lcom/meizu/common/recall/InstallView;

    invoke-static {v0}, Lcom/meizu/common/recall/InstallView;->access$300(Lcom/meizu/common/recall/InstallView;)Lcom/meizu/common/recall/RecallUsageCollector;

    move-result-object v0

    const-string v1, "recall_error"

    iget-object v2, p0, Lcom/meizu/common/recall/InstallView$1;->this$0:Lcom/meizu/common/recall/InstallView;

    invoke-static {v2}, Lcom/meizu/common/recall/InstallView;->access$100(Lcom/meizu/common/recall/InstallView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/common/recall/InstallView$1;->this$0:Lcom/meizu/common/recall/InstallView;

    invoke-static {v3}, Lcom/meizu/common/recall/InstallView;->access$200(Lcom/meizu/common/recall/InstallView;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "find app path failed"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/meizu/common/recall/RecallUsageCollector;->onInstallLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    :cond_1
    :goto_0
    return-void

    .line 239
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_3

    .line 240
    iget-object v0, p0, Lcom/meizu/common/recall/InstallView$1;->this$0:Lcom/meizu/common/recall/InstallView;

    iget-object v1, p0, Lcom/meizu/common/recall/InstallView$1;->this$0:Lcom/meizu/common/recall/InstallView;

    invoke-static {v1}, Lcom/meizu/common/recall/InstallView;->access$200(Lcom/meizu/common/recall/InstallView;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/common/recall/InstallView;->access$500(Lcom/meizu/common/recall/InstallView;Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Lcom/meizu/common/recall/InstallView$1;->this$0:Lcom/meizu/common/recall/InstallView;

    invoke-virtual {v0}, Lcom/meizu/common/recall/InstallView;->registerReceiver()V

    .line 243
    :cond_3
    iget-object v0, p0, Lcom/meizu/common/recall/InstallView$1;->this$0:Lcom/meizu/common/recall/InstallView;

    iget-object v1, p0, Lcom/meizu/common/recall/InstallView$1;->this$0:Lcom/meizu/common/recall/InstallView;

    invoke-static {v1}, Lcom/meizu/common/recall/InstallView;->access$200(Lcom/meizu/common/recall/InstallView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/recall/InstallView;->installApplication(Ljava/lang/String;)V

    goto :goto_0

    .line 245
    :cond_4
    iget-object v0, p0, Lcom/meizu/common/recall/InstallView$1;->this$0:Lcom/meizu/common/recall/InstallView;

    invoke-static {v0}, Lcom/meizu/common/recall/InstallView;->access$000(Lcom/meizu/common/recall/InstallView;)Lcom/meizu/common/recall/InstallView$State;

    move-result-object v0

    sget-object v1, Lcom/meizu/common/recall/InstallView$State;->COMPLETE:Lcom/meizu/common/recall/InstallView$State;

    if-ne v0, v1, :cond_1

    .line 246
    iget-object v0, p0, Lcom/meizu/common/recall/InstallView$1;->this$0:Lcom/meizu/common/recall/InstallView;

    invoke-static {v0}, Lcom/meizu/common/recall/InstallView;->access$400(Lcom/meizu/common/recall/InstallView;)Lcom/meizu/common/recall/InstallView$OnInstallViewListener;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 247
    iget-object v0, p0, Lcom/meizu/common/recall/InstallView$1;->this$0:Lcom/meizu/common/recall/InstallView;

    invoke-static {v0}, Lcom/meizu/common/recall/InstallView;->access$400(Lcom/meizu/common/recall/InstallView;)Lcom/meizu/common/recall/InstallView$OnInstallViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/meizu/common/recall/InstallView$OnInstallViewListener;->onOpen()V

    .line 249
    :cond_5
    iget-object v0, p0, Lcom/meizu/common/recall/InstallView$1;->this$0:Lcom/meizu/common/recall/InstallView;

    invoke-static {v0}, Lcom/meizu/common/recall/InstallView;->access$300(Lcom/meizu/common/recall/InstallView;)Lcom/meizu/common/recall/RecallUsageCollector;

    move-result-object v0

    const-string v1, "recall_click_open"

    iget-object v2, p0, Lcom/meizu/common/recall/InstallView$1;->this$0:Lcom/meizu/common/recall/InstallView;

    invoke-static {v2}, Lcom/meizu/common/recall/InstallView;->access$100(Lcom/meizu/common/recall/InstallView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/common/recall/InstallView$1;->this$0:Lcom/meizu/common/recall/InstallView;

    invoke-static {v3}, Lcom/meizu/common/recall/InstallView;->access$200(Lcom/meizu/common/recall/InstallView;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/meizu/common/recall/RecallUsageCollector;->onClickLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
