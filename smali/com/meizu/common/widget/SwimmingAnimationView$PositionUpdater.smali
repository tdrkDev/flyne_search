.class Lcom/meizu/common/widget/SwimmingAnimationView$PositionUpdater;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/SwimmingAnimationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PositionUpdater"
.end annotation


# instance fields
.field private firstDelay:J

.field private firstDistance:F

.field private firstDownInterpolator:Landroid/view/animation/Interpolator;

.field private firstDownTime:J

.field private firstUpInterpolator:Landroid/view/animation/Interpolator;

.field private firstUpTime:J

.field private mOnChangeListener:Lcom/meizu/common/widget/SwimmingAnimationView$onPositionChange;

.field private secondDelay:J

.field private secondDistance:F

.field private secondDownInterpolator:Landroid/view/animation/Interpolator;

.field private secondDownTime:J

.field private secondUpInterpolator:Landroid/view/animation/Interpolator;

.field private secondUpTime:J

.field private thirdDelay:J

.field private thirdDistance:F

.field private thirdDownInterpolator:Landroid/view/animation/Interpolator;

.field private thirdDownTime:J

.field private thirdUpInterpolator:Landroid/view/animation/Interpolator;

.field private thirdUpTime:J


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private calcPosition(FJJJFLandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;)F
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 254
    long-to-float v2, p2

    sub-float v2, p1, v2

    .line 255
    cmpg-float v3, v2, v6

    if-gez v3, :cond_0

    .line 256
    add-long v4, p4, p6

    long-to-float v3, v4

    add-float/2addr v2, v3

    .line 258
    :cond_0
    long-to-float v3, p4

    cmpg-float v3, v2, v3

    if-gez v3, :cond_1

    .line 259
    long-to-float v3, p4

    div-float/2addr v2, v3

    move/from16 v0, p8

    move-object/from16 v1, p9

    invoke-direct {p0, v6, v0, v1, v2}, Lcom/meizu/common/widget/SwimmingAnimationView$PositionUpdater;->getNewPosition(FFLandroid/view/animation/Interpolator;F)F

    move-result v2

    .line 261
    :goto_0
    return v2

    :cond_1
    long-to-float v3, p4

    sub-float/2addr v2, v3

    long-to-float v3, p6

    div-float/2addr v2, v3

    move/from16 v0, p8

    move-object/from16 v1, p10

    invoke-direct {p0, v0, v6, v1, v2}, Lcom/meizu/common/widget/SwimmingAnimationView$PositionUpdater;->getNewPosition(FFLandroid/view/animation/Interpolator;F)F

    move-result v2

    goto :goto_0
.end method

.method private getNewPosition(FFLandroid/view/animation/Interpolator;F)F
    .locals 2

    .prologue
    .line 266
    sub-float v0, p2, p1

    invoke-interface {p3, p4}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    mul-float/2addr v0, v1

    add-float/2addr v0, p1

    return v0
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 13

    .prologue
    .line 218
    iget-object v0, p0, Lcom/meizu/common/widget/SwimmingAnimationView$PositionUpdater;->mOnChangeListener:Lcom/meizu/common/widget/SwimmingAnimationView$onPositionChange;

    if-nez v0, :cond_0

    .line 245
    :goto_0
    return-void

    .line 222
    :cond_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 223
    iget-wide v2, p0, Lcom/meizu/common/widget/SwimmingAnimationView$PositionUpdater;->firstDelay:J

    iget-wide v4, p0, Lcom/meizu/common/widget/SwimmingAnimationView$PositionUpdater;->firstDownTime:J

    iget-wide v6, p0, Lcom/meizu/common/widget/SwimmingAnimationView$PositionUpdater;->firstUpTime:J

    iget v8, p0, Lcom/meizu/common/widget/SwimmingAnimationView$PositionUpdater;->firstDistance:F

    iget-object v9, p0, Lcom/meizu/common/widget/SwimmingAnimationView$PositionUpdater;->firstDownInterpolator:Landroid/view/animation/Interpolator;

    iget-object v10, p0, Lcom/meizu/common/widget/SwimmingAnimationView$PositionUpdater;->firstUpInterpolator:Landroid/view/animation/Interpolator;

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/meizu/common/widget/SwimmingAnimationView$PositionUpdater;->calcPosition(FJJJFLandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;)F

    move-result v11

    .line 230
    iget-wide v2, p0, Lcom/meizu/common/widget/SwimmingAnimationView$PositionUpdater;->secondDelay:J

    iget-wide v4, p0, Lcom/meizu/common/widget/SwimmingAnimationView$PositionUpdater;->secondDownTime:J

    iget-wide v6, p0, Lcom/meizu/common/widget/SwimmingAnimationView$PositionUpdater;->secondUpTime:J

    iget v8, p0, Lcom/meizu/common/widget/SwimmingAnimationView$PositionUpdater;->secondDistance:F

    iget-object v9, p0, Lcom/meizu/common/widget/SwimmingAnimationView$PositionUpdater;->secondDownInterpolator:Landroid/view/animation/Interpolator;

    iget-object v10, p0, Lcom/meizu/common/widget/SwimmingAnimationView$PositionUpdater;->secondUpInterpolator:Landroid/view/animation/Interpolator;

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/meizu/common/widget/SwimmingAnimationView$PositionUpdater;->calcPosition(FJJJFLandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;)F

    move-result v12

    .line 237
    iget-wide v2, p0, Lcom/meizu/common/widget/SwimmingAnimationView$PositionUpdater;->thirdDelay:J

    iget-wide v4, p0, Lcom/meizu/common/widget/SwimmingAnimationView$PositionUpdater;->thirdDownTime:J

    iget-wide v6, p0, Lcom/meizu/common/widget/SwimmingAnimationView$PositionUpdater;->thirdUpTime:J

    iget v8, p0, Lcom/meizu/common/widget/SwimmingAnimationView$PositionUpdater;->thirdDistance:F

    iget-object v9, p0, Lcom/meizu/common/widget/SwimmingAnimationView$PositionUpdater;->thirdDownInterpolator:Landroid/view/animation/Interpolator;

    iget-object v10, p0, Lcom/meizu/common/widget/SwimmingAnimationView$PositionUpdater;->thirdUpInterpolator:Landroid/view/animation/Interpolator;

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/meizu/common/widget/SwimmingAnimationView$PositionUpdater;->calcPosition(FJJJFLandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;)F

    move-result v0

    .line 244
    iget-object v1, p0, Lcom/meizu/common/widget/SwimmingAnimationView$PositionUpdater;->mOnChangeListener:Lcom/meizu/common/widget/SwimmingAnimationView$onPositionChange;

    invoke-interface {v1, v11, v12, v0}, Lcom/meizu/common/widget/SwimmingAnimationView$onPositionChange;->onChange(FFF)V

    goto :goto_0
