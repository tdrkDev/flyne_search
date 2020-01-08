.class Lcom/meizu/common/widget/DatePickerNativeDialog$MonthAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/DatePickerNativeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MonthAdapter"
.end annotation


# instance fields
.field private isMonthShowLunar:Z

.field private mMaxYear:I

.field private mMinYear:I

.field private mPaintAlpha:F

.field private mParentHeight:I

.field final synthetic this$0:Lcom/meizu/common/widget/DatePickerNativeDialog;


# direct methods
.method public constructor <init>(Lcom/meizu/common/widget/DatePickerNativeDialog;II)V
    .locals 1

    .prologue
    .line 682
    iput-object p1, p0, Lcom/meizu/common/widget/DatePickerNativeDialog$MonthAdapter;->this$0:Lcom/meizu/common/widget/DatePickerNativeDialog;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 679
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog$MonthAdapter;->mPaintAlpha:F

    .line 683
    iput p2, p0, Lcom/meizu/common/widget/DatePickerNativeDialog$MonthAdapter;->mMinYear:I

    .line 684
    iput p3, p0, Lcom/meizu/common/widget/DatePickerNativeDialog$MonthAdapter;->mMaxYear:I

    .line 685
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 757
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 758
    return-void
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 709
    iget v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog$MonthAdapter;->mMaxYear:I

    iget v1, p0, Lcom/meizu/common/widget/DatePickerNativeDialog$MonthAdapter;->mMinYear:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0xc

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 704
    const/4 v0, -0x2

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 5

    .prologue
    .line 720
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 721
    div-int/lit8 v1, p2, 0xc

    iget v2, p0, Lcom/meizu/common/widget/DatePickerNativeDialog$MonthAdapter;->mMinYear:I

    add-int/2addr v1, v2

    .line 723
    new-instance v2, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;

    invoke-direct {v2, v0}, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;-><init>(Landroid/content/Context;)V

    .line 725
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 726
    const-string v3, "year"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 727
    const-string v3, "month"

    rem-int/lit8 v4, p2, 0xc

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 728
    const-string v3, "week_start"

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 729
    const-string v3, "paint_alpha"

    iget v4, p0, Lcom/meizu/common/widget/DatePickerNativeDialog$MonthAdapter;->mPaintAlpha:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 730
    iget-object v3, p0, Lcom/meizu/common/widget/DatePickerNativeDialog$MonthAdapter;->this$0:Lcom/meizu/common/widget/DatePickerNativeDialog;

    invoke-static {v3}, Lcom/meizu/common/widget/DatePickerNativeDialog;->access$1400(Lcom/meizu/common/widget/DatePickerNativeDialog;)I

    move-result v3

    if-ne v1, v3, :cond_0

    rem-int/lit8 v3, p2, 0xc

    iget-object v4, p0, Lcom/meizu/common/widget/DatePickerNativeDialog$MonthAdapter;->this$0:Lcom/meizu/common/widget/DatePickerNativeDialog;

    invoke-static {v4}, Lcom/meizu/common/widget/DatePickerNativeDialog;->access$1500(Lcom/meizu/common/widget/DatePickerNativeDialog;)I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 732
    const-string v3, "selected_day"

    iget-object v4, p0, Lcom/meizu/common/widget/DatePickerNativeDialog$MonthAdapter;->this$0:Lcom/meizu/common/widget/DatePickerNativeDialog;

    invoke-static {v4}, Lcom/meizu/common/widget/DatePickerNativeDialog;->access$1600(Lcom/meizu/common/widget/DatePickerNativeDialog;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 735
    :cond_0
    iget-object v3, p0, Lcom/meizu/common/widget/DatePickerNativeDialog$MonthAdapter;->this$0:Lcom/meizu/common/widget/DatePickerNativeDialog;

    rem-int/lit8 v4, p2, 0xc

    invoke-static {v3, v0, v1, v4}, Lcom/meizu/common/widget/DatePickerNativeDialog;->access$1700(Lcom/meizu/common/widget/DatePickerNativeDialog;Ljava/util/HashMap;II)V

    .line 737
    iget-object v1, p0, Lcom/meizu/common/widget/DatePickerNativeDialog$MonthAdapter;->this$0:Lcom/meizu/common/widget/DatePickerNativeDialog;

    iget-object v1, v1, Lcom/meizu/common/widget/DatePickerNativeDialog;->mRecord:Lcom/meizu/common/widget/DatePickerNativeDialog$HeightRecordCallBack;

    invoke-virtual {v2, p2, v1}, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->setHeightRecordCallBack(ILcom/meizu/common/widget/DatePickerNativeDialog$HeightRecordCallBack;)V

    .line 738
    invoke-virtual {v2, v0}, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->setMonthParams(Ljava/util/HashMap;)V

    .line 739
    iget-boolean v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog$MonthAdapter;->isMonthShowLunar:Z

    invoke-virtual {v2, v0}, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->setShowLunar(Z)V

    .line 740
    new-instance v0, Lcom/meizu/common/widget/DatePickerNativeDialog$MonthAdapter$1;

    invoke-direct {v0, p0}, Lcom/meizu/common/widget/DatePickerNativeDialog$MonthAdapter$1;-><init>(Lcom/meizu/common/widget/DatePickerNativeDialog$MonthAdapter;)V

    invoke-virtual {v2, v0}, Lcom/meizu/common/datetimepicker/date/SimpleMonthView;->setOnDayClickListener(Lcom/meizu/common/datetimepicker/date/MonthView$OnDayClickListener;)V

    .line 751
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 752
    return-object v2
.end method

.method public bridge synthetic instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 674
    invoke-virtual {p0, p1, p2}, Lcom/meizu/common/widget/DatePickerNativeDialog$MonthAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 714
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMonthShowLunar(Z)V
    .locals 0

    .prologue
    .line 698
    iput-boolean p1, p0, Lcom/meizu/common/widget/DatePickerNativeDialog$MonthAdapter;->isMonthShowLunar:Z

    .line 699
    return-void
.end method

.method public setPaintAlpha(F)V
    .locals 0

    .prologue
    .line 693
    iput p1, p0, Lcom/meizu/common/widget/DatePickerNativeDialog$MonthAdapter;->mPaintAlpha:F

    .line 694
    return-void
.end method

.method public setParentHeight(I)V
    .locals 0

    .prologue
    .line 688
    iput p1, p0, Lcom/meizu/common/widget/DatePickerNativeDialog$MonthAdapter;->mParentHeight:I

    .line 689
    return-void
.end method
