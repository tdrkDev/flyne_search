.class Lcom/meizu/common/app/SlideNotice$SlideViewController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/app/SlideNotice$SlideViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/common/app/SlideNotice$SlideViewController;


# direct methods
.method constructor <init>(Lcom/meizu/common/app/SlideNotice$SlideViewController;)V
    .locals 0

    .prologue
    .line 623
    iput-object p1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController$1;->this$1:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 628
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController$1;->this$1:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    invoke-static {v0}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->access$100(Lcom/meizu/common/app/SlideNotice$SlideViewController;)Landroid/os/Message;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 629
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController$1;->this$1:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    invoke-static {v0}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->access$100(Lcom/meizu/common/app/SlideNotice$SlideViewController;)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 633
    :goto_0
    if-eqz v0, :cond_0

    .line 634
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 636
    :cond_0
    return-void

    .line 631
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
