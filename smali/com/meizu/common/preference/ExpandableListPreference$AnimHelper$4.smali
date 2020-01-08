.class Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->animateHeightPrt()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;


# direct methods
.method constructor <init>(Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;)V
    .locals 0

    .prologue
    .line 397
    iput-object p1, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper$4;->this$1:Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .prologue
    const/high16 v3, 0x43340000    # 180.0f

    .line 401
    iget-object v0, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper$4;->this$1:Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;

    invoke-static {v0}, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->access$1300(Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;)I

    move-result v0

    iget-object v1, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper$4;->this$1:Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;

    invoke-static {v1}, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->access$1400(Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 402
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper$4;->this$1:Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;

    .line 403
    invoke-static {v2}, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->access$1300(Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;)I

    move-result v2

    sub-int/2addr v0, v2

    .line 402
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 404
    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 405
    iget-object v1, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper$4;->this$1:Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;

    invoke-static {v1}, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->access$1100(Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;)I

    move-result v1

    if-nez v1, :cond_1

    .line 406
    iget-object v1, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper$4;->this$1:Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;

    invoke-static {v1}, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->access$1500(Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;)Landroid/view/View;

    move-result-object v1

    mul-float/2addr v0, v3

    invoke-virtual {v1, v0}, Landroid/view/View;->setRotation(F)V

    .line 410
    :goto_0
    iget-object v0, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper$4;->this$1:Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;

    invoke-static {v0}, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->access$1600(Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 411
    iget-object v0, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper$4;->this$1:Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;

    invoke-static {v0}, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->access$1200(Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isInLayout()Z

    move-result v0

    if-nez v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper$4;->this$1:Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;

    invoke-static {v0}, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->access$1200(Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 414
    :cond_0
    return-void

    .line 408
    :cond_1
    iget-object v1, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper$4;->this$1:Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;

    invoke-static {v1}, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->access$1500(Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;)Landroid/view/View;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v0, v2, v0

    mul-float/2addr v0, v3

    invoke-virtual {v1, v0}, Landroid/view/View;->setRotation(F)V

    goto :goto_0
.end method
