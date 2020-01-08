.class Lcom/meizu/common/widget/CustomDatePickerDialog$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/CustomDatePickerDialog;->initTabView(Landroid/content/Context;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/CustomDatePickerDialog;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/CustomDatePickerDialog;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$2;->this$0:Lcom/meizu/common/widget/CustomDatePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 228
    iget-object v1, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$2;->this$0:Lcom/meizu/common/widget/CustomDatePickerDialog;

    iget-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$2;->this$0:Lcom/meizu/common/widget/CustomDatePickerDialog;

    invoke-static {v0}, Lcom/meizu/common/widget/CustomDatePickerDialog;->access$000(Lcom/meizu/common/widget/CustomDatePickerDialog;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/meizu/common/widget/CustomDatePickerDialog;->access$002(Lcom/meizu/common/widget/CustomDatePickerDialog;Z)Z

    .line 229
    iget-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$2;->this$0:Lcom/meizu/common/widget/CustomDatePickerDialog;

    invoke-static {v0}, Lcom/meizu/common/widget/CustomDatePickerDialog;->access$100(Lcom/meizu/common/widget/CustomDatePickerDialog;)V

    .line 230
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "mx4pro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 231
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/meizu/common/widget/CustomDatePickerDialog$2$1;

    invoke-direct {v1, p0}, Lcom/meizu/common/widget/CustomDatePickerDialog$2$1;-><init>(Lcom/meizu/common/widget/CustomDatePickerDialog$2;)V

    iget-object v2, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$2;->this$0:Lcom/meizu/common/widget/CustomDatePickerDialog;

    .line 237
    invoke-static {v2}, Lcom/meizu/common/widget/CustomDatePickerDialog;->access$300(Lcom/meizu/common/widget/CustomDatePickerDialog;)J

    move-result-wide v2

    .line 231
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 241
    :goto_1
    return-void

    .line 228
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 239
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$2;->this$0:Lcom/meizu/common/widget/CustomDatePickerDialog;

    invoke-static {v0}, Lcom/meizu/common/widget/CustomDatePickerDialog;->access$200(Lcom/meizu/common/widget/CustomDatePickerDialog;)Lcom/meizu/common/widget/DatePicker;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$2;->this$0:Lcom/meizu/common/widget/CustomDatePickerDialog;

    invoke-static {v1}, Lcom/meizu/common/widget/CustomDatePickerDialog;->access$000(Lcom/meizu/common/widget/CustomDatePickerDialog;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/DatePicker;->setLunar(Z)V

    goto :goto_1
.end method
