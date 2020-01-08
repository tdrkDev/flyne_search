.class public Lcom/meizu/common/widget/EnhanceGallery;
.super Lcom/meizu/common/widget/AbsSpinner;
.source "SourceFile"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/EnhanceGallery$SpinnerItemAccessibilityDelegate;,
        Lcom/meizu/common/widget/EnhanceGallery$PerformClick;,
        Lcom/meizu/common/widget/EnhanceGallery$WindowRunnnable;,
        Lcom/meizu/common/widget/EnhanceGallery$AdapterContextMenuInfo;,
        Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;,
        Lcom/meizu/common/widget/EnhanceGallery$DragShadowItem;,
        Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeWrapper;,
        Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeListener;,
        Lcom/meizu/common/widget/EnhanceGallery$OnScrollListener;,
        Lcom/meizu/common/widget/EnhanceGallery$LayoutParams;,
        Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;
    }
.end annotation


# static fields
.field private static final CHECK_POSITION_SEARCH_DISTANCE:I = 0x14

.field public static final CHOICE_MODE_MULTIPLE:I = 0x2

.field public static final CHOICE_MODE_NONE:I = 0x0

.field public static final CHOICE_MODE_SINGLE:I = 0x1

.field private static final MIN_FLING_VELOCITY:I = 0x5dc

.field private static final SCROLL_TO_FLING_UNCERTAINTY_TIMEOUT:I = 0xfa

.field static final TOUCH_MODE_DOWN:I = 0x0

.field static final TOUCH_MODE_FLING:I = 0x2

.field static final TOUCH_MODE_OVERFLING:I = 0x4

.field static final TOUCH_MODE_OVERSCROLL:I = 0x3

.field static final TOUCH_MODE_REST:I = -0x1

.field static final TOUCH_MODE_SCROLL:I = 0x1


# instance fields
.field private mAccDelegateStates:Z

.field private mAccessibilityDelegate:Lcom/meizu/common/widget/EnhanceGallery$SpinnerItemAccessibilityDelegate;

.field private mAnimationDuration:I

.field private mChangeChildAlphaWhenDragView:Z

.field private mCheckStates:Landroid/util/SparseBooleanArray;

.field mCheckedIdStates:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckedItemCount:I

.field private mChildWidth:I

.field private mChoiceActionMode:Landroid/view/ActionMode;

.field private mChoiceMode:I

.field private mContextMenuInfo:Lcom/meizu/common/widget/EnhanceGallery$AdapterContextMenuInfo;

.field private mCurrentOverScrollDistance:I

.field private mDefaultMaxOverScrollDistance:I

.field private mDeltaLength:I

.field private mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

.field private mDownFirstPosition:I

.field private mDownLastPosition:I

.field private mDownTouchPosition:I

.field private mDownTouchView:Landroid/view/View;

.field protected mDragAndDropPosition:I

.field private mDragEnable:Z

.field private mDragOffsetX:I

.field private mDragOffsetY:I

.field private mDragScrollY:I

.field private mDragViewBackground:I

.field private mDragViewBackgroundDelete:I

.field private mDragViewBackgroundFilter:I

.field private mFlingRunnable:Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGravity:I

.field private mIsFirstScroll:Z

.field private mIsRtl:Z

.field private mLastScrollState:I

.field private mMaxOverScrollDistance:I

.field mMotionX:I

.field mMotionY:I

.field mMultiChoiceModeCallback:Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeWrapper;

.field private mOnScrollListener:Lcom/meizu/common/widget/EnhanceGallery$OnScrollListener;

.field private mPerformClick:Lcom/meizu/common/widget/EnhanceGallery$PerformClick;

.field private mScrollEnableWhenLessContent:Z

.field private mSelectedChild:Landroid/view/View;

.field private mShadowBuilder:Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;

.field private mShouldCallbackDuringFling:Z

.field private mShouldCallbackOnUnselectedItemClick:Z

.field private mShouldStopFling:Z

.field private mSpacing:I

.field private mSuppressSelectionChanged:Z

.field private mTouchFrame:Landroid/graphics/Rect;

.field private mTouchMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 377
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/EnhanceGallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 378
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 381
    sget v0, Lcom/meizu/common/R$attr;->MeizuCommon_EnhanceGalleryStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/EnhanceGallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 382
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 385
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/common/widget/AbsSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 192
    iput v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mTouchMode:I

    .line 197
    iput v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    .line 203
    const/16 v0, 0xfa

    iput v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mAnimationDuration:I

    .line 225
    new-instance v0, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;

    invoke-direct {v0, p0}, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;-><init>(Lcom/meizu/common/widget/EnhanceGallery;)V

    iput-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFlingRunnable:Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;

    .line 231
    new-instance v0, Lcom/meizu/common/widget/EnhanceGallery$1;

    invoke-direct {v0, p0}, Lcom/meizu/common/widget/EnhanceGallery$1;-><init>(Lcom/meizu/common/widget/EnhanceGallery;)V

    iput-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    .line 256
    iput-boolean v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mShouldCallbackDuringFling:Z

    .line 261
    iput-boolean v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mShouldCallbackOnUnselectedItemClick:Z

    .line 269
    iput-boolean v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDragEnable:Z

    .line 283
    iput-boolean v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mIsRtl:Z

    .line 298
    iput-boolean v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mScrollEnableWhenLessContent:Z

    .line 304
    iput v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceMode:I

    .line 336
    iput-boolean v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChangeChildAlphaWhenDragView:Z

    .line 338
    sget v0, Lcom/meizu/common/R$drawable;->mz_list_selector_background_long_pressed:I

    iput v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDragViewBackground:I

    .line 340
    sget v0, Lcom/meizu/common/R$drawable;->mz_list_selector_background_filter:I

    iput v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDragViewBackgroundFilter:I

    .line 342
    sget v0, Lcom/meizu/common/R$drawable;->mz_list_selector_background_delete:I

    iput v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDragViewBackgroundDelete:I

    .line 356
    iput v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDragScrollY:I

    .line 357
    iput v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDragAndDropPosition:I

    .line 358
    iput v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDragOffsetX:I

    .line 359
    iput v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDragOffsetY:I

    .line 374
    iput-boolean v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mAccDelegateStates:Z

    .line 2022
    iput v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mLastScrollState:I

    .line 387
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mGestureDetector:Landroid/view/GestureDetector;

    .line 388
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 390
    sget-object v0, Lcom/meizu/common/R$styleable;->EnhanceGallery:[I

    invoke-virtual {p1, p2, v0, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 392
    sget v1, Lcom/meizu/common/R$styleable;->EnhanceGallery_mcSpacing:I

    const/16 v2, 0xa

    .line 393
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 394
    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/EnhanceGallery;->setSpacing(I)V

    .line 395
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$dimen;->mc_enhancegallery_max_overscroll_distance:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDefaultMaxOverScrollDistance:I

    .line 396
    sget v1, Lcom/meizu/common/R$styleable;->EnhanceGallery_mcMaxOverScrollDistance:I

    iget v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDefaultMaxOverScrollDistance:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mMaxOverScrollDistance:I

    .line 397
    sget v1, Lcom/meizu/common/R$styleable;->EnhanceGallery_mcScrollEnableWhenLessContent:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mScrollEnableWhenLessContent:Z

    .line 398
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 399
    return-void
.end method

.method static synthetic access$002(Lcom/meizu/common/widget/EnhanceGallery;Z)Z
    .locals 0

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSuppressSelectionChanged:Z

    return p1
.end method

.method static synthetic access$100(Lcom/meizu/common/widget/EnhanceGallery;)Z
    .locals 1

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mIsRtl:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/meizu/common/widget/EnhanceGallery;)V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceGallery;->scrollIntoSlots()V

    return-void
.end method

.method static synthetic access$1100(Lcom/meizu/common/widget/EnhanceGallery;)Z
    .locals 1

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mShouldStopFling:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/meizu/common/widget/EnhanceGallery;Z)Z
    .locals 0

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mShouldStopFling:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/meizu/common/widget/EnhanceGallery;)I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceMode:I

    return v0
.end method

.method static synthetic access$1300(Lcom/meizu/common/widget/EnhanceGallery;)I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDragViewBackground:I

    return v0
.end method

.method static synthetic access$1400(Lcom/meizu/common/widget/EnhanceGallery;)I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDragViewBackgroundFilter:I

    return v0
.end method

.method static synthetic access$1500(Lcom/meizu/common/widget/EnhanceGallery;)I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDragViewBackgroundDelete:I

    return v0
.end method

.method static synthetic access$1600(Lcom/meizu/common/widget/EnhanceGallery;)I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDragScrollY:I

    return v0
.end method

.method static synthetic access$1602(Lcom/meizu/common/widget/EnhanceGallery;I)I
    .locals 0

    .prologue
    .line 127
    iput p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDragScrollY:I

    return p1
.end method

.method static synthetic access$1700(Lcom/meizu/common/widget/EnhanceGallery;)I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDragOffsetX:I

    return v0
.end method

.method static synthetic access$1800(Lcom/meizu/common/widget/EnhanceGallery;)I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDragOffsetY:I

    return v0
.end method

.method static synthetic access$1900(Lcom/meizu/common/widget/EnhanceGallery;)I
    .locals 1

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/meizu/common/widget/EnhanceGallery;)I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mTouchMode:I

    return v0
.end method

.method static synthetic access$2000(Lcom/meizu/common/widget/EnhanceGallery;)I
    .locals 1

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$202(Lcom/meizu/common/widget/EnhanceGallery;I)I
    .locals 0

    .prologue
    .line 127
    iput p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mTouchMode:I

    return p1
.end method

.method static synthetic access$300(Lcom/meizu/common/widget/EnhanceGallery;)I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mLastScrollState:I

    return v0
.end method

.method static synthetic access$400(Lcom/meizu/common/widget/EnhanceGallery;)Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFlingRunnable:Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/meizu/common/widget/EnhanceGallery;)Z
    .locals 1

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChangeChildAlphaWhenDragView:Z

    return v0
.end method

