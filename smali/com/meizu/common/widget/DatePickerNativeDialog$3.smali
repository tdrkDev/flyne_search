.class Lcom/meizu/common/widget/DatePickerNativeDialog$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/DatePickerNativeDialog;->doAlphaAnim(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/DatePickerNativeDialog;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/DatePickerNativeDialog;)V
    .locals 0

    .prologue
    .line 300
    iput-object p1, p0, Lcom/meizu/common/widget/DatePickerNativeDialog$3;->this$0:Lcom/meizu/common/widget/DatePickerNativeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 317
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 308
    iget-object v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog$3;->this$0:Lcom/meizu/common/widget/DatePickerNativeDialog;

    invoke-static {v0}, Lcom/meizu/common/widget/DatePickerNativeDialog;->access$100(Lcom/meizu/common/widget/DatePickerNativeDialog;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog$3;->this$0:Lcom/meizu/common/widget/DatePickerNativeDialog;

    invoke-static {v0}, Lcom/meizu/common/widget/DatePickerNativeDialog;->access$000(Lcom/meizu/common/widget/DatePickerNativeDialog;)Lcom/meizu/common/widget/DatePickerNativeDialog$MonthAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/common/widget/DatePickerNativeDialog$3;->this$0:Lcom/meizu/common/widget/DatePickerNativeDialog;

    invoke-static {v1}, Lcom/meizu/common/widget/DatePickerNativeDialog;->access$100(Lcom/meizu/common/widget/DatePickerNativeDialog;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/DatePickerNativeDialog$MonthAdapter;->setMonthShowLunar(Z)V

    .line 310
    iget-object v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog$3;->this$0:Lcom/meizu/common/widget/DatePickerNativeDialog;

    invoke-static {v0}, Lcom/meizu/common/widget/DatePickerNativeDialog;->access$000(Lcom/meizu/common/widget/DatePickerNativeDialog;)Lcom/meizu/common/widget/DatePickerNativeDialog$MonthAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/common/widget/DatePickerNativeDialog$MonthAdapter;->notifyDataSetChanged()V

    .line 312
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 322
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 304
    return-void
.end method
