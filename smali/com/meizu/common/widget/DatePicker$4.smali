.class Lcom/meizu/common/widget/DatePicker$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/DatePicker;->reorderPickers([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/DatePicker;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/DatePicker;)V
    .locals 0

    .prologue
    .line 811
    iput-object p1, p0, Lcom/meizu/common/widget/DatePicker$4;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 814
    iget-object v1, p0, Lcom/meizu/common/widget/DatePicker$4;->this$0:Lcom/meizu/common/widget/DatePicker;

    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker$4;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v2}, Lcom/meizu/common/widget/DatePicker;->access$2100(Lcom/meizu/common/widget/DatePicker;)Lcom/meizu/common/widget/ScrollTextView;

    move-result-object v2

    if-eqz v2, :cond_0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_0

    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker$4;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-static {v2}, Lcom/meizu/common/widget/DatePicker;->access$2100(Lcom/meizu/common/widget/DatePicker;)Lcom/meizu/common/widget/ScrollTextView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/meizu/common/widget/ScrollTextView;->getLayoutDirection()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, v1, Lcom/meizu/common/widget/DatePicker;->mIsLayoutRtl:Z

    .line 859
    return-void

    .line 814
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