.method static synthetic access$600(Lcom/meizu/common/widget/EnhanceGallery;)Landroid/view/ActionMode;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$602(Lcom/meizu/common/widget/EnhanceGallery;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$800(Lcom/meizu/common/widget/EnhanceGallery;)I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mAnimationDuration:I

    return v0
.end method

.method static synthetic access$900(Lcom/meizu/common/widget/EnhanceGallery;)I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCurrentOverScrollDistance:I

    return v0
.end method

.method private calculateTop(Landroid/view/View;Z)I
    .locals 4

    .prologue
    .line 1383
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getMeasuredHeight()I

    move-result v0

    move v2, v0

    .line 1384
    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 1386
    :goto_1
    const/4 v1, 0x0

    .line 1388
    iget v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mGravity:I

    sparse-switch v3, :sswitch_data_0

    move v0, v1

    .line 1401
    :goto_2
    return v0

    .line 1383
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getHeight()I

    move-result v0

    move v2, v0

    goto :goto_0

    .line 1384
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    goto :goto_1

    .line 1390
    :sswitch_0
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    goto :goto_2

    .line 1393
    :sswitch_1
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v2, v1

    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    sub-int v0, v1, v0

    .line 1395
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    .line 1396
    goto :goto_2

    .line 1398
    :sswitch_2
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v2, v1

    sub-int v0, v1, v0

    goto :goto_2

    .line 1388
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x30 -> :sswitch_0
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method private detachOffScreenChildren(Z)V
    .locals 10

    .prologue
    const/4 v4, 0x0

    .line 662
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getChildCount()I

    move-result v7

    .line 663
    iget v8, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    .line 667
    if-eqz p1, :cond_6

    .line 669
    iget-boolean v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mIsRtl:Z

    if-eqz v0, :cond_2

    .line 670
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingLeft()I

    move-result v0

    :goto_0
    move v2, v4

    move v6, v4

    move v5, v4

    .line 674
    :goto_1
    add-int/lit8 v1, v7, -0x1

    if-ge v2, v1, :cond_0

    .line 675
    iget-boolean v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mIsRtl:Z

    if-eqz v1, :cond_3

    add-int/lit8 v1, v7, -0x1

    sub-int/2addr v1, v2

    .line 676
    :goto_2
    iget-boolean v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mIsRtl:Z

    if-eqz v3, :cond_4

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 677
    :goto_3
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    if-le v3, v0, :cond_5

    .line 686
    :cond_0
    iget-boolean v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mIsRtl:Z

    if-nez v0, :cond_d

    move v0, v4

    :goto_4
    move v4, v0

    move v0, v6

    .line 713
    :goto_5
    invoke-virtual {p0, v4, v0}, Lcom/meizu/common/widget/EnhanceGallery;->detachViewsFromParent(II)V

    .line 715
    iget-boolean v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mIsRtl:Z

    if-eq p1, v1, :cond_1

    .line 716
    iget v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    .line 718
    :cond_1
    return-void

    .line 672
    :cond_2
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingLeft()I

    move-result v0

    iget v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    add-int/2addr v0, v1

    goto :goto_0

    :cond_3
    move v1, v2

    .line 675
    goto :goto_2

    .line 676
    :cond_4
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    goto :goto_3

    .line 681
    :cond_5
    add-int/lit8 v6, v6, 0x1

    .line 682
    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 683
    iget-object v5, p0, Lcom/meizu/common/widget/EnhanceGallery;->mRecycler:Lcom/meizu/common/widget/AbsSpinner$RecycleBin;

    add-int v9, v8, v1

    invoke-virtual {v5, v9, v3}, Lcom/meizu/common/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 674
    add-int/lit8 v2, v2, 0x1

    move v5, v1

    goto :goto_1

    .line 691
    :cond_6
    iget-boolean v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mIsRtl:Z

    if-eqz v0, :cond_8

    .line 692
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    sub-int/2addr v0, v1

    .line 696
    :goto_6
    add-int/lit8 v2, v7, -0x1

    move v5, v4

    move v6, v4

    :goto_7
    const/4 v1, 0x1

    if-lt v2, v1, :cond_7

    .line 697
    iget-boolean v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mIsRtl:Z

    if-eqz v1, :cond_9

    add-int/lit8 v1, v7, -0x1

    sub-int/2addr v1, v2

    .line 698
    :goto_8
    iget-boolean v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mIsRtl:Z

    if-eqz v3, :cond_a

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 699
    :goto_9
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    if-ge v3, v0, :cond_b

    .line 708
    :cond_7
    iget-boolean v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mIsRtl:Z

    if-eqz v0, :cond_c

    move v0, v5

    .line 709
    goto :goto_5

    .line 694
    :cond_8
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_6

    :cond_9
    move v1, v2

    .line 697
    goto :goto_8

    .line 698
    :cond_a
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    goto :goto_9

    .line 703
    :cond_b
    add-int/lit8 v5, v5, 0x1

    .line 704
    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 705
    iget-object v6, p0, Lcom/meizu/common/widget/EnhanceGallery;->mRecycler:Lcom/meizu/common/widget/AbsSpinner$RecycleBin;

    add-int v9, v8, v1

    invoke-virtual {v6, v9, v3}, Lcom/meizu/common/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 696
    add-int/lit8 v2, v2, -0x1

    move v6, v1

    goto :goto_7

    :cond_c
    move v0, v5

    move v4, v6

    goto/16 :goto_5

    :cond_d
    move v0, v5

    goto/16 :goto_4
.end method

.method private dispatchLongPress(Landroid/view/View;IJ)Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1753
    .line 1755
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mOnItemLongClickListener:Lcom/meizu/common/widget/AdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_2

    .line 1756
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mOnItemLongClickListener:Lcom/meizu/common/widget/AdapterView$OnItemLongClickListener;

    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDownTouchView:Landroid/view/View;

    iget v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDownTouchPosition:I

    move-object v1, p0

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/meizu/common/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Lcom/meizu/common/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v0

    .line 1760
    :goto_0
    if-nez v0, :cond_0

    .line 1761
    new-instance v0, Lcom/meizu/common/widget/EnhanceGallery$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/meizu/common/widget/EnhanceGallery$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    iput-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mContextMenuInfo:Lcom/meizu/common/widget/EnhanceGallery$AdapterContextMenuInfo;

    .line 1762
    invoke-super {p0, p0}, Lcom/meizu/common/widget/AbsSpinner;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v0

    .line 1765
    :cond_0
    if-eqz v0, :cond_1

    .line 1766
    invoke-virtual {p0, v6}, Lcom/meizu/common/widget/EnhanceGallery;->performHapticFeedback(I)Z

    .line 1769
    :cond_1
    return v0

    :cond_2
    move v0, v6

    goto :goto_0
.end method

.method private dispatchPress(Landroid/view/View;)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 1689
    if-eqz p1, :cond_0

    .line 1690
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 1693
    :cond_0
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/EnhanceGallery;->setPressed(Z)V

    .line 1694
    return-void
.end method

.method private dispatchUnpress()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1698
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 1699
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 1698
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1702
    :cond_0
    invoke-virtual {p0, v2}, Lcom/meizu/common/widget/EnhanceGallery;->setPressed(Z)V

    .line 1703
    return-void
.end method

.method private fillToGalleryLeft()V
    .locals 1

    .prologue
    .line 1014
    iget-boolean v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mIsRtl:Z

    if-eqz v0, :cond_0

    .line 1015
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceGallery;->fillToGalleryLeftRtl()V

    .line 1019
    :goto_0
    return-void

    .line 1017
    :cond_0
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceGallery;->fillToGalleryLeftLtr()V

    goto :goto_0
.end method

.method private fillToGalleryLeftLtr()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1052
    iget v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    .line 1053
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingLeft()I

    move-result v4

    .line 1056
    invoke-virtual {p0, v2}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1060
    if-eqz v0, :cond_0

    .line 1061
    iget v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    add-int/lit8 v1, v1, -0x1

    .line 1062
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int/2addr v0, v3

    .line 1070
    :goto_0
    if-le v0, v4, :cond_1

    if-ltz v1, :cond_1

    .line 1071
    iget v5, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSelectedPosition:I

    sub-int v5, v1, v5

    invoke-direct {p0, v1, v5, v0, v2}, Lcom/meizu/common/widget/EnhanceGallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v0

    .line 1075
    iput v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    .line 1078
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int/2addr v0, v3

    .line 1079
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1066
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getRight()I

    move-result v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1067
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mShouldStopFling:Z

    move v1, v2

    goto :goto_0

    .line 1081
    :cond_1
    return-void
.end method

.method private fillToGalleryLeftRtl()V
    .locals 6

    .prologue
    .line 1022
    iget v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    .line 1023
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingLeft()I

    move-result v3

    .line 1024
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getChildCount()I

    move-result v0

    .line 1027
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1031
    if-eqz v4, :cond_0

    .line 1032
    iget v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    add-int/2addr v1, v0

    .line 1033
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int/2addr v0, v2

    .line 1041
    :goto_0
    if-le v0, v3, :cond_1

    iget v4, p0, Lcom/meizu/common/widget/EnhanceGallery;->mItemCount:I

    if-ge v1, v4, :cond_1

    .line 1042
    iget v4, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSelectedPosition:I

    sub-int v4, v1, v4

    const/4 v5, 0x0

    invoke-direct {p0, v1, v4, v0, v5}, Lcom/meizu/common/widget/EnhanceGallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v0

    .line 1046
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int/2addr v0, v2

    .line 1047
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1036
    :cond_0
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mItemCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    .line 1037
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getRight()I

    move-result v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getLeft()I

    move-result v4

    sub-int/2addr v0, v4

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingRight()I

    move-result v4

    sub-int/2addr v0, v4

    .line 1038
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/meizu/common/widget/EnhanceGallery;->mShouldStopFling:Z

    goto :goto_0

    .line 1049
    :cond_1
    return-void
.end method

.method private fillToGalleryRight()V
    .locals 1

    .prologue
    .line 1084
    iget-boolean v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mIsRtl:Z

    if-eqz v0, :cond_0

    .line 1085
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceGallery;->fillToGalleryRightRtl()V

    .line 1089
    :goto_0
    return-void

    .line 1087
    :cond_0
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceGallery;->fillToGalleryRightLtr()V

    goto :goto_0
.end method

.method private fillToGalleryRightLtr()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 1122
    iget v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    .line 1123
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getRight()I

    move-result v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingRight()I

    move-result v1

    sub-int v3, v0, v1

    .line 1124
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getChildCount()I

    move-result v0

    .line 1125
    iget v4, p0, Lcom/meizu/common/widget/EnhanceGallery;->mItemCount:I

    .line 1128
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1132
    if-eqz v5, :cond_0

    .line 1133
    iget v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    add-int/2addr v1, v0

    .line 1134
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v0

    add-int/2addr v0, v2

    .line 1141
    :goto_0
    if-ge v0, v3, :cond_1

    if-ge v1, v4, :cond_1

    .line 1142
    iget v5, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSelectedPosition:I

    sub-int v5, v1, v5

    invoke-direct {p0, v1, v5, v0, v6}, Lcom/meizu/common/widget/EnhanceGallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v0

    .line 1146
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    add-int/2addr v0, v2

    .line 1147
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1136
    :cond_0
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mItemCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    .line 1137
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingLeft()I

    move-result v0

    .line 1138
    iput-boolean v6, p0, Lcom/meizu/common/widget/EnhanceGallery;->mShouldStopFling:Z

    goto :goto_0

    .line 1149
    :cond_1
    return-void
.end method

.method private fillToGalleryRightRtl()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 1092
    iget v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    .line 1093
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getRight()I

    move-result v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getLeft()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingRight()I

    move-result v3

    sub-int v3, v0, v3

    .line 1096
    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1100
    if-eqz v0, :cond_0

    .line 1101
    iget v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    add-int/lit8 v1, v1, -0x1

    .line 1102
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    add-int/2addr v0, v2

    .line 1108
    :goto_0
    if-ge v0, v3, :cond_1

    if-ltz v1, :cond_1

    .line 1109
    iget v4, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSelectedPosition:I

    sub-int v4, v1, v4

    invoke-direct {p0, v1, v4, v0, v5}, Lcom/meizu/common/widget/EnhanceGallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v0

    .line 1113
    iput v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    .line 1116
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    add-int/2addr v0, v2

    .line 1117
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1105
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingLeft()I

    move-result v0

    .line 1106
    iput-boolean v5, p0, Lcom/meizu/common/widget/EnhanceGallery;->mShouldStopFling:Z

    goto :goto_0

    .line 1119
    :cond_1
    return-void
.end method

.method private getCenterOfEnhanceGallery()I
    .locals 2

    .prologue
    .line 645
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private static getCenterOfView(Landroid/view/View;)I
    .locals 2

    .prologue
    .line 652
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method private layoutChildren()V
    .locals 7

    .prologue
    .line 975
    iget v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    .line 976
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingLeft()I

    move-result v3

    .line 977
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getRight()I

    move-result v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingRight()I

    move-result v1

    sub-int v4, v0, v1

    .line 978
    iget v5, p0, Lcom/meizu/common/widget/EnhanceGallery;->mItemCount:I

    .line 984
    iget-boolean v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mIsRtl:Z

    if-eqz v0, :cond_0

    .line 985
    iget v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    .line 986
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    sub-int v0, v4, v0

    .line 988
    :goto_0
    if-le v0, v3, :cond_1

    if-ge v1, v5, :cond_1

    .line 989
    iget v4, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSelectedPosition:I

    sub-int v4, v1, v4

    const/4 v6, 0x0

    invoke-direct {p0, v1, v4, v0, v6}, Lcom/meizu/common/widget/EnhanceGallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v0

    .line 993
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int/2addr v0, v2

    .line 994
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 998
    :cond_0
    iget v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    .line 999
    add-int v0, v3, v2

    .line 1001
    :goto_1
    if-ge v0, v4, :cond_1

    if-ge v1, v5, :cond_1

    .line 1002
    iget v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSelectedPosition:I

    sub-int v3, v1, v3

    const/4 v6, 0x1

    invoke-direct {p0, v1, v3, v0, v6}, Lcom/meizu/common/widget/EnhanceGallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v0

    .line 1006
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    add-int/2addr v0, v2

    .line 1007
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1011
    :cond_1
    return-void
.end method

.method private makeAndAddView(IIIZ)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 1169
    iget-boolean v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDataChanged:Z

    if-nez v0, :cond_4

    .line 1170
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mRecycler:Lcom/meizu/common/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/AbsSpinner$RecycleBin;->get(I)Landroid/view/View;

    move-result-object v1

    .line 1171
    if-eqz v1, :cond_4

    .line 1173
    iget-boolean v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mAccDelegateStates:Z

    if-nez v0, :cond_3

    .line 1174
    invoke-virtual {v1}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1175
    invoke-virtual {v1, v3}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 1178
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "accessibility"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1179
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mAccessibilityDelegate:Lcom/meizu/common/widget/EnhanceGallery$SpinnerItemAccessibilityDelegate;

    if-nez v0, :cond_1

    .line 1180
    new-instance v0, Lcom/meizu/common/widget/EnhanceGallery$SpinnerItemAccessibilityDelegate;

    invoke-direct {v0, p0}, Lcom/meizu/common/widget/EnhanceGallery$SpinnerItemAccessibilityDelegate;-><init>(Lcom/meizu/common/widget/EnhanceGallery;)V

    iput-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mAccessibilityDelegate:Lcom/meizu/common/widget/EnhanceGallery$SpinnerItemAccessibilityDelegate;

    .line 1182
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1183
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mAccessibilityDelegate:Lcom/meizu/common/widget/EnhanceGallery$SpinnerItemAccessibilityDelegate;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 1186
    :cond_2
    iput-boolean v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mAccDelegateStates:Z

    :cond_3
    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 1189
    invoke-direct/range {v0 .. v5}, Lcom/meizu/common/widget/EnhanceGallery;->setUpChild(Landroid/view/View;IIIZ)V

    .line 1211
    :goto_0
    return-object v1

    .line 1195
    :cond_4
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1196
    invoke-virtual {v1}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v0

    if-nez v0, :cond_5

    .line 1197
    invoke-virtual {v1, v3}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 1200
    :cond_5
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "accessibility"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1201
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mAccessibilityDelegate:Lcom/meizu/common/widget/EnhanceGallery$SpinnerItemAccessibilityDelegate;

    if-nez v0, :cond_6

    .line 1202
    new-instance v0, Lcom/meizu/common/widget/EnhanceGallery$SpinnerItemAccessibilityDelegate;

    invoke-direct {v0, p0}, Lcom/meizu/common/widget/EnhanceGallery$SpinnerItemAccessibilityDelegate;-><init>(Lcom/meizu/common/widget/EnhanceGallery;)V

    iput-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mAccessibilityDelegate:Lcom/meizu/common/widget/EnhanceGallery$SpinnerItemAccessibilityDelegate;

    .line 1204
    :cond_6
    invoke-virtual {v1}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    if-nez v0, :cond_7

    .line 1205
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mAccessibilityDelegate:Lcom/meizu/common/widget/EnhanceGallery$SpinnerItemAccessibilityDelegate;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    :cond_7
    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 1209
    invoke-direct/range {v0 .. v5}, Lcom/meizu/common/widget/EnhanceGallery;->setUpChild(Landroid/view/View;IIIZ)V

    goto :goto_0
.end method

.method private offsetChildrenLeftAndRight(I)V
    .locals 2

    .prologue
    .line 636
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 637
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 636
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 639
    :cond_0
    return-void
.end method

.method private onFinishedMovement()V
    .locals 1

    .prologue
    .line 798
    iget-boolean v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSuppressSelectionChanged:Z

    if-eqz v0, :cond_0

    .line 799
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSuppressSelectionChanged:Z

    .line 802
    invoke-super {p0}, Lcom/meizu/common/widget/AbsSpinner;->selectionChanged()V

    .line 804
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->invalidate()V

    .line 805
    return-void
.end method

.method private scrollIntoSlots()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x2

    const/4 v1, 0x0

    .line 726
    .line 727
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getChildCount()I

    move-result v2

    .line 729
    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSelectedChild:Landroid/view/View;

    if-nez v0, :cond_2

    .line 730
    :cond_0
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mLastScrollState:I

    if-eqz v0, :cond_1

    .line 731
    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/EnhanceGallery;->reportScrollStateChange(I)V

    .line 795
    :cond_1
    :goto_0
    return-void

    .line 739
    :cond_2
    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 740
    add-int/lit8 v3, v2, -0x1

    invoke-virtual {p0, v3}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 742
    iget-boolean v4, p0, Lcom/meizu/common/widget/EnhanceGallery;->mIsRtl:Z

    if-eqz v4, :cond_7

    .line 743
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    sub-int/2addr v4, v5

    .line 744
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingLeft()I

    move-result v5

    .line 745
    iget v6, p0, Lcom/meizu/common/widget/EnhanceGallery;->mTouchMode:I

    if-ne v6, v8, :cond_5

    iget v6, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    add-int/2addr v6, v2

    iget v7, p0, Lcom/meizu/common/widget/EnhanceGallery;->mItemCount:I

    if-ne v6, v7, :cond_5

    .line 746
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    add-int/2addr v0, v5

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v0, v2

    .line 781
    :cond_3
    :goto_1
    if-eqz v0, :cond_a

    .line 782
    iget v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mLastScrollState:I

    if-eq v1, v8, :cond_4

    .line 783
    invoke-virtual {p0, v8}, Lcom/meizu/common/widget/EnhanceGallery;->reportScrollStateChange(I)V

    .line 786
    :cond_4
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFlingRunnable:Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;

    invoke-virtual {v1, v0}, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->startUsingDistance(I)V

    goto :goto_0

    .line 747
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v6

    if-eq v6, v4, :cond_c

    .line 748
    invoke-static {v0}, Lcom/meizu/common/widget/EnhanceGallery;->getCenterOfView(Landroid/view/View;)I

    move-result v6

    .line 749
    if-lt v6, v4, :cond_6

    .line 750
    invoke-virtual {p0, v9}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    sub-int v0, v4, v0

    .line 755
    :goto_2
    iget v4, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    add-int/2addr v2, v4

    iget v4, p0, Lcom/meizu/common/widget/EnhanceGallery;->mItemCount:I

    if-ne v2, v4, :cond_3

    .line 756
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v2

    add-int/2addr v2, v0

    if-le v2, v5, :cond_3

    .line 757
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int v0, v5, v0

    iget v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    add-int/2addr v0, v2

    goto :goto_1

    .line 752
    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    sub-int v0, v4, v0

    goto :goto_2

    .line 762
    :cond_7
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingLeft()I

    move-result v4

    iget v5, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    add-int/2addr v4, v5

    .line 763
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    .line 764
    iget v6, p0, Lcom/meizu/common/widget/EnhanceGallery;->mTouchMode:I

    if-ne v6, v8, :cond_8

    iget v6, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    add-int/2addr v6, v2

    iget v7, p0, Lcom/meizu/common/widget/EnhanceGallery;->mItemCount:I

    if-ne v6, v7, :cond_8

    .line 765
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v0

    sub-int v0, v5, v0

    iget v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    sub-int/2addr v0, v2

    goto :goto_1

    .line 766
    :cond_8
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v6

    if-eq v6, v4, :cond_c

    .line 767
    invoke-static {v0}, Lcom/meizu/common/widget/EnhanceGallery;->getCenterOfView(Landroid/view/View;)I

    move-result v6

    .line 768
    if-ge v6, v4, :cond_9

    .line 769
    invoke-virtual {p0, v9}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int v0, v4, v0

    .line 774
    :goto_3
    iget v4, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    add-int/2addr v2, v4

    iget v4, p0, Lcom/meizu/common/widget/EnhanceGallery;->mItemCount:I

    if-ne v2, v4, :cond_3

    .line 775
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v2

    add-int/2addr v2, v0

    iget v4, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    sub-int v4, v5, v4

    if-eq v2, v4, :cond_3

    .line 776
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v0

    sub-int v0, v5, v0

    iget v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    sub-int/2addr v0, v2

    goto/16 :goto_1

    .line 771
    :cond_9
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int v0, v4, v0

    goto :goto_3

    .line 788
    :cond_a
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mLastScrollState:I

    if-eqz v0, :cond_b

    .line 789
    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/EnhanceGallery;->reportScrollStateChange(I)V

    .line 792
    :cond_b
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceGallery;->onFinishedMovement()V

    .line 793
    const/4 v0, -0x1

    iput v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mTouchMode:I

    goto/16 :goto_0

    :cond_c
    move v0, v1

    goto/16 :goto_1
.end method

.method private setSelectionView()V
    .locals 2

    .prologue
    .line 820
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSelectedChild:Landroid/view/View;

    if-nez v0, :cond_1

    .line 828
    :cond_0
    :goto_0
    return-void

    .line 821
    :cond_1
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    .line 823
    iget v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSelectedPosition:I

    if-eq v0, v1, :cond_0

    .line 824
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/EnhanceGallery;->setSelectedPositionInt(I)V

    .line 825
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/EnhanceGallery;->setNextSelectedPositionInt(I)V

    .line 826
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->checkSelectionChanged()V

    goto :goto_0
.end method

.method private setUpChild(Landroid/view/View;IIIZ)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1231
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1233
    if-nez v0, :cond_4

    .line 1234
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/widget/EnhanceGallery$LayoutParams;

    .line 1241
    :goto_0
    iget-boolean v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mIsRtl:Z

    if-eq p5, v1, :cond_6

    const/4 v1, -0x1

    :goto_1
    invoke-virtual {p0, p1, v1, v0}, Lcom/meizu/common/widget/EnhanceGallery;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 1242
    iget v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceMode:I

    if-ne v1, v3, :cond_1

    .line 1243
    if-nez p3, :cond_0

    move v2, v3

    :cond_0
    invoke-virtual {p1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 1247
    :cond_1
    iget v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mHeightMeasureSpec:I

    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v4

    iget v4, v0, Lcom/meizu/common/widget/EnhanceGallery$LayoutParams;->height:I

    invoke-static {v1, v2, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 1249
    iget v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mWidthMeasureSpec:I

    iget-object v4, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iget v0, v0, Lcom/meizu/common/widget/EnhanceGallery$LayoutParams;->width:I

    invoke-static {v2, v4, v0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    .line 1253
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    .line 1259
    invoke-direct {p0, p1, v3}, Lcom/meizu/common/widget/EnhanceGallery;->calculateTop(Landroid/view/View;Z)I

    move-result v1

    .line 1260
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int v2, v1, v0

    .line 1262
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 1263
    if-eqz p5, :cond_7

    .line 1265
    add-int/2addr v0, p4

    move v6, v0

    move v0, p4

    move p4, v6

    .line 1271
    :goto_2
    invoke-virtual {p1, v0, v1, p4, v2}, Landroid/view/View;->layout(IIII)V

    .line 1273
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceMode:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_2

    .line 1274
    instance-of v0, p1, Landroid/widget/Checkable;

    if-eqz v0, :cond_8

    move-object v0, p1

    .line 1275
    check-cast v0, Landroid/widget/Checkable;

    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 1282
    :cond_2
    :goto_3
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDragEnable:Z

    if-eqz v0, :cond_3

    .line 1283
    new-instance v0, Lcom/meizu/common/widget/EnhanceGallery$3;

    invoke-direct {v0, p0}, Lcom/meizu/common/widget/EnhanceGallery$3;-><init>(Lcom/meizu/common/widget/EnhanceGallery;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 1374
    :cond_3
    return-void

    .line 1235
    :cond_4
    instance-of v1, v0, Lcom/meizu/common/widget/EnhanceGallery$LayoutParams;

    if-eqz v1, :cond_5

    .line 1236
    check-cast v0, Lcom/meizu/common/widget/EnhanceGallery$LayoutParams;

    goto :goto_0

    .line 1238
    :cond_5
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/EnhanceGallery;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/widget/EnhanceGallery$LayoutParams;

    goto/16 :goto_0

    :cond_6
    move v1, v2

    .line 1241
    goto/16 :goto_1

    .line 1267
    :cond_7
    sub-int v0, p4, v0

    .line 1268
    goto :goto_2

    .line 1276
    :cond_8
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_2

    .line 1278
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setActivated(Z)V

    goto :goto_3
.end method

.method private updateOnScreenCheckedViews()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 2929
    iget v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    .line 2930
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getChildCount()I

    move-result v4

    .line 2931
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    move v1, v0

    .line 2933
    :goto_0
    if-ge v2, v4, :cond_3

    .line 2934
    invoke-virtual {p0, v2}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2935
    add-int v5, v3, v2

    .line 2937
    instance-of v6, v0, Landroid/widget/Checkable;

    if-eqz v6, :cond_2

    .line 2938
    check-cast v0, Landroid/widget/Checkable;

    iget-object v6, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    invoke-interface {v0, v5}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 2933
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    .line 2931
    goto :goto_0

    .line 2939
    :cond_2
    if-eqz v1, :cond_0

    .line 2940
    iget-object v6, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    invoke-virtual {v0, v5}, Landroid/view/View;->setActivated(Z)V

    goto :goto_1

    .line 2943
    :cond_3
    return-void
.end method

.method private updateSelectedItemMetadata()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1782
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSelectedChild:Landroid/view/View;

    .line 1784
    iget v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSelectedPosition:I

    iget v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSelectedChild:Landroid/view/View;

    .line 1785
    if-nez v1, :cond_1

    .line 1812
    :cond_0
    :goto_0
    return-void

    .line 1789
    :cond_1
    iget v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceMode:I

    if-ne v2, v3, :cond_0

    .line 1793
    invoke-virtual {v1, v3}, Landroid/view/View;->setSelected(Z)V

    .line 1794
    invoke-virtual {v1, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 1796
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1797
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 1802
    :cond_2
    if-eqz v0, :cond_0

    if-eq v0, v1, :cond_0

    .line 1805
    invoke-virtual {v0, v4}, Landroid/view/View;->setSelected(Z)V

    .line 1809
    invoke-virtual {v0, v4}, Landroid/view/View;->setFocusable(Z)V

    goto :goto_0
.end method


# virtual methods
.method public changeChildAlphaWhenDragView(Z)V
    .locals 0

    .prologue
    .line 2528
    iput-boolean p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChangeChildAlphaWhenDragView:Z

    .line 2529
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .prologue
    .line 499
    instance-of v0, p1, Lcom/meizu/common/widget/EnhanceGallery$LayoutParams;

    return v0
.end method

.method public clearChoices()V
    .locals 1

    .prologue
    .line 2163
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    .line 2164
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 2166
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_1

    .line 2167
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 2169
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedItemCount:I

    .line 2170
    return-void
.end method

.method protected computeHorizontalScrollExtent()I
    .locals 1

    .prologue
    .line 482
    const/4 v0, 0x1

    return v0
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 1

    .prologue
    .line 488
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSelectedPosition:I

    return v0
.end method

.method protected computeHorizontalScrollRange()I
    .locals 1

    .prologue
    .line 494
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mItemCount:I

    return v0
.end method

.method confirmCheckedPositionsById()V
    .locals 12

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2876
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    move v1, v6

    move v2, v6

    .line 2880
    :goto_0
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    .line 2881
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    .line 2882
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 2883
    const-wide/16 v8, -0x1

    .line 2884
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mItemCount:I

    if-ge v3, v0, :cond_0

    .line 2885
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0, v3}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v8

    .line 2887
    :cond_0
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mItemCount:I

    if-ge v3, v0, :cond_1

    cmp-long v0, v4, v8

    if-eqz v0, :cond_5

    .line 2889
    :cond_1
    add-int/lit8 v0, v3, -0x14

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2890
    add-int/lit8 v8, v3, 0x14

    iget v9, p0, Lcom/meizu/common/widget/EnhanceGallery;->mItemCount:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 2892
    :goto_1
    if-ge v0, v8, :cond_8

    .line 2893
    iget-object v9, p0, Lcom/meizu/common/widget/EnhanceGallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v9, v0}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v10

    .line 2894
    cmp-long v9, v4, v10

    if-nez v9, :cond_4

    .line 2896
    iget-object v8, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8, v0, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2897
    iget-object v8, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v1, v0}, Landroid/util/LongSparseArray;->setValueAt(ILjava/lang/Object;)V

    move v0, v7

    .line 2902
    :goto_2
    if-nez v0, :cond_3

    .line 2903
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v4, v5}, Landroid/util/LongSparseArray;->delete(J)V

    .line 2904
    add-int/lit8 v0, v1, -0x1

    .line 2905
    iget v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedItemCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedItemCount:I

    .line 2907
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mMultiChoiceModeCallback:Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeWrapper;

    if-eqz v1, :cond_2

    .line 2908
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mMultiChoiceModeCallback:Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeWrapper;

    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual/range {v1 .. v6}, Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    :cond_2
    move v1, v0

    move v2, v7

    :cond_3
    move v0, v1

    move v1, v2

    .line 2880
    :goto_3
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    .line 2892
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2913
    :cond_5
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v3, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    move v0, v1

    move v1, v2

    goto :goto_3

    .line 2917
    :cond_6
    if-eqz v2, :cond_7

    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_7

    .line 2918
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    .line 2920
    :cond_7
    return-void

    :cond_8
    move v0, v6

    goto :goto_2
.end method

.method createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 2659
    new-instance v0, Lcom/meizu/common/widget/EnhanceGallery$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/meizu/common/widget/EnhanceGallery$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    return-object v0
.end method

.method protected dispatchSetPressed(Z)V
    .locals 1

    .prologue
    .line 1718
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSelectedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1719
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSelectedChild:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 1721
    :cond_0
    return-void
.end method

.method public dispatchSetSelected(Z)V
    .locals 0

    .prologue
    .line 1712
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 517
    new-instance v0, Lcom/meizu/common/widget/EnhanceGallery$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/meizu/common/widget/EnhanceGallery$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 509
    new-instance v0, Lcom/meizu/common/widget/EnhanceGallery$LayoutParams;

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/meizu/common/widget/EnhanceGallery$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 504
    new-instance v0, Lcom/meizu/common/widget/EnhanceGallery$LayoutParams;

    invoke-direct {v0, p1}, Lcom/meizu/common/widget/EnhanceGallery$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getCheckedItemCount()I
    .locals 1

    .prologue
    .line 2300
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedItemCount:I

    return v0
.end method

.method public getCheckedItemIds()[J
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 2346
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceMode:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-nez v0, :cond_2

    .line 2347
    :cond_0
    new-array v0, v1, [J

    .line 2357
    :cond_1
    return-object v0

    .line 2350
    :cond_2
    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 2351
    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    .line 2352
    new-array v0, v3, [J

    .line 2354
    :goto_0
    if-ge v1, v3, :cond_1

    .line 2355
    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    aput-wide v4, v0, v1

    .line 2354
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getCheckedItemPositions()Landroid/util/SparseBooleanArray;
    .locals 1

    .prologue
    .line 2313
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceMode:I

    if-eqz v0, :cond_0

    .line 2314
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 2316
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getChildHeight(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 536
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 1725
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mContextMenuInfo:Lcom/meizu/common/widget/EnhanceGallery$AdapterContextMenuInfo;

    return-object v0
.end method

.method public invalidateViews()V
    .locals 1

    .prologue
    .line 2279
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDataChanged:Z

    .line 2280
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mItemCount:I

    .line 2281
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->requestLayout()V

    .line 2282
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->invalidate()V

    .line 2283
    return-void
.end method

.method invokeOnItemScrollListener()V
    .locals 4

    .prologue
    .line 2043
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mOnScrollListener:Lcom/meizu/common/widget/EnhanceGallery$OnScrollListener;

    if-eqz v0, :cond_0

    .line 2044
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mOnScrollListener:Lcom/meizu/common/widget/EnhanceGallery$OnScrollListener;

    iget v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getChildCount()I

    move-result v2

    iget v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mItemCount:I

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/meizu/common/widget/EnhanceGallery$OnScrollListener;->onScroll(Lcom/meizu/common/widget/EnhanceGallery;III)V

    .line 2046
    :cond_0
    return-void
.end method

.method public isItemChecked(I)Z
    .locals 1

    .prologue
    .line 2330
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceMode:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    .line 2331
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    .line 2334
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method layout(IZ)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 874
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_0

    .line 875
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getLayoutDirection()I

    move-result v2

    if-ne v2, v0, :cond_3

    :goto_0
    iput-boolean v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mIsRtl:Z

    .line 884
    :cond_0
    iget-boolean v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDataChanged:Z

    if-eqz v0, :cond_1

    .line 885
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->handleDataChanged()V

    .line 888
    :cond_1
    iget-boolean v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDataChanged:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceMode:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 889
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->confirmCheckedPositionsById()V

    .line 893
    :cond_2
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mItemCount:I

    if-nez v0, :cond_4

    .line 894
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->invokeOnItemScrollListener()V

    .line 895
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->resetList()V

    .line 969
    :goto_1
    return-void

    :cond_3
    move v0, v1

    .line 875
    goto :goto_0

    .line 900
    :cond_4
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mNextSelectedPosition:I

    if-ltz v0, :cond_5

    .line 901
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mNextSelectedPosition:I

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/EnhanceGallery;->setSelectedPositionInt(I)V

    .line 905
    :cond_5
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->recycleAllViews()V

    .line 909
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->detachAllViewsFromParent()V

    .line 915
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSelectedPosition:I

    iput v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    .line 917
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceGallery;->layoutChildren()V

    .line 920
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mRecycler:Lcom/meizu/common/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v0}, Lcom/meizu/common/widget/AbsSpinner$RecycleBin;->clear()V

    .line 922
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->invalidate()V

    .line 923
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->checkSelectionChanged()V

    .line 925
    iput-boolean v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDataChanged:Z

    .line 926
    iput-boolean v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mNeedSync:Z

    .line 927
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSelectedPosition:I

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/EnhanceGallery;->setNextSelectedPositionInt(I)V

    .line 928
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceGallery;->updateSelectedItemMetadata()V

    .line 930
    iput v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDeltaLength:I

    .line 931
    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 932
    if-eqz v0, :cond_6

    .line 933
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChildWidth:I

    .line 934
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mItemCount:I

    iget v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChildWidth:I

    iget v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    add-int/2addr v2, v3

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDeltaLength:I

    .line 936
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDeltaLength:I

    if-lez v0, :cond_8

    iget-boolean v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mScrollEnableWhenLessContent:Z

    if-nez v0, :cond_8

    .line 938
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSelectedPosition:I

    iget v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mItemCount:I

    if-ge v0, v1, :cond_6

    .line 939
    iget-boolean v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mIsRtl:Z

    if-eqz v0, :cond_7

    .line 940
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSelectedPosition:I

    neg-int v0, v0

    iget v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChildWidth:I

    iget v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    add-int/2addr v1, v2

    mul-int/2addr v0, v1

    .line 944
    :goto_2
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/EnhanceGallery;->trackMotionScroll(I)Z

    .line 945
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceGallery;->scrollIntoSlots()V

    .line 968
    :cond_6
    :goto_3
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->invokeOnItemScrollListener()V

    goto :goto_1

    .line 942
    :cond_7
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSelectedPosition:I

    iget v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChildWidth:I

    iget v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    add-int/2addr v1, v2

    mul-int/2addr v0, v1

    goto :goto_2

    .line 947
    :cond_8
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDeltaLength:I

    if-gtz v0, :cond_6

    .line 949
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getChildCount()I

    move-result v0

    .line 950
    iget-boolean v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mIsRtl:Z

    if-eqz v1, :cond_9

    .line 951
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    add-int/2addr v1, v2

    .line 953
    iget v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    add-int/2addr v2, v0

    iget v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mItemCount:I

    if-ne v2, v3, :cond_6

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    if-eq v2, v1, :cond_6

    iget v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mNextSelectedPosition:I

    if-eqz v2, :cond_6

    .line 954
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int v0, v1, v0

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/EnhanceGallery;->trackMotionScroll(I)Z

    .line 955
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceGallery;->scrollIntoSlots()V

    goto :goto_3

    .line 958
    :cond_9
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    sub-int/2addr v1, v2

    .line 960
    iget v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    add-int/2addr v2, v0

    iget v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mItemCount:I

    if-ne v2, v3, :cond_6

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    if-eq v2, v1, :cond_6

    iget v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mNextSelectedPosition:I

    if-eqz v2, :cond_6

    .line 961
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    sub-int v0, v1, v0

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/EnhanceGallery;->trackMotionScroll(I)Z

    .line 962
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceGallery;->scrollIntoSlots()V

    goto :goto_3
.end method

.method onCancel()V
    .locals 0

    .prologue
    .line 1642
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->onUp()V

    .line 1643
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1582
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mTouchMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mTouchMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 1583
    :cond_0
    iput v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mTouchMode:I

    .line 1584
    invoke-virtual {p0, v2}, Lcom/meizu/common/widget/EnhanceGallery;->reportScrollStateChange(I)V

    .line 1590
    :goto_0
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFlingRunnable:Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;

    invoke-virtual {v0, v3}, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->stop(Z)V

    .line 1593
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/meizu/common/widget/EnhanceGallery;->pointToPosition(II)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDownTouchPosition:I

    .line 1595
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDownTouchPosition:I

    if-ltz v0, :cond_1

    .line 1596
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDownTouchPosition:I

    iget v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDownTouchView:Landroid/view/View;

    .line 1597
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDownTouchView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 1600
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mMotionX:I

    .line 1601
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mMotionY:I

    .line 1603
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    iput v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDownFirstPosition:I

    .line 1604
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getChildCount()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDownLastPosition:I

    .line 1606
    iput-boolean v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mIsFirstScroll:Z

    .line 1608
    return v2

    .line 1586
    :cond_2
    iput v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mTouchMode:I

    goto :goto_0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1447
    iget v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDeltaLength:I

    if-lez v2, :cond_1

    iget-boolean v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mScrollEnableWhenLessContent:Z

    if-nez v2, :cond_1

    .line 1521
    :cond_0
    :goto_0
    return v0

    .line 1450
    :cond_1
    iget-boolean v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mShouldCallbackDuringFling:Z

    if-nez v2, :cond_2

    .line 1454
    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/meizu/common/widget/EnhanceGallery;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1457
    iget-boolean v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSuppressSelectionChanged:Z

    if-nez v2, :cond_2

    iput-boolean v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSuppressSelectionChanged:Z

    .line 1460
    :cond_2
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getChildCount()I

    move-result v2

    .line 1463
    iget v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mTouchMode:I

    packed-switch v3, :pswitch_data_0

    :goto_1
    :pswitch_0
    move v0, v1

    .line 1521
    goto :goto_0

    .line 1465
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const v4, 0x44bb8000    # 1500.0f

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_0

    .line 1469
    iput v6, p0, Lcom/meizu/common/widget/EnhanceGallery;->mTouchMode:I

    .line 1471
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 1472
    iget v4, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChildWidth:I

    iget v5, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    add-int/2addr v4, v5

    div-int/2addr v3, v4

    int-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v3, v4

    .line 1473
    iget v4, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChildWidth:I

    iget v5, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    add-int/2addr v4, v5

    mul-int/2addr v3, v4

    .line 1475
    const/4 v4, 0x0

    cmpl-float v4, p3, v4

    if-lez v4, :cond_6

    .line 1477
    iget-boolean v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mIsRtl:Z

    if-eqz v2, :cond_4

    .line 1478
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDownLastPosition:I

    iget v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1479
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    sub-int/2addr v2, v3

    .line 1481
    if-eqz v0, :cond_3

    .line 1482
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    sub-int v0, v2, v0

    .line 1514
    :goto_2
    invoke-virtual {p0, v6}, Lcom/meizu/common/widget/EnhanceGallery;->reportScrollStateChange(I)V

    .line 1515
    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFlingRunnable:Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;

    invoke-virtual {v2, v0}, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->startUsingDistance(I)V

    goto :goto_1

    .line 1484
    :cond_3
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    sub-int v0, v2, v0

    goto :goto_2

    .line 1487
    :cond_4
    iget v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDownFirstPosition:I

    iget v4, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    sub-int/2addr v2, v4

    invoke-virtual {p0, v2}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1488
    if-eqz v2, :cond_5

    .line 1489
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    sub-int/2addr v0, v2

    sub-int v0, v3, v0

    goto :goto_2

    .line 1491
    :cond_5
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingLeft()I

    move-result v2

    iget v4, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    add-int/2addr v2, v4

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int v0, v2, v0

    add-int/2addr v0, v3

    goto :goto_2

    .line 1495
    :cond_6
    iget-boolean v4, p0, Lcom/meizu/common/widget/EnhanceGallery;->mIsRtl:Z

    if-eqz v4, :cond_8

    .line 1496
    iget v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDownFirstPosition:I

    iget v4, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    sub-int/2addr v2, v4

    invoke-virtual {p0, v2}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1497
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    sub-int/2addr v4, v5

    .line 1499
    if-eqz v2, :cond_7

    .line 1500
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v0

    sub-int v0, v4, v0

    sub-int v0, v3, v0

    neg-int v0, v0

    goto :goto_2

    .line 1502
    :cond_7
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    sub-int v0, v4, v0

    sub-int v0, v3, v0

    neg-int v0, v0

    goto :goto_2

    .line 1505
    :cond_8
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDownLastPosition:I

    iget v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    sub-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1506
    if-eqz v0, :cond_9

    .line 1507
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingLeft()I

    move-result v2

    iget v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    add-int/2addr v2, v3

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int v0, v2, v0

    goto/16 :goto_2

    .line 1509
    :cond_9
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingLeft()I

    move-result v0

    iget v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v0, v2

    goto/16 :goto_2

    .line 1518
    :pswitch_2
    const/4 v0, 0x4

    iput v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mTouchMode:I

    goto/16 :goto_1

    .line 1463
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1830
    invoke-super {p0, p1, p2, p3}, Lcom/meizu/common/widget/AbsSpinner;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1837
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSelectedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceMode:I

    if-ne v0, v1, :cond_0

    .line 1838
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSelectedChild:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->requestFocus(I)Z

    .line 1839
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSelectedChild:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 1842
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .prologue
    .line 3000
    invoke-super {p0, p1}, Lcom/meizu/common/widget/AbsSpinner;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 3001
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 3005
    invoke-super {p0, p1}, Lcom/meizu/common/widget/AbsSpinner;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 3006
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getCount()I

    move-result v0

    .line 3008
    const/4 v1, 0x0

    invoke-static {v2, v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZI)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object v0

    .line 3010
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    .line 3011
    const-class v0, Lcom/meizu/common/widget/EnhanceGallery;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 3012
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2970
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    .line 2971
    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    if-nez v0, :cond_1

    .line 2996
    :cond_0
    :goto_0
    return-void

    .line 2975
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getSelectedItemPosition()I

    move-result v0

    if-ne p2, v0, :cond_4

    .line 2976
    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    .line 2977
    const/16 v0, 0x8

    invoke-virtual {p3, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2982
    :goto_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2983
    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2984
    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocusable(Z)V

    .line 2987
    :cond_2
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2988
    const/16 v0, 0x10

    invoke-virtual {p3, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2989
    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 2992
    :cond_3
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->isLongClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2993
    const/16 v0, 0x20

    invoke-virtual {p3, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2994
    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    goto :goto_0

    .line 2979
    :cond_4
    const/4 v0, 0x4

    invoke-virtual {p3, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 523
    invoke-super/range {p0 .. p5}, Lcom/meizu/common/widget/AbsSpinner;->onLayout(ZIIII)V

    .line 529
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mInLayout:Z

    .line 530
    invoke-virtual {p0, v1, v1}, Lcom/meizu/common/widget/EnhanceGallery;->layout(IZ)V

    .line 531
    iput-boolean v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mInLayout:Z

    .line 532
    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1648
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDownTouchPosition:I

    if-gez v0, :cond_0

    .line 1677
    :goto_0
    return-void

    .line 1651
    :cond_0
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceMode:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 1652
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDownTouchPosition:I

    .line 1653
    iget v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1654
    if-eqz v2, :cond_1

    .line 1655
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDownTouchPosition:I

    .line 1656
    iget-object v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget v4, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDownTouchPosition:I

    invoke-interface {v3, v4}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v4

    .line 1660
    iget-boolean v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDataChanged:Z

    if-nez v3, :cond_2

    .line 1661
    invoke-virtual {p0, v2, v0, v4, v5}, Lcom/meizu/common/widget/EnhanceGallery;->performLongPress(Landroid/view/View;IJ)Z

    move-result v0

    .line 1663
    :goto_1
    if-eqz v0, :cond_1

    .line 1664
    const/4 v0, -0x1

    iput v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mTouchMode:I

    .line 1665
    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/EnhanceGallery;->setPressed(Z)V

    .line 1666
    invoke-virtual {v2, v1}, Landroid/view/View;->setPressed(Z)V

    .line 1674
    :cond_1
    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/EnhanceGallery;->performHapticFeedback(I)Z

    .line 1675
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDownTouchPosition:I

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/EnhanceGallery;->getItemIdAtPosition(I)J

    move-result-wide v0

    .line 1676
    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDownTouchView:Landroid/view/View;

    iget v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDownTouchPosition:I

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/meizu/common/widget/EnhanceGallery;->dispatchLongPress(Landroid/view/View;IJ)Z

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 7

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1526
    iget v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDeltaLength:I

    if-lez v2, :cond_0

    iget-boolean v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mScrollEnableWhenLessContent:Z

    if-nez v2, :cond_0

    .line 1576
    :goto_0
    return v0

    .line 1529
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1533
    iget-boolean v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mShouldCallbackDuringFling:Z

    if-nez v2, :cond_7

    .line 1534
    iget-boolean v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mIsFirstScroll:Z

    if-eqz v2, :cond_2

    .line 1540
    iget-boolean v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSuppressSelectionChanged:Z

    if-nez v2, :cond_1

    iput-boolean v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSuppressSelectionChanged:Z

    .line 1541
    :cond_1
    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0xfa

    invoke-virtual {p0, v2, v4, v5}, Lcom/meizu/common/widget/EnhanceGallery;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1547
    :cond_2
    :goto_1
    iget-boolean v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mIsFirstScroll:Z

    if-eqz v2, :cond_3

    .line 1548
    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/EnhanceGallery;->reportScrollStateChange(I)V

    .line 1551
    :cond_3
    iput v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mTouchMode:I

    .line 1555
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getChildCount()I

    .line 1556
    float-to-int v2, p3

    .line 1558
    iget v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mMaxOverScrollDistance:I

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getWidth()I

    move-result v4

    if-le v3, v4, :cond_4

    .line 1559
    iget v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDefaultMaxOverScrollDistance:I

    iput v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mMaxOverScrollDistance:I

    .line 1562
    :cond_4
    iget v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCurrentOverScrollDistance:I

    if-eqz v3, :cond_5

    iget v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mMaxOverScrollDistance:I

    if-eqz v3, :cond_5

    .line 1563
    const/4 v3, 0x3

    iput v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mTouchMode:I

    .line 1564
    iget v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCurrentOverScrollDistance:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcom/meizu/common/widget/EnhanceGallery;->mMaxOverScrollDistance:I

    if-lt v3, v4, :cond_8

    move v2, v0

    .line 1572
    :cond_5
    :goto_2
    if-eqz v2, :cond_6

    .line 1573
    mul-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/meizu/common/widget/EnhanceGallery;->trackMotionScroll(I)Z

    .line 1575
    :cond_6
    iput-boolean v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mIsFirstScroll:Z

    move v0, v1

    .line 1576
    goto :goto_0

    .line 1544
    :cond_7
    iget-boolean v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSuppressSelectionChanged:Z

    if-eqz v2, :cond_2

    iput-boolean v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSuppressSelectionChanged:Z

    goto :goto_1

    .line 1567
    :cond_8
    iget v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCurrentOverScrollDistance:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v6

    iget v4, p0, Lcom/meizu/common/widget/EnhanceGallery;->mMaxOverScrollDistance:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    sub-float v3, v6, v3

    .line 1568
    int-to-float v2, v2

    mul-float/2addr v2, v3

    float-to-int v2, v2

    goto :goto_2
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    .prologue
    .line 1683
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1424
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDownTouchPosition:I

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceMode:I

    if-eqz v0, :cond_2

    .line 1426
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mPerformClick:Lcom/meizu/common/widget/EnhanceGallery$PerformClick;

    if-nez v0, :cond_0

    .line 1427
    new-instance v0, Lcom/meizu/common/widget/EnhanceGallery$PerformClick;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/meizu/common/widget/EnhanceGallery$PerformClick;-><init>(Lcom/meizu/common/widget/EnhanceGallery;Lcom/meizu/common/widget/EnhanceGallery$1;)V

    iput-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mPerformClick:Lcom/meizu/common/widget/EnhanceGallery$PerformClick;

    .line 1430
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mPerformClick:Lcom/meizu/common/widget/EnhanceGallery$PerformClick;

    .line 1431
    iget v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDownTouchPosition:I

    iput v1, v0, Lcom/meizu/common/widget/EnhanceGallery$PerformClick;->mClickMotionPosition:I

    .line 1432
    invoke-virtual {v0}, Lcom/meizu/common/widget/EnhanceGallery$PerformClick;->rememberWindowAttachCount()V

    .line 1433
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/EnhanceGallery;->post(Ljava/lang/Runnable;)Z

    .line 1442
    :cond_1
    :goto_0
    return v4

    .line 1436
    :cond_2
    iget-boolean v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mShouldCallbackOnUnselectedItemClick:Z

    if-nez v0, :cond_3

    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDownTouchPosition:I

    iget v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSelectedPosition:I

    if-ne v0, v1, :cond_1

    .line 1437
    :cond_3
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDownTouchView:Landroid/view/View;

    iget v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDownTouchPosition:I

    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDownTouchPosition:I

    .line 1438
    invoke-interface {v2, v3}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v2

    .line 1437
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/meizu/common/widget/EnhanceGallery;->performItemClick(Landroid/view/View;IJ)Z

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 4

    .prologue
    .line 833
    invoke-super {p0, p1, p2, p3, p4}, Lcom/meizu/common/widget/AbsSpinner;->onSizeChanged(IIII)V

    .line 834
    new-instance v0, Lcom/meizu/common/widget/EnhanceGallery$2;

    invoke-direct {v0, p0}, Lcom/meizu/common/widget/EnhanceGallery$2;-><init>(Lcom/meizu/common/widget/EnhanceGallery;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {p0, v0, v2, v3}, Lcom/meizu/common/widget/EnhanceGallery;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 860
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    .line 1408
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1410
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 1411
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1413
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->onUp()V

    .line 1418
    :cond_0
    :goto_0
    return v0

    .line 1414
    :cond_1
    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 1415
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->onCancel()V

    goto :goto_0
.end method

.method onUp()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 1615
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mTouchMode:I

    packed-switch v0, :pswitch_data_0

    .line 1635
    :cond_0
    :goto_0
    :pswitch_0
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceGallery;->dispatchUnpress()V

    .line 1636
    return-void

    .line 1617
    :pswitch_1
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceGallery;->scrollIntoSlots()V

    goto :goto_0

    .line 1620
    :pswitch_2
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceGallery;->scrollIntoSlots()V

    goto :goto_0

    .line 1624
    :pswitch_3
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCurrentOverScrollDistance:I

    if-eqz v0, :cond_0

    .line 1625
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mLastScrollState:I

    if-eq v0, v1, :cond_1

    .line 1626
    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/EnhanceGallery;->reportScrollStateChange(I)V

    .line 1629
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFlingRunnable:Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;

    invoke-virtual {v0}, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->startSpringback()V

    goto :goto_0

    .line 1615
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public performItemClicks(Landroid/view/View;IJ)Z
    .locals 9

    .prologue
    const/4 v0, 0x0

    const/4 v7, 0x1

    .line 2735
    .line 2738
    iget v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceMode:I

    if-eqz v1, :cond_f

    .line 2742
    iget v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_6

    .line 2743
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    if-nez v1, :cond_3

    move v6, v7

    .line 2744
    :goto_0
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2745
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v1}, Landroid/widget/SpinnerAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2746
    if-eqz v6, :cond_4

    .line 2747
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v2, p2}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 2752
    :cond_0
    :goto_1
    if-eqz v6, :cond_5

    .line 2753
    iget v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedItemCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedItemCount:I

    .line 2757
    :goto_2
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mMultiChoiceModeCallback:Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeWrapper;

    if-eqz v1, :cond_e

    .line 2758
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mMultiChoiceModeCallback:Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeWrapper;

    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceActionMode:Landroid/view/ActionMode;

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    move v1, v0

    :goto_3
    move v2, v7

    .line 2779
    :goto_4
    if-eqz v2, :cond_1

    .line 2780
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceGallery;->updateOnScreenCheckedViews()V

    .line 2784
    :cond_1
    :goto_5
    if-eqz v1, :cond_c

    .line 2785
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mOnItemClickListener:Lcom/meizu/common/widget/AdapterView$OnItemClickListener;

    if-eqz v1, :cond_c

    .line 2787
    if-eqz p1, :cond_2

    .line 2788
    invoke-virtual {p1, v7}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 2790
    :cond_2
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mOnItemClickListener:Lcom/meizu/common/widget/AdapterView$OnItemClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/meizu/common/widget/AdapterView$OnItemClickListener;->onItemClick(Lcom/meizu/common/widget/AdapterView;Landroid/view/View;IJ)V

    .line 2795
    :goto_6
    return v7

    :cond_3
    move v6, v0

    .line 2743
    goto :goto_0

    .line 2749
    :cond_4
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v2, p2}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_1

    .line 2755
    :cond_5
    iget v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedItemCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedItemCount:I

    goto :goto_2

    .line 2763
    :cond_6
    iget v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceMode:I

    if-ne v1, v7, :cond_d

    .line 2764
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    if-nez v1, :cond_9

    move v1, v7

    .line 2765
    :goto_7
    if-eqz v1, :cond_a

    .line 2766
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 2767
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2768
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v1}, Landroid/widget/SpinnerAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2769
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->clear()V

    .line 2770
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v2, p2}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 2772
    :cond_7
    iput v7, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedItemCount:I

    :cond_8
    :goto_8
    move v2, v7

    move v1, v7

    .line 2776
    goto :goto_4

    :cond_9
    move v1, v0

    .line 2764
    goto :goto_7

    .line 2773
    :cond_a
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 2774
    :cond_b
    iput v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedItemCount:I

    goto :goto_8

    :cond_c
    move v7, v0

    .line 2795
    goto :goto_6

    :cond_d
    move v2, v0

    move v1, v7

    goto/16 :goto_4

    :cond_e
    move v1, v7

    goto/16 :goto_3

    :cond_f
    move v1, v7

    goto/16 :goto_5
.end method

.method performLongPress(Landroid/view/View;IJ)Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 2361
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_c

    .line 2362
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mMultiChoiceModeCallback:Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeWrapper;

    .line 2363
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/EnhanceGallery;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_9

    .line 2369
    :cond_0
    iput p2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDragAndDropPosition:I

    .line 2371
    const v0, 0x1020001

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2372
    if-eqz v1, :cond_1

    instance-of v0, v1, Landroid/widget/Checkable;

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 2373
    check-cast v0, Landroid/widget/Checkable;

    invoke-interface {v0, v2}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 2376
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mTouchFrame:Landroid/graphics/Rect;

    .line 2377
    if-nez v0, :cond_2

    .line 2378
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mTouchFrame:Landroid/graphics/Rect;

    .line 2379
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mTouchFrame:Landroid/graphics/Rect;

    .line 2381
    :cond_2
    invoke-virtual {p1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 2383
    iget v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mMotionX:I

    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDragOffsetX:I

    .line 2384
    iget v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mMotionY:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int v0, v3, v0

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDragOffsetY:I

    .line 2386
    invoke-virtual {p1, v6}, Landroid/view/View;->setActivated(Z)V

    .line 2387
    invoke-virtual {p1}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 2389
    iget-boolean v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDragEnable:Z

    if-eqz v0, :cond_b

    .line 2390
    instance-of v0, p1, Lcom/meizu/common/widget/EnhanceGallery$DragShadowItem;

    if-eqz v0, :cond_6

    move-object v0, p1

    .line 2391
    check-cast v0, Lcom/meizu/common/widget/EnhanceGallery$DragShadowItem;

    .line 2392
    new-instance v3, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;

    invoke-interface {v0}, Lcom/meizu/common/widget/EnhanceGallery$DragShadowItem;->getDragView()Landroid/view/View;

    move-result-object v4

    invoke-interface {v0}, Lcom/meizu/common/widget/EnhanceGallery$DragShadowItem;->needBackground()Z

    move-result v5

    invoke-interface {v0}, Lcom/meizu/common/widget/EnhanceGallery$DragShadowItem;->getDragViewShowPosition()Landroid/graphics/Point;

    move-result-object v0

    invoke-direct {v3, p0, v4, v5, v0}, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;-><init>(Lcom/meizu/common/widget/EnhanceGallery;Landroid/view/View;ZLandroid/graphics/Point;)V

    iput-object v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mShadowBuilder:Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;

    .line 2397
    :goto_0
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mShadowBuilder:Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;

    invoke-virtual {p0, v8, v0, p0, v6}, Lcom/meizu/common/widget/EnhanceGallery;->startDragNow(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 2399
    if-eqz v1, :cond_3

    instance-of v0, v1, Landroid/widget/Checkable;

    if-eqz v0, :cond_3

    .line 2400
    check-cast v1, Landroid/widget/Checkable;

    invoke-interface {v1, v6}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 2402
    :cond_3
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 2403
    const/4 v0, -0x1

    iput v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDragAndDropPosition:I

    .line 2405
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mPerformClick:Lcom/meizu/common/widget/EnhanceGallery$PerformClick;

    if-nez v0, :cond_4

    .line 2406
    new-instance v0, Lcom/meizu/common/widget/EnhanceGallery$PerformClick;

    invoke-direct {v0, p0, v8}, Lcom/meizu/common/widget/EnhanceGallery$PerformClick;-><init>(Lcom/meizu/common/widget/EnhanceGallery;Lcom/meizu/common/widget/EnhanceGallery$1;)V

    iput-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mPerformClick:Lcom/meizu/common/widget/EnhanceGallery$PerformClick;

    .line 2410
    :cond_4
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mPerformClick:Lcom/meizu/common/widget/EnhanceGallery$PerformClick;

    .line 2411
    iput p2, v0, Lcom/meizu/common/widget/EnhanceGallery$PerformClick;->mClickMotionPosition:I

    .line 2412
    invoke-virtual {v0}, Lcom/meizu/common/widget/EnhanceGallery$PerformClick;->rememberWindowAttachCount()V

    .line 2413
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/EnhanceGallery;->post(Ljava/lang/Runnable;)Z

    move v0, v2

    .line 2448
    :cond_5
    :goto_1
    return v0

    .line 2394
    :cond_6
    new-instance v0, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;

    invoke-direct {v0, p0, p1}, Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;-><init>(Lcom/meizu/common/widget/EnhanceGallery;Landroid/view/View;)V

    iput-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mShadowBuilder:Lcom/meizu/common/widget/EnhanceGallery$ListViewDragShadowBuilder;

    goto :goto_0

    .line 2417
    :cond_7
    invoke-virtual {p0, v6}, Lcom/meizu/common/widget/EnhanceGallery;->performHapticFeedback(I)Z

    .line 2418
    instance-of v0, p1, Lcom/meizu/common/widget/EnhanceGallery$DragShadowItem;

    if-eqz v0, :cond_a

    move-object v0, p1

    .line 2419
    check-cast v0, Lcom/meizu/common/widget/EnhanceGallery$DragShadowItem;

    invoke-interface {v0}, Lcom/meizu/common/widget/EnhanceGallery$DragShadowItem;->getDragView()Landroid/view/View;

    move-result-object v0

    .line 2420
    if-eqz v0, :cond_8

    .line 2421
    invoke-virtual {v0, v7}, Landroid/view/View;->setAlpha(F)V

    .line 2423
    :cond_8
    iget-boolean v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChangeChildAlphaWhenDragView:Z

    if-eqz v0, :cond_9

    .line 2424
    invoke-virtual {p1, v7}, Landroid/view/View;->setAlpha(F)V

    :cond_9
    :goto_2
    move v0, v2

    .line 2434
    goto :goto_1

    .line 2427
    :cond_a
    invoke-virtual {p1, v7}, Landroid/view/View;->setAlpha(F)V

    goto :goto_2

    .line 2430
    :cond_b
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDragAndDropPosition:I

    invoke-virtual {p0, v0, v2}, Lcom/meizu/common/widget/EnhanceGallery;->setItemChecked(IZ)V

    goto :goto_2

    .line 2438
    :cond_c
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mOnItemLongClickListener:Lcom/meizu/common/widget/AdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_e

    .line 2439
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mOnItemLongClickListener:Lcom/meizu/common/widget/AdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/meizu/common/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Lcom/meizu/common/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v0

    .line 2441
    :goto_3
    if-nez v0, :cond_d

    .line 2442
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/meizu/common/widget/EnhanceGallery;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/widget/EnhanceGallery$AdapterContextMenuInfo;

    iput-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mContextMenuInfo:Lcom/meizu/common/widget/EnhanceGallery$AdapterContextMenuInfo;

    .line 2443
    invoke-super {p0, p0}, Lcom/meizu/common/widget/AbsSpinner;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v0

    .line 2445
    :cond_d
    if-eqz v0, :cond_5

    .line 2446
    invoke-virtual {p0, v6}, Lcom/meizu/common/widget/EnhanceGallery;->performHapticFeedback(I)Z

    goto :goto_1

    :cond_e
    move v0, v6

    goto :goto_3
.end method

.method reportScrollStateChange(I)V
    .locals 1

    .prologue
    .line 2056
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mLastScrollState:I

    if-eq p1, v0, :cond_0

    .line 2057
    iput p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mLastScrollState:I

    .line 2058
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mOnScrollListener:Lcom/meizu/common/widget/EnhanceGallery$OnScrollListener;

    if-eqz v0, :cond_0

    .line 2059
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mOnScrollListener:Lcom/meizu/common/widget/EnhanceGallery$OnScrollListener;

    invoke-interface {v0, p0, p1}, Lcom/meizu/common/widget/EnhanceGallery$OnScrollListener;->onScrollStateChanged(Lcom/meizu/common/widget/EnhanceGallery;I)V

    .line 2062
    :cond_0
    return-void
.end method

.method selectionChanged()V
    .locals 1

    .prologue
    .line 809
    iget-boolean v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSuppressSelectionChanged:Z

    if-nez v0, :cond_0

    .line 810
    invoke-super {p0}, Lcom/meizu/common/widget/AbsSpinner;->selectionChanged()V

    .line 812
    :cond_0
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .prologue
    .line 127
    check-cast p1, Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/EnhanceGallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/SpinnerAdapter;)V
    .locals 1

    .prologue
    .line 2117
    invoke-super {p0, p1}, Lcom/meizu/common/widget/AbsSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 2118
    if-eqz p1, :cond_2

    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceMode:I

    if-eqz v0, :cond_2

    .line 2119
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_0

    .line 2120
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 2122
    :cond_0
    invoke-interface {p1}, Landroid/widget/SpinnerAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez v0, :cond_1

    .line 2123
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 2125
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->clearChoices()V

    .line 2127
    :cond_2
    return-void
.end method

.method public setAnimationDuration(I)V
    .locals 0

    .prologue
    .line 457
    iput p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mAnimationDuration:I

    .line 458
    return-void
.end method

.method public setCallbackDuringFling(Z)V
    .locals 0

    .prologue
    .line 411
    iput-boolean p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mShouldCallbackDuringFling:Z

    .line 412
    return-void
.end method

.method public setCallbackOnUnselectedItemClick(Z)V
    .locals 0

    .prologue
    .line 436
    iput-boolean p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mShouldCallbackOnUnselectedItemClick:Z

    .line 437
    return-void
.end method

.method public setChoiceMode(I)V
    .locals 2

    .prologue
    .line 2139
    iput p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceMode:I

    .line 2140
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 2141
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 2142
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 2144
    :cond_0
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceMode:I

    if-eqz v0, :cond_3

    .line 2145
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_1

    .line 2146
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 2148
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2149
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 2152
    :cond_2
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 2153
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->clearChoices()V

    .line 2154
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/EnhanceGallery;->setLongClickable(Z)V

    .line 2157
    :cond_3
    return-void
.end method

.method public setDragEnable(Z)V
    .locals 0

    .prologue
    .line 444
    iput-boolean p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDragEnable:Z

    .line 445
    return-void
.end method

.method public setDragItemBackgroundResources([I)V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 2510
    if-eqz p1, :cond_2

    .line 2511
    array-length v0, p1

    if-lez v0, :cond_0

    .line 2512
    const/4 v0, 0x0

    aget v0, p1, v0

    iput v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDragViewBackground:I

    .line 2514
    :cond_0
    array-length v0, p1

    if-le v0, v1, :cond_1

    .line 2515
    aget v0, p1, v1

    iput v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDragViewBackgroundFilter:I

    .line 2517
    :cond_1
    array-length v0, p1

    if-le v0, v2, :cond_2

    .line 2518
    aget v0, p1, v2

    iput v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDragViewBackgroundDelete:I

    .line 2521
    :cond_2
    return-void
.end method

.method public setGravity(I)V
    .locals 1

    .prologue
    .line 1822
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mGravity:I

    if-eq v0, p1, :cond_0

    .line 1823
    iput p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mGravity:I

    .line 1824
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->requestLayout()V

    .line 1826
    :cond_0
    return-void
.end method

.method public setItemChecked(IZ)V
    .locals 7

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2807
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceMode:I

    if-nez v0, :cond_1

    .line 2873
    :cond_0
    :goto_0
    return-void

    .line 2812
    :cond_1
    if-eqz p2, :cond_4

    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_4

    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceMode:I

    if-ne v0, v3, :cond_4

    .line 2814
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mMultiChoiceModeCallback:Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeWrapper;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mMultiChoiceModeCallback:Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeWrapper;

    .line 2815
    invoke-virtual {v0}, Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeWrapper;->hasWrappedCallback()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2816
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "StaggeredGridView: attempted to start selection mode for CHOICE_MODE_MULTIPLE_MODAL but no choice mode callback was supplied. Call setMultiChoiceModeListener to set a callback."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2820
    :cond_3
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mMultiChoiceModeCallback:Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeWrapper;

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/EnhanceGallery;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 2823
    :cond_4
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceMode:I

    if-ne v0, v3, :cond_a

    .line 2824
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    .line 2825
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2826
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v1}, Landroid/widget/SpinnerAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2827
    if-eqz p2, :cond_8

    .line 2828
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v2, p1}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 2833
    :cond_5
    :goto_1
    if-eq v0, p2, :cond_6

    .line 2834
    if-eqz p2, :cond_9

    .line 2835
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedItemCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedItemCount:I

    .line 2840
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_7

    .line 2841
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0, p1}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v4

    .line 2842
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mMultiChoiceModeCallback:Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeWrapper;

    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mChoiceActionMode:Landroid/view/ActionMode;

    move v3, p1

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 2869
    :cond_7
    :goto_3
    iget-boolean v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mInLayout:Z

    if-nez v0, :cond_0

    .line 2870
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->invalidateViews()V

    goto :goto_0

    .line 2830
    :cond_8
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v2, p1}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_1

    .line 2837
    :cond_9
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedItemCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedItemCount:I

    goto :goto_2

    .line 2846
    :cond_a
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_e

    move v0, v1

    .line 2849
    :goto_4
    if-nez p2, :cond_b

    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/EnhanceGallery;->isItemChecked(I)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 2850
    :cond_b
    iget-object v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->clear()V

    .line 2851
    if-eqz v0, :cond_c

    .line 2852
    iget-object v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->clear()V

    .line 2857
    :cond_c
    if-eqz p2, :cond_f

    .line 2858
    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2859
    if-eqz v0, :cond_d

    .line 2860
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v2, p1}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 2862
    :cond_d
    iput v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedItemCount:I

    goto :goto_3

    :cond_e
    move v0, v2

    .line 2846
    goto :goto_4

    .line 2863
    :cond_f
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 2864
    :cond_10
    iput v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCheckedItemCount:I

    goto :goto_3
.end method

.method public setMaxOverScrollDistance(I)V
    .locals 1

    .prologue
    .line 419
    if-gez p1, :cond_0

    .line 420
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mDefaultMaxOverScrollDistance:I

    iput v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mMaxOverScrollDistance:I

    .line 424
    :goto_0
    return-void

    .line 422
    :cond_0
    iput p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mMaxOverScrollDistance:I

    goto :goto_0
.end method

.method public setMultiChoiceModeListener(Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeListener;)V
    .locals 1

    .prologue
    .line 2182
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mMultiChoiceModeCallback:Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeWrapper;

    if-nez v0, :cond_0

    .line 2183
    new-instance v0, Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeWrapper;

    invoke-direct {v0, p0}, Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeWrapper;-><init>(Lcom/meizu/common/widget/EnhanceGallery;)V

    iput-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mMultiChoiceModeCallback:Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeWrapper;

    .line 2185
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mMultiChoiceModeCallback:Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeWrapper;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeWrapper;->setWrapped(Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeListener;)V

    .line 2186
    return-void
.end method

.method public setOnScrollListener(Lcom/meizu/common/widget/EnhanceGallery$OnScrollListener;)V
    .locals 0

    .prologue
    .line 2032
    iput-object p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mOnScrollListener:Lcom/meizu/common/widget/EnhanceGallery$OnScrollListener;

    .line 2033
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->invokeOnItemScrollListener()V

    .line 2034
    return-void
.end method

.method public setScrollEnableWhenLessContent(Z)V
    .locals 0

    .prologue
    .line 476
    iput-boolean p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mScrollEnableWhenLessContent:Z

    .line 477
    return-void
.end method

.method setSelectedPositionInt(I)V
    .locals 0

    .prologue
    .line 1774
    invoke-super {p0, p1}, Lcom/meizu/common/widget/AbsSpinner;->setSelectedPositionInt(I)V

    .line 1777
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceGallery;->updateSelectedItemMetadata()V

    .line 1778
    return-void
.end method

.method public setSpacing(I)V
    .locals 0

    .prologue
    .line 468
    iput p1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    .line 469
    return-void
.end method

.method public showContextMenu()Z
    .locals 4

    .prologue
    .line 1743
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSelectedPosition:I

    if-ltz v0, :cond_0

    .line 1744
    iget v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSelectedPosition:I

    iget v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    sub-int/2addr v0, v1

    .line 1745
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1746
    iget v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSelectedPosition:I

    iget-wide v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSelectedRowId:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/meizu/common/widget/EnhanceGallery;->dispatchLongPress(Landroid/view/View;IJ)Z

    move-result v0

    .line 1749
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 4

    .prologue
    .line 1731
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/EnhanceGallery;->getPositionForView(Landroid/view/View;)I

    move-result v0

    .line 1732
    if-gez v0, :cond_0

    .line 1733
    const/4 v0, 0x0

    .line 1737
    :goto_0
    return v0

    .line 1736
    :cond_0
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v1, v0}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v2

    .line 1737
    invoke-direct {p0, p1, v0, v2, v3}, Lcom/meizu/common/widget/EnhanceGallery;->dispatchLongPress(Landroid/view/View;IJ)Z

    move-result v0

    goto :goto_0
.end method

.method startDragNow(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z
    .locals 1

    .prologue
    .line 2452
    const/4 v0, 0x0

    .line 2471
    return v0
.end method

.method trackMotionScroll(I)Z
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 546
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getChildCount()I

    move-result v4

    .line 547
    if-eqz v4, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move v1, v2

    .line 626
    :goto_0
    return v1

    .line 551
    :cond_1
    if-gez p1, :cond_4

    move v0, v1

    .line 557
    :goto_1
    iget-boolean v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mIsRtl:Z

    if-eqz v3, :cond_7

    .line 558
    iget v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    if-nez v3, :cond_5

    .line 559
    invoke-virtual {p0, v2}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    sub-int/2addr v5, v6

    if-lt v3, v5, :cond_5

    if-gtz p1, :cond_5

    move v3, v1

    .line 560
    :goto_2
    iget v5, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    add-int/2addr v5, v4

    iget v6, p0, Lcom/meizu/common/widget/EnhanceGallery;->mItemCount:I

    if-ne v5, v6, :cond_6

    add-int/lit8 v4, v4, -0x1

    .line 561
    invoke-virtual {p0, v4}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingLeft()I

    move-result v5

    if-lt v4, v5, :cond_6

    if-ltz p1, :cond_6

    move v4, v1

    .line 569
    :goto_3
    if-nez v4, :cond_2

    if-eqz v3, :cond_f

    :cond_2
    move v3, v1

    .line 573
    :goto_4
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/EnhanceGallery;->offsetChildrenLeftAndRight(I)V

    .line 575
    if-nez v3, :cond_3

    .line 576
    invoke-direct {p0, v0}, Lcom/meizu/common/widget/EnhanceGallery;->detachOffScreenChildren(Z)V

    .line 578
    if-eqz v0, :cond_a

    .line 580
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceGallery;->fillToGalleryRight()V

    .line 586
    :goto_5
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mRecycler:Lcom/meizu/common/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v0}, Lcom/meizu/common/widget/AbsSpinner$RecycleBin;->clear()V

    .line 587
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceGallery;->setSelectionView()V

    .line 590
    :cond_3
    iput v2, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCurrentOverScrollDistance:I

    .line 591
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getChildCount()I

    move-result v0

    .line 595
    iget-boolean v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mIsRtl:Z

    if-eqz v3, :cond_c

    .line 596
    invoke-virtual {p0, v2}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    .line 597
    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v4}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    .line 598
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    sub-int/2addr v5, v6

    .line 600
    iget v6, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    if-nez v6, :cond_b

    if-ge v3, v5, :cond_b

    .line 601
    sub-int v0, v5, v3

    iput v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCurrentOverScrollDistance:I

    .line 622
    :goto_6
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->invokeOnItemScrollListener()V

    .line 623
    invoke-virtual {p0, v2, v2, v2, v2}, Lcom/meizu/common/widget/EnhanceGallery;->onScrollChanged(IIII)V

    .line 625
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->invalidate()V

    goto/16 :goto_0

    :cond_4
    move v0, v2

    .line 551
    goto/16 :goto_1

    :cond_5
    move v3, v2

    .line 559
    goto :goto_2

    :cond_6
    move v4, v2

    .line 561
    goto :goto_3

    .line 563
    :cond_7
    iget v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    if-nez v3, :cond_8

    .line 564
    invoke-virtual {p0, v2}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingLeft()I

    move-result v5

    iget v6, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    add-int/2addr v5, v6

    if-lt v3, v5, :cond_8

    if-ltz p1, :cond_8

    move v3, v1

    .line 565
    :goto_7
    iget v5, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    add-int/2addr v5, v4

    iget v6, p0, Lcom/meizu/common/widget/EnhanceGallery;->mItemCount:I

    if-ne v5, v6, :cond_9

    add-int/lit8 v4, v4, -0x1

    .line 566
    invoke-virtual {p0, v4}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    if-gt v4, v5, :cond_9

    if-gtz p1, :cond_9

    move v4, v1

    :goto_8
    move v8, v4

    move v4, v3

    move v3, v8

    goto/16 :goto_3

    :cond_8
    move v3, v2

    .line 564
    goto :goto_7

    :cond_9
    move v4, v2

    .line 566
    goto :goto_8

    .line 583
    :cond_a
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceGallery;->fillToGalleryLeft()V

    goto/16 :goto_5

    .line 603
    :cond_b
    iget v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    add-int/2addr v0, v3

    iget v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mItemCount:I

    if-ne v0, v3, :cond_e

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingLeft()I

    move-result v0

    if-le v4, v0, :cond_e

    .line 604
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingLeft()I

    move-result v0

    iget v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    add-int/2addr v0, v3

    sub-int/2addr v0, v4

    iput v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCurrentOverScrollDistance:I

    goto :goto_6

    .line 608
    :cond_c
    invoke-virtual {p0, v2}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 609
    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v4}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    .line 610
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingLeft()I

    move-result v5

    iget v6, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    add-int/2addr v5, v6

    .line 611
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    .line 613
    iget v7, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    if-nez v7, :cond_d

    if-le v3, v5, :cond_d

    .line 614
    sub-int v0, v5, v3

    iput v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCurrentOverScrollDistance:I

    goto/16 :goto_6

    .line 616
    :cond_d
    iget v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    add-int/2addr v0, v3

    iget v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mItemCount:I

    if-ne v0, v3, :cond_e

    if-ge v4, v6, :cond_e

    .line 617
    sub-int v0, v6, v4

    iget v3, p0, Lcom/meizu/common/widget/EnhanceGallery;->mSpacing:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/meizu/common/widget/EnhanceGallery;->mCurrentOverScrollDistance:I

    goto/16 :goto_6

    :cond_e
    move v1, v2

    goto/16 :goto_6

    :cond_f
    move v3, v2

    goto/16 :goto_4
.end method
