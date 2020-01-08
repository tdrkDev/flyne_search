.class public Lcom/meizu/common/widget/DayTimeDatePicker;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/DayTimeDatePicker$SavedState;,
        Lcom/meizu/common/widget/DayTimeDatePicker$DateAdapter;,
        Lcom/meizu/common/widget/DayTimeDatePicker$OnTimeChangedListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_END_YEAR:I = 0x833

.field private static final DEFAULT_START_YEAR:I = 0x76c


# instance fields
.field private isLunar:Z

.field private mDay:I

.field private mDayString:Ljava/lang/String;

.field private mEndCal:Ljava/util/Calendar;

.field private mEndYear:I

.field mGregorianDays:[Ljava/lang/String;

.field private mHour:I

.field private mHourPicker:Lcom/meizu/common/widget/ScrollTextView;

.field mHourTexts:[Ljava/lang/String;

.field private mHourUnit:Landroid/widget/TextView;

.field private mIsAccessibilityEnable:Z

.field private mIsDrawLine:Z

.field mIsLayoutRtl:Z

.field mLeap:Ljava/lang/String;

.field private mLeapMonthUnit:Landroid/widget/TextView;

.field private mLineOneHeight:I

.field private mLinePaint:Landroid/graphics/Paint;

.field private mLineTwoHeight:I

.field mLunarMouths:[Ljava/lang/String;

.field mLunardays:[Ljava/lang/String;

.field private mMin:I

.field private mMinPicker:Lcom/meizu/common/widget/ScrollTextView;

.field mMinTexts:[Ljava/lang/String;

.field private mMinUnit:Landroid/widget/TextView;

.field private mMonth:I

.field private mMonthDayPicker:Lcom/meizu/common/widget/ScrollTextView;

.field private mMonthOfDays:I

.field private mMonthString:Ljava/lang/String;

.field private mNormalItemHeight:F

.field private mNumTpyeface:Landroid/graphics/Typeface;

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

.field private mOnTimeChangedListener:Lcom/meizu/common/widget/DayTimeDatePicker$OnTimeChangedListener;

.field private mOneScreenCount:I

.field private mPickerHolder:Landroid/widget/LinearLayout;

.field private mSelectItemHeight:F

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

.field private mZhTypeface:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 426
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/DayTimeDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 427
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 430
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/DayTimeDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 431
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12

    .prologue
    const/4 v11, 0x5

    const/4 v8, 0x1

    const/16 v10, 0x64

    const/4 v9, 0x0

    const/4 v6, 0x0

    .line 434
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    iput-boolean v6, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->isLunar:Z

    .line 95
    iput v11, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mOneScreenCount:I

    .line 112
    iput-boolean v6, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mIsAccessibilityEnable:Z

    .line 118
    iput-boolean v6, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mIsLayoutRtl:Z

    .line 437
    const-string v0, "sans-serif-medium"

    invoke-static {v0, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mZhTypeface:Landroid/graphics/Typeface;

    .line 438
    const-string v0, "DINPro-medium"

    invoke-static {v0, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mNumTpyeface:Landroid/graphics/Typeface;

    .line 440
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mWordNormalTextSizes:Ljava/util/List;

    .line 441
    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mWordNormalTextSizes:Ljava/util/List;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$dimen;->mc_picker_normal_word_size_one:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 442
    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mWordNormalTextSizes:Ljava/util/List;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$dimen;->mc_picker_normal_word_size_two:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 443
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$dimen;->mc_picker_selected_word_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mWordSelectTextSize:I

    .line 444
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mNumberNormalTextSizes:Ljava/util/List;

    .line 445
    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mNumberNormalTextSizes:Ljava/util/List;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$dimen;->mc_picker_normal_number_size_one:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 446
    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mNumberNormalTextSizes:Ljava/util/List;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$dimen;->mc_picker_normal_number_size_two:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 447
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$dimen;->mc_picker_selected_number_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mNumberSelectTextSize:I

    .line 449
    const/16 v0, 0x76c

    iput v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mStartYear:I

    .line 450
    const/16 v0, 0x833

    iput v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mEndYear:I

    .line 452
    new-array v0, v10, [Ljava/lang/String;

    iput-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mHourTexts:[Ljava/lang/String;

    move v0, v6

    .line 453
    :goto_0
    if-ge v0, v10, :cond_1

    .line 454
    iget-object v1, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mHourTexts:[Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 455
    const/16 v1, 0x9

    if-gt v0, v1, :cond_0

    .line 456
    iget-object v1, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mHourTexts:[Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mHourTexts:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 453
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 460
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/DayTimeDatePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$string;->mc_time_picker_leap:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mLeap:Ljava/lang/String;

    .line 461
    invoke-virtual {p0}, Lcom/meizu/common/widget/DayTimeDatePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$string;->mc_date_time_month:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMonthString:Ljava/lang/String;

    .line 462
    invoke-virtual {p0}, Lcom/meizu/common/widget/DayTimeDatePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$string;->mc_date_time_day:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mDayString:Ljava/lang/String;

    .line 464
    new-array v0, v10, [Ljava/lang/String;

    iput-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMinTexts:[Ljava/lang/String;

    move v0, v6

    .line 465
    :goto_1
    if-ge v0, v10, :cond_3

    .line 466
    iget-object v1, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMinTexts:[Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 467
    const/16 v1, 0x9

    if-gt v0, v1, :cond_2

    .line 468
    iget-object v1, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMinTexts:[Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMinTexts:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 465
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 472
    :cond_3
    invoke-virtual {p0}, Lcom/meizu/common/widget/DayTimeDatePicker;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$layout;->mc_date_picker_day_time_layout:I

    invoke-static {v0, v1, p0}, Lcom/meizu/common/widget/DayTimeDatePicker;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 474
    sget v0, Lcom/meizu/common/R$id;->mc_scroll_month_leap:I

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/DayTimeDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mLeapMonthUnit:Landroid/widget/TextView;

    .line 475
    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mLeapMonthUnit:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 476
    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mLeapMonthUnit:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mLeap:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 477
    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mLeapMonthUnit:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 480
    :cond_4
    sget v0, Lcom/meizu/common/R$id;->mc_scroll_hour_text:I

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/DayTimeDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mHourUnit:Landroid/widget/TextView;

    .line 481
    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mHourUnit:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 482
    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mHourUnit:Landroid/widget/TextView;

    sget v1, Lcom/meizu/common/R$string;->mc_date_time_hour:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 485
    :cond_5
    sget v0, Lcom/meizu/common/R$id;->mc_scroll_min_text:I

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/DayTimeDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMinUnit:Landroid/widget/TextView;

    .line 486
    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMinUnit:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    .line 487
    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMinUnit:Landroid/widget/TextView;

    sget v1, Lcom/meizu/common/R$string;->mc_date_time_min:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 491
    :cond_6
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 492
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mYear:I

    .line 493
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMonth:I

    .line 494
    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mDay:I

    .line 495
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mOnTimeChangedListener:Lcom/meizu/common/widget/DayTimeDatePicker$OnTimeChangedListener;

    .line 497
    sget v0, Lcom/meizu/common/R$id;->mc_column_parent:I

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/DayTimeDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mPickerHolder:Landroid/widget/LinearLayout;

    .line 499
    sget v0, Lcom/meizu/common/R$id;->mc_scroll_day:I

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/DayTimeDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/widget/ScrollTextView;

    iput-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMonthDayPicker:Lcom/meizu/common/widget/ScrollTextView;

    .line 500
    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMonthDayPicker:Lcom/meizu/common/widget/ScrollTextView;

    iget-object v1, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mZhTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/ScrollTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 502
    iget v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mSelectItemHeight:F

    cmpl-float v0, v0, v9

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mNormalItemHeight:F

    cmpl-float v0, v0, v9

    if-eqz v0, :cond_7

    .line 503
    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMonthDayPicker:Lcom/meizu/common/widget/ScrollTextView;

    iget v1, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mSelectItemHeight:F

    float-to-int v1, v1

    int-to-float v1, v1

    iget v2, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mNormalItemHeight:F

    float-to-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/meizu/common/widget/ScrollTextView;->setItemHeight(FF)V

    .line 507
    :cond_7
    invoke-direct {p0}, Lcom/meizu/common/widget/DayTimeDatePicker;->resetMonthDayData()V

    .line 509
    sget v0, Lcom/meizu/common/R$id;->mc_scroll_hour:I

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/DayTimeDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/widget/ScrollTextView;

    iput-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mHourPicker:Lcom/meizu/common/widget/ScrollTextView;

    .line 510
    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mHourPicker:Lcom/meizu/common/widget/ScrollTextView;

    iget-object v1, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mNumTpyeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/ScrollTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 511
    iget v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mSelectItemHeight:F

    cmpl-float v0, v0, v9

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mNormalItemHeight:F

    cmpl-float v0, v0, v9

    if-eqz v0, :cond_8

    .line 512
    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mHourPicker:Lcom/meizu/common/widget/ScrollTextView;

    iget v1, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mSelectItemHeight:F

    float-to-int v1, v1

    int-to-float v1, v1

    iget v2, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mNormalItemHeight:F

    float-to-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/meizu/common/widget/ScrollTextView;->setItemHeight(FF)V

    .line 516
    :cond_8
    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mHourPicker:Lcom/meizu/common/widget/ScrollTextView;

    new-instance v1, Lcom/meizu/common/widget/DayTimeDatePicker$DateAdapter;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Lcom/meizu/common/widget/DayTimeDatePicker$DateAdapter;-><init>(Lcom/meizu/common/widget/DayTimeDatePicker;I)V

    const/high16 v2, -0x40800000    # -1.0f

    iget v3, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mHour:I

    const/16 v4, 0x18

    iget v5, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mOneScreenCount:I

    const/16 v7, 0x17

    invoke-virtual/range {v0 .. v8}, Lcom/meizu/common/widget/ScrollTextView;->setData(Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;FIIIIIZ)V

    .line 519
    sget v0, Lcom/meizu/common/R$id;->mc_scroll_min:I

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/DayTimeDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/widget/ScrollTextView;

    iput-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMinPicker:Lcom/meizu/common/widget/ScrollTextView;

    .line 520
    iget v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mSelectItemHeight:F

    cmpl-float v0, v0, v9

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mNormalItemHeight:F

    cmpl-float v0, v0, v9

    if-eqz v0, :cond_9

    .line 521
    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMinPicker:Lcom/meizu/common/widget/ScrollTextView;

    iget v1, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mSelectItemHeight:F

    float-to-int v1, v1

    int-to-float v1, v1

    iget v2, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mNormalItemHeight:F

    float-to-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/meizu/common/widget/ScrollTextView;->setItemHeight(FF)V

    .line 524
    :cond_9
    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMinPicker:Lcom/meizu/common/widget/ScrollTextView;

    new-instance v1, Lcom/meizu/common/widget/DayTimeDatePicker$DateAdapter;

    invoke-direct {v1, p0, v11}, Lcom/meizu/common/widget/DayTimeDatePicker$DateAdapter;-><init>(Lcom/meizu/common/widget/DayTimeDatePicker;I)V

    const/high16 v2, -0x40800000    # -1.0f

    iget v3, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMin:I

    const/16 v4, 0x3c

    iget v5, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mOneScreenCount:I

    const/16 v7, 0x3b

    invoke-virtual/range {v0 .. v8}, Lcom/meizu/common/widget/ScrollTextView;->setData(Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;FIIIIIZ)V

    .line 527
    invoke-direct {p0}, Lcom/meizu/common/widget/DayTimeDatePicker;->refreshTextPreference()V

    .line 529
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyy-MM-dd"

    invoke-direct {v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 531
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mStartCal:Ljava/util/Calendar;

    .line 532
    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mStartCal:Ljava/util/Calendar;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mStartYear:I

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

    .line 537
    :goto_2
    :try_start_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mEndCal:Ljava/util/Calendar;

    .line 538
    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mEndCal:Ljava/util/Calendar;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mEndYear:I

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

    .line 543
    :goto_3
    invoke-direct {p0}, Lcom/meizu/common/widget/DayTimeDatePicker;->adjustLayout4FocusedPosition()V

    .line 546
    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mHourUnit:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v0

    .line 547
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 548
    invoke-virtual {v1}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 549
    iget v1, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 550
    invoke-virtual {p0}, Lcom/meizu/common/widget/DayTimeDatePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 551
    iget-object v3, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mHourUnit:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    div-float/2addr v3, v2

    sub-float v1, v2, v1

    mul-float/2addr v1, v3

    const v2, 0x3fa66666    # 1.3f

    div-float/2addr v1, v2

    .line 552
    iget-object v2, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mHourUnit:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mHourUnit:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v3

    int-to-float v4, v0

    sub-float/2addr v4, v1

    float-to-int v4, v4

    iget-object v5, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mHourUnit:Landroid/widget/TextView;

    .line 553
    invoke-virtual {v5}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v5

    iget-object v7, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mHourUnit:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v7

    .line 552
    invoke-virtual {v2, v3, v4, v5, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 554
    iget-object v2, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMinUnit:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMinUnit:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v3

    int-to-float v0, v0

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMinUnit:Landroid/widget/TextView;

    .line 555
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v1

    iget-object v4, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMinUnit:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v4

    .line 554
    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 557
    invoke-virtual {p0}, Lcom/meizu/common/widget/DayTimeDatePicker;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_a

    .line 558
    invoke-virtual {p0, v6}, Lcom/meizu/common/widget/DayTimeDatePicker;->setEnabled(Z)V

    .line 561
    :cond_a
    iput v6, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mLineOneHeight:I

    .line 562
    iput v6, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mLineTwoHeight:I

    .line 563
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$dimen;->mc_custom_time_picker_line_width_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mWidthPadding:I

    .line 564
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mLinePaint:Landroid/graphics/Paint;

    .line 566
    sget-object v0, Lcom/meizu/common/R$styleable;->MZTheme:[I

    invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 567
    sget v1, Lcom/meizu/common/R$styleable;->MZTheme_mzThemeColor:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/meizu/common/R$color;->mc_custom_date_picker_selected_gregorian_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 569
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 570
    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 571
    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 572
    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$dimen;->mc_custom_time_picker_line_stroke_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 573
    iput-boolean v6, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mIsDrawLine:Z

    .line 574
    invoke-virtual {p0, v6}, Lcom/meizu/common/widget/DayTimeDatePicker;->setWillNotDraw(Z)V

    .line 576
    invoke-virtual {p0}, Lcom/meizu/common/widget/DayTimeDatePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$array;->mc_custom_time_picker_lunar_month:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mLunarMouths:[Ljava/lang/String;

    .line 577
    invoke-virtual {p0}, Lcom/meizu/common/widget/DayTimeDatePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$array;->mc_custom_time_picker_lunar_day:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mLunardays:[Ljava/lang/String;

    .line 578
    new-array v0, v10, [Ljava/lang/String;

    iput-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mGregorianDays:[Ljava/lang/String;

    .line 579
    :goto_4
    if-ge v6, v10, :cond_d

    .line 580
    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mGregorianDays:[Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    .line 581
    invoke-direct {p0}, Lcom/meizu/common/widget/DayTimeDatePicker;->isZh()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 582
    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mGregorianDays:[Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    .line 584
    :cond_b
    const/16 v0, 0x9

    if-gt v6, v0, :cond_c

    .line 585
    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mGregorianDays:[Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mGregorianDays:[Ljava/lang/String;

    aget-object v2, v2, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    .line 579
    :cond_c
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 533
    :catch_0
    move-exception v0

    .line 534
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    goto/16 :goto_2

    .line 539
    :catch_1
    move-exception v0

    .line 540
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    goto/16 :goto_3

    .line 589
    :cond_d
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "mx4pro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 590
    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMinPicker:Lcom/meizu/common/widget/ScrollTextView;

    new-instance v1, Lcom/meizu/common/widget/DayTimeDatePicker$1;

    invoke-direct {v1, p0}, Lcom/meizu/common/widget/DayTimeDatePicker$1;-><init>(Lcom/meizu/common/widget/DayTimeDatePicker;)V

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/ScrollTextView;->addScrollingListener(Lcom/meizu/common/widget/ScrollTextView$OnScrollTextViewScrollListener;)V

    .line 600
    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mHourPicker:Lcom/meizu/common/widget/ScrollTextView;

    new-instance v1, Lcom/meizu/common/widget/DayTimeDatePicker$2;

    invoke-direct {v1, p0}, Lcom/meizu/common/widget/DayTimeDatePicker$2;-><init>(Lcom/meizu/common/widget/DayTimeDatePicker;)V

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/ScrollTextView;->addScrollingListener(Lcom/meizu/common/widget/ScrollTextView$OnScrollTextViewScrollListener;)V

    .line 610
    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMonthDayPicker:Lcom/meizu/common/widget/ScrollTextView;

    new-instance v1, Lcom/meizu/common/widget/DayTimeDatePicker$3;

    invoke-direct {v1, p0}, Lcom/meizu/common/widget/DayTimeDatePicker$3;-><init>(Lcom/meizu/common/widget/DayTimeDatePicker;)V

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/ScrollTextView;->addScrollingListener(Lcom/meizu/common/widget/ScrollTextView$OnScrollTextViewScrollListener;)V

    .line 622
    :cond_e
    const-string v0, "accessibility"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 623
    if-eqz v0, :cond_f

    .line 624
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mIsAccessibilityEnable:Z

    .line 626
    :cond_f
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/common/widget/DayTimeDatePicker;)Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->isLunar:Z

    return v0
.end method

.method static synthetic access$100(Lcom/meizu/common/widget/DayTimeDatePicker;)I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mYear:I

    return v0
.end method

.method static synthetic access$1000(Lcom/meizu/common/widget/DayTimeDatePicker;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mDayString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/meizu/common/widget/DayTimeDatePicker;I)I
    .locals 0

    .prologue
    .line 52
    iput p1, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mYear:I

    return p1
.end method

.method static synthetic access$1100(Lcom/meizu/common/widget/DayTimeDatePicker;)I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mHour:I

    return v0
.end method

.method static synthetic access$1102(Lcom/meizu/common/widget/DayTimeDatePicker;I)I
    .locals 0

    .prologue
    .line 52
    iput p1, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mHour:I

    return p1
.end method

.method static synthetic access$1200(Lcom/meizu/common/widget/DayTimeDatePicker;)I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMin:I

    return v0
.end method

.method static synthetic access$1202(Lcom/meizu/common/widget/DayTimeDatePicker;I)I
    .locals 0

    .prologue
    .line 52
    iput p1, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMin:I

    return p1
.end method

.method static synthetic access$1300(Lcom/meizu/common/widget/DayTimeDatePicker;)I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mDay:I

    return v0
.end method

.method static synthetic access$1302(Lcom/meizu/common/widget/DayTimeDatePicker;I)I
    .locals 0

    .prologue
    .line 52
    iput p1, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mDay:I

    return p1
.end method

.method static synthetic access$1400(Lcom/meizu/common/widget/DayTimeDatePicker;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/meizu/common/widget/DayTimeDatePicker;->resetMonthDayData()V

    return-void
.end method

.method static synthetic access$1500(Lcom/meizu/common/widget/DayTimeDatePicker;)Lcom/meizu/common/widget/DayTimeDatePicker$OnTimeChangedListener;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mOnTimeChangedListener:Lcom/meizu/common/widget/DayTimeDatePicker$OnTimeChangedListener;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/meizu/common/widget/DayTimeDatePicker;I)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/DayTimeDatePicker;->sendAccessibilityEvents(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/meizu/common/widget/DayTimeDatePicker;I)I
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/DayTimeDatePicker;->getMonthNumFromPosition(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/meizu/common/widget/DayTimeDatePicker;I)I
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/DayTimeDatePicker;->getYearMonths(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/meizu/common/widget/DayTimeDatePicker;II[Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/common/widget/DayTimeDatePicker;->getLunarMonth(II[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/meizu/common/widget/DayTimeDatePicker;I)I
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/DayTimeDatePicker;->getDayNumFromPosition(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/meizu/common/widget/DayTimeDatePicker;)Z
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/meizu/common/widget/DayTimeDatePicker;->isZh()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/meizu/common/widget/DayTimeDatePicker;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMonthString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/meizu/common/widget/DayTimeDatePicker;)Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mStartCal:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$900(Lcom/meizu/common/widget/DayTimeDatePicker;)I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMonth:I

    return v0
.end method

.method static synthetic access$902(Lcom/meizu/common/widget/DayTimeDatePicker;I)I
    .locals 0

    .prologue
    .line 52
    iput p1, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMonth:I

    return p1
.end method

.method private adjustLayout4FocusedPosition()V
    .locals 2

    .prologue
    .line 1066
    sget v0, Lcom/meizu/common/R$id;->mc_scroll_hour_text:I

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/DayTimeDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mHourUnit:Landroid/widget/TextView;

    .line 1067
    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mHourUnit:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1068
    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mHourUnit:Landroid/widget/TextView;

    sget v1, Lcom/meizu/common/R$string;->mc_date_time_hour:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1071
    :cond_0
    sget v0, Lcom/meizu/common/R$id;->mc_scroll_min_text:I

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/DayTimeDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMinUnit:Landroid/widget/TextView;

    .line 1072
    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMinUnit:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 1073
    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMinUnit:Landroid/widget/TextView;

    sget v1, Lcom/meizu/common/R$string;->mc_date_time_min:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1075
    :cond_1
    return-void
.end method

.method private getCurrentCalendar()Ljava/util/Calendar;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1056
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1057
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 1058
    iget v1, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mYear:I

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 1059
    const/4 v1, 0x2

    iget v2, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMonth:I

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 1060
    return-object v0
.end method

.method private getDayNumFromPosition(I)I
    .locals 6

    .prologue
    .line 386
    const/4 v0, 0x1

    .line 391
    invoke-direct {p0}, Lcom/meizu/common/widget/DayTimeDatePicker;->getTwoMonthBeforeMonthDays()I

    move-result v1

    .line 392
    invoke-direct {p0}, Lcom/meizu/common/widget/DayTimeDatePicker;->getOneMonthBeforeMonthDays()I

    move-result v2

    add-int/2addr v2, v1

    .line 393
    iget v3, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mYear:I

    iget v4, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMonth:I

    invoke-direct {p0, v3, v4}, Lcom/meizu/common/widget/DayTimeDatePicker;->getMonthDays(II)I

    move-result v3

    add-int/2addr v3, v2

    .line 394
    invoke-direct {p0}, Lcom/meizu/common/widget/DayTimeDatePicker;->getOneMonthAfterMonthDays()I

    move-result v4

    add-int/2addr v4, v3

    .line 395
    invoke-direct {p0}, Lcom/meizu/common/widget/DayTimeDatePicker;->getTwoMonthAfterMonthDays()I

    move-result v5

    add-int/2addr v5, v4

    .line 397
    if-ge p1, v1, :cond_1

    .line 399
    add-int/2addr v0, p1

    .line 414
    :cond_0
    :goto_0
    return v0

    .line 400
    :cond_1
    if-lt p1, v1, :cond_2

    if-ge p1, v2, :cond_2

    .line 402
    sub-int v1, p1, v1

    add-int/2addr v0, v1

    goto :goto_0

    .line 403
    :cond_2
    if-lt p1, v2, :cond_3

    if-ge p1, v3, :cond_3

    .line 405
    sub-int v1, p1, v2

    add-int/2addr v0, v1

    goto :goto_0

    .line 406
    :cond_3
    if-lt p1, v3, :cond_4

    if-ge p1, v4, :cond_4

    .line 408
    sub-int v1, p1, v3

    add-int/2addr v0, v1

    goto :goto_0

    .line 409
    :cond_4
    if-lt p1, v4, :cond_0

    if-ge p1, v5, :cond_0

    .line 411
    sub-int v1, p1, v4

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method private getDaysPosition()I
    .locals 2

    .prologue
    .line 345
    .line 347
    invoke-direct {p0}, Lcom/meizu/common/widget/DayTimeDatePicker;->getTwoMonthBeforeMonthDays()I

    move-result v0

    invoke-direct {p0}, Lcom/meizu/common/widget/DayTimeDatePicker;->getOneMonthBeforeMonthDays()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mDay:I

    add-int/2addr v0, v1

    .line 349
    return v0
.end method

.method private getLunarMonth(II[Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1215
    invoke-static {p1}, Lcom/meizu/common/util/LunarCalendar;->leapMonth(I)I

    move-result v0

    .line 1217
    if-eqz v0, :cond_0

    if-le p2, v0, :cond_0

    .line 1218
    add-int/lit8 v0, p2, -0x1

    .line 1219
    add-int/lit8 v0, v0, -0x1

    aget-object v0, p3, v0

    .line 1228
    :goto_0
    return-object v0

    .line 1222
    :cond_0
    add-int/lit8 v0, p2, -0x1

    array-length v1, p3

    if-lt v0, v1, :cond_1

    .line 1223
    array-length v0, p3

    add-int/lit8 p2, v0, -0x1

    .line 1225
    :cond_1
    add-int/lit8 v0, p2, -0x1

    aget-object v0, p3, v0

    goto :goto_0
.end method

.method private getMonthDays()I
    .locals 4

    .prologue
    const/4 v3, 0x5

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 986
    iget-boolean v2, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->isLunar:Z

    if-eqz v2, :cond_3

    .line 987
    iget v2, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMonth:I

    .line 988
    iget v3, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mYear:I

    invoke-static {v3}, Lcom/meizu/common/util/LunarCalendar;->leapMonth(I)I

    move-result v3

    .line 990
    if-eqz v3, :cond_0

    .line 991
    if-ne v3, v2, :cond_2

    :goto_0
    move v1, v0

    .line 994
    :cond_0
    if-eqz v3, :cond_1

    if-eqz v3, :cond_4

    iget v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMonth:I

    if-ge v0, v3, :cond_4

    .line 995
    :cond_1
    add-int/lit8 v0, v2, 0x1

    .line 998
    :goto_1
    iget v2, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mYear:I

    invoke-static {v2, v0, v1}, Lcom/meizu/common/util/LunarCalendar;->daysInMonth(IIZ)I

    move-result v0

    .line 1004
    :goto_2
    return v0

    :cond_2
    move v0, v1

    .line 991
    goto :goto_0

    .line 1000
    :cond_3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 1001
    invoke-virtual {v1, v3, v0}, Ljava/util/Calendar;->set(II)V

    .line 1002
    iget v2, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mYear:I

    invoke-virtual {v1, v0, v2}, Ljava/util/Calendar;->set(II)V

    .line 1003
    const/4 v0, 0x2

    iget v2, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMonth:I

    invoke-virtual {v1, v0, v2}, Ljava/util/Calendar;->set(II)V

    .line 1004
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v0

    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method private getMonthDays(II)I
    .locals 6

    .prologue
    const/16 v0, 0x1e

    const/4 v2, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x5

    const/4 v1, 0x1

    .line 1010
    iget-object v3, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mStartCal:Ljava/util/Calendar;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mEndCal:Ljava/util/Calendar;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mStartCal:Ljava/util/Calendar;

    invoke-virtual {v3, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v3, p1, :cond_0

    iget-object v3, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mStartCal:Ljava/util/Calendar;

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-gt v3, p2, :cond_2

    :cond_0
    iget-object v3, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mStartCal:Ljava/util/Calendar;

    .line 1011
    invoke-virtual {v3, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-gt v3, p1, :cond_2

    iget-object v3, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mEndCal:Ljava/util/Calendar;

    .line 1012
    invoke-virtual {v3, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v3, p1, :cond_1

    iget-object v3, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mEndCal:Ljava/util/Calendar;

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-lt v3, p2, :cond_2

    :cond_1
    iget-object v3, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mEndCal:Ljava/util/Calendar;

    .line 1013
    invoke-virtual {v3, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ge v3, p1, :cond_3

    .line 1051
    :cond_2
    :goto_0
    return v2

    .line 1016
    :cond_3
    iget-object v3, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mStartCal:Ljava/util/Calendar;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mStartCal:Ljava/util/Calendar;

    invoke-virtual {v3, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v3, p1, :cond_4

    iget-object v3, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mStartCal:Ljava/util/Calendar;

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v3, p2, :cond_4

    .line 1018
    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mStartCal:Ljava/util/Calendar;

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v0

    iget-object v1, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mStartCal:Ljava/util/Calendar;

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    sub-int v2, v0, v1

    goto :goto_0

    .line 1019
    :cond_4
    iget-object v3, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mEndCal:Ljava/util/Calendar;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mEndCal:Ljava/util/Calendar;

    invoke-virtual {v3, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v3, p1, :cond_7

    iget-object v3, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mEndCal:Ljava/util/Calendar;

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v3, p2, :cond_7

    .line 1021
    iget-boolean v1, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->isLunar:Z

    if-eqz v1, :cond_6

    .line 1023
    iget-object v1, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mEndCal:Ljava/util/Calendar;

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-le v1, v0, :cond_5

    :goto_1
    move v2, v0

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mEndCal:Ljava/util/Calendar;

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    goto :goto_1

    .line 1026
    :cond_6
    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mEndCal:Ljava/util/Calendar;

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    goto :goto_0

    .line 1030
    :cond_7
    iget-boolean v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->isLunar:Z

    if-eqz v0, :cond_b

    .line 1033
    invoke-static {p1}, Lcom/meizu/common/util/LunarCalendar;->leapMonth(I)I

    move-result v3

    .line 1035
    if-eqz v3, :cond_c

    .line 1036
    if-ne v3, p2, :cond_a

    move v0, v1

    .line 1039
    :goto_2
    if-eqz v3, :cond_8

    if-eqz v3, :cond_9

    if-ge p2, v3, :cond_9

    .line 1040
    :cond_8
    add-int/lit8 p2, p2, 0x1

    .line 1043
    :cond_9
    invoke-static {p1, p2, v0}, Lcom/meizu/common/util/LunarCalendar;->daysInMonth(IIZ)I

    move-result v2

    goto :goto_0

    :cond_a
    move v0, v2

    .line 1036
    goto :goto_2

    .line 1046
    :cond_b
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1047
    invoke-virtual {v0, v4, v1}, Ljava/util/Calendar;->set(II)V

    .line 1048
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 1049
    invoke-virtual {v0, v5, p2}, Ljava/util/Calendar;->set(II)V

    .line 1051
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    goto/16 :goto_0

    :cond_c
    move v0, v2

    goto :goto_2
.end method

.method private getMonthDaysCount()I
    .locals 3

    .prologue
    .line 334
    .line 336
    invoke-direct {p0}, Lcom/meizu/common/widget/DayTimeDatePicker;->getTwoMonthBeforeMonthDays()I

    move-result v0

    invoke-direct {p0}, Lcom/meizu/common/widget/DayTimeDatePicker;->getOneMonthBeforeMonthDays()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mYear:I

    iget v2, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMonth:I

    .line 337
    invoke-direct {p0, v1, v2}, Lcom/meizu/common/widget/DayTimeDatePicker;->getMonthDays(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 338
    invoke-direct {p0}, Lcom/meizu/common/widget/DayTimeDatePicker;->getOneMonthAfterMonthDays()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0}, Lcom/meizu/common/widget/DayTimeDatePicker;->getTwoMonthAfterMonthDays()I

    move-result v1

    add-int/2addr v0, v1

    .line 340
    return v0
.end method

.method private getMonthNumFromPosition(I)I
    .locals 6

    .prologue
    .line 354
    const/4 v0, 0x0

    .line 358
    invoke-direct {p0}, Lcom/meizu/common/widget/DayTimeDatePicker;->getTwoMonthBeforeMonthDays()I

    move-result v1

    .line 359
    invoke-direct {p0}, Lcom/meizu/common/widget/DayTimeDatePicker;->getOneMonthBeforeMonthDays()I

    move-result v2

    add-int/2addr v2, v1

    .line 360
    iget v3, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mYear:I

    iget v4, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMonth:I

    invoke-direct {p0, v3, v4}, Lcom/meizu/common/widget/DayTimeDatePicker;->getMonthDays(II)I

    move-result v3

    add-int/2addr v3, v2

    .line 361
    invoke-direct {p0}, Lcom/meizu/common/widget/DayTimeDatePicker;->getOneMonthAfterMonthDays()I

    move-result v4

    add-int/2addr v4, v3

    .line 362
    invoke-direct {p0}, Lcom/meizu/common/widget/DayTimeDatePicker;->getTwoMonthAfterMonthDays()I

    move-result v5

    add-int/2addr v5, v4

    .line 364
    if-ge p1, v1, :cond_1

    .line 366
    iget v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMonth:I

    add-int/lit8 v0, v0, -0x2

    .line 381
    :cond_0
    :goto_0
    return v0

    .line 367
    :cond_1
    if-lt p1, v1, :cond_2

    if-ge p1, v2, :cond_2

    .line 369
    iget v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMonth:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 370
    :cond_2
    if-lt p1, v2, :cond_3

    if-ge p1, v3, :cond_3

    .line 372
    iget v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMonth:I

    goto :goto_0

    .line 373
    :cond_3
    if-lt p1, v3, :cond_4

    if-ge p1, v4, :cond_4

    .line 375
    iget v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMonth:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 376
    :cond_4
    if-lt p1, v4, :cond_0

    if-ge p1, v5, :cond_0

    .line 378
    iget v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMonth:I

    add-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method private getOneMonthAfterMonthDays()I
    .locals 3

    .prologue
    .line 306
    iget v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMonth:I

    iget v1, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mYear:I

    invoke-direct {p0, v1}, Lcom/meizu/common/widget/DayTimeDatePicker;->getYearMonths(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    if-gt v0, v1, :cond_0

    .line 308
    iget v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mYear:I

    iget v1, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMonth:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/meizu/common/widget/DayTimeDatePicker;->getMonthDays(II)I

    move-result v0

    .line 314
    :goto_0
    return v0

    .line 311
    :cond_0
    iget v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mYear:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMonth:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mYear:I

    invoke-direct {p0, v2}, Lcom/meizu/common/widget/DayTimeDatePicker;->getYearMonths(I)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lcom/meizu/common/widget/DayTimeDatePicker;->getMonthDays(II)I

    move-result v0

    goto :goto_0
.end method

.method private getOneMonthBeforeMonthDays()I
    .locals 3

    .prologue
    .line 277
    iget v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMonth:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 279
    iget v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mYear:I

    iget v1, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMonth:I

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/meizu/common/widget/DayTimeDatePicker;->getMonthDays(II)I

    move-result v0

    .line 285
    :goto_0
    return v0

    .line 282
    :cond_0
    iget v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mYear:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMonth:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mYear:I

    add-int/lit8 v2, v2, -0x1

    invoke-direct {p0, v2}, Lcom/meizu/common/widget/DayTimeDatePicker;->getYearMonths(I)I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lcom/meizu/common/widget/DayTimeDatePicker;->getMonthDays(II)I

    move-result v0

    goto :goto_0
.end method

.method private getTimeText(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1124
    .line 1125
    packed-switch p1, :pswitch_data_0

    .line 1136
    const-string v0, ""

    :goto_0
    return-object v0

    .line 1128
    :pswitch_0
    iget v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mHour:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1131
    :pswitch_1
    iget v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMin:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1125
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getTwoMonthAfterMonthDays()I
    .locals 3

    .prologue
    .line 321
    iget v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMonth:I

    iget v1, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mYear:I

    invoke-direct {p0, v1}, Lcom/meizu/common/widget/DayTimeDatePicker;->getYearMonths(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    if-gt v0, v1, :cond_0

    .line 323
    iget v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mYear:I

    iget v1, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMonth:I

    add-int/lit8 v1, v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/meizu/common/widget/DayTimeDatePicker;->getMonthDays(II)I

    move-result v0

    .line 329
    :goto_0
    return v0

    .line 326
    :cond_0
    iget v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mYear:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMonth:I

    add-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mYear:I

    invoke-direct {p0, v2}, Lcom/meizu/common/widget/DayTimeDatePicker;->getYearMonths(I)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lcom/meizu/common/widget/DayTimeDatePicker;->getMonthDays(II)I

    move-result v0

    goto :goto_0
.end method

.method private getTwoMonthBeforeMonthDays()I
    .locals 3

    .prologue
    .line 291
    iget v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMonth:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 293
    iget v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mYear:I

    iget v1, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMonth:I

    add-int/lit8 v1, v1, -0x2

    invoke-direct {p0, v0, v1}, Lcom/meizu/common/widget/DayTimeDatePicker;->getMonthDays(II)I

    move-result v0

    .line 299
    :goto_0
    return v0

    .line 296
    :cond_0
    iget v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mYear:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMonth:I

    add-int/lit8 v1, v1, -0x2

    iget v2, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mYear:I

    add-int/lit8 v2, v2, -0x1

    invoke-direct {p0, v2}, Lcom/meizu/common/widget/DayTimeDatePicker;->getYearMonths(I)I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lcom/meizu/common/widget/DayTimeDatePicker;->getMonthDays(II)I

    move-result v0

    goto :goto_0
.end method

.method private getYearMonths(I)I
    .locals 2

    .prologue
    const/16 v0, 0xc

    .line 705
    iget-boolean v1, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->isLunar:Z

    if-eqz v1, :cond_0

    .line 706
    invoke-static {p1}, Lcom/meizu/common/util/LunarCalendar;->leapMonth(I)I

    move-result v1

    if-nez v1, :cond_1

    .line 708
    :cond_0
    :goto_0
    return v0

    .line 706
    :cond_1
    const/16 v0, 0xd

    goto :goto_0
.end method

.method private isLeapMonth(I)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 675
    invoke-direct {p0}, Lcom/meizu/common/widget/DayTimeDatePicker;->isZh()Z

    move-result v1

    if-nez v1, :cond_1

    .line 691
    :cond_0
    :goto_0
    return v0

    .line 678
    :cond_1
    iget v1, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mYear:I

    invoke-static {v1}, Lcom/meizu/common/util/LunarCalendar;->leapMonth(I)I

    move-result v1

    .line 679
    if-nez v1, :cond_3

    .line 680
    const/16 v2, 0xc

    if-ge p1, v2, :cond_0

    .line 688
    :cond_2
    if-eqz v1, :cond_0

    add-int/lit8 v2, v1, -0x1

    if-le p1, v2, :cond_0

    .line 689
    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 684
    :cond_3
    const/16 v2, 0xd

    if-lt p1, v2, :cond_2

    goto :goto_0
.end method

.method public static isNumeric(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1078
    const-string v0, "[0-9]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 1079
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method private isZh()Z
    .locals 2

    .prologue
    .line 1191
    invoke-virtual {p0}, Lcom/meizu/common/widget/DayTimeDatePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1192
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 1193
    const-string v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private refreshTextPreference()V
    .locals 3

    .prologue
    .line 1197
    iget-boolean v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->isLunar:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/meizu/common/widget/DayTimeDatePicker;->isZh()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1198
    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMonthDayPicker:Lcom/meizu/common/widget/ScrollTextView;

    iget v1, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mWordSelectTextSize:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mWordNormalTextSizes:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/meizu/common/widget/ScrollTextView;->setTextSize(FLjava/util/List;)V

    .line 1199
    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMonthDayPicker:Lcom/meizu/common/widget/ScrollTextView;

    iget-object v1, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mZhTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/ScrollTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1205
    :goto_0
    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mHourPicker:Lcom/meizu/common/widget/ScrollTextView;

    iget v1, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mNumberSelectTextSize:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mNumberNormalTextSizes:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/meizu/common/widget/ScrollTextView;->setTextSize(FLjava/util/List;)V

    .line 1206
    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mHourPicker:Lcom/meizu/common/widget/ScrollTextView;

    iget-object v1, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mNumTpyeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/ScrollTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1208
    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMinPicker:Lcom/meizu/common/widget/ScrollTextView;

    iget v1, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mNumberSelectTextSize:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mNumberNormalTextSizes:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/meizu/common/widget/ScrollTextView;->setTextSize(FLjava/util/List;)V

    .line 1209
    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMinPicker:Lcom/meizu/common/widget/ScrollTextView;

    iget-object v1, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mNumTpyeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/ScrollTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1210
    return-void

    .line 1201
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMonthDayPicker:Lcom/meizu/common/widget/ScrollTextView;

    iget v1, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mNumberSelectTextSize:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mNumberNormalTextSizes:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/meizu/common/widget/ScrollTextView;->setTextSize(FLjava/util/List;)V

    .line 1202
    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMonthDayPicker:Lcom/meizu/common/widget/ScrollTextView;

    iget-object v1, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mNumTpyeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/ScrollTextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0
.end method

.method private resetMonthDayData()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 267
    invoke-direct {p0}, Lcom/meizu/common/widget/DayTimeDatePicker;->getMonthDaysCount()I

    move-result v4

    .line 268
    invoke-direct {p0}, Lcom/meizu/common/widget/DayTimeDatePicker;->getDaysPosition()I

    move-result v3

    .line 270
    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMonthDayPicker:Lcom/meizu/common/widget/ScrollTextView;

    new-instance v1, Lcom/meizu/common/widget/DayTimeDatePicker$DateAdapter;

    const/4 v2, 0x6

    invoke-direct {v1, p0, v2}, Lcom/meizu/common/widget/DayTimeDatePicker$DateAdapter;-><init>(Lcom/meizu/common/widget/DayTimeDatePicker;I)V

    const/high16 v2, -0x40800000    # -1.0f

    add-int/lit8 v3, v3, -0x1

    iget v5, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mOneScreenCount:I

    add-int/lit8 v7, v4, -0x1

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Lcom/meizu/common/widget/ScrollTextView;->setData(Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;FIIIIIZ)V

    .line 272
    return-void
.end method

.method private sendAccessibilityEvents(I)V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 1169
    iget-boolean v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mIsAccessibilityEnable:Z

    if-eqz v0, :cond_0

    .line 1170
    invoke-direct {p0}, Lcom/meizu/common/widget/DayTimeDatePicker;->setContentDescription()V

    .line 1171
    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    .line 1172
    sget v0, Lcom/meizu/common/R$id;->mc_column_min_Layout:I

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/DayTimeDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1173
    if-eqz v0, :cond_0

    .line 1174
    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 1188
    :cond_0
    :goto_0
    return-void

    .line 1176
    :cond_1
    if-ne p1, v1, :cond_2

    .line 1177
    sget v0, Lcom/meizu/common/R$id;->mc_column_hour_Layout:I

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/DayTimeDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1178
    if-eqz v0, :cond_0

    .line 1179
    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto :goto_0

    .line 1181
    :cond_2
    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    .line 1182
    sget v0, Lcom/meizu/common/R$id;->mc_column_day_Layout:I

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/DayTimeDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1183
    if-eqz v0, :cond_0

    .line 1184
    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto :goto_0
.end method

.method private setContentDescription()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 1140
    iget-boolean v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mIsAccessibilityEnable:Z

    if-ne v0, v6, :cond_2

    .line 1141
    const-string v0, "\u4e0a\u4e0b\u6eda\u52a8\u8bbe\u7f6e\u5206\uff0c\u5f53\u524d\u65e5\u671f\u662f"

    .line 1142
    const-string v0, "\u4e0a\u4e0b\u6eda\u52a8\u8bbe\u7f6e\u65e5\uff0c\u5f53\u524d\u65e5\u671f\u662f"

    .line 1143
    const-string v0, "\u4e0a\u4e0b\u6eda\u52a8\u8bbe\u7f6e\u65f6\uff0c\u5f53\u524d\u65e5\u671f\u662f"

    .line 1145
    sget v0, Lcom/meizu/common/R$id;->mc_column_min_Layout:I

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/DayTimeDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1146
    sget v1, Lcom/meizu/common/R$id;->mc_column_day_Layout:I

    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/DayTimeDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1147
    sget v2, Lcom/meizu/common/R$id;->mc_column_hour_Layout:I

    invoke-virtual {p0, v2}, Lcom/meizu/common/widget/DayTimeDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1150
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x6

    invoke-direct {p0, v4}, Lcom/meizu/common/widget/DayTimeDatePicker;->getTimeText(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x4

    invoke-direct {p0, v4}, Lcom/meizu/common/widget/DayTimeDatePicker;->getTimeText(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mHourUnit:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x5

    .line 1151
    invoke-direct {p0, v4}, Lcom/meizu/common/widget/DayTimeDatePicker;->getTimeText(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMinUnit:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, " "

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\u5eff\u5341"

    const-string v5, "\u4e8c\u5341"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\u5eff"

    const-string v5, "\u4e8c\u5341"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 1153
    if-eqz v0, :cond_0

    .line 1154
    invoke-virtual {v0, v6}, Landroid/view/View;->setFocusable(Z)V

    .line 1155
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u4e0a\u4e0b\u6eda\u52a8\u8bbe\u7f6e\u5206\uff0c\u5f53\u524d\u65e5\u671f\u662f"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1157
    :cond_0
    if-eqz v1, :cond_1

    .line 1158
    invoke-virtual {v1, v6}, Landroid/view/View;->setFocusable(Z)V

    .line 1159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u4e0a\u4e0b\u6eda\u52a8\u8bbe\u7f6e\u65e5\uff0c\u5f53\u524d\u65e5\u671f\u662f"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1161
    :cond_1
    if-eqz v2, :cond_2

    .line 1162
    invoke-virtual {v2, v6}, Landroid/view/View;->setFocusable(Z)V

    .line 1163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u4e0a\u4e0b\u6eda\u52a8\u8bbe\u7f6e\u65f6\uff0c\u5f53\u524d\u65e5\u671f\u662f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1166
    :cond_2
    return-void
.end method

.method private setDayRange(I)V
    .locals 0

    .prologue
    .line 423
    return-void
.end method

.method private setLeapUnitVisibility(I)V
    .locals 2

    .prologue
    .line 1233
    invoke-virtual {p0}, Lcom/meizu/common/widget/DayTimeDatePicker;->isLunar()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/meizu/common/widget/DayTimeDatePicker;->isLeapMonth(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1234
    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mLeapMonthUnit:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1238
    :goto_0
    return-void

    .line 1236
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mLeapMonthUnit:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setMonthRange(I)V
    .locals 0

    .prologue
    .line 419
    return-void
.end method

.method private updateDate(IIIIIZ)V
    .locals 2

    .prologue
    const/16 v1, 0xb

    .line 656
    iget v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mStartYear:I

    if-ge p1, v0, :cond_3

    iget v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mStartYear:I

    :goto_0
    iput v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mYear:I

    .line 657
    iget v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mEndYear:I

    if-le p1, v0, :cond_0

    iget p1, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mEndYear:I

    :cond_0
    iput p1, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mYear:I

    .line 658
    if-le p2, v1, :cond_1

    move p2, v1

    :cond_1
    iput p2, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMonth:I

    .line 659
    iput p3, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mDay:I

    .line 660
    iput p4, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mHour:I

    .line 661
    iput p5, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMin:I

    .line 663
    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mHourPicker:Lcom/meizu/common/widget/ScrollTextView;

    iget v1, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mHour:I

    invoke-virtual {v0, v1, p6}, Lcom/meizu/common/widget/ScrollTextView;->setCurrentItem(IZ)V

    .line 664
    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMinPicker:Lcom/meizu/common/widget/ScrollTextView;

    iget v1, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMin:I

    invoke-virtual {v0, v1, p6}, Lcom/meizu/common/widget/ScrollTextView;->setCurrentItem(IZ)V

    .line 666
    iget v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMonthOfDays:I

    invoke-direct {p0}, Lcom/meizu/common/widget/DayTimeDatePicker;->getMonthDaysCount()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 667
    invoke-direct {p0}, Lcom/meizu/common/widget/DayTimeDatePicker;->getMonthDaysCount()I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMonthOfDays:I

    .line 668
    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMonthDayPicker:Lcom/meizu/common/widget/ScrollTextView;

    iget v1, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMonthOfDays:I

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/ScrollTextView;->refreshCount(I)V

    .line 671
    :cond_2
    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMonthDayPicker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-direct {p0}, Lcom/meizu/common/widget/DayTimeDatePicker;->getDaysPosition()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1, p6}, Lcom/meizu/common/widget/ScrollTextView;->setCurrentItem(IZ)V

    .line 672
    return-void

    :cond_3
    move v0, p1

    .line 656
    goto :goto_0
.end method

.method private updateYearPicker()V
    .locals 0

    .prologue
    .line 892
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
    .line 802
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/DayTimeDatePicker;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 803
    return-void
.end method

.method public getCurrentHour()I
    .locals 1

    .prologue
    .line 1316
    iget v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mHour:I

    return v0
.end method

.method public getCurrentMinute()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 1320
    iget v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMin:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getDayOfMonth()I
    .locals 1

    .prologue
    .line 879
    iget v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mDay:I

    return v0
.end method

.method public getLunarDays(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 696
    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mLunardays:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_0

    .line 697
    const/4 v0, 0x0

    .line 700
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mLunardays:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public getMinUnit()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 1114
    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMinUnit:Landroid/widget/TextView;

    return-object v0
.end method

.method public getMonth()I
    .locals 1

    .prologue
    .line 875
    iget v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMonth:I

    return v0
.end method

.method public getTimePreviewText(ZII)Ljava/lang/String;
    .locals 8

    .prologue
    .line 1242
    const-string v2, ""

    .line 1243
    add-int/lit8 v0, p3, 0x1

    .line 1244
    invoke-virtual {p0}, Lcom/meizu/common/widget/DayTimeDatePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/meizu/common/R$string;->mc_date_time_year:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1245
    invoke-virtual {p0}, Lcom/meizu/common/widget/DayTimeDatePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/meizu/common/R$string;->mc_date_time_month:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1246
    if-nez p1, :cond_1

    .line 1248
    invoke-direct {p0}, Lcom/meizu/common/widget/DayTimeDatePicker;->isZh()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1250
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1290
    :goto_0
    return-object v0

    .line 1253
    :cond_0
    if-lez v0, :cond_6

    iget-object v1, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mLunarMouths:[Ljava/lang/String;

    array-length v1, v1

    if-gt v0, v1, :cond_6

    .line 1255
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mLunarMouths:[Ljava/lang/String;

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1261
    :cond_1
    invoke-static {p2}, Lcom/meizu/common/util/LunarCalendar;->leapMonth(I)I

    move-result v5

    .line 1263
    invoke-virtual {p0}, Lcom/meizu/common/widget/DayTimeDatePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v6, Lcom/meizu/common/R$string;->mc_time_picker_leap:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1264
    if-eqz v5, :cond_3

    if-le v0, v5, :cond_3

    .line 1265
    add-int/lit8 v1, v0, -0x1

    .line 1266
    if-ne v1, v5, :cond_2

    .line 1267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mLunarMouths:[Ljava/lang/String;

    add-int/lit8 v6, v1, -0x1

    aget-object v5, v5, v6

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1279
    :goto_1
    invoke-direct {p0}, Lcom/meizu/common/widget/DayTimeDatePicker;->isZh()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1281
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1269
    :cond_2
    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mLunarMouths:[Ljava/lang/String;

    add-int/lit8 v5, v1, -0x1

    aget-object v0, v0, v5

    goto :goto_1

    .line 1273
    :cond_3
    add-int/lit8 v1, v0, -0x1

    iget-object v5, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mLunarMouths:[Ljava/lang/String;

    array-length v5, v5

    if-lt v1, v5, :cond_4

    .line 1274
    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mLunarMouths:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .line 1276
    :cond_4
    iget-object v1, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mLunarMouths:[Ljava/lang/String;

    add-int/lit8 v5, v0, -0x1

    aget-object v1, v1, v5

    move-object v7, v1

    move v1, v0

    move-object v0, v7

    goto :goto_1

    .line 1284
    :cond_5
    if-lez v1, :cond_6

    iget-object v3, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mLunarMouths:[Ljava/lang/String;

    array-length v3, v3

    if-gt v1, v3, :cond_6

    .line 1286
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_6
    move-object v0, v2

    goto/16 :goto_0
.end method

.method public getYear()I
    .locals 1

    .prologue
    .line 871
    iget v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mYear:I

    return v0
.end method

.method public init(IIIIILcom/meizu/common/widget/DayTimeDatePicker$OnTimeChangedListener;Z)V
    .locals 7

    .prologue
    .line 830
    iget v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mYear:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMonth:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mDay:I

    if-eq v0, p3, :cond_1

    :cond_0
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p7

    .line 831
    invoke-direct/range {v0 .. v6}, Lcom/meizu/common/widget/DayTimeDatePicker;->updateDate(IIIIIZ)V

    .line 834
    :cond_1
    iput-object p6, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mOnTimeChangedListener:Lcom/meizu/common/widget/DayTimeDatePicker$OnTimeChangedListener;

    .line 835
    invoke-direct {p0}, Lcom/meizu/common/widget/DayTimeDatePicker;->setContentDescription()V

    .line 836
    return-void
.end method

.method public init(IIIIILcom/meizu/common/widget/DayTimeDatePicker$OnTimeChangedListener;ZZ)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 851
    iget v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mYear:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMonth:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mDay:I

    if-ne v0, p3, :cond_0

    iget-boolean v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->isLunar:Z

    if-eq v0, p7, :cond_3

    .line 852
    :cond_0
    if-eqz p7, :cond_4

    .line 853
    iput-boolean p7, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->isLunar:Z

    .line 855
    invoke-static {p1}, Lcom/meizu/common/util/LunarCalendar;->leapMonth(I)I

    move-result v0

    .line 856
    if-eqz v0, :cond_1

    add-int/lit8 v1, p2, 0x1

    if-eq v1, v0, :cond_1

    move p8, v6

    .line 857
    :cond_1
    if-eqz v0, :cond_5

    if-nez p8, :cond_2

    if-le p2, v0, :cond_5

    .line 858
    :cond_2
    add-int/lit8 p2, p2, 0x1

    move v2, p2

    :goto_0
    move-object v0, p0

    move v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    .line 860
    invoke-direct/range {v0 .. v6}, Lcom/meizu/common/widget/DayTimeDatePicker;->updateDate(IIIIIZ)V

    .line 865
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/meizu/common/widget/DayTimeDatePicker;->refreshTextPreference()V

    .line 866
    iput-object p6, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mOnTimeChangedListener:Lcom/meizu/common/widget/DayTimeDatePicker$OnTimeChangedListener;

    .line 867
    invoke-direct {p0}, Lcom/meizu/common/widget/DayTimeDatePicker;->setContentDescription()V

    .line 868
    return-void

    :cond_4
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 862
    invoke-direct/range {v0 .. v6}, Lcom/meizu/common/widget/DayTimeDatePicker;->updateDate(IIIIIZ)V

    goto :goto_1

    :cond_5
    move v2, p2

    goto :goto_0
.end method

.method public isLunar()Z
    .locals 1

    .prologue
    .line 982
    iget-boolean v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->isLunar:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .prologue
    .line 714
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 716
    iget-boolean v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mIsDrawLine:Z

    if-eqz v0, :cond_0

    .line 717
    invoke-virtual {p0}, Lcom/meizu/common/widget/DayTimeDatePicker;->getWidth()I

    move-result v0

    .line 718
    iget-object v1, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mPickerHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mWidthPadding:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v6, v1, v2

    .line 719
    sub-int/2addr v0, v6

    div-int/lit8 v7, v0, 0x2

    .line 720
    int-to-float v1, v7

    iget v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mLineOneHeight:I

    int-to-float v2, v0

    add-int v0, v7, v6

    int-to-float v3, v0

    iget v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mLineOneHeight:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 721
    int-to-float v1, v7

    iget v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mLineTwoHeight:I

    int-to-float v2, v0

    add-int v0, v7, v6

    int-to-float v3, v0

    iget v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mLineTwoHeight:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 723
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .prologue
    .line 638
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 639
    const-class v0, Lcom/meizu/common/widget/DatePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 640
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .prologue
    .line 813
    check-cast p1, Lcom/meizu/common/widget/DayTimeDatePicker$SavedState;

    .line 814
    invoke-virtual {p1}, Lcom/meizu/common/widget/DayTimeDatePicker$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 815
    invoke-virtual {p1}, Lcom/meizu/common/widget/DayTimeDatePicker$SavedState;->getYear()I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mYear:I

    .line 816
    invoke-virtual {p1}, Lcom/meizu/common/widget/DayTimeDatePicker$SavedState;->getMonth()I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMonth:I

    .line 817
    invoke-virtual {p1}, Lcom/meizu/common/widget/DayTimeDatePicker$SavedState;->getDay()I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mDay:I

    .line 818
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .prologue
    .line 807
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 808
    new-instance v0, Lcom/meizu/common/widget/DayTimeDatePicker$SavedState;

    iget v2, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mYear:I

    iget v3, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMonth:I

    iget v4, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mDay:I

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/meizu/common/widget/DayTimeDatePicker$SavedState;-><init>(Landroid/os/Parcelable;IIILcom/meizu/common/widget/DayTimeDatePicker$1;)V

    return-object v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .prologue
    .line 884
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 885
    if-nez p1, :cond_0

    .line 888
    :cond_0
    return-void
.end method

.method public setCurrentHour(Ljava/lang/Integer;)V
    .locals 6

    .prologue
    .line 1298
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/DayTimeDatePicker;->getCurrentHour()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 1303
    :cond_0
    :goto_0
    return-void

    .line 1302
    :cond_1
    iget v1, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mYear:I

    iget v2, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMonth:I

    iget v3, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mDay:I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget v5, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMin:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/common/widget/DayTimeDatePicker;->updateDate(IIIII)V

    goto :goto_0
.end method

.method public setCurrentMinute(Ljava/lang/Integer;)V
    .locals 6

    .prologue
    .line 1307
    invoke-virtual {p0}, Lcom/meizu/common/widget/DayTimeDatePicker;->getCurrentHour()I

    move-result v4

    .line 1308
    iget v1, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mYear:I

    iget v2, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMonth:I

    iget v3, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mDay:I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/common/widget/DayTimeDatePicker;->updateDate(IIIII)V

    .line 1309
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .prologue
    .line 630
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 631
    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMonthDayPicker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/ScrollTextView;->setEnabled(Z)V

    .line 632
    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mHourPicker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/ScrollTextView;->setEnabled(Z)V

    .line 633
    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMinPicker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/ScrollTextView;->setEnabled(Z)V

    .line 634
    return-void
.end method

.method public setIsDrawFading(Z)V
    .locals 1

    .prologue
    .line 1118
    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMinPicker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/ScrollTextView;->setIsDrawFading(Z)V

    .line 1119
    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mHourPicker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/ScrollTextView;->setIsDrawFading(Z)V

    .line 1120
    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMonthDayPicker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/ScrollTextView;->setIsDrawFading(Z)V

    .line 1121
    return-void
.end method

.method public setIsDrawLine(Z)V
    .locals 0

    .prologue
    .line 730
    iput-boolean p1, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mIsDrawLine:Z

    .line 731
    return-void
.end method

.method public setItemHeight(II)V
    .locals 3

    .prologue
    .line 1108
    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMonthDayPicker:Lcom/meizu/common/widget/ScrollTextView;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/meizu/common/widget/ScrollTextView;->setItemHeight(FF)V

    .line 1109
    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mHourPicker:Lcom/meizu/common/widget/ScrollTextView;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/meizu/common/widget/ScrollTextView;->setItemHeight(FF)V

    .line 1110
    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMinPicker:Lcom/meizu/common/widget/ScrollTextView;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/meizu/common/widget/ScrollTextView;->setItemHeight(FF)V

    .line 1111
    return-void
.end method

.method public setLineHeight(II)V
    .locals 0

    .prologue
    .line 734
    iput p1, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mLineOneHeight:I

    .line 735
    iput p2, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mLineTwoHeight:I

    .line 736
    return-void
.end method

.method public setLunar(Z)V
    .locals 1

    .prologue
    .line 978
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/meizu/common/widget/DayTimeDatePicker;->setLunar(ZZ)V

    .line 979
    return-void
.end method

.method public setLunar(ZZ)V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 938
    iput-boolean p1, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->isLunar:Z

    .line 939
    const/4 v0, 0x4

    new-array v4, v0, [I

    .line 940
    iget v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mYear:I

    aput v0, v4, v1

    .line 941
    iget v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMonth:I

    add-int/lit8 v0, v0, 0x1

    aput v0, v4, v3

    .line 942
    iget v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mDay:I

    aput v0, v4, v8

    .line 943
    aput v1, v4, v9

    .line 946
    aget v2, v4, v1

    .line 947
    aget v0, v4, v1

    invoke-static {v0}, Lcom/meizu/common/util/LunarCalendar;->leapMonth(I)I

    move-result v5

    .line 948
    aget v0, v4, v1

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Lcom/meizu/common/util/LunarCalendar;->leapMonth(I)I

    move-result v6

    .line 949
    iget-boolean v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->isLunar:Z

    if-eqz v0, :cond_3

    .line 950
    aget v0, v4, v1

    aget v7, v4, v3

    aget v4, v4, v8

    invoke-static {v0, v7, v4}, Lcom/meizu/common/util/LunarCalendar;->solarToLunar(III)[I

    move-result-object v0

    .line 951
    aget v4, v0, v1

    if-eq v2, v4, :cond_0

    if-eqz v6, :cond_0

    aget v4, v0, v9

    if-eq v4, v3, :cond_1

    aget v4, v0, v3

    if-gt v4, v6, :cond_1

    :cond_0
    aget v4, v0, v1

    if-ne v2, v4, :cond_2

    if-eqz v5, :cond_2

    aget v2, v0, v9

    if-eq v2, v3, :cond_1

    aget v2, v0, v3

    if-le v2, v5, :cond_2

    .line 954
    :cond_1
    aget v2, v0, v3

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v3

    .line 972
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/meizu/common/widget/DayTimeDatePicker;->refreshTextPreference()V

    .line 973
    aget v1, v0, v1

    aget v2, v0, v3

    add-int/lit8 v2, v2, -0x1

    if-gez v2, :cond_7

    const/16 v2, 0xc

    :goto_1
    aget v3, v0, v8

    iget v4, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mHour:I

    iget v5, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMin:I

    move-object v0, p0

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/meizu/common/widget/DayTimeDatePicker;->updateDate(IIIIIZ)V

    .line 974
    iget v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMonth:I

    invoke-direct {p0, v0}, Lcom/meizu/common/widget/DayTimeDatePicker;->setLeapUnitVisibility(I)V

    .line 975
    return-void

    .line 960
    :cond_3
    if-eqz v5, :cond_4

    aget v0, v4, v3

    if-lt v5, v0, :cond_5

    .line 961
    :cond_4
    aget v0, v4, v3

    move v2, v1

    .line 969
    :goto_2
    aget v5, v4, v1

    aget v4, v4, v8

    invoke-static {v5, v0, v4, v2}, Lcom/meizu/common/util/LunarCalendar;->lunarToSolar(IIIZ)[I

    move-result-object v0

    goto :goto_0

    .line 962
    :cond_5
    add-int/lit8 v0, v5, 0x1

    aget v2, v4, v3

    if-ne v0, v2, :cond_6

    .line 963
    aget v0, v4, v3

    add-int/lit8 v0, v0, -0x1

    move v2, v3

    .line 964
    goto :goto_2

    .line 965
    :cond_6
    add-int/lit8 v0, v5, 0x1

    aget v2, v4, v3

    if-ge v0, v2, :cond_8

    .line 966
    aget v0, v4, v3

    add-int/lit8 v0, v0, -0x1

    move v2, v1

    goto :goto_2

    .line 973
    :cond_7
    aget v2, v0, v3

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_8
    move v0, v1

    move v2, v1

    goto :goto_2
.end method

.method public setOnTimeChangedListener(Lcom/meizu/common/widget/DayTimeDatePicker$OnTimeChangedListener;)V
    .locals 0

    .prologue
    .line 726
    iput-object p1, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mOnTimeChangedListener:Lcom/meizu/common/widget/DayTimeDatePicker$OnTimeChangedListener;

    .line 727
    return-void
.end method

.method public setTextColor(III)V
    .locals 1

    .prologue
    .line 1090
    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMonthDayPicker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {v0, p1, p2}, Lcom/meizu/common/widget/ScrollTextView;->setTextColor(II)V

    .line 1091
    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mHourPicker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {v0, p1, p2}, Lcom/meizu/common/widget/ScrollTextView;->setTextColor(II)V

    .line 1092
    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMinPicker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {v0, p1, p2}, Lcom/meizu/common/widget/ScrollTextView;->setTextColor(II)V

    .line 1094
    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMinUnit:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1095
    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mHourUnit:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1096
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
    .line 1099
    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMonthDayPicker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {v0, p1, p2}, Lcom/meizu/common/widget/ScrollTextView;->setTextColor(ILjava/util/List;)V

    .line 1100
    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mHourPicker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {v0, p1, p2}, Lcom/meizu/common/widget/ScrollTextView;->setTextColor(ILjava/util/List;)V

    .line 1101
    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMinPicker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {v0, p1, p2}, Lcom/meizu/common/widget/ScrollTextView;->setTextColor(ILjava/util/List;)V

    .line 1103
    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMinUnit:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1104
    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker;->mHourUnit:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1105
    return-void
.end method

.method public updateDate(IIIII)V
    .locals 7

    .prologue
    .line 651
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/meizu/common/widget/DayTimeDatePicker;->updateDate(IIIIIZ)V

    .line 652
    return-void
.end method
