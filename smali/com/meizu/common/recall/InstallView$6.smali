.class Lcom/meizu/common/recall/InstallView$6;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/recall/InstallView;
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
    .line 714
    iput-object p1, p0, Lcom/meizu/common/recall/InstallView$6;->this$0:Lcom/meizu/common/recall/InstallView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 717
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 718
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 719
    if-nez v0, :cond_1

    .line 730
    :cond_0
    :goto_0
    return-void

    .line 722
    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 723
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 724
    iget-object v1, p0, Lcom/meizu/common/recall/InstallView$6;->this$0:Lcom/meizu/common/recall/InstallView;

    invoke-static {v1}, Lcom/meizu/common/recall/InstallView;->access$200(Lcom/meizu/common/recall/InstallView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 725
    iget-object v0, p0, Lcom/meizu/common/recall/InstallView$6;->this$0:Lcom/meizu/common/recall/InstallView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/meizu/common/recall/InstallView;->access$900(Lcom/meizu/common/recall/InstallView;I)V

    .line 726
    iget-object v0, p0, Lcom/meizu/common/recall/InstallView$6;->this$0:Lcom/meizu/common/recall/InstallView;

    invoke-static {v0}, Lcom/meizu/common/recall/InstallView;->access$1100(Lcom/meizu/common/recall/InstallView;)V

    goto :goto_0
.end method
