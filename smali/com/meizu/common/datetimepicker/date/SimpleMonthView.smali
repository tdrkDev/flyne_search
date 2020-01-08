.class public Lcom/meizu/common/datetimepicker/date/SimpleMonthView;
.super Lcom/meizu/common/datetimepicker/date/MonthView;
.source "SourceFile"


# instance fields
.field private isShowLunar:Z

.field private leap:Ljava/lang/String;

.field private mLunarValue:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation
.end field

.field private mLunardays:[Ljava/lang/String;

.field private mMonthText:Ljava/lang/String;

.field private mRadius:F

.field private mouths:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/meizu/common/datetimepicker/date/MonthView;-><init>(Landroid/content/Context;)V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->isShowLunar:Z

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mLunarValue:Ljava/util/HashMap;

    .line 44
    invoke-virtual {p0}, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$array;->mc_custom_time_picker_lunar_day:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mLunardays:[Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$string;->mc_time_picker_leap:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->leap:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$array;->mc_custom_time_picker_lunar_month:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mouths:[Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$string;->mc_date_time_month:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mMonthText:Ljava/lang/String;

    .line 48
    const-wide/high16 v0, 0x4010000000000000L    # 4.0

    invoke-static {p1, v0, v1}, Lcom/meizu/common/util/ScreenUtil;->dip2px(Landroid/content/Context;D)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mRadius:F

    .line 49
    return-void
.end method

.method private getLunarDays(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mLunardays:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_0

    .line 54
    const/4 v0, 0x0

    .line 57
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mLunardays:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0
.end method


# virtual methods
.method public drawMonthDay(Landroid/graphics/Canvas;IIIFFFFFF)V
    .locals 10

    .prologue
    .line 64
    .line 70
    invoke-virtual {p0, p2, p3, p4}, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->isOutOfRange(III)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 71
    iget-object v1, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mMonthNumPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mDisabledDayTextColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 72
    iget-object v1, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mDisabledDayTextColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 73
    iget-object v1, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mEventRemindPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mDisabledDayTextColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 91
    :goto_0
    invoke-virtual {p0, p4}, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->isEventRemindDay(I)Z

    move-result v5

    .line 92
    iget v1, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mGregorianMarginTop:I

    int-to-float v1, v1

    add-float v2, p6, v1

    .line 93
    iget-boolean v1, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->isShowLunar:Z

    if-eqz v1, :cond_8

    .line 94
    iget-object v1, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mMonthNumFontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    int-to-float v1, v1

    add-float/2addr v1, v2

    iget v3, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mPaddingOffset:I

    int-to-float v3, v3

    add-float/2addr v1, v3

    iget-object v3, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mMonthLunarLabelFontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v3, v3, Landroid/graphics/Paint$FontMetricsInt;->top:I

    int-to-float v3, v3

    sub-float/2addr v1, v3

    iget-object v3, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mMonthLunarLabelFontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v3, v3, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    int-to-float v3, v3

    sub-float v4, v1, v3

    .line 95
    if-eqz v5, :cond_7

    .line 96
    iget v1, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mEventDotMarginTop:I

    int-to-float v1, v1

    add-float/2addr v1, v4

    iget v3, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mEventRemindRadios:F

    add-float/2addr v1, v3

    iget-object v3, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mMonthLunarLabelFontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v3, v3, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    int-to-float v3, v3

    add-float/2addr v3, v1

    .line 97
    iget-object v1, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mMonthLunarLabelFontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    int-to-float v1, v1

    add-float/2addr v1, v4

    iget v6, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mEventDotMarginTop:I

    int-to-float v6, v6

    add-float/2addr v1, v6

    iget v6, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mEventRemindRadios:F

    add-float/2addr v1, v6

    .line 112
    :goto_1
    iget v6, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mSelectedDay:I

    if-ne v6, p4, :cond_1

    .line 113
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    .line 114
    move/from16 v0, p9

    iput v0, v6, Landroid/graphics/RectF;->top:F

    .line 115
    iget v7, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mBgMarginTop:I

    int-to-float v7, v7

    add-float/2addr v1, v7

    iput v1, v6, Landroid/graphics/RectF;->bottom:F

    .line 116
    if-eqz v5, :cond_0

    .line 117
    iget v1, v6, Landroid/graphics/RectF;->bottom:F

    iget v7, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mEventRemindRadios:F

    add-float/2addr v1, v7

    iput v1, v6, Landroid/graphics/RectF;->bottom:F

    .line 119
    :cond_0
    iget v1, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mBgPaddingLeftRight:I

    int-to-float v1, v1

    sub-float v1, p5, v1

    iput v1, v6, Landroid/graphics/RectF;->left:F

    .line 120
    iget v1, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mBgPaddingLeftRight:I

    int-to-float v1, v1

    add-float/2addr v1, p5

    iput v1, v6, Landroid/graphics/RectF;->right:F

    .line 121
    iget v1, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mRadius:F

    iget v7, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mRadius:F

    iget-object v8, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mSelectedCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v1, v7, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 124
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v6, "%d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v1, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mMonthNumPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, p5, v2, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 126
    iget-boolean v1, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->isShowLunar:Z

    if-eqz v1, :cond_2

    .line 127
    const/4 v1, 0x4

    new-array v1, v1, [I

    .line 128
    const/4 v2, 0x0

    aput p2, v1, v2

    .line 129
    const/4 v2, 0x1

    add-int/lit8 v6, p3, 0x1

    aput v6, v1, v2

    .line 130
    const/4 v2, 0x2

    aput p4, v1, v2

    .line 131
    const/4 v2, 0x3

    const/4 v6, 0x0

    aput v6, v1, v2

    .line 133
    iget-object v2, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mLunarValue:Ljava/util/HashMap;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 135
    iget-object v1, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mLunarValue:Ljava/util/HashMap;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 142
    :goto_2
    const-string v2, ""

    .line 143
    const/4 v2, 0x2

    aget v2, v1, v2

    const/4 v6, 0x1

    if-ne v2, v6, :cond_c

    .line 145
    invoke-static {p2}, Lcom/meizu/common/util/LunarCalendar;->leapMonth(I)I

    move-result v2

    .line 146
    const/4 v6, 0x1

    aget v6, v1, v6

    if-ne v6, v2, :cond_b

    const/4 v2, 0x3

    aget v2, v1, v2

    const/4 v6, 0x1

    if-ne v2, v6, :cond_b

    .line 147
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->leap:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mouths:[Ljava/lang/String;

    const/4 v7, 0x1

    aget v1, v1, v7

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v6, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mMonthText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 156
    :goto_3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v6, "%s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    invoke-static {v2, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, p5, v4, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 159
    :cond_2
    if-eqz v5, :cond_3

    .line 161
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 162
    iget v2, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mEventRemindRadios:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    sub-float v2, v3, v2

    iput v2, v1, Landroid/graphics/RectF;->top:F

    .line 163
    iget v2, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mEventRemindRadios:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    .line 164
    iget v2, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mEventRemindWidth:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float v2, p5, v2

    iput v2, v1, Landroid/graphics/RectF;->left:F

    .line 165
    iget v2, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mEventRemindWidth:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v2, p5

    iput v2, v1, Landroid/graphics/RectF;->right:F

    .line 166
    iget v2, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mEventRemindRadios:F

    iget v3, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mEventRemindRadios:F

    iget-object v4, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mEventRemindPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 168
    :cond_3
    return-void

    .line 74
    :cond_4
    iget v1, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mSelectedDay:I

    if-ne v1, p4, :cond_5

    .line 75
    iget-object v1, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mMonthNumPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mSelectDayColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 76
    iget-object v1, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mSelectDayColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 77
    iget-object v1, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mSelectPaintAlpha:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 78
    iget-object v1, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mEventRemindPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mSelectDayColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_0

    .line 79
    :cond_5
    iget-boolean v1, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mHasToday:Z

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mToday:I

    if-ne v1, p4, :cond_6

    .line 80
    iget-object v1, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mMonthNumPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mTodayNumberColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 81
    iget-object v1, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mTodayNumberColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 82
    iget-object v1, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mSelectPaintAlpha:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 83
    iget-object v1, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mEventRemindPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mEventRemindColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_0

    .line 85
    :cond_6
    iget-object v1, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mMonthNumPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mDayTextColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 86
    iget-object v1, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mLunarColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 87
    iget-object v1, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mLunarPaintAlpha:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 88
    iget-object v1, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mEventRemindPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mEventRemindColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_0

    .line 99
    :cond_7
    iget-object v1, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mMonthLunarLabelFontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    int-to-float v1, v1

    add-float v3, v4, v1

    .line 100
    iget-object v1, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mMonthLunarLabelFontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    int-to-float v1, v1

    add-float/2addr v1, v4

    goto/16 :goto_1

    .line 104
    :cond_8
    if-eqz v5, :cond_9

    .line 105
    iget-object v1, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mMonthNumFontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    int-to-float v1, v1

    add-float/2addr v1, v2

    iget v3, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mEventDotMarginTop:I

    int-to-float v3, v3

    add-float/2addr v1, v3

    iget v3, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mEventRemindRadios:F

    add-float/2addr v1, v3

    :goto_4
    move v3, v1

    move v4, v2

    .line 109
    goto/16 :goto_1

    :cond_9
    move v1, v2

    .line 107
    goto :goto_4

    .line 138
    :cond_a
    const/4 v2, 0x0

    aget v2, v1, v2

    const/4 v6, 0x1

    aget v6, v1, v6

    const/4 v7, 0x2

    aget v1, v1, v7

    invoke-static {v2, v6, v1}, Lcom/meizu/common/util/LunarCalendar;->solarToLunar(III)[I

    move-result-object v1

    .line 139
    iget-object v2, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mLunarValue:Ljava/util/HashMap;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 149
    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mouths:[Ljava/lang/String;

    const/4 v7, 0x1

    aget v1, v1, v7

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v6, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mMonthText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3

    .line 153
    :cond_c
    const/4 v2, 0x2

    aget v1, v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v1}, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->getLunarDays(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3
.end method

.method protected drawMonthNums(Landroid/graphics/Canvas;)V
    .locals 13

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->getMonthHeaderSize()I

    move-result v1

    .line 173
    invoke-virtual {p0}, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->findDayOffset()I

    move-result v0

    .line 177
    const/4 v4, 0x1

    move v11, v0

    move v12, v1

    :goto_0
    iget v0, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mNumCells:I

    if-gt v4, v0, :cond_1

    .line 179
    iget-boolean v0, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->isRTL:Z

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mTempRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mNumDays:I

    sub-int/2addr v1, v11

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mCellWidth:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mEdgePadding:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mOffsetX:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 182
    iget-object v0, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mTempRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mTempRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mCellWidth:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 188
    :goto_1
    iget-object v0, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mTempRect:Landroid/graphics/RectF;

    int-to-float v1, v12

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 189
    iget-object v0, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mTempRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mRowHeight:I

    add-int/2addr v1, v12

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 192
    iget-object v0, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mTempRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mMonthNumFontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mMonthNumFontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    int-to-float v1, v1

    sub-float v6, v0, v1

    .line 194
    iget v2, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mYear:I

    iget v3, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mMonth:I

    iget-object v0, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mTempRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    iget-object v0, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mTempRect:Landroid/graphics/RectF;

    iget v7, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mTempRect:Landroid/graphics/RectF;

    iget v8, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mTempRect:Landroid/graphics/RectF;

    iget v9, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mTempRect:Landroid/graphics/RectF;

    iget v10, v0, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v10}, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->drawMonthDay(Landroid/graphics/Canvas;IIIFFFFFF)V

    .line 198
    add-int/lit8 v0, v11, 0x1

    .line 199
    iget v1, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mNumDays:I

    if-ne v0, v1, :cond_2

    .line 200
    const/4 v0, 0x0

    .line 201
    iget v1, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mRowHeight:I

    add-int/2addr v1, v12

    .line 177
    :goto_2
    add-int/lit8 v4, v4, 0x1

    move v11, v0

    move v12, v1

    goto :goto_0

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mTempRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mCellWidth:I

    mul-int/2addr v1, v11

    iget v2, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mEdgePadding:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mOffsetX:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 186
    iget-object v0, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mTempRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mTempRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->mCellWidth:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    goto :goto_1

    .line 204
    :cond_1
    return-void

    :cond_2
    move v1, v12

    goto :goto_2
.end method

.method public setShowLunar(Z)V
    .locals 0

    .prologue
    .line 208
    iput-boolean p1, p0, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->isShowLunar:Z

    .line 209
    return-void
.end method
