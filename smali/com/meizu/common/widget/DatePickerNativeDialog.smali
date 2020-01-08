.class public Lcom/meizu/common/widget/DatePickerNativeDialog;
.super Landroid/app/AlertDialog;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/meizu/common/widget/DatePicker$OnDateChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/DatePickerNativeDialog$HeightRecordCallBack;,
        Lcom/meizu/common/widget/DatePickerNativeDialog$HeightRecord;,
        Lcom/meizu/common/widget/DatePickerNativeDialog$MonthAdapter;,
        Lcom/meizu/common/widget/DatePickerNativeDialog$OnDateSetListener;
    }
.end annotation


# static fields
.field private static final DAY:Ljava/lang/String; = "day"

.field private static final MONTH:Ljava/lang/String; = "month"

.field private static final STATUS_DOWN:I = 0x1

.field private static final STATUS_UP:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DatePickerNativeDialog"

.field private static final YEAR:Ljava/lang/String; = "year"

.field private static setWidthMethod:Ljava/lang/reflect/Method;


# instance fields
.field private BUTTON_TRANSLATE_DURATION:I

.field private FIVE_ROWHEIGHT:I

.field private LUNAR_HIDE_SHOW_DURATION:I

.field private ROWHEIGHT:I

.field private SELECT_DAY_DELAY:I

.field private SIX_ROWHEIGHT:I

.field private anim:Landroid/animation/ObjectAnimator;

.field private isShowLunar:Z

.field private isZH:Z

.field private leap:Ljava/lang/String;

.field private mButtonPanel:Landroid/view/View;

.field private final mCallBack:Lcom/meizu/common/widget/DatePickerNativeDialog$OnDateSetListener;

.field private mCurrentPosition:I

.field private mCurrentTranslateYPosition:F

.field private mDayStatusTv:Landroid/widget/TextView;

.field private mDayText:Ljava/lang/String;

.field private mDialogWidth:I

.field private mEventRemindList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Calendar;",
            ">;"
        }
    .end annotation
.end field

