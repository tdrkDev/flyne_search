.class Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/AnimCheckBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CheckBoxAnimHelper"
.end annotation


# instance fields
.field private DEBUG:Z

.field private mAnimator1:Landroid/animation/ObjectAnimator;

.field private mAnimator2:Landroid/animation/ObjectAnimator;

.field private mAnimator3:Landroid/animation/ValueAnimator;

.field private mAnimatorSet:Landroid/animation/AnimatorSet;

.field private mHasInit:Z

.field private mInterpolator1:Landroid/animation/TimeInterpolator;

.field private mInterpolator2:Landroid/animation/TimeInterpolator;

.field private mInterpolator3:Landroid/animation/TimeInterpolator;

.field private mInterpolator4:Landroid/animation/TimeInterpolator;

.field private mIsAnimation:Z

.field private mTarget:Lcom/meizu/common/widget/AnimCheckBox;

.field private mTargetActivatedState:Z

.field private mTargetChecekedState:Z


# direct methods
.method public constructor <init>(Lcom/meizu/common/widget/AnimCheckBox;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-boolean v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->DEBUG:Z

    .line 141
    iput-boolean v1, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mIsAnimation:Z

    .line 142
    iput-boolean v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mHasInit:Z

    .line 148
    iput-object p1, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mTarget:Lcom/meizu/common/widget/AnimCheckBox;

    .line 149
    invoke-direct {p0}, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->init()V

    .line 150
    iput-boolean v1, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mHasInit:Z

    .line 151
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;)Z
    .locals 1

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mTargetChecekedState:Z

    return v0
.end method

.method static synthetic access$100(Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;)Lcom/meizu/common/widget/AnimCheckBox;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mTarget:Lcom/meizu/common/widget/AnimCheckBox;

    return-object v0
.end method

.method static synthetic access$200(Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;)Z
    .locals 1

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mTargetActivatedState:Z

    return v0
.end method

