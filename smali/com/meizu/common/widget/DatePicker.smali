.class public Lcom/meizu/common/widget/DatePicker;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/DatePicker$SavedState;,
        Lcom/meizu/common/widget/DatePicker$DateAdapter;,
        Lcom/meizu/common/widget/DatePicker$OnDateChangedListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_END_YEAR:I = 0x833

.field private static final DEFAULT_START_YEAR:I = 0x76c

.field private static final NUMBER_OF_MONTHS:I = 0xc


# instance fields
.field private isLunar:Z

.field private isRTL:Z

.field private mDay:I

.field private mDayPicker:Lcom/meizu/common/widget/ScrollTextView;

.field private mDayUnit:Landroid/widget/TextView;

.field private mEndCal:Ljava/util/Calendar;

.field private mEndYear:I

.field mGregorianDays:[Ljava/lang/String;

.field private mIsAccessibilityEnable:Z

.field private mIsDrawLine:Z

.field mIsLayoutRtl:Z

.field private mLayoutResId:I

.field mLeap:Ljava/lang/String;

.field private mLeapUnit:Landroid/widget/TextView;

.field private mLineOneHeight:I

.field private mLinePaint:Landroid/graphics/Paint;

.field private mLineTwoHeight:I

.field mLunarMouths:[Ljava/lang/String;

.field mLunardays:[Ljava/lang/String;

.field private mMonth:I

.field private volatile mMonthLocale:Ljava/util/Locale;

.field private mMonthOfDays:I

.field private mMonthPicker:Lcom/meizu/common/widget/ScrollTextView;

.field private mMonthUnit:Landroid/widget/TextView;

.field private mMonthUpdateLock:Ljava/lang/Object;

.field private mMonths:[Ljava/lang/String;

.field private mNormalItemHeight:F

.field private mNumberNormalTextSizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mNumberSelectTextSize:I

.field private mOldMonth:I

.field private mOldMonthIndex:I

.field private mOldYear:I

.field private mOnDateChangedListener:Lcom/meizu/common/widget/DatePicker$OnDateChangedListener;

.field private mOneScreenCount:I

.field mOrder:Ljava/lang/String;

.field private mPickerHolder:Landroid/widget/LinearLayout;

.field private mSelectItemHeight:F

.field private mShortMonths:[Ljava/lang/String;

.field private mStartCal:Ljava/util/Calendar;

.field private mStartYear:I

.field private mWidthPadding:I

.field private mWordNormalTextSizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mWordSelectTextSize:I

.field private mYear:I

.field private mYearOfMonths:I

.field private mYearPicker:Lcom/meizu/common/widget/ScrollTextView;

.field private mYearUnit:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 468
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 469
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 472
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 473
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12

    .prologue
    const/4 v3, 0x5

    const/16 v9, 0x8

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v6, 0x0

    .line 476
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 81
    iput-boolean v6, p0, Lcom/meizu/common/widget/DatePicker;->isLunar:Z

    .line 105
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonthUpdateLock:Ljava/lang/Object;

    .line 113
    iput v3, p0, Lcom/meizu/common/widget/DatePicker;->mOneScreenCount:I

    .line 114
    sget v0, Lcom/meizu/common/R$layout;->mc_date_picker:I

    iput v0, p0, Lcom/meizu/common/widget/DatePicker;->mLayoutResId:I

    .line 131
    iput-boolean v6, p0, Lcom/meizu/common/widget/DatePicker;->mIsAccessibilityEnable:Z

    .line 137
    iput-boolean v6, p0, Lcom/meizu/common/widget/DatePicker;->mIsLayoutRtl:Z

    .line 141
    iput-boolean v6, p0, Lcom/meizu/common/widget/DatePicker;->isRTL:Z

    .line 143
    iput v6, p0, Lcom/meizu/common/widget/DatePicker;->mOldMonthIndex:I

    .line 477
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 478
    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    if-ne v0, v8, :cond_8

    move v0, v8

    :goto_0
    iput-boolean v0, p0, Lcom/meizu/common/widget/DatePicker;->isRTL:Z

    .line 489
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mWordNormalTextSizes:Ljava/util/List;

    .line 490
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mWordNormalTextSizes:Ljava/util/List;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$dimen;->mc_picker_normal_word_size_one:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 491
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mWordNormalTextSizes:Ljava/util/List;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$dimen;->mc_picker_normal_word_size_two:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 492
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$dimen;->mc_picker_selected_word_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/DatePicker;->mWordSelectTextSize:I

    .line 493
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mNumberNormalTextSizes:Ljava/util/List;

    .line 494
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mNumberNormalTextSizes:Ljava/util/List;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$dimen;->mc_picker_normal_number_size_one:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 495
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mNumberNormalTextSizes:Ljava/util/List;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$dimen;->mc_picker_normal_number_size_two:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 496
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$dimen;->mc_picker_selected_number_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/DatePicker;->mNumberSelectTextSize:I

    .line 498
    sget-object v0, Lcom/meizu/common/R$styleable;->DatePicker:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 500
    sget v1, Lcom/meizu/common/R$styleable;->DatePicker_mcStartYear:I

    const/16 v2, 0x76c

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/DatePicker;->mStartYear:I

    .line 503
    sget v1, Lcom/meizu/common/R$styleable;->DatePicker_mcEndYear:I

    const/16 v2, 0x833

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/DatePicker;->mEndYear:I

    .line 504
    sget v1, Lcom/meizu/common/R$styleable;->DatePicker_mcInternalLayout:I

    iget v2, p0, Lcom/meizu/common/widget/DatePicker;->mLayoutResId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/DatePicker;->mLayoutResId:I

    .line 507
    sget v1, Lcom/meizu/common/R$styleable;->DatePicker_mcVisibleRow:I

    iget v2, p0, Lcom/meizu/common/widget/DatePicker;->mOneScreenCount:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/DatePicker;->mOneScreenCount:I

    .line 510
    sget v1, Lcom/meizu/common/R$styleable;->DatePicker_mcSelectItemHeight:I

    iget v2, p0, Lcom/meizu/common/widget/DatePicker;->mSelectItemHeight:F

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/DatePicker;->mSelectItemHeight:F

    .line 512
    sget v1, Lcom/meizu/common/R$styleable;->DatePicker_mcNormalItemHeight:I

    iget v2, p0, Lcom/meizu/common/widget/DatePicker;->mNormalItemHeight:F

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/DatePicker;->mNormalItemHeight:F

    .line 513
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 515
    invoke-virtual {p0}, Lcom/meizu/common/widget/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/meizu/common/widget/DatePicker;->mLayoutResId:I

    invoke-static {v0, v1, p0}, Lcom/meizu/common/widget/DatePicker;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 517
    sget v0, Lcom/meizu/common/R$id;->mc_leap:I

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mLeapUnit:Landroid/widget/TextView;

    .line 518
    sget v0, Lcom/meizu/common/R$id;->mc_scroll1_text:I

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonthUnit:Landroid/widget/TextView;

    .line 519
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonthUnit:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 520
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonthUnit:Landroid/widget/TextView;

    sget v1, Lcom/meizu/common/R$string;->mc_date_time_month:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 523
    :cond_0
    sget v0, Lcom/meizu/common/R$id;->mc_scroll2_text:I

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mDayUnit:Landroid/widget/TextView;

    .line 524
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mDayUnit:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 525
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mDayUnit:Landroid/widget/TextView;

    sget v1, Lcom/meizu/common/R$string;->mc_date_time_day:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 528
    :cond_1
    sget v0, Lcom/meizu/common/R$id;->mc_scroll3_text:I

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mYearUnit:Landroid/widget/TextView;

    .line 529
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mYearUnit:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 530
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mYearUnit:Landroid/widget/TextView;

    sget v1, Lcom/meizu/common/R$string;->mc_date_time_year:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 534
    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 535
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/DatePicker;->mYear:I

    .line 536
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/DatePicker;->mMonth:I

    .line 537
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/DatePicker;->mDay:I

    .line 538
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/meizu/common/widget/DatePicker;->mOnDateChangedListener:Lcom/meizu/common/widget/DatePicker$OnDateChangedListener;

    .line 540
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v4

    .line 542
    sget v0, Lcom/meizu/common/R$id;->mc_column_parent:I

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mPickerHolder:Landroid/widget/LinearLayout;

    .line 544
    sget v0, Lcom/meizu/common/R$id;->mc_scroll2:I

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/widget/ScrollTextView;

    iput-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mDayPicker:Lcom/meizu/common/widget/ScrollTextView;

    .line 547
    iget v0, p0, Lcom/meizu/common/widget/DatePicker;->mSelectItemHeight:F

    cmpl-float v0, v0, v10

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/meizu/common/widget/DatePicker;->mNormalItemHeight:F

    cmpl-float v0, v0, v10

    if-eqz v0, :cond_3

    .line 548
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mDayPicker:Lcom/meizu/common/widget/ScrollTextView;

    iget v1, p0, Lcom/meizu/common/widget/DatePicker;->mSelectItemHeight:F

    float-to-int v1, v1

    int-to-float v1, v1

    iget v2, p0, Lcom/meizu/common/widget/DatePicker;->mNormalItemHeight:F

    float-to-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/meizu/common/widget/ScrollTextView;->setItemHeight(FF)V

    .line 551
    :cond_3
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mDayPicker:Lcom/meizu/common/widget/ScrollTextView;

    new-instance v1, Lcom/meizu/common/widget/DatePicker$DateAdapter;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/meizu/common/widget/DatePicker$DateAdapter;-><init>(Lcom/meizu/common/widget/DatePicker;I)V

    const/high16 v2, -0x40800000    # -1.0f

    iget v3, p0, Lcom/meizu/common/widget/DatePicker;->mDay:I

    add-int/lit8 v3, v3, -0x1

    iget v5, p0, Lcom/meizu/common/widget/DatePicker;->mOneScreenCount:I

    add-int/lit8 v7, v4, -0x1

    invoke-virtual/range {v0 .. v8}, Lcom/meizu/common/widget/ScrollTextView;->setData(Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;FIIIIIZ)V

    .line 556
    sget v0, Lcom/meizu/common/R$id;->mc_scroll1:I

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/widget/ScrollTextView;

    iput-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonthPicker:Lcom/meizu/common/widget/ScrollTextView;

    .line 558
    iget v0, p0, Lcom/meizu/common/widget/DatePicker;->mSelectItemHeight:F

    cmpl-float v0, v0, v10

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/meizu/common/widget/DatePicker;->mNormalItemHeight:F

    cmpl-float v0, v0, v10

    if-eqz v0, :cond_4

    .line 559
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonthPicker:Lcom/meizu/common/widget/ScrollTextView;

    iget v1, p0, Lcom/meizu/common/widget/DatePicker;->mSelectItemHeight:F

    float-to-int v1, v1

    int-to-float v1, v1

    iget v2, p0, Lcom/meizu/common/widget/DatePicker;->mNormalItemHeight:F

    float-to-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/meizu/common/widget/ScrollTextView;->setItemHeight(FF)V

    .line 563
    :cond_4
    invoke-direct {p0}, Lcom/meizu/common/widget/DatePicker;->getShortMonths()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonths:[Ljava/lang/String;

    .line 564
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonthPicker:Lcom/meizu/common/widget/ScrollTextView;

    new-instance v1, Lcom/meizu/common/widget/DatePicker$DateAdapter;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/meizu/common/widget/DatePicker$DateAdapter;-><init>(Lcom/meizu/common/widget/DatePicker;I)V

    const/high16 v2, -0x40800000    # -1.0f

    iget v3, p0, Lcom/meizu/common/widget/DatePicker;->mMonth:I

    const/16 v4, 0xc

    iget v5, p0, Lcom/meizu/common/widget/DatePicker;->mOneScreenCount:I

    const/16 v7, 0xb

    invoke-virtual/range {v0 .. v8}, Lcom/meizu/common/widget/ScrollTextView;->setData(Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;FIIIIIZ)V

    .line 567
    sget v0, Lcom/meizu/common/R$id;->mc_scroll3:I

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/widget/ScrollTextView;

    iput-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mYearPicker:Lcom/meizu/common/widget/ScrollTextView;

    .line 568
    iget v0, p0, Lcom/meizu/common/widget/DatePicker;->mSelectItemHeight:F

    cmpl-float v0, v0, v10

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/meizu/common/widget/DatePicker;->mNormalItemHeight:F

    cmpl-float v0, v0, v10

    if-eqz v0, :cond_5

    .line 569
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mYearPicker:Lcom/meizu/common/widget/ScrollTextView;

    iget v1, p0, Lcom/meizu/common/widget/DatePicker;->mSelectItemHeight:F

    float-to-int v1, v1

    int-to-float v1, v1

    iget v2, p0, Lcom/meizu/common/widget/DatePicker;->mNormalItemHeight:F

    float-to-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/meizu/common/widget/ScrollTextView;->setItemHeight(FF)V

    .line 573
    :cond_5
    invoke-direct {p0}, Lcom/meizu/common/widget/DatePicker;->refreshTextPreference()V

    .line 575
    invoke-direct {p0}, Lcom/meizu/common/widget/DatePicker;->updateYearPicker()V

    .line 576
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyy-MM-dd"

    invoke-direct {v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 578
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mStartCal:Ljava/util/Calendar;

    .line 579
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mStartCal:Ljava/util/Calendar;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/meizu/common/widget/DatePicker;->mStartYear:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-01-01"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 584
    :goto_1
    :try_start_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mEndCal:Ljava/util/Calendar;

    .line 585
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mEndCal:Ljava/util/Calendar;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/meizu/common/widget/DatePicker;->mEndYear:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-12-31"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    .line 591
    :goto_2
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonths:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/meizu/common/widget/DatePicker;->reorderPickers([Ljava/lang/String;)V

    .line 592
    invoke-direct {p0}, Lcom/meizu/common/widget/DatePicker;->isZh()Z

    move-result v1

    .line 593
    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker;->mDayUnit:Landroid/widget/TextView;

    if-eqz v1, :cond_9

    move v0, v6

    :goto_3
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 594
    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker;->mMonthUnit:Landroid/widget/TextView;

    if-eqz v1, :cond_a

    move v0, v6

    :goto_4
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 595
    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker;->mYearUnit:Landroid/widget/TextView;

    if-eqz v1, :cond_b

    move v0, v6

    :goto_5
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 597
    invoke-direct {p0}, Lcom/meizu/common/widget/DatePicker;->adjustLayout4FocusedPosition()V

    .line 600
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mYearUnit:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v1

    .line 601
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 602
    invoke-virtual {v0}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 603
    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 604
    invoke-virtual {p0}, Lcom/meizu/common/widget/DatePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 605
    iget-object v3, p0, Lcom/meizu/common/widget/DatePicker;->mYearUnit:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    div-float/2addr v3, v2

    sub-float v0, v2, v0

    mul-float/2addr v0, v3

    const v3, 0x3fa66666    # 1.3f

    div-float v3, v0, v3

    .line 606
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mYearUnit:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/meizu/common/widget/DatePicker;->mYearUnit:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v4

    int-to-float v5, v1

    sub-float/2addr v5, v3

    float-to-int v5, v5

    iget-object v7, p0, Lcom/meizu/common/widget/DatePicker;->mYearUnit:Landroid/widget/TextView;

    .line 607
    invoke-virtual {v7}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v7

    iget-object v11, p0, Lcom/meizu/common/widget/DatePicker;->mYearUnit:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v11

    .line 606
    invoke-virtual {v0, v4, v5, v7, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 608
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonthUnit:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/meizu/common/widget/DatePicker;->mMonthUnit:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v4

    int-to-float v5, v1

    sub-float/2addr v5, v3

    float-to-int v5, v5

    iget-object v7, p0, Lcom/meizu/common/widget/DatePicker;->mMonthUnit:Landroid/widget/TextView;

    .line 609
    invoke-virtual {v7}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v7

    iget-object v11, p0, Lcom/meizu/common/widget/DatePicker;->mMonthUnit:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v11

    .line 608
    invoke-virtual {v0, v4, v5, v7, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 610
    iget-object v4, p0, Lcom/meizu/common/widget/DatePicker;->mLeapUnit:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mLeapUnit:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v5

    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mLeapUnit:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v0

    int-to-float v7, v0

    cmpl-float v0, v3, v10

    if-nez v0, :cond_c

    move v0, v10

    :goto_6
    sub-float v0, v7, v0

    float-to-int v0, v0

    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker;->mLeapUnit:Landroid/widget/TextView;

    .line 611
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v2

    iget-object v7, p0, Lcom/meizu/common/widget/DatePicker;->mLeapUnit:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v7

    .line 610
    invoke-virtual {v4, v5, v0, v2, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 612
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mDayUnit:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker;->mDayUnit:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v2

    int-to-float v1, v1

    sub-float/2addr v1, v3

    float-to-int v1, v1

    iget-object v3, p0, Lcom/meizu/common/widget/DatePicker;->mDayUnit:Landroid/widget/TextView;

    .line 613
    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lcom/meizu/common/widget/DatePicker;->mDayUnit:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v4

    .line 612
    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 615
    invoke-virtual {p0}, Lcom/meizu/common/widget/DatePicker;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_6

    .line 616
    invoke-virtual {p0, v6}, Lcom/meizu/common/widget/DatePicker;->setEnabled(Z)V

    .line 619
    :cond_6
    iput v6, p0, Lcom/meizu/common/widget/DatePicker;->mLineOneHeight:I

    .line 620
    iput v6, p0, Lcom/meizu/common/widget/DatePicker;->mLineTwoHeight:I

    .line 621
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$dimen;->mc_custom_time_picker_line_width_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/DatePicker;->mWidthPadding:I

    .line 622
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mLinePaint:Landroid/graphics/Paint;

    .line 624
    sget-object v0, Lcom/meizu/common/R$styleable;->MZTheme:[I

    invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 625
    sget v1, Lcom/meizu/common/R$styleable;->MZTheme_mzThemeColor:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/meizu/common/R$color;->mc_custom_date_picker_selected_gregorian_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 627
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 628
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 629
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 630
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$dimen;->mc_custom_time_picker_line_stroke_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 631
    iput-boolean v6, p0, Lcom/meizu/common/widget/DatePicker;->mIsDrawLine:Z

    .line 632
    invoke-virtual {p0, v6}, Lcom/meizu/common/widget/DatePicker;->setWillNotDraw(Z)V

    .line 634
    invoke-virtual {p0}, Lcom/meizu/common/widget/DatePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$array;->mc_custom_time_picker_lunar_month:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mLunarMouths:[Ljava/lang/String;

    .line 635
    invoke-virtual {p0}, Lcom/meizu/common/widget/DatePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$array;->mc_custom_time_picker_lunar_day:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mLunardays:[Ljava/lang/String;

    .line 637
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "%d"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 639
    const/16 v0, 0x64

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mGregorianDays:[Ljava/lang/String;

    move v0, v6

    .line 640
    :goto_7
    const/16 v2, 0x64

    if-ge v0, v2, :cond_d

    .line 641
    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker;->mGregorianDays:[Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const-string v4, "%d"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 642
    const/16 v2, 0x9

    if-gt v0, v2, :cond_7

    .line 643
    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker;->mGregorianDays:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/meizu/common/widget/DatePicker;->mGregorianDays:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 640
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_8
    move v0, v6

    .line 478
    goto/16 :goto_0

    .line 580
    :catch_0
    move-exception v0

    .line 581
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    goto/16 :goto_1

    .line 586
    :catch_1
    move-exception v0

    .line 587
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    goto/16 :goto_2

    :cond_9
    move v0, v9

    .line 593
    goto/16 :goto_3

    :cond_a
    move v0, v9

    .line 594
    goto/16 :goto_4

    :cond_b
    move v0, v9

    .line 595
    goto/16 :goto_5

    .line 610
    :cond_c
    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr v0, v2

    add-float/2addr v0, v3

    goto/16 :goto_6

    .line 646
    :cond_d
    invoke-virtual {p0}, Lcom/meizu/common/widget/DatePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$string;->mc_time_picker_leap:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mLeap:Ljava/lang/String;

    .line 647
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mLeapUnit:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/meizu/common/widget/DatePicker;->mLeap:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 648
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mLeapUnit:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 650
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "mx4pro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 651
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mYearPicker:Lcom/meizu/common/widget/ScrollTextView;

    new-instance v1, Lcom/meizu/common/widget/DatePicker$1;

    invoke-direct {v1, p0}, Lcom/meizu/common/widget/DatePicker$1;-><init>(Lcom/meizu/common/widget/DatePicker;)V

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/ScrollTextView;->addScrollingListener(Lcom/meizu/common/widget/ScrollTextView$OnScrollTextViewScrollListener;)V

    .line 661
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonthPicker:Lcom/meizu/common/widget/ScrollTextView;

    new-instance v1, Lcom/meizu/common/widget/DatePicker$2;

    invoke-direct {v1, p0}, Lcom/meizu/common/widget/DatePicker$2;-><init>(Lcom/meizu/common/widget/DatePicker;)V

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/ScrollTextView;->addScrollingListener(Lcom/meizu/common/widget/ScrollTextView$OnScrollTextViewScrollListener;)V

    .line 671
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mDayPicker:Lcom/meizu/common/widget/ScrollTextView;

    new-instance v1, Lcom/meizu/common/widget/DatePicker$3;

    invoke-direct {v1, p0}, Lcom/meizu/common/widget/DatePicker$3;-><init>(Lcom/meizu/common/widget/DatePicker;)V

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/ScrollTextView;->addScrollingListener(Lcom/meizu/common/widget/ScrollTextView$OnScrollTextViewScrollListener;)V

    .line 683
    :cond_e
    const-string v0, "accessibility"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 684
    if-eqz v0, :cond_f

    .line 685
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/meizu/common/widget/DatePicker;->mIsAccessibilityEnable:Z

    .line 687
    :cond_f
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/common/widget/DatePicker;)I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/meizu/common/widget/DatePicker;->mStartYear:I

    return v0
.end method

.method static synthetic access$100(Lcom/meizu/common/widget/DatePicker;)Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/meizu/common/widget/DatePicker;->isLunar:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/meizu/common/widget/DatePicker;)I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/meizu/common/widget/DatePicker;->mOldMonthIndex:I

    return v0
.end method

.method static synthetic access$1002(Lcom/meizu/common/widget/DatePicker;I)I
    .locals 0

    .prologue
    .line 63
    iput p1, p0, Lcom/meizu/common/widget/DatePicker;->mOldMonthIndex:I

    return p1
.end method

.method static synthetic access$1100(Lcom/meizu/common/widget/DatePicker;III)I
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/common/widget/DatePicker;->getMonthOffset(III)I

    move-result v0

    return v0
.end method

.method static synthetic access$1202(Lcom/meizu/common/widget/DatePicker;I)I
    .locals 0

    .prologue
    .line 63
    iput p1, p0, Lcom/meizu/common/widget/DatePicker;->mYearOfMonths:I

    return p1
.end method

.method static synthetic access$1300(Lcom/meizu/common/widget/DatePicker;)I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/meizu/common/widget/DatePicker;->mDay:I

    return v0
.end method

.method static synthetic access$1302(Lcom/meizu/common/widget/DatePicker;I)I
    .locals 0

    .prologue
    .line 63
    iput p1, p0, Lcom/meizu/common/widget/DatePicker;->mDay:I

    return p1
.end method

.method static synthetic access$1400(Lcom/meizu/common/widget/DatePicker;)Lcom/meizu/common/widget/ScrollTextView;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mDayPicker:Lcom/meizu/common/widget/ScrollTextView;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/meizu/common/widget/DatePicker;I)I
    .locals 0

    .prologue
    .line 63
    iput p1, p0, Lcom/meizu/common/widget/DatePicker;->mMonthOfDays:I

    return p1
.end method

.method static synthetic access$1600(Lcom/meizu/common/widget/DatePicker;I)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/DatePicker;->setDayRange(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/meizu/common/widget/DatePicker;I)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/DatePicker;->setMonthRange(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/meizu/common/widget/DatePicker;)Lcom/meizu/common/widget/DatePicker$OnDateChangedListener;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mOnDateChangedListener:Lcom/meizu/common/widget/DatePicker$OnDateChangedListener;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/meizu/common/widget/DatePicker;I)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/DatePicker;->setLeapUnitVisibility(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/meizu/common/widget/DatePicker;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/DatePicker;->getLunarMonths(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000(Lcom/meizu/common/widget/DatePicker;I)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/DatePicker;->sendAccessibilityEvents(I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/meizu/common/widget/DatePicker;)Lcom/meizu/common/widget/ScrollTextView;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mYearPicker:Lcom/meizu/common/widget/ScrollTextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/meizu/common/widget/DatePicker;)Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mStartCal:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$400(Lcom/meizu/common/widget/DatePicker;)I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/meizu/common/widget/DatePicker;->mYear:I

    return v0
.end method

.method static synthetic access$402(Lcom/meizu/common/widget/DatePicker;I)I
    .locals 0

    .prologue
    .line 63
    iput p1, p0, Lcom/meizu/common/widget/DatePicker;->mYear:I

    return p1
.end method

.method static synthetic access$500(Lcom/meizu/common/widget/DatePicker;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonths:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/meizu/common/widget/DatePicker;)I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonth:I

    return v0
.end method

.method static synthetic access$602(Lcom/meizu/common/widget/DatePicker;I)I
    .locals 0

    .prologue
    .line 63
    iput p1, p0, Lcom/meizu/common/widget/DatePicker;->mMonth:I

    return p1
.end method

.method static synthetic access$700(Lcom/meizu/common/widget/DatePicker;)I
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/meizu/common/widget/DatePicker;->getMonthDays()I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/meizu/common/widget/DatePicker;)I
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/meizu/common/widget/DatePicker;->getYearMonths()I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/meizu/common/widget/DatePicker;)Lcom/meizu/common/widget/ScrollTextView;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonthPicker:Lcom/meizu/common/widget/ScrollTextView;

    return-object v0
.end method

.method private adjustLayout4FocusedPosition()V
    .locals 2

    .prologue
    .line 1353
    sget v0, Lcom/meizu/common/R$id;->mc_scroll1_text:I

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonthUnit:Landroid/widget/TextView;

    .line 1354
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonthUnit:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1355
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonthUnit:Landroid/widget/TextView;

    sget v1, Lcom/meizu/common/R$string;->mc_date_time_month:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1358
    :cond_0
    sget v0, Lcom/meizu/common/R$id;->mc_scroll2_text:I

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mDayUnit:Landroid/widget/TextView;

    .line 1359
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mDayUnit:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 1360
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mDayUnit:Landroid/widget/TextView;

    sget v1, Lcom/meizu/common/R$string;->mc_date_time_day:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1363
    :cond_1
    sget v0, Lcom/meizu/common/R$id;->mc_scroll3_text:I

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mYearUnit:Landroid/widget/TextView;

    .line 1364
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mYearUnit:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 1365
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mYearUnit:Landroid/widget/TextView;

    sget v1, Lcom/meizu/common/R$string;->mc_date_time_year:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1367
    :cond_2
    return-void
.end method

.method private getCurrentCalendar()Ljava/util/Calendar;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1335
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1336
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 1337
    iget v1, p0, Lcom/meizu/common/widget/DatePicker;->mYear:I

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 1338
    const/4 v1, 0x2

    iget v2, p0, Lcom/meizu/common/widget/DatePicker;->mMonth:I

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 1339
    return-object v0
.end method

.method private getLunarMonths(I)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 971
    iget v1, p0, Lcom/meizu/common/widget/DatePicker;->mYear:I

    invoke-static {v1}, Lcom/meizu/common/util/LunarCalendar;->leapMonth(I)I

    move-result v1

    .line 972
    if-nez v1, :cond_1

    .line 973
    const/16 v2, 0xc

    if-lt p1, v2, :cond_2

    .line 989
    :cond_0
    :goto_0
    return-object v0

    .line 977
    :cond_1
    const/16 v2, 0xd

    if-ge p1, v2, :cond_0

    .line 982
    :cond_2
    if-eqz v1, :cond_4

    add-int/lit8 v0, v1, -0x1

    if-le p1, v0, :cond_4

    .line 983
    if-ne p1, v1, :cond_3

    .line 984
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mLunarMouths:[Ljava/lang/String;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    goto :goto_0

    .line 986
    :cond_3
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mLunarMouths:[Ljava/lang/String;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    goto :goto_0

    .line 989
    :cond_4
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mLunarMouths:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method private getMonthDays()I
    .locals 4

    .prologue
    const/4 v3, 0x5

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1312
    iget-boolean v2, p0, Lcom/meizu/common/widget/DatePicker;->isLunar:Z

    if-eqz v2, :cond_3

    .line 1313
    iget v2, p0, Lcom/meizu/common/widget/DatePicker;->mMonth:I

    .line 1314
    iget v3, p0, Lcom/meizu/common/widget/DatePicker;->mYear:I

    invoke-static {v3}, Lcom/meizu/common/util/LunarCalendar;->leapMonth(I)I

    move-result v3

    .line 1316
    if-eqz v3, :cond_0

    .line 1317
    if-ne v3, v2, :cond_2

    :goto_0
    move v1, v0

    .line 1320
    :cond_0
    if-eqz v3, :cond_1

    if-eqz v3, :cond_4

    iget v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonth:I

    if-ge v0, v3, :cond_4

    .line 1321
    :cond_1
    add-int/lit8 v0, v2, 0x1

    .line 1324
    :goto_1
    iget v2, p0, Lcom/meizu/common/widget/DatePicker;->mYear:I

    invoke-static {v2, v0, v1}, Lcom/meizu/common/util/LunarCalendar;->daysInMonth(IIZ)I

    move-result v0

    .line 1330
    :goto_2
    return v0

    :cond_2
    move v0, v1

    .line 1317
    goto :goto_0

    .line 1326
    :cond_3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 1327
    invoke-virtual {v1, v3, v0}, Ljava/util/Calendar;->set(II)V

    .line 1328
    iget v2, p0, Lcom/meizu/common/widget/DatePicker;->mYear:I

    invoke-virtual {v1, v0, v2}, Ljava/util/Calendar;->set(II)V

    .line 1329
    const/4 v0, 0x2

    iget v2, p0, Lcom/meizu/common/widget/DatePicker;->mMonth:I

    invoke-virtual {v1, v0, v2}, Ljava/util/Calendar;->set(II)V

    .line 1330
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v0

    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method private getMonthOffset(III)I
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 312
    const/4 v2, 0x0

    .line 313
    if-le p1, p2, :cond_1

    if-nez p2, :cond_1

    if-lt p3, p1, :cond_1

    .line 326
    :cond_0
    :goto_0
    return v0

    .line 316
    :cond_1
    if-ge p1, p2, :cond_2

    if-nez p1, :cond_2

    if-lt p3, p2, :cond_2

    move v0, v1

    .line 318
    goto :goto_0

    .line 319
    :cond_2
    if-ge p1, p2, :cond_3

    if-eqz p1, :cond_3

    if-gt p1, p3, :cond_3

    if-gt p2, p3, :cond_0

    .line 322
    :cond_3
    if-le p1, p2, :cond_4

    if-eqz p2, :cond_4

    if-le p1, p3, :cond_4

    if-gt p2, p3, :cond_4

    move v0, v1

    .line 324
    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_0
.end method

.method private getShortMonths()[Ljava/lang/String;
    .locals 9

    .prologue
    const/16 v8, 0x9

    const/16 v7, 0xc

    const/4 v1, 0x0

    .line 910
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 911
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonthLocale:Ljava/util/Locale;

    invoke-virtual {v2, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    if-nez v0, :cond_5

    .line 912
    :cond_0
    iget-object v3, p0, Lcom/meizu/common/widget/DatePicker;->mMonthUpdateLock:Ljava/lang/Object;

    monitor-enter v3

    .line 913
    :try_start_0
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonthLocale:Ljava/util/Locale;

    invoke-virtual {v2, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 914
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    move v0, v1

    .line 915
    :goto_0
    if-ge v0, v7, :cond_1

    .line 916
    iget-object v4, p0, Lcom/meizu/common/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    add-int/lit8 v5, v0, 0x0

    const/16 v6, 0x14

    invoke-static {v5, v6}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 915
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 925
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v0, v0, v4

    const-string v4, "1"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 926
    :goto_1
    iget-object v4, p0, Lcom/meizu/common/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_3

    .line 927
    iget-object v4, p0, Lcom/meizu/common/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    add-int/lit8 v5, v0, 0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 928
    if-ge v0, v8, :cond_2

    .line 929
    iget-object v4, p0, Lcom/meizu/common/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/meizu/common/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 926
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 933
    :cond_3
    iput-object v2, p0, Lcom/meizu/common/widget/DatePicker;->mMonthLocale:Ljava/util/Locale;

    .line 935
    :cond_4
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 938
    :cond_5
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonthPicker:Lcom/meizu/common/widget/ScrollTextView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonthPicker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {v0}, Lcom/meizu/common/widget/ScrollTextView;->getWidth()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    if-eqz v0, :cond_6

    move v0, v1

    .line 939
    :goto_2
    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_6

    .line 940
    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker;->mMonthPicker:Lcom/meizu/common/widget/ScrollTextView;

    iget-object v3, p0, Lcom/meizu/common/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Lcom/meizu/common/widget/ScrollTextView;->measureTextWidth(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/meizu/common/widget/DatePicker;->mMonthPicker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {v3}, Lcom/meizu/common/widget/ScrollTextView;->getWidth()I

    move-result v3

    if-le v2, v3, :cond_7

    .line 941
    new-array v0, v7, [Ljava/lang/String;

    const-string v2, "01"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "02"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "03"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "04"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "05"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "06"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "07"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "08"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "09"

    aput-object v2, v0, v1

    const-string v1, "10"

    aput-object v1, v0, v8

    const/16 v1, 0xa

    const-string v2, "11"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "12"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    .line 947
    :cond_6
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    return-object v0

    .line 935
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 939
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private getTimeText(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1418
    .line 1419
    packed-switch p1, :pswitch_data_0

    .line 1448
    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0

    .line 1421
    :pswitch_0
    iget v0, p0, Lcom/meizu/common/widget/DatePicker;->mYear:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1424
    :pswitch_1
    iget v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonth:I

    .line 1425
    iget-boolean v1, p0, Lcom/meizu/common/widget/DatePicker;->isLunar:Z

    if-eqz v1, :cond_1

    .line 1426
    invoke-direct {p0, v0}, Lcom/meizu/common/widget/DatePicker;->getLunarMonths(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1428
    :cond_1
    iget-object v1, p0, Lcom/meizu/common/widget/DatePicker;->mMonths:[Ljava/lang/String;

    if-nez v1, :cond_2

    .line 1429
    invoke-direct {p0}, Lcom/meizu/common/widget/DatePicker;->getShortMonths()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/widget/DatePicker;->mMonths:[Ljava/lang/String;

    .line 1431
    :cond_2
    iget-object v1, p0, Lcom/meizu/common/widget/DatePicker;->mMonths:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1432
    iget-object v1, p0, Lcom/meizu/common/widget/DatePicker;->mMonths:[Ljava/lang/String;

    aget-object v0, v1, v0

    goto :goto_0

    .line 1438
    :pswitch_2
    iget v0, p0, Lcom/meizu/common/widget/DatePicker;->mDay:I

    add-int/lit8 v0, v0, -0x1

    .line 1439
    iget-boolean v1, p0, Lcom/meizu/common/widget/DatePicker;->isLunar:Z

    if-eqz v1, :cond_3

    .line 1440
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/DatePicker;->getLunarDays(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1442
    :cond_3
    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1419
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getYearMonths()I
    .locals 2

    .prologue
    const/16 v0, 0xc

    .line 1343
    iget-boolean v1, p0, Lcom/meizu/common/widget/DatePicker;->isLunar:Z

    if-eqz v1, :cond_0

    .line 1344
    iget v1, p0, Lcom/meizu/common/widget/DatePicker;->mYear:I

    invoke-static {v1}, Lcom/meizu/common/util/LunarCalendar;->leapMonth(I)I

    move-result v1

    if-nez v1, :cond_1

    .line 1346
    :cond_0
    :goto_0
    return v0

    .line 1344
    :cond_1
    const/16 v0, 0xd

    goto :goto_0
.end method

.method private isLeapMonth(I)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 951
    invoke-direct {p0}, Lcom/meizu/common/widget/DatePicker;->isZh()Z

    move-result v1

    if-nez v1, :cond_1

    .line 967
    :cond_0
    :goto_0
    return v0

    .line 954
    :cond_1
    iget v1, p0, Lcom/meizu/common/widget/DatePicker;->mYear:I

    invoke-static {v1}, Lcom/meizu/common/util/LunarCalendar;->leapMonth(I)I

    move-result v1

    .line 955
    if-nez v1, :cond_3

    .line 956
    const/16 v2, 0xc

    if-ge p1, v2, :cond_0

    .line 964
    :cond_2
    if-eqz v1, :cond_0

    add-int/lit8 v2, v1, -0x1

    if-le p1, v2, :cond_0

    .line 965
    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 960
    :cond_3
    const/16 v2, 0xd

    if-lt p1, v2, :cond_2

    goto :goto_0
.end method

.method public static isNumeric(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1370
    const-string v0, "[0-9]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 1371
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method private isZh()Z
    .locals 2

    .prologue
    .line 1507
    invoke-virtual {p0}, Lcom/meizu/common/widget/DatePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1508
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 1509
    const-string v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private refreshTextPreference()V
    .locals 3

    .prologue
    .line 1513
    iget-boolean v0, p0, Lcom/meizu/common/widget/DatePicker;->isLunar:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/meizu/common/widget/DatePicker;->isZh()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1514
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonthPicker:Lcom/meizu/common/widget/ScrollTextView;

    iget v1, p0, Lcom/meizu/common/widget/DatePicker;->mWordSelectTextSize:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker;->mWordNormalTextSizes:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/meizu/common/widget/ScrollTextView;->setTextSize(FLjava/util/List;)V

    .line 1515
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mDayPicker:Lcom/meizu/common/widget/ScrollTextView;

    iget v1, p0, Lcom/meizu/common/widget/DatePicker;->mWordSelectTextSize:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker;->mWordNormalTextSizes:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/meizu/common/widget/ScrollTextView;->setTextSize(FLjava/util/List;)V

    .line 1524
    :goto_0
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mYearPicker:Lcom/meizu/common/widget/ScrollTextView;

    iget v1, p0, Lcom/meizu/common/widget/DatePicker;->mNumberSelectTextSize:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker;->mNumberNormalTextSizes:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/meizu/common/widget/ScrollTextView;->setTextSize(FLjava/util/List;)V

    .line 1526
    return-void

    .line 1519
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonthPicker:Lcom/meizu/common/widget/ScrollTextView;

    iget v1, p0, Lcom/meizu/common/widget/DatePicker;->mNumberSelectTextSize:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker;->mNumberNormalTextSizes:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/meizu/common/widget/ScrollTextView;->setTextSize(FLjava/util/List;)V

    .line 1520
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mDayPicker:Lcom/meizu/common/widget/ScrollTextView;

    iget v1, p0, Lcom/meizu/common/widget/DatePicker;->mNumberSelectTextSize:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker;->mNumberNormalTextSizes:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/meizu/common/widget/ScrollTextView;->setTextSize(FLjava/util/List;)V

    goto :goto_0
.end method

.method private reorderPickers([Ljava/lang/String;)V
    .locals 18

    .prologue
    .line 720
    const/4 v1, 0x0

    aget-object v1, p1, v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 721
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    .line 726
    :goto_0
    instance-of v2, v1, Ljava/text/SimpleDateFormat;

    if-eqz v2, :cond_7

    .line 727
    check-cast v1, Ljava/text/SimpleDateFormat;

    invoke-virtual {v1}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/meizu/common/widget/DatePicker;->mOrder:Ljava/lang/String;

    .line 737
    :goto_1
    sget v1, Lcom/meizu/common/R$id;->mc_column1Layout:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 738
    sget v2, Lcom/meizu/common/R$id;->mc_column2Layout:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/meizu/common/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    .line 739
    sget v3, Lcom/meizu/common/R$id;->mc_column3Layout:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/meizu/common/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    .line 741
    sget v4, Lcom/meizu/common/R$id;->mc_divider_bar1:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/meizu/common/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 742
    sget v5, Lcom/meizu/common/R$id;->mc_divider_bar2:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/meizu/common/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 743
    sget v6, Lcom/meizu/common/R$id;->mc_column_parent:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/meizu/common/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 744
    invoke-virtual {v6}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 746
    const/4 v13, 0x0

    .line 747
    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 749
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/meizu/common/widget/DatePicker;->mOrder:Ljava/lang/String;

    const-string v14, "dd\u200f/MM\u200f/y"

    invoke-virtual {v7, v14}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/meizu/common/widget/DatePicker;->mOrder:Ljava/lang/String;

    const-string v14, "d \u05d1MMM y"

    invoke-virtual {v7, v14}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 750
    :cond_0
    const-string v7, "yy/M/d"

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/meizu/common/widget/DatePicker;->mOrder:Ljava/lang/String;

    .line 752
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/meizu/common/widget/DatePicker;->isRTL:Z

    if-eqz v7, :cond_2

    .line 753
    const-string v7, "d/M/yy"

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/meizu/common/widget/DatePicker;->mOrder:Ljava/lang/String;

    .line 755
    :cond_2
    const/4 v7, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/meizu/common/widget/DatePicker;->mOrder:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v7, v14, :cond_d

    .line 756
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/meizu/common/widget/DatePicker;->mOrder:Ljava/lang/String;

    invoke-virtual {v14, v7}, Ljava/lang/String;->charAt(I)C

    move-result v15

    .line 758
    const/16 v14, 0x27

    if-ne v15, v14, :cond_3

    .line 759
    if-nez v13, :cond_8

    const/4 v13, 0x1

    .line 762
    :cond_3
    :goto_3
    if-nez v13, :cond_5

    .line 763
    const/4 v14, 0x0

    .line 764
    const/16 v16, 0x64

    move/from16 v0, v16

    if-ne v15, v0, :cond_9

    if-nez v12, :cond_9

    .line 765
    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 766
    const/4 v14, 0x1

    .line 767
    const/4 v12, 0x1

    move/from16 v17, v12

    move v12, v14

    move/from16 v14, v17

    .line 778
    :cond_4
    :goto_4
    const/4 v15, 0x1

    if-ne v15, v14, :cond_5

    .line 779
    if-nez v9, :cond_c

    .line 780
    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 781
    const/4 v9, 0x1

    .line 755
    :cond_5
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 723
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->getMediumDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    goto/16 :goto_0

    .line 730
    :cond_7
    new-instance v1, Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/meizu/common/widget/DatePicker;->mOrder:Ljava/lang/String;

    goto/16 :goto_1

    .line 759
    :cond_8
    const/4 v13, 0x0

    goto :goto_3

    .line 768
    :cond_9
    const/16 v16, 0x4d

    move/from16 v0, v16

    if-eq v15, v0, :cond_a

    const/16 v16, 0x4c

    move/from16 v0, v16

    if-ne v15, v0, :cond_b

    :cond_a
    if-nez v11, :cond_b

    .line 769
    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 770
    const/4 v14, 0x1

    .line 771
    const/4 v11, 0x1

    move/from16 v17, v11

    move v11, v14

    move/from16 v14, v17

    goto :goto_4

    .line 772
    :cond_b
    const/16 v16, 0x79

    move/from16 v0, v16

    if-ne v15, v0, :cond_4

    if-nez v10, :cond_4

    .line 773
    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 774
    const/4 v14, 0x1

    .line 775
    const/4 v10, 0x1

    move/from16 v17, v10

    move v10, v14

    move/from16 v14, v17

    goto :goto_4

    .line 783
    :cond_c
    if-nez v8, :cond_5

    .line 784
    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 785
    const/4 v8, 0x1

    goto :goto_5

    .line 793
    :cond_d
    if-nez v11, :cond_e

    .line 794
    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 796
    :cond_e
    if-nez v12, :cond_f

    .line 797
    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 799
    :cond_f
    if-nez v10, :cond_10

    .line 800
    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 804
    :cond_10
    invoke-direct/range {p0 .. p0}, Lcom/meizu/common/widget/DatePicker;->isZh()Z

    move-result v1

    if-nez v1, :cond_11

    .line 805
    sget v1, Lcom/meizu/common/R$id;->mc_column2Layout:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 806
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 807
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 808
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 811
    :cond_11
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/common/widget/DatePicker;->mYearPicker:Lcom/meizu/common/widget/ScrollTextView;

    new-instance v2, Lcom/meizu/common/widget/DatePicker$4;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/meizu/common/widget/DatePicker$4;-><init>(Lcom/meizu/common/widget/DatePicker;)V

    invoke-virtual {v1, v2}, Lcom/meizu/common/widget/ScrollTextView;->post(Ljava/lang/Runnable;)Z

    .line 861
    return-void
.end method

.method private sendAccessibilityEvents(I)V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 1485
    iget-boolean v0, p0, Lcom/meizu/common/widget/DatePicker;->mIsAccessibilityEnable:Z

    if-eqz v0, :cond_0

    .line 1486
    invoke-direct {p0}, Lcom/meizu/common/widget/DatePicker;->setContentDescription()V

    .line 1487
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1488
    sget v0, Lcom/meizu/common/R$id;->mc_column3Layout:I

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1489
    if-eqz v0, :cond_0

    .line 1490
    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 1504
    :cond_0
    :goto_0
    return-void

    .line 1492
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 1493
    sget v0, Lcom/meizu/common/R$id;->mc_column1Layout:I

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1494
    if-eqz v0, :cond_0

    .line 1495
    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto :goto_0

    .line 1497
    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 1498
    sget v0, Lcom/meizu/common/R$id;->mc_column2Layout:I

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1499
    if-eqz v0, :cond_0

    .line 1500
    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto :goto_0
.end method

.method private setContentDescription()V
    .locals 7

    .prologue
    const/4 v5, 0x2

    const/4 v6, 0x1

    .line 1452
    iget-boolean v0, p0, Lcom/meizu/common/widget/DatePicker;->mIsAccessibilityEnable:Z

    if-ne v0, v6, :cond_2

    .line 1453
    const-string v0, "\u4e0a\u4e0b\u6eda\u52a8\u8bbe\u7f6e\u5e74\uff0c\u5f53\u524d\u65e5\u671f\u662f"

    .line 1454
    const-string v0, "\u4e0a\u4e0b\u6eda\u52a8\u8bbe\u7f6e\u6708\uff0c\u5f53\u524d\u65e5\u671f\u662f"

    .line 1455
    const-string v0, "\u4e0a\u4e0b\u6eda\u52a8\u8bbe\u7f6e\u65e5\uff0c\u5f53\u524d\u65e5\u671f\u662f"

    .line 1457
    sget v0, Lcom/meizu/common/R$id;->mc_column3Layout:I

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1458
    sget v0, Lcom/meizu/common/R$id;->mc_column1Layout:I

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1459
    sget v0, Lcom/meizu/common/R$id;->mc_column2Layout:I

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1462
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v4, 0x8

    if-ne v0, v4, :cond_3

    .line 1463
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v6}, Lcom/meizu/common/widget/DatePicker;->getTimeText(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/meizu/common/widget/DatePicker;->mYearUnit:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, v5}, Lcom/meizu/common/widget/DatePicker;->getTimeText(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/meizu/common/widget/DatePicker;->mMonthUnit:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, " "

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "\u5eff\u5341"

    const-string v5, "\u4e8c\u5341"

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "\u5eff"

    const-string v5, "\u4e8c\u5341"

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1469
    :goto_0
    if-eqz v1, :cond_0

    .line 1470
    invoke-virtual {v1, v6}, Landroid/view/View;->setFocusable(Z)V

    .line 1471
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u4e0a\u4e0b\u6eda\u52a8\u8bbe\u7f6e\u5e74\uff0c\u5f53\u524d\u65e5\u671f\u662f"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1473
    :cond_0
    if-eqz v2, :cond_1

    .line 1474
    invoke-virtual {v2, v6}, Landroid/view/View;->setFocusable(Z)V

    .line 1475
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u4e0a\u4e0b\u6eda\u52a8\u8bbe\u7f6e\u6708\uff0c\u5f53\u524d\u65e5\u671f\u662f"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1477
    :cond_1
    if-eqz v3, :cond_2

    .line 1478
    invoke-virtual {v3, v6}, Landroid/view/View;->setFocusable(Z)V

    .line 1479
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4e0a\u4e0b\u6eda\u52a8\u8bbe\u7f6e\u65e5\uff0c\u5f53\u524d\u65e5\u671f\u662f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1482
    :cond_2
    return-void

    .line 1465
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v6}, Lcom/meizu/common/widget/DatePicker;->getTimeText(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/meizu/common/widget/DatePicker;->mYearUnit:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, v5}, Lcom/meizu/common/widget/DatePicker;->getTimeText(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/meizu/common/widget/DatePicker;->mMonthUnit:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v4, 0x3

    .line 1466
    invoke-direct {p0, v4}, Lcom/meizu/common/widget/DatePicker;->getTimeText(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/meizu/common/widget/DatePicker;->mDayUnit:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, " "

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "\u5eff\u5341"

    const-string v5, "\u4e8c\u5341"

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "\u5eff"

    const-string v5, "\u4e8c\u5341"

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private setDayRange(I)V
    .locals 10

    .prologue
    const/4 v8, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v7, 0x5

    .line 395
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mStartCal:Ljava/util/Calendar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mEndCal:Ljava/util/Calendar;

    if-nez v0, :cond_1

    .line 465
    :cond_0
    :goto_0
    return-void

    .line 398
    :cond_1
    iget v0, p0, Lcom/meizu/common/widget/DatePicker;->mOldYear:I

    iget v3, p0, Lcom/meizu/common/widget/DatePicker;->mYear:I

    if-ne v0, v3, :cond_2

    iget v0, p0, Lcom/meizu/common/widget/DatePicker;->mOldMonth:I

    if-eq v0, p1, :cond_0

    .line 401
    :cond_2
    iput p1, p0, Lcom/meizu/common/widget/DatePicker;->mOldMonth:I

    .line 402
    invoke-direct {p0}, Lcom/meizu/common/widget/DatePicker;->getCurrentCalendar()Ljava/util/Calendar;

    move-result-object v3

    .line 403
    invoke-direct {p0}, Lcom/meizu/common/widget/DatePicker;->getMonthDays()I

    move-result v4

    iget v0, p0, Lcom/meizu/common/widget/DatePicker;->mDay:I

    add-int/lit8 v0, v0, -0x1

    .line 405
    invoke-virtual {v3, v7}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v3

    .line 411
    iget-object v5, p0, Lcom/meizu/common/widget/DatePicker;->mStartCal:Ljava/util/Calendar;

    invoke-virtual {v5, v2}, Ljava/util/Calendar;->get(I)I

    move-result v5

    iget v6, p0, Lcom/meizu/common/widget/DatePicker;->mYear:I

    if-ne v5, v6, :cond_6

    iget-object v5, p0, Lcom/meizu/common/widget/DatePicker;->mEndCal:Ljava/util/Calendar;

    invoke-virtual {v5, v2}, Ljava/util/Calendar;->get(I)I

    move-result v5

    iget v6, p0, Lcom/meizu/common/widget/DatePicker;->mYear:I

    if-eq v5, v6, :cond_6

    .line 413
    iget-object v5, p0, Lcom/meizu/common/widget/DatePicker;->mStartCal:Ljava/util/Calendar;

    invoke-virtual {v5, v8}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v5, p1, :cond_12

    .line 414
    iget-object v3, p0, Lcom/meizu/common/widget/DatePicker;->mStartCal:Ljava/util/Calendar;

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    sub-int v3, v0, v3

    if-gez v3, :cond_4

    move v0, v1

    .line 415
    :goto_1
    iget-object v3, p0, Lcom/meizu/common/widget/DatePicker;->mStartCal:Ljava/util/Calendar;

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v3

    iget-object v4, p0, Lcom/meizu/common/widget/DatePicker;->mStartCal:Ljava/util/Calendar;

    invoke-virtual {v4, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    .line 418
    iget-object v4, p0, Lcom/meizu/common/widget/DatePicker;->mStartCal:Ljava/util/Calendar;

    invoke-virtual {v4, v7}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v4

    if-ne v3, v4, :cond_5

    :goto_2
    move v4, v3

    move v9, v0

    move v0, v3

    move v3, v9

    .line 460
    :goto_3
    if-eqz v2, :cond_3

    iget-object v5, p0, Lcom/meizu/common/widget/DatePicker;->mDayPicker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {v5}, Lcom/meizu/common/widget/ScrollTextView;->isCyclic()Z

    move-result v5

    if-nez v5, :cond_0

    .line 463
    :cond_3
    iget-object v5, p0, Lcom/meizu/common/widget/DatePicker;->mDayPicker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {v5, v2}, Lcom/meizu/common/widget/ScrollTextView;->setCyclic(Z)V

    .line 464
    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker;->mDayPicker:Lcom/meizu/common/widget/ScrollTextView;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v4, v3, v1, v0}, Lcom/meizu/common/widget/ScrollTextView;->refreshData(IIII)V

    goto :goto_0

    .line 414
    :cond_4
    iget-object v3, p0, Lcom/meizu/common/widget/DatePicker;->mStartCal:Ljava/util/Calendar;

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    sub-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    move v2, v1

    .line 418
    goto :goto_2

    .line 420
    :cond_6
    iget-object v5, p0, Lcom/meizu/common/widget/DatePicker;->mStartCal:Ljava/util/Calendar;

    invoke-virtual {v5, v2}, Ljava/util/Calendar;->get(I)I

    move-result v5

    iget v6, p0, Lcom/meizu/common/widget/DatePicker;->mYear:I

    if-eq v5, v6, :cond_9

    iget-object v5, p0, Lcom/meizu/common/widget/DatePicker;->mEndCal:Ljava/util/Calendar;

    invoke-virtual {v5, v2}, Ljava/util/Calendar;->get(I)I

    move-result v5

    iget v6, p0, Lcom/meizu/common/widget/DatePicker;->mYear:I

    if-ne v5, v6, :cond_9

    .line 422
    iget-object v5, p0, Lcom/meizu/common/widget/DatePicker;->mEndCal:Ljava/util/Calendar;

    invoke-virtual {v5, v8}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v5, p1, :cond_12

    .line 423
    iget-object v3, p0, Lcom/meizu/common/widget/DatePicker;->mEndCal:Ljava/util/Calendar;

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-lt v0, v3, :cond_7

    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mEndCal:Ljava/util/Calendar;

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 424
    :cond_7
    iget-object v3, p0, Lcom/meizu/common/widget/DatePicker;->mEndCal:Ljava/util/Calendar;

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 426
    iget-object v3, p0, Lcom/meizu/common/widget/DatePicker;->mEndCal:Ljava/util/Calendar;

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 427
    iget-object v5, p0, Lcom/meizu/common/widget/DatePicker;->mEndCal:Ljava/util/Calendar;

    invoke-virtual {v5, v7}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v5

    if-ne v4, v5, :cond_8

    :goto_4
    move v9, v3

    move v3, v0

    move v0, v9

    goto :goto_3

    :cond_8
    move v2, v1

    goto :goto_4

    .line 429
    :cond_9
    iget-object v5, p0, Lcom/meizu/common/widget/DatePicker;->mStartCal:Ljava/util/Calendar;

    invoke-virtual {v5, v2}, Ljava/util/Calendar;->get(I)I

    move-result v5

    iget v6, p0, Lcom/meizu/common/widget/DatePicker;->mYear:I

    if-ne v5, v6, :cond_12

    iget-object v5, p0, Lcom/meizu/common/widget/DatePicker;->mEndCal:Ljava/util/Calendar;

    invoke-virtual {v5, v2}, Ljava/util/Calendar;->get(I)I

    move-result v5

    iget v6, p0, Lcom/meizu/common/widget/DatePicker;->mYear:I

    if-ne v5, v6, :cond_12

    .line 431
    iget-object v5, p0, Lcom/meizu/common/widget/DatePicker;->mStartCal:Ljava/util/Calendar;

    invoke-virtual {v5, v8}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-gt v5, p1, :cond_12

    iget-object v5, p0, Lcom/meizu/common/widget/DatePicker;->mEndCal:Ljava/util/Calendar;

    invoke-virtual {v5, v8}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-lt v5, p1, :cond_12

    .line 433
    iget-object v5, p0, Lcom/meizu/common/widget/DatePicker;->mStartCal:Ljava/util/Calendar;

    invoke-virtual {v5, v8}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v5, p1, :cond_c

    iget-object v5, p0, Lcom/meizu/common/widget/DatePicker;->mEndCal:Ljava/util/Calendar;

    invoke-virtual {v5, v8}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v5, p1, :cond_c

    .line 436
    iget-object v3, p0, Lcom/meizu/common/widget/DatePicker;->mStartCal:Ljava/util/Calendar;

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    sub-int v3, v0, v3

    if-gez v3, :cond_a

    move v0, v1

    .line 437
    :goto_5
    iget-object v3, p0, Lcom/meizu/common/widget/DatePicker;->mEndCal:Ljava/util/Calendar;

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v4, p0, Lcom/meizu/common/widget/DatePicker;->mStartCal:Ljava/util/Calendar;

    invoke-virtual {v4, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    .line 441
    iget-object v4, p0, Lcom/meizu/common/widget/DatePicker;->mEndCal:Ljava/util/Calendar;

    invoke-virtual {v4, v7}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v4

    if-ne v3, v4, :cond_b

    :goto_6
    move v4, v3

    move v9, v0

    move v0, v3

    move v3, v9

    goto/16 :goto_3

    .line 436
    :cond_a
    iget-object v3, p0, Lcom/meizu/common/widget/DatePicker;->mStartCal:Ljava/util/Calendar;

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    sub-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_b
    move v2, v1

    .line 441
    goto :goto_6

    .line 442
    :cond_c
    iget-object v5, p0, Lcom/meizu/common/widget/DatePicker;->mStartCal:Ljava/util/Calendar;

    invoke-virtual {v5, v8}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v5, p1, :cond_f

    .line 444
    iget-object v3, p0, Lcom/meizu/common/widget/DatePicker;->mStartCal:Ljava/util/Calendar;

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    sub-int v3, v0, v3

    if-gez v3, :cond_d

    move v0, v1

    .line 445
    :goto_7
    iget-object v3, p0, Lcom/meizu/common/widget/DatePicker;->mStartCal:Ljava/util/Calendar;

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v3

    iget-object v4, p0, Lcom/meizu/common/widget/DatePicker;->mStartCal:Ljava/util/Calendar;

    invoke-virtual {v4, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    .line 448
    iget-object v4, p0, Lcom/meizu/common/widget/DatePicker;->mStartCal:Ljava/util/Calendar;

    invoke-virtual {v4, v7}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v4

    if-ne v3, v4, :cond_e

    :goto_8
    move v4, v3

    move v9, v0

    move v0, v3

    move v3, v9

    goto/16 :goto_3

    .line 444
    :cond_d
    iget-object v3, p0, Lcom/meizu/common/widget/DatePicker;->mStartCal:Ljava/util/Calendar;

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    sub-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_e
    move v2, v1

    .line 448
    goto :goto_8

    .line 449
    :cond_f
    iget-object v5, p0, Lcom/meizu/common/widget/DatePicker;->mEndCal:Ljava/util/Calendar;

    invoke-virtual {v5, v8}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v5, p1, :cond_12

    .line 451
    iget-object v3, p0, Lcom/meizu/common/widget/DatePicker;->mEndCal:Ljava/util/Calendar;

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-lt v0, v3, :cond_10

    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mEndCal:Ljava/util/Calendar;

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 452
    :cond_10
    iget-object v3, p0, Lcom/meizu/common/widget/DatePicker;->mEndCal:Ljava/util/Calendar;

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 454
    iget-object v3, p0, Lcom/meizu/common/widget/DatePicker;->mEndCal:Ljava/util/Calendar;

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 455
    iget-object v5, p0, Lcom/meizu/common/widget/DatePicker;->mEndCal:Ljava/util/Calendar;

    invoke-virtual {v5, v7}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v5

    if-ne v4, v5, :cond_11

    :goto_9
    move v9, v3

    move v3, v0

    move v0, v9

    goto/16 :goto_3

    :cond_11
    move v2, v1

    goto :goto_9

    :cond_12
    move v9, v3

    move v3, v0

    move v0, v9

    goto/16 :goto_3
.end method

.method private setLeapUnitVisibility(I)V
    .locals 2

    .prologue
    .line 690
    invoke-virtual {p0}, Lcom/meizu/common/widget/DatePicker;->isLunar()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/meizu/common/widget/DatePicker;->isLeapMonth(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 691
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mLeapUnit:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 695
    :goto_0
    return-void

    .line 693
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mLeapUnit:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setMonthRange(I)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v8, 0x2

    .line 331
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mStartCal:Ljava/util/Calendar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mEndCal:Ljava/util/Calendar;

    if-nez v0, :cond_1

    .line 389
    :cond_0
    :goto_0
    return-void

    .line 334
    :cond_1
    iget v0, p0, Lcom/meizu/common/widget/DatePicker;->mOldYear:I

    if-eq v0, p1, :cond_0

    .line 337
    iput p1, p0, Lcom/meizu/common/widget/DatePicker;->mOldYear:I

    .line 338
    const/4 v0, -0x1

    iput v0, p0, Lcom/meizu/common/widget/DatePicker;->mOldMonth:I

    .line 340
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mStartCal:Ljava/util/Calendar;

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-gt v0, p1, :cond_0

    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mEndCal:Ljava/util/Calendar;

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-lt v0, p1, :cond_0

    .line 342
    iget v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonth:I

    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker;->mStartCal:Ljava/util/Calendar;

    invoke-virtual {v2, v8}, Ljava/util/Calendar;->get(I)I

    move-result v2

    sub-int/2addr v0, v2

    if-gez v0, :cond_3

    move v0, v1

    .line 345
    :goto_1
    invoke-static {p1}, Lcom/meizu/common/util/LunarCalendar;->leapMonth(I)I

    move-result v6

    .line 346
    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker;->mStartCal:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v2, p1, :cond_4

    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker;->mEndCal:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v2, p1, :cond_4

    .line 348
    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker;->mEndCal:Ljava/util/Calendar;

    invoke-virtual {v2, v8}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v4, p0, Lcom/meizu/common/widget/DatePicker;->mStartCal:Ljava/util/Calendar;

    invoke-virtual {v4, v8}, Ljava/util/Calendar;->get(I)I

    move-result v4

    sub-int/2addr v2, v4

    add-int/lit8 v2, v2, 0x1

    move v4, v0

    move v5, v2

    move v0, v1

    .line 380
    :goto_2
    iget-boolean v7, p0, Lcom/meizu/common/widget/DatePicker;->isLunar:Z

    if-nez v7, :cond_a

    iget-object v7, p0, Lcom/meizu/common/widget/DatePicker;->mStartCal:Ljava/util/Calendar;

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    if-ne v5, v7, :cond_a

    move v0, v3

    .line 386
    :cond_2
    :goto_3
    iget-object v3, p0, Lcom/meizu/common/widget/DatePicker;->mMonthPicker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {v3, v0}, Lcom/meizu/common/widget/ScrollTextView;->setCyclic(Z)V

    .line 387
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonthPicker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {v0, v5, v4, v1, v2}, Lcom/meizu/common/widget/ScrollTextView;->refreshData(IIII)V

    goto :goto_0

    .line 342
    :cond_3
    iget v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonth:I

    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker;->mStartCal:Ljava/util/Calendar;

    invoke-virtual {v2, v8}, Ljava/util/Calendar;->get(I)I

    move-result v2

    sub-int/2addr v0, v2

    goto :goto_1

    .line 351
    :cond_4
    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker;->mStartCal:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v2, p1, :cond_6

    .line 353
    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker;->mStartCal:Ljava/util/Calendar;

    invoke-virtual {v2, v8}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iget-object v4, p0, Lcom/meizu/common/widget/DatePicker;->mStartCal:Ljava/util/Calendar;

    invoke-virtual {v4, v8}, Ljava/util/Calendar;->get(I)I

    move-result v4

    sub-int/2addr v2, v4

    .line 354
    iget-boolean v4, p0, Lcom/meizu/common/widget/DatePicker;->isLunar:Z

    if-eqz v4, :cond_5

    if-lez v6, :cond_5

    if-ge v6, v2, :cond_5

    .line 355
    add-int/lit8 v2, v2, 0x1

    :cond_5
    move v4, v0

    move v5, v2

    move v0, v1

    .line 358
    goto :goto_2

    .line 359
    :cond_6
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mEndCal:Ljava/util/Calendar;

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v0, p1, :cond_9

    .line 361
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mEndCal:Ljava/util/Calendar;

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget v2, p0, Lcom/meizu/common/widget/DatePicker;->mMonth:I

    sub-int/2addr v0, v2

    if-gez v0, :cond_8

    move v0, v1

    .line 362
    :goto_4
    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker;->mEndCal:Ljava/util/Calendar;

    invoke-virtual {v2, v8}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 363
    iget-boolean v4, p0, Lcom/meizu/common/widget/DatePicker;->isLunar:Z

    if-eqz v4, :cond_7

    if-lez v6, :cond_7

    if-ge v6, v2, :cond_7

    .line 364
    add-int/lit8 v2, v2, 0x1

    .line 367
    :cond_7
    add-int/lit8 v4, v2, -0x1

    move v5, v2

    move v2, v4

    move v4, v0

    move v0, v1

    goto :goto_2

    .line 361
    :cond_8
    iget v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonth:I

    goto :goto_4

    .line 370
    :cond_9
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonthPicker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {v0}, Lcom/meizu/common/widget/ScrollTextView;->isCyclic()Z

    move-result v0

    if-nez v0, :cond_0

    .line 373
    iget v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonth:I

    .line 374
    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker;->mStartCal:Ljava/util/Calendar;

    invoke-virtual {v2, v8}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    add-int/lit8 v4, v2, 0x1

    .line 376
    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker;->mStartCal:Ljava/util/Calendar;

    invoke-virtual {v2, v8}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    move v5, v4

    move v4, v0

    move v0, v3

    .line 377
    goto/16 :goto_2

    .line 382
    :cond_a
    iget-boolean v7, p0, Lcom/meizu/common/widget/DatePicker;->isLunar:Z

    if-eqz v7, :cond_b

    if-lez v6, :cond_b

    iget-object v7, p0, Lcom/meizu/common/widget/DatePicker;->mStartCal:Ljava/util/Calendar;

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v7, v7, 0x1

    if-eq v5, v7, :cond_c

    :cond_b
    iget-boolean v7, p0, Lcom/meizu/common/widget/DatePicker;->isLunar:Z

    if-eqz v7, :cond_2

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/meizu/common/widget/DatePicker;->mStartCal:Ljava/util/Calendar;

    .line 383
    invoke-virtual {v6, v8}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    if-ne v5, v6, :cond_2

    :cond_c
    move v0, v3

    .line 384
    goto/16 :goto_3
.end method

.method private updateDate(IIIZZ)V
    .locals 3

    .prologue
    .line 879
    iget v0, p0, Lcom/meizu/common/widget/DatePicker;->mStartYear:I

    if-ge p1, v0, :cond_4

    iget v0, p0, Lcom/meizu/common/widget/DatePicker;->mStartYear:I

    :goto_0
    iput v0, p0, Lcom/meizu/common/widget/DatePicker;->mYear:I

    .line 880
    iget v0, p0, Lcom/meizu/common/widget/DatePicker;->mEndYear:I

    if-le p1, v0, :cond_0

    iget p1, p0, Lcom/meizu/common/widget/DatePicker;->mEndYear:I

    :cond_0
    iput p1, p0, Lcom/meizu/common/widget/DatePicker;->mYear:I

    .line 881
    iput p2, p0, Lcom/meizu/common/widget/DatePicker;->mMonth:I

    .line 882
    iput p3, p0, Lcom/meizu/common/widget/DatePicker;->mDay:I

    .line 883
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonths:[Ljava/lang/String;

    .line 884
    invoke-direct {p0}, Lcom/meizu/common/widget/DatePicker;->getShortMonths()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonths:[Ljava/lang/String;

    .line 886
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mYearPicker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {v0}, Lcom/meizu/common/widget/ScrollTextView;->stopScrolling()V

    .line 887
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonthPicker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {v0}, Lcom/meizu/common/widget/ScrollTextView;->stopScrolling()V

    .line 888
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mDayPicker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {v0}, Lcom/meizu/common/widget/ScrollTextView;->stopScrolling()V

    .line 890
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mYearPicker:Lcom/meizu/common/widget/ScrollTextView;

    iget v1, p0, Lcom/meizu/common/widget/DatePicker;->mYear:I

    iget v2, p0, Lcom/meizu/common/widget/DatePicker;->mStartYear:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1, p4}, Lcom/meizu/common/widget/ScrollTextView;->setCurrentItem(IZ)V

    .line 892
    iget v0, p0, Lcom/meizu/common/widget/DatePicker;->mYearOfMonths:I

    invoke-direct {p0}, Lcom/meizu/common/widget/DatePicker;->getYearMonths()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 893
    invoke-direct {p0}, Lcom/meizu/common/widget/DatePicker;->getYearMonths()I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/DatePicker;->mYearOfMonths:I

    .line 894
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonthPicker:Lcom/meizu/common/widget/ScrollTextView;

    iget v1, p0, Lcom/meizu/common/widget/DatePicker;->mYearOfMonths:I

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/ScrollTextView;->refreshCount(I)V

    .line 896
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonthPicker:Lcom/meizu/common/widget/ScrollTextView;

    iget v1, p0, Lcom/meizu/common/widget/DatePicker;->mMonth:I

    invoke-virtual {v0, v1, p4}, Lcom/meizu/common/widget/ScrollTextView;->setCurrentItem(IZ)V

    .line 898
    iget v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonthOfDays:I

    invoke-direct {p0}, Lcom/meizu/common/widget/DatePicker;->getMonthDays()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 899
    invoke-direct {p0}, Lcom/meizu/common/widget/DatePicker;->getMonthDays()I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonthOfDays:I

    .line 900
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mDayPicker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-direct {p0}, Lcom/meizu/common/widget/DatePicker;->getMonthDays()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/ScrollTextView;->refreshCount(I)V

    .line 902
    :cond_2
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mDayPicker:Lcom/meizu/common/widget/ScrollTextView;

    iget v1, p0, Lcom/meizu/common/widget/DatePicker;->mDay:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1, p4}, Lcom/meizu/common/widget/ScrollTextView;->setCurrentItem(IZ)V

    .line 904
    if-eqz p5, :cond_3

    .line 905
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonths:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/meizu/common/widget/DatePicker;->reorderPickers([Ljava/lang/String;)V

    .line 907
    :cond_3
    return-void

    :cond_4
    move v0, p1

    .line 879
    goto :goto_0
.end method

.method private updateYearPicker()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 1210
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mYearPicker:Lcom/meizu/common/widget/ScrollTextView;

    new-instance v1, Lcom/meizu/common/widget/DatePicker$DateAdapter;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/meizu/common/widget/DatePicker$DateAdapter;-><init>(Lcom/meizu/common/widget/DatePicker;I)V

    const/high16 v2, -0x40800000    # -1.0f

    iget v3, p0, Lcom/meizu/common/widget/DatePicker;->mYear:I

    iget v4, p0, Lcom/meizu/common/widget/DatePicker;->mStartYear:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/meizu/common/widget/DatePicker;->mEndYear:I

    iget v5, p0, Lcom/meizu/common/widget/DatePicker;->mStartYear:I

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    iget v5, p0, Lcom/meizu/common/widget/DatePicker;->mOneScreenCount:I

    iget v7, p0, Lcom/meizu/common/widget/DatePicker;->mEndYear:I

    iget v8, p0, Lcom/meizu/common/widget/DatePicker;->mStartYear:I

    sub-int/2addr v7, v8

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Lcom/meizu/common/widget/ScrollTextView;->setData(Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;FIIIIIZ)V

    .line 1214
    return-void
.end method


# virtual methods
.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1099
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/DatePicker;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 1100
    return-void
.end method

.method public getDayOfMonth()I
    .locals 1

    .prologue
    .line 1176
    iget v0, p0, Lcom/meizu/common/widget/DatePicker;->mDay:I

    return v0
.end method

.method public getDayUnit()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 1408
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mDayUnit:Landroid/widget/TextView;

    return-object v0
.end method

.method public getLunarDays(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 994
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mLunardays:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_0

    .line 995
    const/4 v0, 0x0

    .line 998
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mLunardays:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public getMonth()I
    .locals 1

    .prologue
    .line 1172
    iget v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonth:I

    return v0
.end method

.method public getTimePreviewText(ZIIIZ)Ljava/lang/String;
    .locals 10

    .prologue
    .line 1529
    const-string v0, ""

    .line 1530
    add-int/lit8 v1, p3, 0x1

    .line 1531
    invoke-virtual {p0}, Lcom/meizu/common/widget/DatePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/meizu/common/R$string;->mc_date_time_year:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1532
    invoke-virtual {p0}, Lcom/meizu/common/widget/DatePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/meizu/common/R$string;->mc_date_time_month:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1533
    invoke-virtual {p0}, Lcom/meizu/common/widget/DatePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/meizu/common/R$string;->mc_date_time_day:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1534
    if-nez p1, :cond_5

    .line 1535
    invoke-direct {p0}, Lcom/meizu/common/widget/DatePicker;->isZh()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1536
    if-eqz p5, :cond_1

    .line 1537
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v2

    add-int/lit8 v1, v1, -0x1

    invoke-static {v2, p2, v1, p4}, Lcom/meizu/common/util/DateTimeUtils;->getWeek(Landroid/content/Context;III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1606
    :cond_0
    :goto_0
    return-object v0

    .line 1539
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1542
    :cond_2
    invoke-virtual {p0}, Lcom/meizu/common/widget/DatePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/meizu/common/R$array;->mc_custom_time_picker_lunar_month:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 1543
    if-lez v1, :cond_0

    array-length v3, v2

    if-gt v1, v3, :cond_0

    .line 1544
    if-eqz p5, :cond_4

    .line 1545
    iget-boolean v0, p0, Lcom/meizu/common/widget/DatePicker;->isRTL:Z

    if-eqz v0, :cond_3

    .line 1546
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v3, v1, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1547
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "%d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1548
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "%d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1549
    invoke-virtual {p0}, Lcom/meizu/common/widget/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v2

    add-int/lit8 v1, v1, -0x1

    invoke-static {v2, p2, v1, p4}, Lcom/meizu/common/util/DateTimeUtils;->getWeek(Landroid/content/Context;III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1551
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/meizu/common/widget/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v3

    add-int/lit8 v4, v1, -0x1

    invoke-static {v3, p2, v4, p4}, Lcom/meizu/common/util/DateTimeUtils;->getWeek(Landroid/content/Context;III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1553
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1554
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1557
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1563
    :cond_5
    const/4 v2, 0x0

    .line 1564
    invoke-static {p2}, Lcom/meizu/common/util/LunarCalendar;->leapMonth(I)I

    move-result v6

    .line 1565
    invoke-virtual {p0}, Lcom/meizu/common/widget/DatePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v7, Lcom/meizu/common/R$array;->mc_custom_time_picker_lunar_month:I

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    .line 1566
    invoke-virtual {p0}, Lcom/meizu/common/widget/DatePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v8, Lcom/meizu/common/R$string;->mc_time_picker_leap:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1567
    if-eqz v6, :cond_7

    if-le v1, v6, :cond_7

    .line 1568
    add-int/lit8 v3, v1, -0x1

    .line 1569
    if-ne v3, v6, :cond_6

    .line 1570
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, v3, -0x1

    aget-object v2, v7, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1571
    const/4 v1, 0x1

    .line 1586
    :goto_1
    invoke-static {p2, v3, p4, v1}, Lcom/meizu/common/util/LunarCalendar;->lunarToSolar(IIIZ)[I

    move-result-object v1

    .line 1587
    invoke-direct {p0}, Lcom/meizu/common/widget/DatePicker;->isZh()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1588
    if-eqz p5, :cond_a

    .line 1589
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v2, p4, -0x1

    invoke-virtual {p0, v2}, Lcom/meizu/common/widget/DatePicker;->getLunarDays(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    aget v3, v1, v3

    const/4 v4, 0x1

    aget v4, v1, v4

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x2

    aget v1, v1, v5

    invoke-static {v2, v3, v4, v1}, Lcom/meizu/common/util/DateTimeUtils;->getWeek(Landroid/content/Context;III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1573
    :cond_6
    add-int/lit8 v1, v3, -0x1

    aget-object v1, v7, v1

    move v9, v2

    move-object v2, v1

    move v1, v9

    goto :goto_1

    .line 1577
    :cond_7
    add-int/lit8 v3, v1, -0x1

    array-length v6, v7

    if-lt v3, v6, :cond_8

    .line 1578
    array-length v1, v7

    add-int/lit8 v1, v1, -0x1

    .line 1580
    :cond_8
    add-int/lit8 v3, v1, -0x1

    if-gez v3, :cond_9

    .line 1582
    const/4 v1, 0x1

    .line 1584
    :cond_9
    add-int/lit8 v3, v1, -0x1

    aget-object v3, v7, v3

    move v9, v2

    move-object v2, v3

    move v3, v1

    move v1, v9

    goto :goto_1

    .line 1591
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1594
    :cond_b
    if-lez v3, :cond_0

    array-length v4, v7

    if-gt v3, v4, :cond_0

    .line 1595
    if-eqz p5, :cond_c

    .line 1596
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/meizu/common/widget/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    aget v4, v1, v4

    const/4 v5, 0x1

    aget v5, v1, v5

    add-int/lit8 v5, v5, -0x1

    const/4 v6, 0x2

    aget v1, v1, v6

    invoke-static {v3, v4, v5, v1}, Lcom/meizu/common/util/DateTimeUtils;->getWeek(Landroid/content/Context;III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1598
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1599
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1601
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public getYear()I
    .locals 1

    .prologue
    .line 1168
    iget v0, p0, Lcom/meizu/common/widget/DatePicker;->mYear:I

    return v0
.end method

.method public init(IIILcom/meizu/common/widget/DatePicker$OnDateChangedListener;Z)V
    .locals 1

    .prologue
    .line 1127
    iget v0, p0, Lcom/meizu/common/widget/DatePicker;->mYear:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonth:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/meizu/common/widget/DatePicker;->mDay:I

    if-eq v0, p3, :cond_1

    .line 1128
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p5}, Lcom/meizu/common/widget/DatePicker;->updateDate(IIIZ)V

    .line 1131
    :cond_1
    iput-object p4, p0, Lcom/meizu/common/widget/DatePicker;->mOnDateChangedListener:Lcom/meizu/common/widget/DatePicker$OnDateChangedListener;

    .line 1132
    invoke-direct {p0}, Lcom/meizu/common/widget/DatePicker;->setContentDescription()V

    .line 1133
    return-void
.end method

.method public init(IIILcom/meizu/common/widget/DatePicker$OnDateChangedListener;ZZ)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1148
    iget v1, p0, Lcom/meizu/common/widget/DatePicker;->mYear:I

    if-ne v1, p1, :cond_0

    iget v1, p0, Lcom/meizu/common/widget/DatePicker;->mMonth:I

    if-ne v1, p2, :cond_0

    iget v1, p0, Lcom/meizu/common/widget/DatePicker;->mDay:I

    if-ne v1, p3, :cond_0

    iget-boolean v1, p0, Lcom/meizu/common/widget/DatePicker;->isLunar:Z

    if-eq v1, p5, :cond_4

    .line 1149
    :cond_0
    if-eqz p5, :cond_5

    .line 1150
    iput-boolean p5, p0, Lcom/meizu/common/widget/DatePicker;->isLunar:Z

    .line 1151
    iget-object v1, p0, Lcom/meizu/common/widget/DatePicker;->mDayUnit:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1152
    invoke-static {p1}, Lcom/meizu/common/util/LunarCalendar;->leapMonth(I)I

    move-result v1

    .line 1153
    if-eqz v1, :cond_1

    add-int/lit8 v2, p2, 0x1

    if-eq v2, v1, :cond_1

    move p6, v0

    .line 1154
    :cond_1
    if-eqz v1, :cond_3

    if-nez p6, :cond_2

    if-le p2, v1, :cond_3

    .line 1155
    :cond_2
    add-int/lit8 p2, p2, 0x1

    .line 1157
    :cond_3
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/meizu/common/widget/DatePicker;->updateDate(IIIZ)V

    .line 1162
    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/meizu/common/widget/DatePicker;->refreshTextPreference()V

    .line 1163
    iput-object p4, p0, Lcom/meizu/common/widget/DatePicker;->mOnDateChangedListener:Lcom/meizu/common/widget/DatePicker$OnDateChangedListener;

    .line 1164
    invoke-direct {p0}, Lcom/meizu/common/widget/DatePicker;->setContentDescription()V

    .line 1165
    return-void

    .line 1159
    :cond_5
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/meizu/common/widget/DatePicker;->updateDate(IIIZ)V

    goto :goto_0
.end method

.method public isLunar()Z
    .locals 1

    .prologue
    .line 1308
    iget-boolean v0, p0, Lcom/meizu/common/widget/DatePicker;->isLunar:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .prologue
    .line 1003
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 1005
    iget-boolean v0, p0, Lcom/meizu/common/widget/DatePicker;->mIsDrawLine:Z

    if-eqz v0, :cond_0

    .line 1006
    invoke-virtual {p0}, Lcom/meizu/common/widget/DatePicker;->getWidth()I

    move-result v0

    .line 1007
    iget-object v1, p0, Lcom/meizu/common/widget/DatePicker;->mPickerHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/meizu/common/widget/DatePicker;->mWidthPadding:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v6, v1, v2

    .line 1008
    sub-int/2addr v0, v6

    div-int/lit8 v7, v0, 0x2

    .line 1009
    int-to-float v1, v7

    iget v0, p0, Lcom/meizu/common/widget/DatePicker;->mLineOneHeight:I

    int-to-float v2, v0

    add-int v0, v7, v6

    int-to-float v3, v0

    iget v0, p0, Lcom/meizu/common/widget/DatePicker;->mLineOneHeight:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/meizu/common/widget/DatePicker;->mLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1010
    int-to-float v1, v7

    iget v0, p0, Lcom/meizu/common/widget/DatePicker;->mLineTwoHeight:I

    int-to-float v2, v0

    add-int v0, v7, v6

    int-to-float v3, v0

    iget v0, p0, Lcom/meizu/common/widget/DatePicker;->mLineTwoHeight:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/meizu/common/widget/DatePicker;->mLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1012
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .prologue
    .line 707
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 708
    const-class v0, Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 709
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .prologue
    .line 1110
    check-cast p1, Lcom/meizu/common/widget/DatePicker$SavedState;

    .line 1111
    invoke-virtual {p1}, Lcom/meizu/common/widget/DatePicker$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1112
    invoke-virtual {p1}, Lcom/meizu/common/widget/DatePicker$SavedState;->getYear()I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/DatePicker;->mYear:I

    .line 1113
    invoke-virtual {p1}, Lcom/meizu/common/widget/DatePicker$SavedState;->getMonth()I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonth:I

    .line 1114
    invoke-virtual {p1}, Lcom/meizu/common/widget/DatePicker$SavedState;->getDay()I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/DatePicker;->mDay:I

    .line 1115
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .prologue
    .line 1104
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 1105
    new-instance v0, Lcom/meizu/common/widget/DatePicker$SavedState;

    iget v2, p0, Lcom/meizu/common/widget/DatePicker;->mYear:I

    iget v3, p0, Lcom/meizu/common/widget/DatePicker;->mMonth:I

    iget v4, p0, Lcom/meizu/common/widget/DatePicker;->mDay:I

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/meizu/common/widget/DatePicker$SavedState;-><init>(Landroid/os/Parcelable;IIILcom/meizu/common/widget/DatePicker$1;)V

    return-object v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    .prologue
    .line 1181
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 1182
    if-nez p1, :cond_1

    .line 1207
    :cond_0
    :goto_0
    return-void

    .line 1188
    :cond_1
    invoke-direct {p0}, Lcom/meizu/common/widget/DatePicker;->getShortMonths()[Ljava/lang/String;

    move-result-object v1

    .line 1189
    const/4 v0, 0x0

    aget-object v0, v1, v0

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1190
    invoke-virtual {p0}, Lcom/meizu/common/widget/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    .line 1195
    :goto_1
    instance-of v2, v0, Ljava/text/SimpleDateFormat;

    if-eqz v2, :cond_3

    .line 1196
    check-cast v0, Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v0

    .line 1201
    :goto_2
    iput-object v1, p0, Lcom/meizu/common/widget/DatePicker;->mMonths:[Ljava/lang/String;

    .line 1202
    iget-object v1, p0, Lcom/meizu/common/widget/DatePicker;->mOrder:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1206
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonths:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/meizu/common/widget/DatePicker;->reorderPickers([Ljava/lang/String;)V

    goto :goto_0

    .line 1192
    :cond_2
    invoke-virtual {p0}, Lcom/meizu/common/widget/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getMediumDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    goto :goto_1

    .line 1198
    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/meizu/common/widget/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    goto :goto_2
.end method

.method public refresh()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 1231
    invoke-direct {p0}, Lcom/meizu/common/widget/DatePicker;->updateYearPicker()V

    .line 1232
    iput v1, p0, Lcom/meizu/common/widget/DatePicker;->mOldYear:I

    .line 1233
    iget v0, p0, Lcom/meizu/common/widget/DatePicker;->mYear:I

    invoke-direct {p0, v0}, Lcom/meizu/common/widget/DatePicker;->setMonthRange(I)V

    .line 1234
    iput v1, p0, Lcom/meizu/common/widget/DatePicker;->mOldMonth:I

    .line 1235
    iget v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonth:I

    invoke-direct {p0, v0}, Lcom/meizu/common/widget/DatePicker;->setDayRange(I)V

    .line 1236
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .prologue
    .line 699
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 700
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mDayPicker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/ScrollTextView;->setEnabled(Z)V

    .line 701
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonthPicker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/ScrollTextView;->setEnabled(Z)V

    .line 702
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mYearPicker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/ScrollTextView;->setEnabled(Z)V

    .line 703
    return-void
.end method

.method public setIsDrawFading(Z)V
    .locals 1

    .prologue
    .line 1412
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mYearPicker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/ScrollTextView;->setIsDrawFading(Z)V

    .line 1413
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonthPicker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/ScrollTextView;->setIsDrawFading(Z)V

    .line 1414
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mDayPicker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/ScrollTextView;->setIsDrawFading(Z)V

    .line 1415
    return-void
.end method

.method public setIsDrawLine(Z)V
    .locals 0

    .prologue
    .line 1015
    iput-boolean p1, p0, Lcom/meizu/common/widget/DatePicker;->mIsDrawLine:Z

    .line 1016
    return-void
.end method

.method public setItemHeight(II)V
    .locals 3

    .prologue
    .line 1402
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mDayPicker:Lcom/meizu/common/widget/ScrollTextView;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/meizu/common/widget/ScrollTextView;->setItemHeight(FF)V

    .line 1403
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonthPicker:Lcom/meizu/common/widget/ScrollTextView;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/meizu/common/widget/ScrollTextView;->setItemHeight(FF)V

    .line 1404
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mYearPicker:Lcom/meizu/common/widget/ScrollTextView;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/meizu/common/widget/ScrollTextView;->setItemHeight(FF)V

    .line 1405
    return-void
.end method

.method public setLineHeight(II)V
    .locals 0

    .prologue
    .line 1019
    iput p1, p0, Lcom/meizu/common/widget/DatePicker;->mLineOneHeight:I

    .line 1020
    iput p2, p0, Lcom/meizu/common/widget/DatePicker;->mLineTwoHeight:I

    .line 1021
    return-void
.end method

.method public setLunar(Z)V
    .locals 1

    .prologue
    .line 1304
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/meizu/common/widget/DatePicker;->setLunar(ZZ)V

    .line 1305
    return-void
.end method

.method public setLunar(ZZ)V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 1259
    iget-boolean v0, p0, Lcom/meizu/common/widget/DatePicker;->isLunar:Z

    if-ne v0, p1, :cond_0

    .line 1301
    :goto_0
    return-void

    .line 1262
    :cond_0
    iput-boolean p1, p0, Lcom/meizu/common/widget/DatePicker;->isLunar:Z

    .line 1263
    const/4 v0, 0x4

    new-array v3, v0, [I

    .line 1264
    iget v0, p0, Lcom/meizu/common/widget/DatePicker;->mYear:I

    aput v0, v3, v5

    .line 1265
    iget v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonth:I

    add-int/lit8 v0, v0, 0x1

    aput v0, v3, v2

    .line 1266
    iget v0, p0, Lcom/meizu/common/widget/DatePicker;->mDay:I

    aput v0, v3, v8

    .line 1267
    aput v5, v3, v9

    .line 1270
    aget v1, v3, v5

    .line 1271
    aget v0, v3, v5

    invoke-static {v0}, Lcom/meizu/common/util/LunarCalendar;->leapMonth(I)I

    move-result v4

    .line 1272
    aget v0, v3, v5

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Lcom/meizu/common/util/LunarCalendar;->leapMonth(I)I

    move-result v6

    .line 1273
    iget-boolean v0, p0, Lcom/meizu/common/widget/DatePicker;->isLunar:Z

    if-eqz v0, :cond_4

    .line 1274
    aget v0, v3, v5

    aget v7, v3, v2

    aget v3, v3, v8

    invoke-static {v0, v7, v3}, Lcom/meizu/common/util/LunarCalendar;->solarToLunar(III)[I

    move-result-object v0

    .line 1275
    aget v3, v0, v5

    if-eq v1, v3, :cond_1

    if-eqz v6, :cond_1

    aget v3, v0, v9

    if-eq v3, v2, :cond_2

    aget v3, v0, v2

    if-gt v3, v6, :cond_2

    :cond_1
    aget v3, v0, v5

    if-ne v1, v3, :cond_3

    if-eqz v4, :cond_3

    aget v1, v0, v9

    if-eq v1, v2, :cond_2

    aget v1, v0, v2

    if-le v1, v4, :cond_3

    .line 1278
    :cond_2
    aget v1, v0, v2

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v2

    .line 1281
    :cond_3
    iget-object v1, p0, Lcom/meizu/common/widget/DatePicker;->mDayUnit:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1298
    :goto_1
    invoke-direct {p0}, Lcom/meizu/common/widget/DatePicker;->refreshTextPreference()V

    .line 1299
    aget v1, v0, v5

    aget v3, v0, v2

    add-int/lit8 v3, v3, -0x1

    if-gez v3, :cond_8

    const/16 v2, 0xc

    :goto_2
    aget v3, v0, v8

    move-object v0, p0

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/meizu/common/widget/DatePicker;->updateDate(IIIZZ)V

    .line 1300
    iget v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonth:I

    invoke-direct {p0, v0}, Lcom/meizu/common/widget/DatePicker;->setLeapUnitVisibility(I)V

    goto :goto_0

    .line 1285
    :cond_4
    if-eqz v4, :cond_5

    aget v0, v3, v2

    if-lt v4, v0, :cond_6

    .line 1286
    :cond_5
    aget v0, v3, v2

    move v1, v5

    .line 1294
    :goto_3
    iget-object v4, p0, Lcom/meizu/common/widget/DatePicker;->mDayUnit:Landroid/widget/TextView;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1295
    aget v4, v3, v5

    aget v3, v3, v8

    invoke-static {v4, v0, v3, v1}, Lcom/meizu/common/util/LunarCalendar;->lunarToSolar(IIIZ)[I

    move-result-object v0

    goto :goto_1

    .line 1287
    :cond_6
    add-int/lit8 v0, v4, 0x1

    aget v1, v3, v2

    if-ne v0, v1, :cond_7

    .line 1288
    aget v0, v3, v2

    add-int/lit8 v0, v0, -0x1

    move v1, v2

    .line 1289
    goto :goto_3

    .line 1290
    :cond_7
    add-int/lit8 v0, v4, 0x1

    aget v1, v3, v2

    if-ge v0, v1, :cond_9

    .line 1291
    aget v0, v3, v2

    add-int/lit8 v0, v0, -0x1

    move v1, v5

    goto :goto_3

    .line 1299
    :cond_8
    aget v2, v0, v2

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_9
    move v0, v5

    move v1, v5

    goto :goto_3
.end method

.method public setMaxDate(J)V
    .locals 3

    .prologue
    .line 1222
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1223
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1224
    iput-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mEndCal:Ljava/util/Calendar;

    .line 1225
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 1226
    iput v0, p0, Lcom/meizu/common/widget/DatePicker;->mEndYear:I

    .line 1227
    invoke-virtual {p0}, Lcom/meizu/common/widget/DatePicker;->refresh()V

    .line 1228
    return-void
.end method

.method public setMinDate(J)V
    .locals 3

    .prologue
    .line 1244
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1245
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1246
    iput-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mStartCal:Ljava/util/Calendar;

    .line 1247
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 1248
    iput v0, p0, Lcom/meizu/common/widget/DatePicker;->mStartYear:I

    .line 1249
    invoke-virtual {p0}, Lcom/meizu/common/widget/DatePicker;->refresh()V

    .line 1250
    return-void
.end method

.method public setShowDayColumn(Z)V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 1027
    sget v0, Lcom/meizu/common/R$id;->mc_column2Layout:I

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 1028
    if-eqz v0, :cond_0

    .line 1029
    if-eqz p1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1030
    invoke-direct {p0}, Lcom/meizu/common/widget/DatePicker;->setContentDescription()V

    .line 1031
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mDayPicker:Lcom/meizu/common/widget/ScrollTextView;

    if-eqz p1, :cond_2

    :goto_1
    invoke-virtual {v0, v2}, Lcom/meizu/common/widget/ScrollTextView;->setVisibility(I)V

    .line 1033
    :cond_0
    return-void

    :cond_1
    move v1, v3

    .line 1029
    goto :goto_0

    :cond_2
    move v2, v3

    .line 1031
    goto :goto_1
.end method

.method public setTextColor(III)V
    .locals 1

    .prologue
    .line 1382
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mDayPicker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {v0, p1, p2}, Lcom/meizu/common/widget/ScrollTextView;->setTextColor(II)V

    .line 1383
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonthPicker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {v0, p1, p2}, Lcom/meizu/common/widget/ScrollTextView;->setTextColor(II)V

    .line 1384
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mYearPicker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {v0, p1, p2}, Lcom/meizu/common/widget/ScrollTextView;->setTextColor(II)V

    .line 1386
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mDayUnit:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1387
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonthUnit:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1388
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mYearUnit:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1389
    return-void
.end method

.method public setTextColor(ILjava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1392
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mDayPicker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {v0, p1, p2}, Lcom/meizu/common/widget/ScrollTextView;->setTextColor(ILjava/util/List;)V

    .line 1393
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonthPicker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {v0, p1, p2}, Lcom/meizu/common/widget/ScrollTextView;->setTextColor(ILjava/util/List;)V

    .line 1394
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mYearPicker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {v0, p1, p2}, Lcom/meizu/common/widget/ScrollTextView;->setTextColor(ILjava/util/List;)V

    .line 1396
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mDayUnit:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1397
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonthUnit:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1398
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mYearUnit:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1399
    return-void
.end method

.method public updateDate(III)V
    .locals 1

    .prologue
    .line 871
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/meizu/common/widget/DatePicker;->updateDate(IIIZ)V

    .line 872
    return-void
.end method

.method public updateDate(IIIZ)V
    .locals 6

    .prologue
    .line 875
    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/meizu/common/widget/DatePicker;->updateDate(IIIZZ)V

    .line 876
    return-void
.end method
