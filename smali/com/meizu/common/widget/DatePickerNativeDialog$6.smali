.class Lcom/meizu/common/widget/DatePickerNativeDialog$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/DatePickerNativeDialog;->buttonInitTranslate(I)V
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
    .line 463
    iput-object p1, p0, Lcom/meizu/common/widget/DatePickerNativeDialog$6;->this$0:Lcom/meizu/common/widget/DatePickerNativeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .prologue
    .line 466
    iget-object v1, p0, Lcom/meizu/common/widget/DatePickerNativeDialog$6;->this$0:Lcom/meizu/common/widget/DatePickerNativeDialog;

    const-string v0, "translationY"

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v0}, Lcom/meizu/common/widget/DatePickerNativeDialog;->access$402(Lcom/meizu/common/widget/DatePickerNativeDialog;F)F

    .line 467
    iget-object v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog$6;->this$0:Lcom/meizu/common/widget/DatePickerNativeDialog;

    invoke-static {v0}, Lcom/meizu/common/widget/DatePickerNativeDialog;->access$1300(Lcom/meizu/common/widget/DatePickerNativeDialog;)V

    .line 468
    return-void
.end method
