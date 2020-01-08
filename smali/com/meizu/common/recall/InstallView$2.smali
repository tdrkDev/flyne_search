.class Lcom/meizu/common/recall/InstallView$2;
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
    .line 254
    iput-object p1, p0, Lcom/meizu/common/recall/InstallView$2;->this$0:Lcom/meizu/common/recall/InstallView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 257
    iget-object v0, p0, Lcom/meizu/common/recall/InstallView$2;->this$0:Lcom/meizu/common/recall/InstallView;

    invoke-static {v0}, Lcom/meizu/common/recall/InstallView;->access$400(Lcom/meizu/common/recall/InstallView;)Lcom/meizu/common/recall/InstallView$OnInstallViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/meizu/common/recall/InstallView$2;->this$0:Lcom/meizu/common/recall/InstallView;

    invoke-static {v0}, Lcom/meizu/common/recall/InstallView;->access$400(Lcom/meizu/common/recall/InstallView;)Lcom/meizu/common/recall/InstallView$OnInstallViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/meizu/common/recall/InstallView$OnInstallViewListener;->onClose()V

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/recall/InstallView$2;->this$0:Lcom/meizu/common/recall/InstallView;

    invoke-static {v0}, Lcom/meizu/common/recall/InstallView;->access$300(Lcom/meizu/common/recall/InstallView;)Lcom/meizu/common/recall/RecallUsageCollector;

    move-result-object v0

    const-string v1, "recall_click_close"

    iget-object v2, p0, Lcom/meizu/common/recall/InstallView$2;->this$0:Lcom/meizu/common/recall/InstallView;

    invoke-static {v2}, Lcom/meizu/common/recall/InstallView;->access$100(Lcom/meizu/common/recall/InstallView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/common/recall/InstallView$2;->this$0:Lcom/meizu/common/recall/InstallView;

    invoke-static {v3}, Lcom/meizu/common/recall/InstallView;->access$200(Lcom/meizu/common/recall/InstallView;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/meizu/common/recall/RecallUsageCollector;->onClickLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    return-void
.end method
