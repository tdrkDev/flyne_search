.class Lcom/meizu/common/recall/InstallView$5;
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
    .line 700
    iput-object p1, p0, Lcom/meizu/common/recall/InstallView$5;->this$0:Lcom/meizu/common/recall/InstallView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 703
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/common/recall/InstallView$5;->this$0:Lcom/meizu/common/recall/InstallView;

    invoke-static {v3}, Lcom/meizu/common/recall/InstallView;->access$1000(Lcom/meizu/common/recall/InstallView;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 704
    const-string v2, "android.content.pm.extra.STATUS"

    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 705
    const-string v3, "android.content.pm.extra.STATUS_MESSAGE"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 706
    if-nez v3, :cond_1

    const-string v3, ""

    .line 707
    :goto_0
    if-nez v2, :cond_2

    .line 708
    :goto_1
    iget-object v1, p0, Lcom/meizu/common/recall/InstallView$5;->this$0:Lcom/meizu/common/recall/InstallView;

    invoke-static {v1, v0}, Lcom/meizu/common/recall/InstallView;->access$900(Lcom/meizu/common/recall/InstallView;I)V

    .line 709
    iget-object v0, p0, Lcom/meizu/common/recall/InstallView$5;->this$0:Lcom/meizu/common/recall/InstallView;

    invoke-static {v0}, Lcom/meizu/common/recall/InstallView;->access$1100(Lcom/meizu/common/recall/InstallView;)V

    .line 711
    :cond_0
    return-void

    .line 706
    :cond_1
    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 707
    goto :goto_1
.end method