.field private mHeightRecord:[I

.field private mHideLunarText:Ljava/lang/String;

.field private mInitTranslationY:F

.field private mIsFlyme8:Z

.field private mLunarText:Ljava/lang/String;

.field private mLunardays:[Ljava/lang/String;

.field private mMaxYear:I

.field private mMinYear:I

.field private mMonthAdapter:Lcom/meizu/common/widget/DatePickerNativeDialog$MonthAdapter;

.field private mMonthDayTv:Landroid/widget/TextView;

.field private mMonthText:Ljava/lang/String;

.field private mMouthPager:Landroid/support/v4/view/ViewPager;

.field private mOneDayAfterText:Ljava/lang/String;

.field private mOneDayBeforeText:Ljava/lang/String;

.field mRecord:Lcom/meizu/common/widget/DatePickerNativeDialog$HeightRecordCallBack;

.field private mRectClipView:Lcom/meizu/common/widget/RectClipView;

.field private mSelectDay:I

.field private mSelectMonth:I

.field private mSelectYear:I

.field private mShowLunarText:Ljava/lang/String;

.field private mShowLunarTv:Landroid/widget/TextView;

.field private mTodayText:Ljava/lang/String;

.field private mouths:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    sput-object v0, Lcom/meizu/common/widget/DatePickerNativeDialog;->setWidthMethod:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/meizu/common/widget/DatePickerNativeDialog$OnDateSetListener;III)V
    .locals 8

    .prologue
    .line 143
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/meizu/common/widget/DatePickerNativeDialog;-><init>(Landroid/content/Context;ILcom/meizu/common/widget/DatePickerNativeDialog$OnDateSetListener;IIIZ)V

    .line 144
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/meizu/common/widget/DatePickerNativeDialog$OnDateSetListener;IIIZ)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/16 v2, 0xb

    const/4 v3, 0x0

    .line 157
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 70
    iput-boolean v3, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->isShowLunar:Z

    .line 77
    const/16 v0, 0x833

    iput v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mMaxYear:I

    .line 78
    const/16 v0, 0x76c

    iput v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mMinYear:I

    .line 96
    const/16 v0, 0x100

    iput v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->LUNAR_HIDE_SHOW_DURATION:I

    .line 97
    const/4 v0, 0x1

    iput v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->BUTTON_TRANSLATE_DURATION:I

    .line 98
    const/16 v0, 0x12c

    iput v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->SELECT_DAY_DELAY:I

    .line 109
    iput-boolean v3, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mIsFlyme8:Z

    .line 797
    new-instance v0, Lcom/meizu/common/widget/DatePickerNativeDialog$HeightRecordCallBack;

    invoke-direct {v0, p0}, Lcom/meizu/common/widget/DatePickerNativeDialog$HeightRecordCallBack;-><init>(Lcom/meizu/common/widget/DatePickerNativeDialog;)V

    iput-object v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mRecord:Lcom/meizu/common/widget/DatePickerNativeDialog$HeightRecordCallBack;

    .line 159
    iput-object p3, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mCallBack:Lcom/meizu/common/widget/DatePickerNativeDialog$OnDateSetListener;

    .line 161
    const/4 v0, -0x1

    sget v3, Lcom/meizu/common/R$string;->mc_yes:I

    invoke-virtual {p1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v0, v3, p0}, Lcom/meizu/common/widget/DatePickerNativeDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 162
    const/4 v3, -0x2

    const/high16 v0, 0x1040000

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    move-object v0, v1

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v3, v4, v0}, Lcom/meizu/common/widget/DatePickerNativeDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 164
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/DatePickerNativeDialog;->isZh(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->isZH:Z

    .line 165
    iget-boolean v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->isZH:Z

    if-eqz v0, :cond_0

    .line 166
    iput-boolean p7, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->isShowLunar:Z

    .line 169
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/meizu/common/R$string;->mc_custom_date_time_show_lunar:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mShowLunarText:Ljava/lang/String;

    .line 170
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/meizu/common/R$string;->mc_custom_date_time_hide_lunar:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mHideLunarText:Ljava/lang/String;

    .line 171
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/meizu/common/R$string;->mc_custom_date_time_lunar:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mLunarText:Ljava/lang/String;

    .line 173
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/meizu/common/R$string;->mc_date_time_month:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mMonthText:Ljava/lang/String;

    .line 174
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/meizu/common/R$string;->mc_date_time_day:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mDayText:Ljava/lang/String;

    .line 175
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/meizu/common/R$string;->mc_time_picker_leap:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->leap:Ljava/lang/String;

    .line 177
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/meizu/common/R$string;->mc_custom_date_time_today:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mTodayText:Ljava/lang/String;

    .line 178
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/meizu/common/R$string;->mc_custom_date_time_one_day_before:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mOneDayBeforeText:Ljava/lang/String;

    .line 179
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/meizu/common/R$string;->mc_custom_date_time_one_day_after:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mOneDayAfterText:Ljava/lang/String;

    .line 181
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/meizu/common/R$array;->mc_custom_time_picker_lunar_month:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mouths:[Ljava/lang/String;

    .line 182
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/meizu/common/R$array;->mc_custom_time_picker_lunar_day:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mLunardays:[Ljava/lang/String;

    .line 183
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/meizu/common/R$dimen;->mc_native_date_picker_date_dialog_width:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mDialogWidth:I

    .line 184
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/meizu/common/R$dimen;->mc_native_date_picker_date_month_list_item_height:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->ROWHEIGHT:I

    .line 185
    iget v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->ROWHEIGHT:I

    mul-int/lit8 v0, v0, 0x6

    iput v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->SIX_ROWHEIGHT:I

    .line 186
    iget v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->ROWHEIGHT:I

    mul-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->FIVE_ROWHEIGHT:I

    .line 188
    const-string v0, "layout_inflater"

    .line 189
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 190
    sget v3, Lcom/meizu/common/R$layout;->mc_date_picker_native_dialog:I

    invoke-virtual {v0, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 192
    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/DatePickerNativeDialog;->setView(Landroid/view/View;)V

    .line 195
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-le v0, v3, :cond_1

    .line 196
    new-instance v0, Lcom/meizu/common/widget/DatePickerNativeDialog$1;

    invoke-direct {v0, p0, v1}, Lcom/meizu/common/widget/DatePickerNativeDialog$1;-><init>(Lcom/meizu/common/widget/DatePickerNativeDialog;Landroid/view/View;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 210
    :cond_1
    iget v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mMaxYear:I

    if-le p4, v0, :cond_2

    iget p4, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mMaxYear:I

    :cond_2
    iput p4, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mSelectYear:I

    .line 211
    if-le p5, v2, :cond_3

    move p5, v2

    :cond_3
    iput p5, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mSelectMonth:I

    .line 212
    iget v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mSelectYear:I

    iget v2, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mSelectMonth:I

    invoke-direct {p0, v0, v2}, Lcom/meizu/common/widget/DatePickerNativeDialog;->getGregorianMonthDays(II)I

    move-result v0

    .line 213
    if-le p6, v0, :cond_4

    move p6, v0

    :cond_4
    iput p6, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mSelectDay:I

    .line 215
    invoke-direct {p0, p1, v1}, Lcom/meizu/common/widget/DatePickerNativeDialog;->initView(Landroid/content/Context;Landroid/view/View;)V

    .line 216
    invoke-direct {p0, p1, v1}, Lcom/meizu/common/widget/DatePickerNativeDialog;->setNightModeColor(Landroid/content/Context;Landroid/view/View;)V

    .line 217
    iget v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mDialogWidth:I

    invoke-direct {p0, v0}, Lcom/meizu/common/widget/DatePickerNativeDialog;->setDialogWidth(I)V

    .line 218
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/meizu/common/widget/DatePickerNativeDialog$OnDateSetListener;III)V
    .locals 7

    .prologue
    .line 137
    const/4 v2, 0x5

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/meizu/common/widget/DatePickerNativeDialog;-><init>(Landroid/content/Context;ILcom/meizu/common/widget/DatePickerNativeDialog$OnDateSetListener;III)V

    .line 138
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/common/widget/DatePickerNativeDialog;)Lcom/meizu/common/widget/DatePickerNativeDialog$MonthAdapter;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mMonthAdapter:Lcom/meizu/common/widget/DatePickerNativeDialog$MonthAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/meizu/common/widget/DatePickerNativeDialog;)Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->isShowLunar:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/meizu/common/widget/DatePickerNativeDialog;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/meizu/common/widget/DatePickerNativeDialog;->updateSelect2FirstDayOfMonth()V

    return-void
.end method

.method static synthetic access$1100(Lcom/meizu/common/widget/DatePickerNativeDialog;)I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->SELECT_DAY_DELAY:I

    return v0
.end method

.method static synthetic access$1200(Lcom/meizu/common/widget/DatePickerNativeDialog;)Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mMouthPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/meizu/common/widget/DatePickerNativeDialog;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/meizu/common/widget/DatePickerNativeDialog;->clipCustomView()V

    return-void
.end method

.method static synthetic access$1400(Lcom/meizu/common/widget/DatePickerNativeDialog;)I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mSelectYear:I

    return v0
.end method

.method static synthetic access$1402(Lcom/meizu/common/widget/DatePickerNativeDialog;I)I
    .locals 0

    .prologue
    .line 51
    iput p1, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mSelectYear:I

    return p1
.end method

.method static synthetic access$1500(Lcom/meizu/common/widget/DatePickerNativeDialog;)I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mSelectMonth:I

    return v0
.end method

.method static synthetic access$1502(Lcom/meizu/common/widget/DatePickerNativeDialog;I)I
    .locals 0

    .prologue
    .line 51
    iput p1, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mSelectMonth:I

    return p1
.end method

.method static synthetic access$1600(Lcom/meizu/common/widget/DatePickerNativeDialog;)I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mSelectDay:I

    return v0
.end method

.method static synthetic access$1602(Lcom/meizu/common/widget/DatePickerNativeDialog;I)I
    .locals 0

    .prologue
    .line 51
    iput p1, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mSelectDay:I

    return p1
.end method

.method static synthetic access$1700(Lcom/meizu/common/widget/DatePickerNativeDialog;Ljava/util/HashMap;II)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/common/widget/DatePickerNativeDialog;->setDrawingParamsRemind(Ljava/util/HashMap;II)V

    return-void
.end method

.method static synthetic access$1800(Lcom/meizu/common/widget/DatePickerNativeDialog;III)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/common/widget/DatePickerNativeDialog;->updateDateShowInfo(III)V

    return-void
.end method

.method static synthetic access$200(Lcom/meizu/common/widget/DatePickerNativeDialog;)[I
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mHeightRecord:[I

    return-object v0
.end method

.method static synthetic access$202(Lcom/meizu/common/widget/DatePickerNativeDialog;[I)[I
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mHeightRecord:[I

    return-object p1
.end method

.method static synthetic access$300(Lcom/meizu/common/widget/DatePickerNativeDialog;)I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mCurrentPosition:I

    return v0
.end method

.method static synthetic access$302(Lcom/meizu/common/widget/DatePickerNativeDialog;I)I
    .locals 0

    .prologue
    .line 51
    iput p1, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mCurrentPosition:I

    return p1
.end method

.method static synthetic access$400(Lcom/meizu/common/widget/DatePickerNativeDialog;)F
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mCurrentTranslateYPosition:F

    return v0
.end method

.method static synthetic access$402(Lcom/meizu/common/widget/DatePickerNativeDialog;F)F
    .locals 0

    .prologue
    .line 51
    iput p1, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mCurrentTranslateYPosition:F

    return p1
.end method

.method static synthetic access$500(Lcom/meizu/common/widget/DatePickerNativeDialog;)I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->ROWHEIGHT:I

    return v0
.end method

.method static synthetic access$600(Lcom/meizu/common/widget/DatePickerNativeDialog;)Landroid/view/View;
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/meizu/common/widget/DatePickerNativeDialog;->getTranslateView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/meizu/common/widget/DatePickerNativeDialog;)I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->BUTTON_TRANSLATE_DURATION:I

    return v0
.end method

.method static synthetic access$800(Lcom/meizu/common/widget/DatePickerNativeDialog;Landroid/view/View;FJZ)V
    .locals 1

    .prologue
    .line 51
    invoke-direct/range {p0 .. p5}, Lcom/meizu/common/widget/DatePickerNativeDialog;->buttonTranslate(Landroid/view/View;FJZ)V

    return-void
.end method

.method static synthetic access$900(Lcom/meizu/common/widget/DatePickerNativeDialog;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/meizu/common/widget/DatePickerNativeDialog;->initButtonLocationY()V

    return-void
.end method

.method private buttonInitTranslate(I)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 449
    iget-object v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->anim:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->anim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->anim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 453
    :cond_0
    const/4 v0, 0x0

    .line 454
    invoke-direct {p0}, Lcom/meizu/common/widget/DatePickerNativeDialog;->getTranslateView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    .line 456
    if-nez p1, :cond_2

    .line 457
    iget v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mInitTranslationY:F

    iget v2, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->ROWHEIGHT:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    .line 461
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/meizu/common/widget/DatePickerNativeDialog;->getTranslateView()Landroid/view/View;

    move-result-object v2

    const-string v3, "translationY"

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v1, v4, v5

    aput v0, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->anim:Landroid/animation/ObjectAnimator;

    .line 462
    iget-object v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->anim:Landroid/animation/ObjectAnimator;

    iget v1, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->BUTTON_TRANSLATE_DURATION:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 463
    iget-object v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->anim:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/meizu/common/widget/DatePickerNativeDialog$6;

    invoke-direct {v1, p0}, Lcom/meizu/common/widget/DatePickerNativeDialog$6;-><init>(Lcom/meizu/common/widget/DatePickerNativeDialog;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 470
    iget-object v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->anim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 471
    return-void

    .line 458
    :cond_2
    if-ne p1, v6, :cond_1

    .line 459
    iget v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mInitTranslationY:F

    goto :goto_0
.end method

.method private buttonTranslate(Landroid/view/View;FJZ)V
    .locals 1

    .prologue
    .line 438
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    add-float/2addr v0, p2

    iput v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mCurrentTranslateYPosition:F

    .line 439
    iget v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mCurrentTranslateYPosition:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 440
    invoke-direct {p0}, Lcom/meizu/common/widget/DatePickerNativeDialog;->clipCustomView()V

    .line 441
    return-void
.end method

.method private clipCustomView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 444
    iget-object v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mRectClipView:Lcom/meizu/common/widget/RectClipView;

    iget-object v1, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mRectClipView:Lcom/meizu/common/widget/RectClipView;

    invoke-virtual {v1}, Lcom/meizu/common/widget/RectClipView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mRectClipView:Lcom/meizu/common/widget/RectClipView;

    invoke-virtual {v2}, Lcom/meizu/common/widget/RectClipView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mCurrentTranslateYPosition:F

    add-float/2addr v2, v3

    const/high16 v3, 0x42480000    # 50.0f

    add-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v4, v4, v1, v2}, Lcom/meizu/common/widget/RectClipView;->setClipRect(IIII)V

    .line 445
    return-void
.end method

.method private doAlphaAnim(Z)V
    .locals 6

    .prologue
    const/4 v0, 0x2

    .line 280
    if-eqz p1, :cond_0

    .line 281
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 285
    :goto_0
    new-instance v1, Lcom/meizu/common/interpolator/PathInterpolatorCompat;

    const v2, 0x3e99999a    # 0.3f

    const/4 v3, 0x0

    const v4, 0x3f333333    # 0.7f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/meizu/common/interpolator/PathInterpolatorCompat;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 286
    iget v1, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->LUNAR_HIDE_SHOW_DURATION:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 287
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 289
    new-instance v1, Lcom/meizu/common/widget/DatePickerNativeDialog$2;

    invoke-direct {v1, p0}, Lcom/meizu/common/widget/DatePickerNativeDialog$2;-><init>(Lcom/meizu/common/widget/DatePickerNativeDialog;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 300
    new-instance v1, Lcom/meizu/common/widget/DatePickerNativeDialog$3;

    invoke-direct {v1, p0}, Lcom/meizu/common/widget/DatePickerNativeDialog$3;-><init>(Lcom/meizu/common/widget/DatePickerNativeDialog;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 324
    return-void

    .line 283
    :cond_0
    new-array v0, v0, [F

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    goto :goto_0

    .line 281
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 283
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private getButtonPanel()V
    .locals 3

    .prologue
    .line 228
    iget-object v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mButtonPanel:Landroid/view/View;

    if-nez v0, :cond_0

    .line 229
    const/4 v0, 0x0

    const-string v1, "buttonPanel"

    invoke-static {v0, v1}, Lcom/meizu/common/util/InternalResUtils;->getInternalResId(ILjava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/DatePickerNativeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mButtonPanel:Landroid/view/View;

    .line 230
    iget-object v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mButtonPanel:Landroid/view/View;

    invoke-virtual {p0}, Lcom/meizu/common/widget/DatePickerNativeDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$drawable;->mz_dialog_background_material_bottom:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 231
    invoke-virtual {p0}, Lcom/meizu/common/widget/DatePickerNativeDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/DatePickerNativeDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$drawable;->mz_dialog_background_transparent:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 232
    invoke-direct {p0}, Lcom/meizu/common/widget/DatePickerNativeDialog;->getTranslateView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mInitTranslationY:F

    .line 233
    invoke-direct {p0}, Lcom/meizu/common/widget/DatePickerNativeDialog;->initButtonLocationY()V

    .line 235
    :cond_0
    return-void
.end method

.method private getDaySpaceWithToday(III)I
    .locals 4

    .prologue
    .line 603
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 605
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 606
    const/4 v3, 0x1

    invoke-virtual {v2, v3, p1}, Ljava/util/Calendar;->set(II)V

    .line 607
    const/4 v3, 0x2

    invoke-virtual {v2, v3, p2}, Ljava/util/Calendar;->set(II)V

    .line 608
    const/4 v3, 0x5

    invoke-virtual {v2, v3, p3}, Ljava/util/Calendar;->set(II)V

    .line 610
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 612
    sub-long v0, v2, v0

    const-wide/32 v2, 0x5265c00

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 614
    return v0
.end method

.method private getGregorianMonthDays(II)I
    .locals 3

    .prologue
    const/4 v2, 0x5

    const/4 v1, 0x1

    .line 340
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 341
    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 342
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 343
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 345
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v0

    return v0
.end method

.method private getLunarDateText(III)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 571
    const-string v1, ""

    .line 572
    const-string v0, ""

    .line 573
    add-int/lit8 v2, p2, 0x1

    .line 575
    invoke-static {p1}, Lcom/meizu/common/util/LunarCalendar;->leapMonth(I)I

    move-result v0

    .line 576
    invoke-static {p1, v2, p3}, Lcom/meizu/common/util/LunarCalendar;->solarToLunar(III)[I

    move-result-object v3

    .line 578
    aget v4, v3, v5

    if-ne v4, v0, :cond_0

    const/4 v0, 0x3

    aget v0, v3, v0

    if-ne v0, v5, :cond_0

    .line 579
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->leap:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mouths:[Ljava/lang/String;

    aget v5, v3, v5

    add-int/lit8 v5, v5, -0x1

    aget-object v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 584
    :goto_0
    iget-boolean v4, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->isZH:Z

    if-eqz v4, :cond_1

    .line 585
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mMonthText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v1, v3, v6

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v1}, Lcom/meizu/common/widget/DatePickerNativeDialog;->getLunarDays(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 591
    :goto_1
    return-object v0

    .line 581
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mouths:[Ljava/lang/String;

    aget v4, v3, v5

    add-int/lit8 v4, v4, -0x1

    aget-object v0, v0, v4

    goto :goto_0

    .line 587
    :cond_1
    if-lez v2, :cond_2

    iget-object v4, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mouths:[Ljava/lang/String;

    array-length v4, v4

    if-gt v2, v4, :cond_2

    .line 588
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mLunarText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v1, v3, v6

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v1}, Lcom/meizu/common/widget/DatePickerNativeDialog;->getLunarDays(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method private getLunarDays(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 595
    iget-object v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mLunardays:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_0

    .line 596
    const/4 v0, 0x0

    .line 598
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mLunardays:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method private getTranslateView()Landroid/view/View;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mButtonPanel:Landroid/view/View;

    return-object v0
.end method

.method private initButtonLocationY()V
    .locals 2

    .prologue
    .line 242
    invoke-direct {p0}, Lcom/meizu/common/widget/DatePickerNativeDialog;->getTranslateView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 243
    const-string v0, "DatePickerNativeDialog"

    const-string v1, "mButtonPanel == null, initButtonLocationY failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mHeightRecord:[I

    iget v1, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mCurrentPosition:I

    aget v0, v0, v1

    iget v1, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->FIVE_ROWHEIGHT:I

    if-ne v0, v1, :cond_2

    .line 247
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/meizu/common/widget/DatePickerNativeDialog;->buttonInitTranslate(I)V

    goto :goto_0

    .line 248
    :cond_2
    iget-object v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mHeightRecord:[I

    iget v1, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mCurrentPosition:I

    aget v0, v0, v1

    iget v1, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->SIX_ROWHEIGHT:I

    if-ne v0, v1, :cond_0

    .line 249
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/meizu/common/widget/DatePickerNativeDialog;->buttonInitTranslate(I)V

    goto :goto_0
.end method

.method private initView(Landroid/content/Context;Landroid/view/View;)V
    .locals 3

    .prologue
    .line 350
    sget v0, Lcom/meizu/common/R$id;->native_picker_root:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/widget/RectClipView;

    iput-object v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mRectClipView:Lcom/meizu/common/widget/RectClipView;

    .line 351
    sget v0, Lcom/meizu/common/R$id;->month_day_view:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mMonthDayTv:Landroid/widget/TextView;

    .line 361
    sget v0, Lcom/meizu/common/R$id;->day_status:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mDayStatusTv:Landroid/widget/TextView;

    .line 362
    sget v0, Lcom/meizu/common/R$id;->showlunar:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mShowLunarTv:Landroid/widget/TextView;

    .line 363
    iget-boolean v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->isZH:Z

    if-nez v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mShowLunarTv:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 367
    :cond_0
    sget v0, Lcom/meizu/common/R$id;->month_viewpager:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mMouthPager:Landroid/support/v4/view/ViewPager;

    .line 368
    new-instance v0, Lcom/meizu/common/widget/DatePickerNativeDialog$MonthAdapter;

    iget v1, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mMinYear:I

    iget v2, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mMaxYear:I

    invoke-direct {v0, p0, v1, v2}, Lcom/meizu/common/widget/DatePickerNativeDialog$MonthAdapter;-><init>(Lcom/meizu/common/widget/DatePickerNativeDialog;II)V

    iput-object v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mMonthAdapter:Lcom/meizu/common/widget/DatePickerNativeDialog$MonthAdapter;

    .line 369
    iget-object v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mMonthAdapter:Lcom/meizu/common/widget/DatePickerNativeDialog$MonthAdapter;

    iget-boolean v1, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->isShowLunar:Z

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/DatePickerNativeDialog$MonthAdapter;->setMonthShowLunar(Z)V

    .line 370
    iget-object v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mMouthPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mMonthAdapter:Lcom/meizu/common/widget/DatePickerNativeDialog$MonthAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 371
    iget v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mSelectYear:I

    iget v1, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mMinYear:I

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0xc

    iget v1, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mSelectMonth:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mCurrentPosition:I

    .line 372
    iget-object v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mMouthPager:Landroid/support/v4/view/ViewPager;

    iget v1, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mCurrentPosition:I

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 373
    iget-object v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mMouthPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/meizu/common/widget/DatePickerNativeDialog$4;

    invoke-direct {v1, p0}, Lcom/meizu/common/widget/DatePickerNativeDialog$4;-><init>(Lcom/meizu/common/widget/DatePickerNativeDialog;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 425
    iget-object v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mShowLunarTv:Landroid/widget/TextView;

    new-instance v1, Lcom/meizu/common/widget/DatePickerNativeDialog$5;

    invoke-direct {v1, p0}, Lcom/meizu/common/widget/DatePickerNativeDialog$5;-><init>(Lcom/meizu/common/widget/DatePickerNativeDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 433
    iget v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mSelectYear:I

    iget v1, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mSelectMonth:I

    iget v2, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mSelectDay:I

    invoke-direct {p0, v0, v1, v2}, Lcom/meizu/common/widget/DatePickerNativeDialog;->updateDateShowInfo(III)V

    .line 434
    invoke-direct {p0}, Lcom/meizu/common/widget/DatePickerNativeDialog;->updateShowLunar()V

    .line 435
    return-void
.end method

.method private isZh(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 510
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 511
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 512
    const-string v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private setDaysAfterInfo(I)V
    .locals 5

    .prologue
    .line 551
    packed-switch p1, :pswitch_data_0

    .line 562
    if-lez p1, :cond_0

    sget v0, Lcom/meizu/common/R$string;->mc_custom_date_time_days_after:I

    .line 563
    :goto_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/DatePickerNativeDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 566
    :goto_1
    iget-object v1, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mDayStatusTv:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 567
    return-void

    .line 553
    :pswitch_0
    iget-object v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mOneDayBeforeText:Ljava/lang/String;

    goto :goto_1

    .line 556
    :pswitch_1
    iget-object v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mTodayText:Ljava/lang/String;

    goto :goto_1

    .line 559
    :pswitch_2
    iget-object v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mOneDayAfterText:Ljava/lang/String;

    goto :goto_1

    .line 562
    :cond_0
    sget v0, Lcom/meizu/common/R$string;->mc_custom_date_time_days_before:I

    goto :goto_0

    .line 551
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setDialogWidth(I)V
    .locals 0

    .prologue
    .line 801
    invoke-direct {p0, p0, p1}, Lcom/meizu/common/widget/DatePickerNativeDialog;->setWidth(Landroid/app/AlertDialog;I)Z

    .line 802
    return-void
.end method

.method private setDrawingParamsRemind(Ljava/util/HashMap;II)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 764
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 765
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mEventRemindList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mEventRemindList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 767
    iget-object v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mEventRemindList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 768
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne p2, v3, :cond_0

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne p3, v3, :cond_0

    .line 770
    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 765
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 774
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 776
    const-string v0, "event_remind"

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 778
    :cond_2
    return-void
.end method

.method private setNightModeColor(Landroid/content/Context;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 221
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$drawable;->mz_dialog_background_material_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 222
    return-void
.end method

.method private setWidth(Landroid/app/AlertDialog;I)Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 808
    :try_start_0
    sget-object v2, Lcom/meizu/common/widget/DatePickerNativeDialog;->setWidthMethod:Ljava/lang/reflect/Method;

    if-nez v2, :cond_0

    .line 810
    const-class v2, Landroid/app/AlertDialog;

    const-string v3, "setWidth"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/meizu/common/widget/DatePickerNativeDialog;->setWidthMethod:Ljava/lang/reflect/Method;

    .line 811
    sget-object v2, Lcom/meizu/common/widget/DatePickerNativeDialog;->setWidthMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 812
    sget-object v2, Lcom/meizu/common/widget/DatePickerNativeDialog;->setWidthMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 824
    :goto_0
    return v0

    .line 816
    :cond_0
    sget-object v2, Lcom/meizu/common/widget/DatePickerNativeDialog;->setWidthMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 817
    sget-object v2, Lcom/meizu/common/widget/DatePickerNativeDialog;->setWidthMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 820
    :catch_0
    move-exception v0

    .line 821
    const-string v2, "DatePickerNativeDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setWidth fail to be invoked.Caused by:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 824
    goto :goto_0
.end method

.method private updateDateShowInfo(III)V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 518
    add-int/lit8 v1, p2, 0x1

    .line 520
    const-string v0, ""

    .line 521
    iget-boolean v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->isZH:Z

    if-eqz v0, :cond_1

    .line 522
    iget-boolean v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->isShowLunar:Z

    if-eqz v0, :cond_0

    .line 523
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v2, "%d %s%s"

    new-array v3, v8, [Ljava/lang/Object;

    .line 524
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    .line 525
    invoke-virtual {p0}, Lcom/meizu/common/widget/DatePickerNativeDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/meizu/common/R$string;->mc_date_time_year:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    add-int/lit8 v4, v1, -0x1

    .line 526
    invoke-direct {p0, p1, v4, p3}, Lcom/meizu/common/widget/DatePickerNativeDialog;->getLunarDateText(III)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    .line 523
    invoke-static {v0, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 541
    :goto_0
    iget-object v2, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mMonthDayTv:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 544
    add-int/lit8 v0, v1, -0x1

    invoke-direct {p0, p1, v0, p3}, Lcom/meizu/common/widget/DatePickerNativeDialog;->getDaySpaceWithToday(III)I

    move-result v0

    .line 546
    invoke-direct {p0, v0}, Lcom/meizu/common/widget/DatePickerNativeDialog;->setDaysAfterInfo(I)V

    .line 547
    return-void

    .line 528
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v2, "%d %s %d %s %d %s"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    .line 529
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    .line 530
    invoke-virtual {p0}, Lcom/meizu/common/widget/DatePickerNativeDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/meizu/common/R$string;->mc_date_time_year:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    .line 531
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    .line 532
    invoke-virtual {p0}, Lcom/meizu/common/widget/DatePickerNativeDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/meizu/common/R$string;->mc_date_time_month:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    const/4 v4, 0x4

    .line 533
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    .line 534
    invoke-virtual {p0}, Lcom/meizu/common/widget/DatePickerNativeDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/meizu/common/R$string;->mc_date_time_day:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 528
    invoke-static {v0, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 537
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 538
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, p1, v2, p3}, Ljava/util/Calendar;->set(III)V

    .line 539
    invoke-static {}, Ljava/text/SimpleDateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private updateSelect2FirstDayOfMonth()V
    .locals 3

    .prologue
    .line 476
    iget v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mCurrentPosition:I

    div-int/lit8 v0, v0, 0xc

    iget v1, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mMinYear:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mSelectYear:I

    .line 477
    iget v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mCurrentPosition:I

    rem-int/lit8 v0, v0, 0xc

    iput v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mSelectMonth:I

    .line 478
    const/4 v0, 0x1

    iput v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mSelectDay:I

    .line 480
    iget-object v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mMonthAdapter:Lcom/meizu/common/widget/DatePickerNativeDialog$MonthAdapter;

    invoke-virtual {v0}, Lcom/meizu/common/widget/DatePickerNativeDialog$MonthAdapter;->notifyDataSetChanged()V

    .line 481
    iget v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mSelectYear:I

    iget v1, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mSelectMonth:I

    iget v2, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mSelectDay:I

    invoke-direct {p0, v0, v1, v2}, Lcom/meizu/common/widget/DatePickerNativeDialog;->updateDateShowInfo(III)V

    .line 482
    return-void
.end method

.method private updateShowLunar()V
    .locals 2

    .prologue
    .line 327
    iget-boolean v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->isShowLunar:Z

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mShowLunarTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mHideLunarText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    :goto_0
    return-void

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mShowLunarTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mShowLunarText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public isShowLunar()Z
    .locals 1

    .prologue
    .line 335
    iget-boolean v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->isShowLunar:Z

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 668
    iget-object v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mCallBack:Lcom/meizu/common/widget/DatePickerNativeDialog$OnDateSetListener;

    if-eqz v0, :cond_0

    .line 670
    iget-object v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mCallBack:Lcom/meizu/common/widget/DatePickerNativeDialog$OnDateSetListener;

    iget v1, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mSelectYear:I

    iget v2, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mSelectMonth:I

    iget v3, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mSelectDay:I

    invoke-interface {v0, v1, v2, v3}, Lcom/meizu/common/widget/DatePickerNativeDialog$OnDateSetListener;->onDateSet(III)V

    .line 672
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 486
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 487
    invoke-virtual {p0}, Lcom/meizu/common/widget/DatePickerNativeDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v2, "dialogSpace1"

    const-string v3, "id"

    const-string v4, "flyme"

    invoke-static {v0, v2, v3, v4}, Lcom/meizu/common/util/ResourceUtils;->getIdentifier(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/DatePickerNativeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mIsFlyme8:Z

    .line 488
    iget-boolean v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mIsFlyme8:Z

    if-eqz v0, :cond_0

    .line 489
    invoke-virtual {p0}, Lcom/meizu/common/widget/DatePickerNativeDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v2, "dialogSpace2"

    const-string v3, "id"

    const-string v4, "flyme"

    invoke-static {v0, v2, v3, v4}, Lcom/meizu/common/util/ResourceUtils;->getIdentifier(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/DatePickerNativeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 490
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 491
    invoke-virtual {p0}, Lcom/meizu/common/widget/DatePickerNativeDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v2, "dialogSpace3"

    const-string v3, "id"

    const-string v4, "flyme"

    invoke-static {v0, v2, v3, v4}, Lcom/meizu/common/util/ResourceUtils;->getIdentifier(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/DatePickerNativeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 492
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 493
    invoke-virtual {p0}, Lcom/meizu/common/widget/DatePickerNativeDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v2, "dialogSpace4"

    const-string v3, "id"

    const-string v4, "flyme"

    invoke-static {v0, v2, v3, v4}, Lcom/meizu/common/util/ResourceUtils;->getIdentifier(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/DatePickerNativeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 494
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 496
    const-string v0, "buttonPanel"

    invoke-static {v1, v0}, Lcom/meizu/common/util/InternalResUtils;->getInternalResId(ILjava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/DatePickerNativeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 497
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    invoke-virtual {p0}, Lcom/meizu/common/widget/DatePickerNativeDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    invoke-static {v5, v6, v7}, Lcom/meizu/common/util/ScreenUtil;->dip2px(Landroid/content/Context;D)I

    move-result v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 500
    :cond_0
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 501
    iget-object v2, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mRectClipView:Lcom/meizu/common/widget/RectClipView;

    invoke-virtual {v2, v0, v0}, Lcom/meizu/common/widget/RectClipView;->measure(II)V

    .line 502
    iget-object v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mRectClipView:Lcom/meizu/common/widget/RectClipView;

    iget-object v2, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mRectClipView:Lcom/meizu/common/widget/RectClipView;

    invoke-virtual {v2}, Lcom/meizu/common/widget/RectClipView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mRectClipView:Lcom/meizu/common/widget/RectClipView;

    invoke-virtual {v3}, Lcom/meizu/common/widget/RectClipView;->getHeight()I

    move-result v3

    invoke-virtual {v0, v1, v1, v2, v3}, Lcom/meizu/common/widget/RectClipView;->setClipRect(IIII)V

    .line 503
    return-void

    :cond_1
    move v0, v1

    .line 487
    goto/16 :goto_0
.end method

.method public onDateChanged(Lcom/meizu/common/widget/DatePicker;III)V
    .locals 0

    .prologue
    .line 507
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 629
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 630
    const-string v0, "year"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mSelectYear:I

    .line 631
    const-string v0, "month"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mSelectMonth:I

    .line 632
    const-string v0, "day"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mSelectDay:I

    .line 634
    iget v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mSelectYear:I

    iget v1, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mSelectMonth:I

    iget v2, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mSelectDay:I

    invoke-direct {p0, v0, v1, v2}, Lcom/meizu/common/widget/DatePickerNativeDialog;->updateDateShowInfo(III)V

    .line 635
    iget-object v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mMouthPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    .line 636
    iget v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mSelectYear:I

    iget v1, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mMinYear:I

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0xc

    iget v1, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mSelectMonth:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mCurrentPosition:I

    .line 637
    iget-object v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mMouthPager:Landroid/support/v4/view/ViewPager;

    iget v1, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mCurrentPosition:I

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 639
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 620
    invoke-super {p0}, Landroid/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 621
    const-string v1, "year"

    iget v2, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mSelectYear:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 622
    const-string v1, "month"

    iget v2, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mSelectMonth:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 623
    const-string v1, "day"

    iget v2, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mSelectDay:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 624
    return-object v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .prologue
    .line 255
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onWindowFocusChanged(Z)V

    .line 256
    if-eqz p1, :cond_0

    .line 257
    invoke-direct {p0}, Lcom/meizu/common/widget/DatePickerNativeDialog;->getButtonPanel()V

    .line 259
    :cond_0
    return-void
.end method

.method public setEventRemind(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Calendar;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 112
    iput-object p1, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mEventRemindList:Ljava/util/ArrayList;

    .line 113
    return-void
.end method

.method public setMaxYear(I)V
    .locals 1

    .prologue
    .line 657
    const/16 v0, 0x833

    if-le p1, v0, :cond_0

    .line 663
    :cond_0
    return-void
.end method

.method public setMinYear(I)V
    .locals 1

    .prologue
    .line 645
    const/16 v0, 0x76c

    if-ge p1, v0, :cond_0

    .line 651
    :cond_0
    return-void
.end method

.method public showLunar(Z)V
    .locals 3

    .prologue
    .line 265
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->isZH:Z

    if-eqz v0, :cond_1

    .line 266
    iput-boolean p1, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->isShowLunar:Z

    .line 267
    iget v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mSelectYear:I

    iget v1, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mSelectMonth:I

    iget v2, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mSelectDay:I

    invoke-direct {p0, v0, v1, v2}, Lcom/meizu/common/widget/DatePickerNativeDialog;->updateDateShowInfo(III)V

    .line 268
    invoke-direct {p0}, Lcom/meizu/common/widget/DatePickerNativeDialog;->updateShowLunar()V

    .line 269
    iget-boolean v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->isShowLunar:Z

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mMonthAdapter:Lcom/meizu/common/widget/DatePickerNativeDialog$MonthAdapter;

    iget-boolean v1, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->isShowLunar:Z

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/DatePickerNativeDialog$MonthAdapter;->setMonthShowLunar(Z)V

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog;->mMonthAdapter:Lcom/meizu/common/widget/DatePickerNativeDialog$MonthAdapter;

    invoke-virtual {v0}, Lcom/meizu/common/widget/DatePickerNativeDialog$MonthAdapter;->notifyDataSetChanged()V

    .line 273
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/DatePickerNativeDialog;->doAlphaAnim(Z)V

    .line 275
    :cond_1
    return-void
.end method
