.class Lcom/meizu/common/widget/DatePickerNativeDialog$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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
    .line 289
    iput-object p1, p0, Lcom/meizu/common/widget/DatePickerNativeDialog$2;->this$0:Lcom/meizu/common/widget/DatePickerNativeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .prologue
    .line 294
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 295
    iget-object v1, p0, Lcom/meizu/common/widget/DatePickerNativeDialog$2;->this$0:Lcom/meizu/common/widget/DatePickerNativeDialog;

    invoke-static {v1}, Lcom/meizu/common/widget/DatePickerNativeDialog;->access$000(Lcom/meizu/common/widget/DatePickerNativeDialog;)Lcom/meizu/common/widget/DatePickerNativeDialog$MonthAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/meizu/common/widget/DatePickerNativeDialog$MonthAdapter;->setPaintAlpha(F)V

    .line 296
    iget-object v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog$2;->this$0:Lcom/meizu/common/widget/DatePickerNativeDialog;

    invoke-static {v0}, Lcom/meizu/common/widget/DatePickerNativeDialog;->access$000(Lcom/meizu/common/widget/DatePickerNativeDialog;)Lcom/meizu/common/widget/DatePickerNativeDialog$MonthAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/common/widget/DatePickerNativeDialog$MonthAdapter;->notifyDataSetChanged()V

    .line 297
    return-void
.end method
