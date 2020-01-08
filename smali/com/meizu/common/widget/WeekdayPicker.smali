.class public Lcom/meizu/common/widget/WeekdayPicker;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;,
        Lcom/meizu/common/widget/WeekdayPicker$OnSelectChangedListener;
    }
.end annotation


# static fields
.field static final DIFF_FRIDAY:I = 0x3

.field static final DIFF_MONDAY:I = 0x0

.field static final DIFF_SATURDAY:I = 0x2

.field static final DIFF_SUNDAY:I = 0x1

.field static final DIFF_THURSDAY:I = 0x4

.field static final DIFF_TUESDAY:I = 0x6

.field static final DIFF_WEDNESDAY:I = 0x5

.field static final FIXED_DIFF_NORMAL_DAY:I = 0x0

.field static final FIXED_WEEK_START_NORMAL_DAY:Ljava/lang/String; = "-1"

.field public static final FRIDAY:I = 0x10

.field static final HEIGHT_DELAY:I = 0x20

.field static final IMG_SELECTED_TAG:Ljava/lang/String; = "selected"

.field static final IMG_UNSELECTED_TAG:Ljava/lang/String; = "unselected"

.field public static final MONDAY:I = 0x1

.field public static final NO_DAY:I = 0x0

.field static final PADDING_SIZE:I = 0xc

.field public static final SATURDAY:I = 0x20

.field static final SQUARE_WIDTH:I = 0x40

.field public static final SUNDAY:I = 0x40

.field public static final THURSDAY:I = 0x8

.field static final TOTAL_ITEM_COUNT:I = 0x7

.field public static final TUESDAY:I = 0x2

.field public static final WEDNESDAY:I = 0x4

.field static final WEEK_START_FRIDAY:Ljava/lang/String; = "6"

.field static final WEEK_START_MONDAY:Ljava/lang/String; = "2"

.field static final WEEK_START_NORMAL:Ljava/lang/String; = "-1"

.field static final WEEK_START_NULL:Ljava/lang/String; = "-2"

.field static final WEEK_START_SATURDAY:Ljava/lang/String; = "7"

.field static final WEEK_START_SUNDAY:Ljava/lang/String; = "1"

.field static final WEEK_START_THURSDAY:Ljava/lang/String; = "5"

.field static final WEEK_START_TUESDAY:Ljava/lang/String; = "3"

.field static final WEEK_START_WEDNESDAY:Ljava/lang/String; = "4"


