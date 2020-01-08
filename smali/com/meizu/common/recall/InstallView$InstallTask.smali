.class Lcom/meizu/common/recall/InstallView$InstallTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/recall/InstallView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InstallTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/recall/InstallView;


# direct methods
.method private constructor <init>(Lcom/meizu/common/recall/InstallView;)V
    .locals 0

    .prologue
    .line 543
    iput-object p1, p0, Lcom/meizu/common/recall/InstallView$InstallTask;->this$0:Lcom/meizu/common/recall/InstallView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/common/recall/InstallView;Lcom/meizu/common/recall/InstallView$1;)V
    .locals 0

    .prologue
    .line 543
    invoke-direct {p0, p1}, Lcom/meizu/common/recall/InstallView$InstallTask;-><init>(Lcom/meizu/common/recall/InstallView;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 547
    iget-object v0, p0, Lcom/meizu/common/recall/InstallView$InstallTask;->this$0:Lcom/meizu/common/recall/InstallView;

    invoke-static {v0}, Lcom/meizu/common/recall/InstallView;->access$700(Lcom/meizu/common/recall/InstallView;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-static {v0, v1}, Lcom/meizu/common/recall/InstallView;->access$800(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 543
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/meizu/common/recall/InstallView$InstallTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 2

    .prologue
    .line 561
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 562
    iget-object v0, p0, Lcom/meizu/common/recall/InstallView$InstallTask;->this$0:Lcom/meizu/common/recall/InstallView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/meizu/common/recall/InstallView;->access$900(Lcom/meizu/common/recall/InstallView;I)V

    .line 563
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 543
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/meizu/common/recall/InstallView$InstallTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 552
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 553
    iget-object v0, p0, Lcom/meizu/common/recall/InstallView$InstallTask;->this$0:Lcom/meizu/common/recall/InstallView;

    sget-object v1, Lcom/meizu/common/recall/InstallView$State;->INSTALLING:Lcom/meizu/common/recall/InstallView$State;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/meizu/common/recall/InstallView;->setState(Lcom/meizu/common/recall/InstallView$State;Z)V

    .line 554
    iget-object v0, p0, Lcom/meizu/common/recall/InstallView$InstallTask;->this$0:Lcom/meizu/common/recall/InstallView;

    invoke-static {v0}, Lcom/meizu/common/recall/InstallView;->access$400(Lcom/meizu/common/recall/InstallView;)Lcom/meizu/common/recall/InstallView$OnInstallViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 555
    iget-object v0, p0, Lcom/meizu/common/recall/InstallView$InstallTask;->this$0:Lcom/meizu/common/recall/InstallView;

    invoke-static {v0}, Lcom/meizu/common/recall/InstallView;->access$400(Lcom/meizu/common/recall/InstallView;)Lcom/meizu/common/recall/InstallView$OnInstallViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/meizu/common/recall/InstallView$OnInstallViewListener;->onStartInstall()V

    .line 557
    :cond_0
    return-void
.end method