.method static synthetic access$300(Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;)Landroid/animation/ObjectAnimator;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimator2:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method private init()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x2

    const/high16 v4, 0x3f800000    # 1.0f

    const v3, 0x3dcccccd    # 0.1f

    .line 154
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 155
    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 156
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3d50e560    # 0.051f

    const v2, 0x3c449ba6    # 0.012f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mInterpolator1:Landroid/animation/TimeInterpolator;

    .line 157
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3d50e560    # 0.051f

    const v2, 0x3c449ba6    # 0.012f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mInterpolator2:Landroid/animation/TimeInterpolator;

    .line 158
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e4ccccd    # 0.2f

    const v2, 0x3d762b6b    # 0.0601f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mInterpolator3:Landroid/animation/TimeInterpolator;

    .line 159
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mInterpolator4:Landroid/animation/TimeInterpolator;

    .line 164
    :goto_0
    const-string v0, "scaleY"

    new-array v1, v5, [F

    fill-array-data v1, :array_0

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 165
    iget-object v1, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mTarget:Lcom/meizu/common/widget/AnimCheckBox;

    new-array v2, v7, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v2, v6

    invoke-static {v1, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimator1:Landroid/animation/ObjectAnimator;

    .line 166
    iget-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimator1:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mInterpolator1:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 167
    iget-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimator1:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper$1;

    invoke-direct {v1, p0}, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper$1;-><init>(Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 183
    const-string v0, "scaleY"

    new-array v1, v5, [F

    fill-array-data v1, :array_1

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 184
    iget-object v1, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mTarget:Lcom/meizu/common/widget/AnimCheckBox;

    new-array v2, v7, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v2, v6

    invoke-static {v1, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimator2:Landroid/animation/ObjectAnimator;

    .line 185
    iget-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimator2:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mInterpolator2:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 187
    new-array v0, v5, [F

    fill-array-data v0, :array_2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimator3:Landroid/animation/ValueAnimator;

    .line 188
    iget-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimator3:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mInterpolator3:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 189
    iget-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimator3:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper$2;

    invoke-direct {v1, p0}, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper$2;-><init>(Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 202
    iget-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimator3:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper$3;

    invoke-direct {v1, p0}, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper$3;-><init>(Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 212
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 213
    iget-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v1, v5, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimator1:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimator3:Landroid/animation/ValueAnimator;

    aput-object v2, v1, v7

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 214
    return-void

    .line 161
    :cond_0
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mInterpolator4:Landroid/animation/TimeInterpolator;

    iput-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mInterpolator3:Landroid/animation/TimeInterpolator;

    iput-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mInterpolator2:Landroid/animation/TimeInterpolator;

    iput-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mInterpolator1:Landroid/animation/TimeInterpolator;

    goto/16 :goto_0

    .line 164
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 183
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 187
    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public setActivated(Z)V
    .locals 5

    .prologue
    const/4 v3, 0x2

    .line 258
    iput-boolean p1, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mTargetActivatedState:Z

    .line 259
    iget-boolean v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mHasInit:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mIsAnimation:Z

    if-nez v0, :cond_2

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mTarget:Lcom/meizu/common/widget/AnimCheckBox;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/AnimCheckBox;->superSetActivate(Z)V

    .line 294
    :cond_1
    :goto_0
    return-void

    .line 263
    :cond_2
    iget-boolean v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 264
    const-string v0, "xx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setActivated activated = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mTarget:Lcom/meizu/common/widget/AnimCheckBox;

    invoke-virtual {v2}, Lcom/meizu/common/widget/AnimCheckBox;->isActivated()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mTargetActivatedState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mTargetChecekedState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mTargetChecekedState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mTarget:Lcom/meizu/common/widget/AnimCheckBox;

    .line 266
    invoke-virtual {v2}, Lcom/meizu/common/widget/AnimCheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 267
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimator2:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 264
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :cond_3
    iget-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mTarget:Lcom/meizu/common/widget/AnimCheckBox;

    invoke-virtual {v0}, Lcom/meizu/common/widget/AnimCheckBox;->isActivated()Z

    move-result v0

    if-eq p1, v0, :cond_1

    .line 270
    if-nez p1, :cond_4

    iget-boolean v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mTargetChecekedState:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mTarget:Lcom/meizu/common/widget/AnimCheckBox;

    invoke-virtual {v0}, Lcom/meizu/common/widget/AnimCheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    .line 273
    :cond_4
    iget-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mTarget:Lcom/meizu/common/widget/AnimCheckBox;

    invoke-virtual {v0}, Lcom/meizu/common/widget/AnimCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mTargetChecekedState:Z

    if-eqz v0, :cond_5

    .line 274
    iget-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mTarget:Lcom/meizu/common/widget/AnimCheckBox;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/AnimCheckBox;->superSetActivate(Z)V

    .line 275
    iget-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimator2:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 276
    sget-object v0, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v1, v3, [F

    fill-array-data v1, :array_0

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 278
    sget-object v1, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v2, v3, [F

    fill-array-data v2, :array_1

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 280
    iget-object v2, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mTarget:Lcom/meizu/common/widget/AnimCheckBox;

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 282
    const-wide/16 v2, 0x28

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mInterpolator4:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 283
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto/16 :goto_0

    .line 286
    :cond_5
    if-nez p1, :cond_1

    .line 287
    iget-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 288
    iget-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimator2:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 289
    iget-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mTarget:Lcom/meizu/common/widget/AnimCheckBox;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/AnimCheckBox;->superSetActivate(Z)V

    goto/16 :goto_0

    .line 276
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 278
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setChecked(Z)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x1dc

    .line 217
    iget-boolean v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mHasInit:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mIsAnimation:Z

    if-nez v0, :cond_2

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mTarget:Lcom/meizu/common/widget/AnimCheckBox;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/AnimCheckBox;->superSetCheck(Z)V

    .line 219
    iput-boolean p1, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mTargetChecekedState:Z

    .line 255
    :cond_1
    :goto_0
    return-void

    .line 222
    :cond_2
    iget-boolean v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 223
    const-string v0, "xx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setChecked checked = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mTargetChecekedState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mTargetChecekedState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 225
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimator2:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 223
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_3
    iget-boolean v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mTargetChecekedState:Z

    if-eq p1, v0, :cond_1

    .line 228
    iput-boolean p1, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mTargetChecekedState:Z

    .line 229
    if-eqz p1, :cond_5

    .line 230
    iget-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimator2:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_4

    .line 231
    iget-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimator1:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 232
    iget-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimator2:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0xe6

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 233
    iget-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimator3:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x17c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 234
    iget-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 237
    :cond_4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mTargetChecekedState:Z

    .line 238
    iget-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 239
    iget-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimator2:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 240
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->setChecked(Z)V

    goto/16 :goto_0

    .line 243
    :cond_5
    iget-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimator2:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_6

    .line 244
    iget-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimator1:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 245
    iget-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimator2:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 246
    iget-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimator3:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 247
    iget-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 249
    :cond_6
    iget-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mTarget:Lcom/meizu/common/widget/AnimCheckBox;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/AnimCheckBox;->superSetCheck(Z)V

    .line 250
    iget-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 251
    iget-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mAnimator2:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    goto/16 :goto_0
.end method

.method public setIsAnimation(Z)V
    .locals 0

    .prologue
    .line 297
    iput-boolean p1, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->mIsAnimation:Z

    .line 298
    return-void
.end method