.end method

.method public setFirstPosition(FJLandroid/view/animation/Interpolator;JLandroid/view/animation/Interpolator;J)V
    .locals 0

    .prologue
    .line 176
    iput p1, p0, Lcom/meizu/common/widget/SwimmingAnimationView$PositionUpdater;->firstDistance:F

    .line 177
    iput-wide p2, p0, Lcom/meizu/common/widget/SwimmingAnimationView$PositionUpdater;->firstDownTime:J

    .line 178
    iput-object p4, p0, Lcom/meizu/common/widget/SwimmingAnimationView$PositionUpdater;->firstDownInterpolator:Landroid/view/animation/Interpolator;

    .line 179
    iput-wide p5, p0, Lcom/meizu/common/widget/SwimmingAnimationView$PositionUpdater;->firstUpTime:J

    .line 180
    iput-object p7, p0, Lcom/meizu/common/widget/SwimmingAnimationView$PositionUpdater;->firstUpInterpolator:Landroid/view/animation/Interpolator;

    .line 181
    iput-wide p8, p0, Lcom/meizu/common/widget/SwimmingAnimationView$PositionUpdater;->firstDelay:J

    .line 182
    return-void
.end method

.method public setOnChangeListener(Lcom/meizu/common/widget/SwimmingAnimationView$onPositionChange;)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lcom/meizu/common/widget/SwimmingAnimationView$PositionUpdater;->mOnChangeListener:Lcom/meizu/common/widget/SwimmingAnimationView$onPositionChange;

    .line 214
    return-void
.end method

.method public setSecondPosition(FJLandroid/view/animation/Interpolator;JLandroid/view/animation/Interpolator;J)V
    .locals 0

    .prologue
    .line 190
    iput p1, p0, Lcom/meizu/common/widget/SwimmingAnimationView$PositionUpdater;->secondDistance:F

    .line 191
    iput-wide p2, p0, Lcom/meizu/common/widget/SwimmingAnimationView$PositionUpdater;->secondDownTime:J

    .line 192
    iput-object p4, p0, Lcom/meizu/common/widget/SwimmingAnimationView$PositionUpdater;->secondDownInterpolator:Landroid/view/animation/Interpolator;

    .line 193
    iput-wide p5, p0, Lcom/meizu/common/widget/SwimmingAnimationView$PositionUpdater;->secondUpTime:J

    .line 194
    iput-object p7, p0, Lcom/meizu/common/widget/SwimmingAnimationView$PositionUpdater;->secondUpInterpolator:Landroid/view/animation/Interpolator;

    .line 195
    iput-wide p8, p0, Lcom/meizu/common/widget/SwimmingAnimationView$PositionUpdater;->secondDelay:J

    .line 196
    return-void
.end method

.method public setThirdPosition(FJLandroid/view/animation/Interpolator;JLandroid/view/animation/Interpolator;J)V
    .locals 0

    .prologue
    .line 204
    iput p1, p0, Lcom/meizu/common/widget/SwimmingAnimationView$PositionUpdater;->thirdDistance:F

    .line 205
    iput-wide p2, p0, Lcom/meizu/common/widget/SwimmingAnimationView$PositionUpdater;->thirdDownTime:J

    .line 206
    iput-object p4, p0, Lcom/meizu/common/widget/SwimmingAnimationView$PositionUpdater;->thirdDownInterpolator:Landroid/view/animation/Interpolator;

    .line 207
    iput-wide p5, p0, Lcom/meizu/common/widget/SwimmingAnimationView$PositionUpdater;->thirdUpTime:J

    .line 208
    iput-object p7, p0, Lcom/meizu/common/widget/SwimmingAnimationView$PositionUpdater;->thirdUpInterpolator:Landroid/view/animation/Interpolator;

    .line 209
    iput-wide p8, p0, Lcom/meizu/common/widget/SwimmingAnimationView$PositionUpdater;->thirdDelay:J

    .line 210
    return-void
.end method