# instance fields
.field private mBackgrouds:[Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private mDiffWeekStart:I

.field private mHeightDelay:I

.field private mLastChangedIndex:I

.field private mLastLastChangedIndex:I

.field private mOutSide:Z

.field private mRepeatData:Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;

.field private mSelectChangedListener:Lcom/meizu/common/widget/WeekdayPicker$OnSelectChangedListener;

.field private mSquareWidth:I

.field private mTexts:[Landroid/widget/TextView;

.field private mWeekStart:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 80
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/common/widget/WeekdayPicker;->mSelectChangedListener:Lcom/meizu/common/widget/WeekdayPicker$OnSelectChangedListener;

    .line 70
    iput v1, p0, Lcom/meizu/common/widget/WeekdayPicker;->mLastChangedIndex:I

    .line 71
    iput v1, p0, Lcom/meizu/common/widget/WeekdayPicker;->mLastLastChangedIndex:I

    .line 72
    iput-boolean v2, p0, Lcom/meizu/common/widget/WeekdayPicker;->mOutSide:Z

    .line 73
    const-string v0, "-1"

    iput-object v0, p0, Lcom/meizu/common/widget/WeekdayPicker;->mWeekStart:Ljava/lang/String;

    .line 74
    iput v2, p0, Lcom/meizu/common/widget/WeekdayPicker;->mDiffWeekStart:I

    .line 76
    iput v1, p0, Lcom/meizu/common/widget/WeekdayPicker;->mSquareWidth:I

    .line 77
    iput v1, p0, Lcom/meizu/common/widget/WeekdayPicker;->mHeightDelay:I

    .line 81
    iput-object p1, p0, Lcom/meizu/common/widget/WeekdayPicker;->mContext:Landroid/content/Context;

    .line 82
    invoke-direct {p0}, Lcom/meizu/common/widget/WeekdayPicker;->initView()V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 86
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/common/widget/WeekdayPicker;->mSelectChangedListener:Lcom/meizu/common/widget/WeekdayPicker$OnSelectChangedListener;

    .line 70
    iput v1, p0, Lcom/meizu/common/widget/WeekdayPicker;->mLastChangedIndex:I

    .line 71
    iput v1, p0, Lcom/meizu/common/widget/WeekdayPicker;->mLastLastChangedIndex:I

    .line 72
    iput-boolean v2, p0, Lcom/meizu/common/widget/WeekdayPicker;->mOutSide:Z

    .line 73
    const-string v0, "-1"

    iput-object v0, p0, Lcom/meizu/common/widget/WeekdayPicker;->mWeekStart:Ljava/lang/String;

    .line 74
    iput v2, p0, Lcom/meizu/common/widget/WeekdayPicker;->mDiffWeekStart:I

    .line 76
    iput v1, p0, Lcom/meizu/common/widget/WeekdayPicker;->mSquareWidth:I

    .line 77
    iput v1, p0, Lcom/meizu/common/widget/WeekdayPicker;->mHeightDelay:I

    .line 87
    iput-object p1, p0, Lcom/meizu/common/widget/WeekdayPicker;->mContext:Landroid/content/Context;

    .line 88
    invoke-direct {p0}, Lcom/meizu/common/widget/WeekdayPicker;->initView()V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 92
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/common/widget/WeekdayPicker;->mSelectChangedListener:Lcom/meizu/common/widget/WeekdayPicker$OnSelectChangedListener;

    .line 70
    iput v1, p0, Lcom/meizu/common/widget/WeekdayPicker;->mLastChangedIndex:I

    .line 71
    iput v1, p0, Lcom/meizu/common/widget/WeekdayPicker;->mLastLastChangedIndex:I

    .line 72
    iput-boolean v2, p0, Lcom/meizu/common/widget/WeekdayPicker;->mOutSide:Z

    .line 73
    const-string v0, "-1"

    iput-object v0, p0, Lcom/meizu/common/widget/WeekdayPicker;->mWeekStart:Ljava/lang/String;

    .line 74
    iput v2, p0, Lcom/meizu/common/widget/WeekdayPicker;->mDiffWeekStart:I

    .line 76
    iput v1, p0, Lcom/meizu/common/widget/WeekdayPicker;->mSquareWidth:I

    .line 77
    iput v1, p0, Lcom/meizu/common/widget/WeekdayPicker;->mHeightDelay:I

    .line 93
    iput-object p1, p0, Lcom/meizu/common/widget/WeekdayPicker;->mContext:Landroid/content/Context;

    .line 94
    invoke-direct {p0}, Lcom/meizu/common/widget/WeekdayPicker;->initView()V

    .line 95
    return-void
.end method

.method private currentTouchIndex(F)I
    .locals 6

    .prologue
    const/4 v0, -0x1

    .line 261
    invoke-virtual {p0}, Lcom/meizu/common/widget/WeekdayPicker;->getWidth()I

    move-result v1

    .line 262
    div-int/lit8 v2, v1, 0x7

    int-to-float v2, v2

    .line 263
    iget v3, p0, Lcom/meizu/common/widget/WeekdayPicker;->mSquareWidth:I

    int-to-float v3, v3

    sub-float v3, v2, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    .line 265
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x10

    if-le v4, v5, :cond_0

    invoke-virtual {p0}, Lcom/meizu/common/widget/WeekdayPicker;->getLayoutDirection()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 266
    int-to-float v1, v1

    sub-float p1, v1, p1

    .line 269
    :cond_0
    div-float v1, p1, v2

    float-to-int v1, v1

    .line 270
    const/4 v4, 0x7

    if-lt v1, v4, :cond_2

    .line 283
    :cond_1
    :goto_0
    return v0

    .line 273
    :cond_2
    iget v4, p0, Lcom/meizu/common/widget/WeekdayPicker;->mDiffWeekStart:I

    sub-int/2addr v1, v4

    .line 274
    if-gez v1, :cond_3

    .line 275
    add-int/lit8 v1, v1, 0x7

    .line 279
    :cond_3
    rem-float v4, p1, v2

    cmpl-float v4, v4, v3

    if-ltz v4, :cond_1

    rem-float v2, p1, v2

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/meizu/common/widget/WeekdayPicker;->mSquareWidth:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_1

    move v0, v1

    .line 280
    goto :goto_0
.end method

.method private initView()V
    .locals 11

    .prologue
    const/4 v7, 0x2

    const/4 v5, 0x1

    const/4 v6, -0x1

    const/4 v10, 0x7

    const/4 v0, 0x0

    .line 98
    iget-object v1, p0, Lcom/meizu/common/widget/WeekdayPicker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$dimen;->mc_chooser_item_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/WeekdayPicker;->mSquareWidth:I

    .line 99
    iget v1, p0, Lcom/meizu/common/widget/WeekdayPicker;->mSquareWidth:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/meizu/common/widget/WeekdayPicker;->mHeightDelay:I

    .line 101
    new-array v1, v10, [Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/meizu/common/widget/WeekdayPicker;->mBackgrouds:[Landroid/widget/ImageView;

    .line 102
    new-array v1, v10, [Landroid/widget/TextView;

    iput-object v1, p0, Lcom/meizu/common/widget/WeekdayPicker;->mTexts:[Landroid/widget/TextView;

    .line 104
    new-array v4, v10, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/meizu/common/widget/WeekdayPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$string;->mc_monday:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 105
    invoke-virtual {p0}, Lcom/meizu/common/widget/WeekdayPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$string;->mc_tuesday:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    .line 106
    invoke-virtual {p0}, Lcom/meizu/common/widget/WeekdayPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$string;->mc_wednesday:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v7

    const/4 v1, 0x3

    .line 107
    invoke-virtual {p0}, Lcom/meizu/common/widget/WeekdayPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/meizu/common/R$string;->mc_thursday:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v1, 0x4

    .line 108
    invoke-virtual {p0}, Lcom/meizu/common/widget/WeekdayPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/meizu/common/R$string;->mc_friday:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v1, 0x5

    .line 109
    invoke-virtual {p0}, Lcom/meizu/common/widget/WeekdayPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/meizu/common/R$string;->mc_saturday:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v1, 0x6

    .line 110
    invoke-virtual {p0}, Lcom/meizu/common/widget/WeekdayPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/meizu/common/R$string;->mc_sunday:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    .line 112
    const-string v1, "-2"

    iget-object v2, p0, Lcom/meizu/common/widget/WeekdayPicker;->mWeekStart:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 113
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v1

    .line 114
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/widget/WeekdayPicker;->mWeekStart:Ljava/lang/String;

    .line 120
    :cond_0
    :goto_0
    const-string v1, "1"

    iget-object v2, p0, Lcom/meizu/common/widget/WeekdayPicker;->mWeekStart:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 121
    iput v5, p0, Lcom/meizu/common/widget/WeekdayPicker;->mDiffWeekStart:I

    .line 136
    :cond_1
    :goto_1
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 137
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 138
    const/16 v1, 0x11

    iput v1, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 140
    iget-object v1, p0, Lcom/meizu/common/widget/WeekdayPicker;->mRepeatData:Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;

    if-nez v1, :cond_2

    .line 141
    new-instance v1, Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;

    invoke-direct {v1, v0}, Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;-><init>(I)V

    iput-object v1, p0, Lcom/meizu/common/widget/WeekdayPicker;->mRepeatData:Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;

    .line 144
    :cond_2
    iget-object v1, p0, Lcom/meizu/common/widget/WeekdayPicker;->mRepeatData:Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;

    invoke-virtual {v1}, Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;->getBooleanArray()[Z

    move-result-object v6

    move v3, v0

    move v2, v0

    .line 148
    :goto_2
    if-ge v3, v10, :cond_f

    .line 149
    iget-object v0, p0, Lcom/meizu/common/widget/WeekdayPicker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$layout;->mc_weekday_picker_item:I

    const/4 v7, 0x0

    invoke-virtual {v0, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 150
    invoke-virtual {v7, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    sget v0, Lcom/meizu/common/R$id;->mc_chooser_text:I

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 153
    aget-object v1, v4, v3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    sget v1, Lcom/meizu/common/R$id;->mc_background_img:I

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 156
    if-eqz v6, :cond_d

    .line 157
    aget-boolean v8, v6, v3

    if-eqz v8, :cond_b

    .line 158
    const-string v8, "selected"

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 159
    invoke-virtual {p0}, Lcom/meizu/common/widget/WeekdayPicker;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 160
    sget v8, Lcom/meizu/common/R$drawable;->mc_bg_week_switch_on:I

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 163
    :goto_3
    iget-object v8, p0, Lcom/meizu/common/widget/WeekdayPicker;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/meizu/common/R$color;->mc_chooser_text_color_selected:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 179
    :goto_4
    iget-object v8, p0, Lcom/meizu/common/widget/WeekdayPicker;->mBackgrouds:[Landroid/widget/ImageView;

    aput-object v1, v8, v3

    .line 181
    iget-object v1, p0, Lcom/meizu/common/widget/WeekdayPicker;->mTexts:[Landroid/widget/TextView;

    aput-object v0, v1, v3

    .line 183
    iget v0, p0, Lcom/meizu/common/widget/WeekdayPicker;->mDiffWeekStart:I

    add-int/2addr v0, v3

    if-lt v0, v10, :cond_e

    .line 184
    invoke-virtual {p0, v7, v2}, Lcom/meizu/common/widget/WeekdayPicker;->addView(Landroid/view/View;I)V

    .line 185
    add-int/lit8 v0, v2, 0x1

    .line 148
    :goto_5
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v2, v0

    goto :goto_2

    .line 115
    :cond_3
    const-string v1, "-1"

    iget-object v2, p0, Lcom/meizu/common/widget/WeekdayPicker;->mWeekStart:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v1

    .line 117
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/widget/WeekdayPicker;->mWeekStart:Ljava/lang/String;

    goto/16 :goto_0

    .line 122
    :cond_4
    const-string v1, "2"

    iget-object v2, p0, Lcom/meizu/common/widget/WeekdayPicker;->mWeekStart:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 123
    iput v0, p0, Lcom/meizu/common/widget/WeekdayPicker;->mDiffWeekStart:I

    goto/16 :goto_1

    .line 124
    :cond_5
    const-string v1, "3"

    iget-object v2, p0, Lcom/meizu/common/widget/WeekdayPicker;->mWeekStart:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 125
    const/4 v1, 0x6

    iput v1, p0, Lcom/meizu/common/widget/WeekdayPicker;->mDiffWeekStart:I

    goto/16 :goto_1

    .line 126
    :cond_6
    const-string v1, "4"

    iget-object v2, p0, Lcom/meizu/common/widget/WeekdayPicker;->mWeekStart:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 127
    const/4 v1, 0x5

    iput v1, p0, Lcom/meizu/common/widget/WeekdayPicker;->mDiffWeekStart:I

    goto/16 :goto_1

    .line 128
    :cond_7
    const-string v1, "5"

    iget-object v2, p0, Lcom/meizu/common/widget/WeekdayPicker;->mWeekStart:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 129
    const/4 v1, 0x4

    iput v1, p0, Lcom/meizu/common/widget/WeekdayPicker;->mDiffWeekStart:I

    goto/16 :goto_1

    .line 130
    :cond_8
    const-string v1, "6"

    iget-object v2, p0, Lcom/meizu/common/widget/WeekdayPicker;->mWeekStart:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 131
    const/4 v1, 0x3

    iput v1, p0, Lcom/meizu/common/widget/WeekdayPicker;->mDiffWeekStart:I

    goto/16 :goto_1

    .line 132
    :cond_9
    const-string v1, "7"

    iget-object v2, p0, Lcom/meizu/common/widget/WeekdayPicker;->mWeekStart:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 133
    iput v7, p0, Lcom/meizu/common/widget/WeekdayPicker;->mDiffWeekStart:I

    goto/16 :goto_1

    .line 162
    :cond_a
    sget v8, Lcom/meizu/common/R$drawable;->mc_bg_week_switch_on_disable:I

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_3

    .line 165
    :cond_b
    const-string v8, "unselected"

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 166
    invoke-virtual {p0}, Lcom/meizu/common/widget/WeekdayPicker;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_c

    .line 167
    sget v8, Lcom/meizu/common/R$drawable;->mc_bg_week_switch_off:I

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 168
    iget-object v8, p0, Lcom/meizu/common/widget/WeekdayPicker;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/meizu/common/R$color;->mc_chooser_text_color_unselected:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_4

    .line 170
    :cond_c
    sget v8, Lcom/meizu/common/R$drawable;->mc_bg_week_switch_off_disable:I

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 171
    iget-object v8, p0, Lcom/meizu/common/widget/WeekdayPicker;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/meizu/common/R$color;->mc_chooser_text_color_unselected_disable:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_4

    .line 175
    :cond_d
    const-string v8, "unselected"

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 176
    sget v8, Lcom/meizu/common/R$drawable;->mc_bg_week_switch_off:I

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 177
    iget-object v8, p0, Lcom/meizu/common/widget/WeekdayPicker;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/meizu/common/R$color;->mc_chooser_text_color_unselected:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_4

    .line 187
    :cond_e
    invoke-virtual {p0, v7}, Lcom/meizu/common/widget/WeekdayPicker;->addView(Landroid/view/View;)V

    move v0, v2

    goto/16 :goto_5

    .line 190
    :cond_f
    return-void
.end method

.method private onBackgoundSelected(IZ)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 287
    iget-object v0, p0, Lcom/meizu/common/widget/WeekdayPicker;->mBackgrouds:[Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/meizu/common/widget/WeekdayPicker;->mBackgrouds:[Landroid/widget/ImageView;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/widget/WeekdayPicker;->mBackgrouds:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/widget/WeekdayPicker;->mRepeatData:Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;

    if-nez v0, :cond_1

    .line 319
    :cond_0
    :goto_0
    return-void

    .line 291
    :cond_1
    if-eqz p2, :cond_2

    iget v0, p0, Lcom/meizu/common/widget/WeekdayPicker;->mLastLastChangedIndex:I

    if-ne v0, p1, :cond_2

    iget v0, p0, Lcom/meizu/common/widget/WeekdayPicker;->mLastLastChangedIndex:I

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/meizu/common/widget/WeekdayPicker;->mLastLastChangedIndex:I

    iget-object v1, p0, Lcom/meizu/common/widget/WeekdayPicker;->mBackgrouds:[Landroid/widget/ImageView;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/meizu/common/widget/WeekdayPicker;->mBackgrouds:[Landroid/widget/ImageView;

    iget v1, p0, Lcom/meizu/common/widget/WeekdayPicker;->mLastChangedIndex:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_2

    .line 294
    const-string v0, "selected"

    iget-object v1, p0, Lcom/meizu/common/widget/WeekdayPicker;->mBackgrouds:[Landroid/widget/ImageView;

    iget v2, p0, Lcom/meizu/common/widget/WeekdayPicker;->mLastChangedIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 295
    iget-object v0, p0, Lcom/meizu/common/widget/WeekdayPicker;->mBackgrouds:[Landroid/widget/ImageView;

    iget v1, p0, Lcom/meizu/common/widget/WeekdayPicker;->mLastChangedIndex:I

    aget-object v0, v0, v1

    const-string v1, "unselected"

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 296
    iget-object v0, p0, Lcom/meizu/common/widget/WeekdayPicker;->mBackgrouds:[Landroid/widget/ImageView;

    iget v1, p0, Lcom/meizu/common/widget/WeekdayPicker;->mLastChangedIndex:I

    aget-object v0, v0, v1

    sget v1, Lcom/meizu/common/R$drawable;->mc_bg_week_switch_off:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 297
    iget-object v0, p0, Lcom/meizu/common/widget/WeekdayPicker;->mTexts:[Landroid/widget/TextView;

    iget v1, p0, Lcom/meizu/common/widget/WeekdayPicker;->mLastChangedIndex:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/meizu/common/widget/WeekdayPicker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$color;->mc_chooser_text_color_unselected:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 298
    iget-object v0, p0, Lcom/meizu/common/widget/WeekdayPicker;->mRepeatData:Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;

    iget v1, p0, Lcom/meizu/common/widget/WeekdayPicker;->mLastChangedIndex:I

    invoke-virtual {v0, v1, v3}, Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;->set(IZ)V

    .line 306
    :cond_2
    :goto_1
    iget v0, p0, Lcom/meizu/common/widget/WeekdayPicker;->mLastChangedIndex:I

    iput v0, p0, Lcom/meizu/common/widget/WeekdayPicker;->mLastLastChangedIndex:I

    .line 307
    iput p1, p0, Lcom/meizu/common/widget/WeekdayPicker;->mLastChangedIndex:I

    .line 308
    const-string v0, "selected"

    iget-object v1, p0, Lcom/meizu/common/widget/WeekdayPicker;->mBackgrouds:[Landroid/widget/ImageView;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 309
    iget-object v0, p0, Lcom/meizu/common/widget/WeekdayPicker;->mBackgrouds:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    const-string v1, "unselected"

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 310
    iget-object v0, p0, Lcom/meizu/common/widget/WeekdayPicker;->mBackgrouds:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    sget v1, Lcom/meizu/common/R$drawable;->mc_bg_week_switch_off:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 311
    iget-object v0, p0, Lcom/meizu/common/widget/WeekdayPicker;->mTexts:[Landroid/widget/TextView;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/meizu/common/widget/WeekdayPicker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$color;->mc_chooser_text_color_unselected:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 312
    iget-object v0, p0, Lcom/meizu/common/widget/WeekdayPicker;->mRepeatData:Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;

    invoke-virtual {v0, p1, v3}, Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;->set(IZ)V

    goto/16 :goto_0

    .line 300
    :cond_3
    iget-object v0, p0, Lcom/meizu/common/widget/WeekdayPicker;->mBackgrouds:[Landroid/widget/ImageView;

    iget v1, p0, Lcom/meizu/common/widget/WeekdayPicker;->mLastChangedIndex:I

    aget-object v0, v0, v1

    const-string v1, "selected"

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 301
    iget-object v0, p0, Lcom/meizu/common/widget/WeekdayPicker;->mBackgrouds:[Landroid/widget/ImageView;

    iget v1, p0, Lcom/meizu/common/widget/WeekdayPicker;->mLastChangedIndex:I

    aget-object v0, v0, v1

    sget v1, Lcom/meizu/common/R$drawable;->mc_bg_week_switch_on:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 302
    iget-object v0, p0, Lcom/meizu/common/widget/WeekdayPicker;->mTexts:[Landroid/widget/TextView;

    iget v1, p0, Lcom/meizu/common/widget/WeekdayPicker;->mLastChangedIndex:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/meizu/common/widget/WeekdayPicker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$color;->mc_chooser_text_color_selected:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 303
    iget-object v0, p0, Lcom/meizu/common/widget/WeekdayPicker;->mRepeatData:Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;

    iget v1, p0, Lcom/meizu/common/widget/WeekdayPicker;->mLastChangedIndex:I

    invoke-virtual {v0, v1, v4}, Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;->set(IZ)V

    goto :goto_1

    .line 314
    :cond_4
    iget-object v0, p0, Lcom/meizu/common/widget/WeekdayPicker;->mBackgrouds:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    const-string v1, "selected"

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 315
    iget-object v0, p0, Lcom/meizu/common/widget/WeekdayPicker;->mBackgrouds:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    sget v1, Lcom/meizu/common/R$drawable;->mc_bg_week_switch_on:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 316
    iget-object v0, p0, Lcom/meizu/common/widget/WeekdayPicker;->mTexts:[Landroid/widget/TextView;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/meizu/common/widget/WeekdayPicker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$color;->mc_chooser_text_color_selected:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 317
    iget-object v0, p0, Lcom/meizu/common/widget/WeekdayPicker;->mRepeatData:Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;

    invoke-virtual {v0, p1, v4}, Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;->set(IZ)V

    goto/16 :goto_0
.end method

.method private updateView()V
    .locals 5

    .prologue
    .line 417
    iget-object v0, p0, Lcom/meizu/common/widget/WeekdayPicker;->mRepeatData:Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/widget/WeekdayPicker;->mBackgrouds:[Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 433
    :cond_0
    return-void

    .line 421
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/WeekdayPicker;->mRepeatData:Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;

    invoke-virtual {v0}, Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;->getBooleanArray()[Z

    move-result-object v1

    .line 422
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x7

    if-ge v0, v2, :cond_0

    .line 423
    aget-boolean v2, v1, v0

    if-eqz v2, :cond_2

    .line 424
    iget-object v2, p0, Lcom/meizu/common/widget/WeekdayPicker;->mBackgrouds:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    const-string v3, "selected"

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 425
    iget-object v2, p0, Lcom/meizu/common/widget/WeekdayPicker;->mBackgrouds:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    sget v3, Lcom/meizu/common/R$drawable;->mc_bg_week_switch_on:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 426
    iget-object v2, p0, Lcom/meizu/common/widget/WeekdayPicker;->mTexts:[Landroid/widget/TextView;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/meizu/common/widget/WeekdayPicker;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/meizu/common/R$color;->mc_chooser_text_color_selected:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 422
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 428
    :cond_2
    iget-object v2, p0, Lcom/meizu/common/widget/WeekdayPicker;->mBackgrouds:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    const-string v3, "unselected"

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 429
    iget-object v2, p0, Lcom/meizu/common/widget/WeekdayPicker;->mBackgrouds:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    sget v3, Lcom/meizu/common/R$drawable;->mc_bg_week_switch_off:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 430
    iget-object v2, p0, Lcom/meizu/common/widget/WeekdayPicker;->mTexts:[Landroid/widget/TextView;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/meizu/common/widget/WeekdayPicker;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/meizu/common/R$color;->mc_chooser_text_color_unselected:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1
.end method


# virtual methods
.method public getSelectedArray()[Z
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/meizu/common/widget/WeekdayPicker;->mRepeatData:Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;

    invoke-virtual {v0}, Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;->getBooleanArray()[Z

    move-result-object v0

    return-object v0
.end method

.method public getSelectedDays()I
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/meizu/common/widget/WeekdayPicker;->mRepeatData:Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;

    invoke-virtual {v0}, Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;->getCoded()I

    move-result v0

    return v0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .prologue
    .line 563
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 564
    const-class v0, Lcom/meizu/common/widget/WeekdayPicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 565
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .prologue
    const/4 v8, 0x7

    const/4 v7, -0x1

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 194
    invoke-virtual {p0}, Lcom/meizu/common/widget/WeekdayPicker;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 197
    invoke-virtual {p0}, Lcom/meizu/common/widget/WeekdayPicker;->isClickable()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/meizu/common/widget/WeekdayPicker;->isLongClickable()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    move v1, v0

    .line 257
    :cond_2
    :goto_0
    return v1

    .line 200
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 201
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 202
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 203
    invoke-virtual {p0}, Lcom/meizu/common/widget/WeekdayPicker;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    .line 205
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 207
    :pswitch_0
    if-eqz v5, :cond_4

    .line 208
    invoke-interface {v5, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 210
    :cond_4
    iput-boolean v0, p0, Lcom/meizu/common/widget/WeekdayPicker;->mOutSide:Z

    .line 211
    invoke-direct {p0, v3}, Lcom/meizu/common/widget/WeekdayPicker;->currentTouchIndex(F)I

    move-result v2

    .line 212
    if-ltz v2, :cond_2

    if-ge v2, v8, :cond_2

    .line 213
    invoke-direct {p0, v2, v0}, Lcom/meizu/common/widget/WeekdayPicker;->onBackgoundSelected(IZ)V

    goto :goto_0

    .line 217
    :pswitch_1
    iget-boolean v2, p0, Lcom/meizu/common/widget/WeekdayPicker;->mOutSide:Z

    if-eqz v2, :cond_5

    .line 218
    if-eqz v5, :cond_2

    .line 219
    invoke-interface {v5, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 223
    :cond_5
    iget v2, p0, Lcom/meizu/common/widget/WeekdayPicker;->mHeightDelay:I

    neg-int v2, v2

    int-to-float v2, v2

    cmpg-float v2, v3, v2

    if-ltz v2, :cond_6

    invoke-virtual {p0}, Lcom/meizu/common/widget/WeekdayPicker;->getWidth()I

    move-result v2

    iget v6, p0, Lcom/meizu/common/widget/WeekdayPicker;->mHeightDelay:I

    add-int/2addr v2, v6

    int-to-float v2, v2

    cmpl-float v2, v3, v2

    if-gtz v2, :cond_6

    iget v2, p0, Lcom/meizu/common/widget/WeekdayPicker;->mHeightDelay:I

    neg-int v2, v2

    int-to-float v2, v2

    cmpg-float v2, v4, v2

    if-ltz v2, :cond_6

    .line 224
    invoke-virtual {p0}, Lcom/meizu/common/widget/WeekdayPicker;->getHeight()I

    move-result v2

    iget v6, p0, Lcom/meizu/common/widget/WeekdayPicker;->mHeightDelay:I

    add-int/2addr v2, v6

    int-to-float v2, v2

    cmpl-float v2, v4, v2

    if-lez v2, :cond_8

    .line 225
    :cond_6
    iput v7, p0, Lcom/meizu/common/widget/WeekdayPicker;->mLastChangedIndex:I

    .line 226
    iput v7, p0, Lcom/meizu/common/widget/WeekdayPicker;->mLastLastChangedIndex:I

    .line 227
    iget-object v2, p0, Lcom/meizu/common/widget/WeekdayPicker;->mSelectChangedListener:Lcom/meizu/common/widget/WeekdayPicker$OnSelectChangedListener;

    if-eqz v2, :cond_7

    .line 228
    iget-object v2, p0, Lcom/meizu/common/widget/WeekdayPicker;->mSelectChangedListener:Lcom/meizu/common/widget/WeekdayPicker$OnSelectChangedListener;

    iget-object v3, p0, Lcom/meizu/common/widget/WeekdayPicker;->mRepeatData:Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;

    invoke-virtual {v3}, Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;->getCoded()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/meizu/common/widget/WeekdayPicker$OnSelectChangedListener;->OnSelectChanged(I)V

    .line 230
    :cond_7
    iput-boolean v1, p0, Lcom/meizu/common/widget/WeekdayPicker;->mOutSide:Z

    .line 231
    if-eqz v5, :cond_2

    .line 232
    invoke-interface {v5, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 236
    :cond_8
    invoke-direct {p0, v3}, Lcom/meizu/common/widget/WeekdayPicker;->currentTouchIndex(F)I

    move-result v0

    .line 237
    if-ltz v0, :cond_2

    if-ge v0, v8, :cond_2

    .line 238
    iget v2, p0, Lcom/meizu/common/widget/WeekdayPicker;->mLastChangedIndex:I

    if-eq v0, v2, :cond_2

    .line 239
    invoke-direct {p0, v0, v1}, Lcom/meizu/common/widget/WeekdayPicker;->onBackgoundSelected(IZ)V

    goto/16 :goto_0

    .line 245
    :pswitch_2
    iput-boolean v0, p0, Lcom/meizu/common/widget/WeekdayPicker;->mOutSide:Z

    .line 246
    if-eqz v5, :cond_9

    .line 247
    invoke-interface {v5, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 249
    :cond_9
    iput v7, p0, Lcom/meizu/common/widget/WeekdayPicker;->mLastChangedIndex:I

    .line 250
    iput v7, p0, Lcom/meizu/common/widget/WeekdayPicker;->mLastLastChangedIndex:I

    .line 251
    iget-object v0, p0, Lcom/meizu/common/widget/WeekdayPicker;->mSelectChangedListener:Lcom/meizu/common/widget/WeekdayPicker$OnSelectChangedListener;

    if-eqz v0, :cond_2

    .line 252
    iget-object v0, p0, Lcom/meizu/common/widget/WeekdayPicker;->mSelectChangedListener:Lcom/meizu/common/widget/WeekdayPicker$OnSelectChangedListener;

    iget-object v2, p0, Lcom/meizu/common/widget/WeekdayPicker;->mRepeatData:Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;

    invoke-virtual {v2}, Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;->getCoded()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/meizu/common/widget/WeekdayPicker$OnSelectChangedListener;->OnSelectChanged(I)V

    goto/16 :goto_0

    .line 205
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public resetView()V
    .locals 0

    .prologue
    .line 325
    invoke-virtual {p0}, Lcom/meizu/common/widget/WeekdayPicker;->removeAllViews()V

    .line 326
    invoke-direct {p0}, Lcom/meizu/common/widget/WeekdayPicker;->initView()V

    .line 327
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .prologue
    .line 556
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 557
    invoke-virtual {p0}, Lcom/meizu/common/widget/WeekdayPicker;->removeAllViews()V

    .line 558
    invoke-direct {p0}, Lcom/meizu/common/widget/WeekdayPicker;->initView()V

    .line 559
    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 360
    if-lt p1, v0, :cond_0

    const/4 v1, 0x7

    if-le p1, v1, :cond_1

    :cond_0
    move p1, v0

    .line 364
    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/WeekdayPicker;->mWeekStart:Ljava/lang/String;

    .line 365
    invoke-virtual {p0}, Lcom/meizu/common/widget/WeekdayPicker;->resetView()V

    .line 366
    return-void
.end method

.method public setOnSelectChangedListener(Lcom/meizu/common/widget/WeekdayPicker$OnSelectChangedListener;)V
    .locals 0

    .prologue
    .line 347
    iput-object p1, p0, Lcom/meizu/common/widget/WeekdayPicker;->mSelectChangedListener:Lcom/meizu/common/widget/WeekdayPicker$OnSelectChangedListener;

    .line 348
    return-void
.end method

.method public setSelectedDays(I)V
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/meizu/common/widget/WeekdayPicker;->mRepeatData:Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;->setDays(I)V

    .line 394
    invoke-direct {p0}, Lcom/meizu/common/widget/WeekdayPicker;->updateView()V

    .line 395
    return-void
.end method
