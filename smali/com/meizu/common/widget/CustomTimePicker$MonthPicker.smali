.class Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/CustomTimePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MonthPicker"
.end annotation


# instance fields
.field private endDate:[I

.field private endIndex:I

.field private endLunarDate:[I

.field private leapMonthIn1stYear:I

.field private leapMonthIn2ndYear:I

.field private lunarMonthsIn1stYear:I

.field private lunarMonthsIn2ndYear:I

.field private mMonths:[Ljava/lang/String;

.field private picker:Lcom/meizu/common/widget/ScrollTextView;

.field private startDate:[I

.field private startIndex:I

.field private startLunarDate:[I

.field final synthetic this$0:Lcom/meizu/common/widget/CustomTimePicker;


# direct methods
.method public constructor <init>(Lcom/meizu/common/widget/CustomTimePicker;Lcom/meizu/common/widget/ScrollTextView;)V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 756
    iput-object p1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 742
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startDate:[I

    .line 743
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endDate:[I

    .line 744
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startLunarDate:[I

    .line 745
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endLunarDate:[I

    .line 757
    iput-object p2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->picker:Lcom/meizu/common/widget/ScrollTextView;

    .line 758
    invoke-direct {p0}, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->getShortMonths()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->mMonths:[Ljava/lang/String;

    .line 759
    invoke-direct {p0}, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->calculateValidDateField()V

    .line 760
    return-void
.end method

.method private calculateValidDateField()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 938
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v0}, Lcom/meizu/common/widget/CustomTimePicker;->access$2400(Lcom/meizu/common/widget/CustomTimePicker;)Ljava/util/Calendar;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 939
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startDate:[I

    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v1}, Lcom/meizu/common/widget/CustomTimePicker;->access$2400(Lcom/meizu/common/widget/CustomTimePicker;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    aput v1, v0, v5

    .line 940
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startDate:[I

    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v1}, Lcom/meizu/common/widget/CustomTimePicker;->access$2400(Lcom/meizu/common/widget/CustomTimePicker;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v4

    .line 941
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startDate:[I

    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v1}, Lcom/meizu/common/widget/CustomTimePicker;->access$2400(Lcom/meizu/common/widget/CustomTimePicker;)Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    aput v1, v0, v6

    .line 942
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startDate:[I

    aput v5, v0, v7

    .line 944
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endDate:[I

    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startDate:[I

    aget v0, v0, v4

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startDate:[I

    aget v0, v0, v5

    :goto_0
    aput v0, v1, v5

    .line 945
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endDate:[I

    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startDate:[I

    aget v0, v0, v4

    add-int/lit8 v0, v0, -0x1

    if-gtz v0, :cond_1

    const/16 v0, 0xc

    :goto_1
    aput v0, v1, v4

    .line 946
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endDate:[I

    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endDate:[I

    aget v2, v2, v5

    iget-object v3, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endDate:[I

    aget v3, v3, v4

    invoke-static {v1, v2, v3, v5}, Lcom/meizu/common/widget/CustomTimePicker;->access$2100(Lcom/meizu/common/widget/CustomTimePicker;IIZ)I

    move-result v1

    aput v1, v0, v6

    .line 947
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endDate:[I

    aput v5, v0, v7

    .line 949
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startDate:[I

    aget v0, v0, v5

    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startDate:[I

    aget v1, v1, v4

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startDate:[I

    aget v2, v2, v6

    invoke-static {v0, v1, v2}, Lcom/meizu/common/util/LunarCalendar;->solarToLunar(III)[I

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startLunarDate:[I

    .line 952
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endDate:[I

    aget v0, v0, v5

    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endDate:[I

    aget v1, v1, v4

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endDate:[I

    aget v2, v2, v6

    invoke-static {v0, v1, v2}, Lcom/meizu/common/util/LunarCalendar;->solarToLunar(III)[I

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endLunarDate:[I

    .line 955
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startLunarDate:[I

    aget v0, v0, v5

    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endLunarDate:[I

    aget v1, v1, v5

    if-ne v0, v1, :cond_2

    .line 956
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endLunarDate:[I

    aget v0, v0, v4

    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startLunarDate:[I

    aget v1, v1, v4

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->lunarMonthsIn1stYear:I

    .line 957
    iput v5, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->lunarMonthsIn2ndYear:I

    .line 958
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    iget v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->lunarMonthsIn1stYear:I

    iget v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->lunarMonthsIn2ndYear:I

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/meizu/common/widget/CustomTimePicker;->access$1802(Lcom/meizu/common/widget/CustomTimePicker;I)I

    .line 983
    :goto_2
    return-void

    .line 944
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startDate:[I

    aget v0, v0, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 945
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startDate:[I

    aget v0, v0, v4

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 962
    :cond_2
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startLunarDate:[I

    aget v0, v0, v4

    rsub-int/lit8 v0, v0, 0xc

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->lunarMonthsIn1stYear:I

    .line 963
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startLunarDate:[I

    aget v0, v0, v5

    invoke-static {v0}, Lcom/meizu/common/util/LunarCalendar;->leapMonth(I)I

    move-result v0

    .line 964
    iput v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->leapMonthIn1stYear:I

    .line 965
    if-eqz v0, :cond_4

    .line 966
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startLunarDate:[I

    aget v1, v1, v4

    if-lt v1, v0, :cond_3

    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startLunarDate:[I

    aget v1, v1, v4

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startLunarDate:[I

    aget v0, v0, v7

    if-eq v0, v4, :cond_4

    .line 968
    :cond_3
    iget v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->lunarMonthsIn1stYear:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->lunarMonthsIn1stYear:I

    .line 972
    :cond_4
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endLunarDate:[I

    aget v0, v0, v4

    iput v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->lunarMonthsIn2ndYear:I

    .line 973
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endLunarDate:[I

    aget v0, v0, v5

    invoke-static {v0}, Lcom/meizu/common/util/LunarCalendar;->leapMonth(I)I

    move-result v0

    .line 974
    iput v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->leapMonthIn2ndYear:I

    .line 975
    if-eqz v0, :cond_6

    .line 976
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endLunarDate:[I

    aget v1, v1, v4

    if-gt v1, v0, :cond_5

    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endLunarDate:[I

    aget v1, v1, v4

    if-ne v1, v0, :cond_6

    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endLunarDate:[I

    aget v0, v0, v7

    if-ne v0, v4, :cond_6

    .line 978
    :cond_5
    iget v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->lunarMonthsIn2ndYear:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->lunarMonthsIn2ndYear:I

    .line 982
    :cond_6
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    iget v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->lunarMonthsIn1stYear:I

    iget v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->lunarMonthsIn2ndYear:I

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/meizu/common/widget/CustomTimePicker;->access$1802(Lcom/meizu/common/widget/CustomTimePicker;I)I

    goto :goto_2
.end method

.method private getLunarMonths(II)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1113
    rem-int/lit8 v1, p1, 0xd

    .line 1114
    invoke-static {p2}, Lcom/meizu/common/util/LunarCalendar;->leapMonth(I)I

    move-result v2

    .line 1115
    if-nez v2, :cond_1

    .line 1116
    const/16 v3, 0xc

    if-lt v1, v3, :cond_2

    .line 1135
    :cond_0
    :goto_0
    return-object v0

    .line 1120
    :cond_1
    const/16 v3, 0xd

    if-ge v1, v3, :cond_0

    .line 1125
    :cond_2
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-virtual {v0}, Lcom/meizu/common/widget/CustomTimePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/meizu/common/R$array;->mc_custom_time_picker_lunar_month:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 1126
    iget-object v3, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-virtual {v3}, Lcom/meizu/common/widget/CustomTimePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/meizu/common/R$string;->mc_time_picker_leap:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1128
    if-eqz v2, :cond_4

    add-int/lit8 v4, v2, -0x1

    if-le v1, v4, :cond_4

    .line 1129
    if-ne v1, v2, :cond_3

    .line 1130
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1132
    :cond_3
    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    goto :goto_0

    .line 1135
    :cond_4
    aget-object v0, v0, v1

    goto :goto_0
.end method

.method private getShortMonths()[Ljava/lang/String;
    .locals 8

    .prologue
    const/16 v7, 0xc

    const/4 v0, 0x0

    .line 1081
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 1082
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v1}, Lcom/meizu/common/widget/CustomTimePicker;->access$2500(Lcom/meizu/common/widget/CustomTimePicker;)Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v1}, Lcom/meizu/common/widget/CustomTimePicker;->access$2600(Lcom/meizu/common/widget/CustomTimePicker;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1083
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v0}, Lcom/meizu/common/widget/CustomTimePicker;->access$2600(Lcom/meizu/common/widget/CustomTimePicker;)[Ljava/lang/String;

    move-result-object v0

    .line 1108
    :goto_0
    return-object v0

    .line 1085
    :cond_0
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v1}, Lcom/meizu/common/widget/CustomTimePicker;->access$2700(Lcom/meizu/common/widget/CustomTimePicker;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 1086
    :try_start_0
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v1}, Lcom/meizu/common/widget/CustomTimePicker;->access$2500(Lcom/meizu/common/widget/CustomTimePicker;)Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1087
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    const/16 v4, 0xc

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/meizu/common/widget/CustomTimePicker;->access$2602(Lcom/meizu/common/widget/CustomTimePicker;[Ljava/lang/String;)[Ljava/lang/String;

    move v1, v0

    .line 1088
    :goto_1
    if-ge v1, v7, :cond_1

    .line 1089
    iget-object v4, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v4}, Lcom/meizu/common/widget/CustomTimePicker;->access$2600(Lcom/meizu/common/widget/CustomTimePicker;)[Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, v1, 0x0

    const/16 v6, 0x14

    invoke-static {v5, v6}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 1088
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1099
    :cond_1
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v1}, Lcom/meizu/common/widget/CustomTimePicker;->access$2600(Lcom/meizu/common/widget/CustomTimePicker;)[Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    aget-object v1, v1, v4

    const-string v4, "1"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1100
    :goto_2
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v1}, Lcom/meizu/common/widget/CustomTimePicker;->access$2600(Lcom/meizu/common/widget/CustomTimePicker;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 1101
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v1}, Lcom/meizu/common/widget/CustomTimePicker;->access$2600(Lcom/meizu/common/widget/CustomTimePicker;)[Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v4, v0, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v0

    .line 1100
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1104
    :cond_2
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v0, v2}, Lcom/meizu/common/widget/CustomTimePicker;->access$2502(Lcom/meizu/common/widget/CustomTimePicker;Ljava/util/Locale;)Ljava/util/Locale;

    .line 1106
    :cond_3
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1108
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v0}, Lcom/meizu/common/widget/CustomTimePicker;->access$2600(Lcom/meizu/common/widget/CustomTimePicker;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1106
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public getCurrentItem()I
    .locals 2

    .prologue
    .line 910
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->picker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {v0}, Lcom/meizu/common/widget/ScrollTextView;->getCurrentItem()I

    move-result v0

    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v1}, Lcom/meizu/common/widget/CustomTimePicker;->access$2300(Lcom/meizu/common/widget/CustomTimePicker;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    return v0
.end method

.method public getItemText(I)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 987
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v0}, Lcom/meizu/common/widget/CustomTimePicker;->access$600(Lcom/meizu/common/widget/CustomTimePicker;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 988
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v0}, Lcom/meizu/common/widget/CustomTimePicker;->access$2300(Lcom/meizu/common/widget/CustomTimePicker;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p1, v0

    .line 990
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    .line 991
    invoke-static {v1}, Lcom/meizu/common/widget/CustomTimePicker;->access$1800(Lcom/meizu/common/widget/CustomTimePicker;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_1

    .line 992
    :cond_0
    const-string v0, ""

    .line 1018
    :goto_0
    return-object v0

    .line 996
    :cond_1
    iget v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->lunarMonthsIn1stYear:I

    if-lt v0, v1, :cond_2

    .line 997
    iget v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->lunarMonthsIn1stYear:I

    sub-int v1, v0, v1

    .line 998
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endLunarDate:[I

    aget v0, v0, v4

    .line 1010
    :goto_1
    invoke-direct {p0, v1, v0}, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->getLunarMonths(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1000
    :cond_2
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startLunarDate:[I

    aget v1, v1, v3

    add-int/lit8 v1, v1, -0x1

    add-int/2addr v0, v1

    .line 1001
    iget v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->leapMonthIn1stYear:I

    if-eqz v1, :cond_4

    .line 1002
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startLunarDate:[I

    aget v1, v1, v3

    iget v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->leapMonthIn1stYear:I

    if-gt v1, v2, :cond_3

    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startLunarDate:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    if-eq v1, v3, :cond_3

    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startLunarDate:[I

    aget v1, v1, v3

    iget v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->leapMonthIn1stYear:I

    if-ge v1, v2, :cond_4

    iget v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->leapMonthIn1stYear:I

    if-lt v0, v1, :cond_4

    .line 1003
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 1007
    :cond_4
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startLunarDate:[I

    aget v1, v1, v4

    move v5, v1

    move v1, v0

    move v0, v5

    goto :goto_1

    .line 1012
    :cond_5
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v0}, Lcom/meizu/common/widget/CustomTimePicker;->access$2300(Lcom/meizu/common/widget/CustomTimePicker;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    if-lt p1, v0, :cond_6

    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    .line 1013
    invoke-static {v0}, Lcom/meizu/common/widget/CustomTimePicker;->access$2300(Lcom/meizu/common/widget/CustomTimePicker;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0xb

    if-le p1, v0, :cond_7

    .line 1014
    :cond_6
    const-string v0, ""

    goto :goto_0

    .line 1017
    :cond_7
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startDate:[I

    aget v0, v0, v3

    add-int/lit8 v0, v0, -0x1

    add-int/2addr v0, p1

    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v1}, Lcom/meizu/common/widget/CustomTimePicker;->access$2300(Lcom/meizu/common/widget/CustomTimePicker;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    rem-int/lit8 v0, v0, 0xc

    .line 1018
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->mMonths:[Ljava/lang/String;

    aget-object v0, v1, v0

    goto :goto_0
.end method

.method public getMonth([I)I
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 773
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->getCurrentItem()I

    move-result v0

    .line 775
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v1}, Lcom/meizu/common/widget/CustomTimePicker;->access$600(Lcom/meizu/common/widget/CustomTimePicker;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 776
    iget v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->lunarMonthsIn1stYear:I

    if-lt v0, v1, :cond_3

    .line 777
    iget v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->lunarMonthsIn1stYear:I

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v0, v1

    .line 778
    if-eqz p1, :cond_0

    .line 779
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endLunarDate:[I

    aget v1, v1, v4

    aput v1, p1, v4

    .line 781
    :cond_0
    iget v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->leapMonthIn2ndYear:I

    add-int/lit8 v1, v1, 0x1

    if-ne v0, v1, :cond_2

    if-eqz p1, :cond_2

    .line 782
    aput v3, p1, v3

    .line 787
    :goto_0
    iget v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->leapMonthIn2ndYear:I

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->leapMonthIn2ndYear:I

    if-le v0, v1, :cond_1

    .line 788
    add-int/lit8 v0, v0, -0x1

    .line 826
    :cond_1
    :goto_1
    return v0

    .line 784
    :cond_2
    aput v4, p1, v3

    goto :goto_0

    .line 791
    :cond_3
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startLunarDate:[I

    aget v1, v1, v3

    add-int/2addr v0, v1

    .line 792
    if-eqz p1, :cond_4

    .line 793
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startLunarDate:[I

    aget v1, v1, v4

    aput v1, p1, v4

    .line 796
    :cond_4
    iget v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->leapMonthIn1stYear:I

    if-eqz v1, :cond_7

    .line 797
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startLunarDate:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    if-ne v1, v3, :cond_5

    iget v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->leapMonthIn1stYear:I

    if-ne v0, v1, :cond_5

    .line 798
    aput v3, p1, v3

    goto :goto_1

    .line 799
    :cond_5
    iget v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->lunarMonthsIn1stYear:I

    iget v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->leapMonthIn1stYear:I

    rsub-int/lit8 v2, v2, 0xc

    add-int/lit8 v2, v2, 0x1

    if-le v1, v2, :cond_6

    iget v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->leapMonthIn1stYear:I

    if-le v0, v1, :cond_6

    .line 800
    aput v3, p1, v3

    .line 801
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 803
    :cond_6
    aput v4, p1, v3

    goto :goto_1

    .line 806
    :cond_7
    aput v4, p1, v3

    goto :goto_1

    .line 811
    :cond_8
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startDate:[I

    aget v1, v1, v3

    rsub-int/lit8 v1, v1, 0xc

    if-le v0, v1, :cond_9

    .line 812
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startDate:[I

    aget v1, v1, v3

    rsub-int/lit8 v1, v1, 0xc

    sub-int/2addr v0, v1

    .line 813
    if-eqz p1, :cond_1

    .line 814
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endDate:[I

    aget v1, v1, v4

    aput v1, p1, v4

    .line 815
    aput v4, p1, v3

    goto :goto_1

    .line 818
    :cond_9
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startDate:[I

    aget v1, v1, v3

    add-int/2addr v0, v1

    .line 819
    if-eqz p1, :cond_1

    .line 820
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startDate:[I

    aget v1, v1, v4

    aput v1, p1, v4

    .line 821
    aput v4, p1, v3

    goto :goto_1
.end method

.method public onChanged(Landroid/view/View;II)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1024
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v1}, Lcom/meizu/common/widget/CustomTimePicker;->access$1900(Lcom/meizu/common/widget/CustomTimePicker;)I

    move-result v1

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v2}, Lcom/meizu/common/widget/CustomTimePicker;->access$2000(Lcom/meizu/common/widget/CustomTimePicker;)I

    move-result v2

    iget-object v3, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v3}, Lcom/meizu/common/widget/CustomTimePicker;->access$600(Lcom/meizu/common/widget/CustomTimePicker;)Z

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/meizu/common/widget/CustomTimePicker;->access$2100(Lcom/meizu/common/widget/CustomTimePicker;IIZ)I

    move-result v1

    .line 1026
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v0}, Lcom/meizu/common/widget/CustomTimePicker;->access$2300(Lcom/meizu/common/widget/CustomTimePicker;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p3, v0

    .line 1028
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v2}, Lcom/meizu/common/widget/CustomTimePicker;->access$600(Lcom/meizu/common/widget/CustomTimePicker;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1029
    iget v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->lunarMonthsIn1stYear:I

    if-lt v0, v2, :cond_2

    .line 1030
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    iget-object v3, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endLunarDate:[I

    aget v3, v3, v5

    invoke-static {v2, v3}, Lcom/meizu/common/widget/CustomTimePicker;->access$1902(Lcom/meizu/common/widget/CustomTimePicker;I)I

    .line 1042
    :goto_0
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v2}, Lcom/meizu/common/widget/CustomTimePicker;->access$600(Lcom/meizu/common/widget/CustomTimePicker;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1043
    iget v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->lunarMonthsIn1stYear:I

    if-lt v0, v2, :cond_5

    .line 1044
    iget v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->lunarMonthsIn1stYear:I

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v0, v2

    .line 1046
    iget v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->leapMonthIn2ndYear:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->leapMonthIn2ndYear:I

    if-le v0, v2, :cond_0

    .line 1047
    add-int/lit8 v0, v0, -0x1

    .line 1066
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v2, v0}, Lcom/meizu/common/widget/CustomTimePicker;->access$2002(Lcom/meizu/common/widget/CustomTimePicker;I)I

    .line 1070
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v2}, Lcom/meizu/common/widget/CustomTimePicker;->access$1900(Lcom/meizu/common/widget/CustomTimePicker;)I

    move-result v2

    iget-object v3, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v3}, Lcom/meizu/common/widget/CustomTimePicker;->access$2000(Lcom/meizu/common/widget/CustomTimePicker;)I

    move-result v3

    iget-object v4, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v4}, Lcom/meizu/common/widget/CustomTimePicker;->access$600(Lcom/meizu/common/widget/CustomTimePicker;)Z

    move-result v4

    invoke-static {v0, v2, v3, v4}, Lcom/meizu/common/widget/CustomTimePicker;->access$2100(Lcom/meizu/common/widget/CustomTimePicker;IIZ)I

    move-result v0

    if-eq v1, v0, :cond_1

    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    .line 1071
    invoke-static {v0}, Lcom/meizu/common/widget/CustomTimePicker;->access$2200(Lcom/meizu/common/widget/CustomTimePicker;)Lcom/meizu/common/widget/CustomTimePicker$DayPicker;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1072
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v1}, Lcom/meizu/common/widget/CustomTimePicker;->access$1900(Lcom/meizu/common/widget/CustomTimePicker;)I

    move-result v1

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v2}, Lcom/meizu/common/widget/CustomTimePicker;->access$2000(Lcom/meizu/common/widget/CustomTimePicker;)I

    move-result v2

    iget-object v3, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v3}, Lcom/meizu/common/widget/CustomTimePicker;->access$600(Lcom/meizu/common/widget/CustomTimePicker;)Z

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/meizu/common/widget/CustomTimePicker;->access$2100(Lcom/meizu/common/widget/CustomTimePicker;IIZ)I

    move-result v0

    .line 1074
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v1}, Lcom/meizu/common/widget/CustomTimePicker;->access$2200(Lcom/meizu/common/widget/CustomTimePicker;)Lcom/meizu/common/widget/CustomTimePicker$DayPicker;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/meizu/common/widget/CustomTimePicker$DayPicker;->refreshCount(I)V

    .line 1077
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v0}, Lcom/meizu/common/widget/CustomTimePicker;->access$2200(Lcom/meizu/common/widget/CustomTimePicker;)Lcom/meizu/common/widget/CustomTimePicker$DayPicker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/common/widget/CustomTimePicker$DayPicker;->getCurrentItem()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->setDayPickerValidField(I)V

    .line 1078
    return-void

    .line 1032
    :cond_2
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    iget-object v3, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startLunarDate:[I

    aget v3, v3, v5

    invoke-static {v2, v3}, Lcom/meizu/common/widget/CustomTimePicker;->access$1902(Lcom/meizu/common/widget/CustomTimePicker;I)I

    goto :goto_0

    .line 1035
    :cond_3
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startDate:[I

    aget v2, v2, v4

    rsub-int/lit8 v2, v2, 0xc

    if-le v0, v2, :cond_4

    .line 1036
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    iget-object v3, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endDate:[I

    aget v3, v3, v5

    invoke-static {v2, v3}, Lcom/meizu/common/widget/CustomTimePicker;->access$1902(Lcom/meizu/common/widget/CustomTimePicker;I)I

    goto/16 :goto_0

    .line 1038
    :cond_4
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    iget-object v3, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startDate:[I

    aget v3, v3, v5

    invoke-static {v2, v3}, Lcom/meizu/common/widget/CustomTimePicker;->access$1902(Lcom/meizu/common/widget/CustomTimePicker;I)I

    goto/16 :goto_0

    .line 1050
    :cond_5
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startLunarDate:[I

    aget v2, v2, v4

    add-int/2addr v0, v2

    .line 1052
    iget v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->leapMonthIn1stYear:I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startLunarDate:[I

    aget v2, v2, v4

    iget v3, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->leapMonthIn1stYear:I

    if-gt v2, v3, :cond_0

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startLunarDate:[I

    const/4 v3, 0x3

    aget v2, v2, v3

    if-eq v2, v4, :cond_0

    .line 1053
    iget v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->leapMonthIn1stYear:I

    if-le v0, v2, :cond_0

    .line 1054
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_1

    .line 1060
    :cond_6
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startDate:[I

    aget v2, v2, v4

    rsub-int/lit8 v2, v2, 0xc

    if-le v0, v2, :cond_7

    .line 1061
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startDate:[I

    aget v2, v2, v4

    rsub-int/lit8 v2, v2, 0xc

    sub-int/2addr v0, v2

    goto/16 :goto_1

    .line 1063
    :cond_7
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startDate:[I

    aget v2, v2, v4

    add-int/2addr v0, v2

    goto/16 :goto_1
.end method

.method public refreshCountAndCurrent(II)V
    .locals 3

    .prologue
    .line 914
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->picker:Lcom/meizu/common/widget/ScrollTextView;

    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v1}, Lcom/meizu/common/widget/CustomTimePicker;->access$2300(Lcom/meizu/common/widget/CustomTimePicker;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p1

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    .line 915
    invoke-static {v2}, Lcom/meizu/common/widget/CustomTimePicker;->access$2300(Lcom/meizu/common/widget/CustomTimePicker;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, p2

    .line 914
    invoke-virtual {v0, v1, v2}, Lcom/meizu/common/widget/ScrollTextView;->refreshCountAndCurrent(II)V

    .line 916
    return-void
.end method

.method public setData(Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;FIIIIIZ)V
    .locals 9

    .prologue
    .line 929
    iput p6, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startIndex:I

    .line 930
    div-int/lit8 v0, p5, 0x2

    mul-int/lit8 v0, v0, 0x2

    add-int v0, v0, p7

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endIndex:I

    .line 932
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->picker:Lcom/meizu/common/widget/ScrollTextView;

    div-int/lit8 v1, p5, 0x2

    mul-int/lit8 v1, v1, 0x2

    add-int v4, p4, v1

    iget v6, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startIndex:I

    iget v7, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endIndex:I

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v5, p5

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/meizu/common/widget/ScrollTextView;->setData(Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;FIIIIIZ)V

    .line 935
    return-void
.end method

.method public setDayPickerValidField(I)V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 873
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v1}, Lcom/meizu/common/widget/CustomTimePicker;->access$1900(Lcom/meizu/common/widget/CustomTimePicker;)I

    move-result v1

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v2}, Lcom/meizu/common/widget/CustomTimePicker;->access$2000(Lcom/meizu/common/widget/CustomTimePicker;)I

    move-result v2

    iget-object v3, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v3}, Lcom/meizu/common/widget/CustomTimePicker;->access$600(Lcom/meizu/common/widget/CustomTimePicker;)Z

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/meizu/common/widget/CustomTimePicker;->access$2100(Lcom/meizu/common/widget/CustomTimePicker;IIZ)I

    move-result v0

    .line 874
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v1}, Lcom/meizu/common/widget/CustomTimePicker;->access$600(Lcom/meizu/common/widget/CustomTimePicker;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 875
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v1}, Lcom/meizu/common/widget/CustomTimePicker;->access$1900(Lcom/meizu/common/widget/CustomTimePicker;)I

    move-result v1

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startLunarDate:[I

    aget v2, v2, v4

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v1}, Lcom/meizu/common/widget/CustomTimePicker;->access$2000(Lcom/meizu/common/widget/CustomTimePicker;)I

    move-result v1

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startLunarDate:[I

    aget v2, v2, v5

    if-ne v1, v2, :cond_0

    .line 876
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v1}, Lcom/meizu/common/widget/CustomTimePicker;->access$2200(Lcom/meizu/common/widget/CustomTimePicker;)Lcom/meizu/common/widget/CustomTimePicker$DayPicker;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startLunarDate:[I

    aget v2, v2, v6

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/meizu/common/widget/CustomTimePicker$DayPicker;->setValidStart(I)V

    .line 881
    :goto_0
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v1}, Lcom/meizu/common/widget/CustomTimePicker;->access$1900(Lcom/meizu/common/widget/CustomTimePicker;)I

    move-result v1

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endLunarDate:[I

    aget v2, v2, v4

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v1}, Lcom/meizu/common/widget/CustomTimePicker;->access$2000(Lcom/meizu/common/widget/CustomTimePicker;)I

    move-result v1

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endLunarDate:[I

    aget v2, v2, v5

    if-ne v1, v2, :cond_1

    .line 882
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v1}, Lcom/meizu/common/widget/CustomTimePicker;->access$2200(Lcom/meizu/common/widget/CustomTimePicker;)Lcom/meizu/common/widget/CustomTimePicker$DayPicker;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endLunarDate:[I

    aget v2, v2, v6

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/meizu/common/widget/CustomTimePicker$DayPicker;->setValidEnd(I)V

    .line 901
    :goto_1
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v1, p1}, Lcom/meizu/common/widget/CustomTimePicker;->access$302(Lcom/meizu/common/widget/CustomTimePicker;I)I

    .line 902
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v2}, Lcom/meizu/common/widget/CustomTimePicker;->access$300(Lcom/meizu/common/widget/CustomTimePicker;)I

    move-result v2

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Lcom/meizu/common/widget/CustomTimePicker;->access$302(Lcom/meizu/common/widget/CustomTimePicker;I)I

    .line 903
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v1}, Lcom/meizu/common/widget/CustomTimePicker;->access$300(Lcom/meizu/common/widget/CustomTimePicker;)I

    move-result v1

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v2}, Lcom/meizu/common/widget/CustomTimePicker;->access$2200(Lcom/meizu/common/widget/CustomTimePicker;)Lcom/meizu/common/widget/CustomTimePicker$DayPicker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/meizu/common/widget/CustomTimePicker$DayPicker;->getValidEnd()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Lcom/meizu/common/widget/CustomTimePicker;->access$302(Lcom/meizu/common/widget/CustomTimePicker;I)I

    .line 904
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v1}, Lcom/meizu/common/widget/CustomTimePicker;->access$300(Lcom/meizu/common/widget/CustomTimePicker;)I

    move-result v1

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v2}, Lcom/meizu/common/widget/CustomTimePicker;->access$2200(Lcom/meizu/common/widget/CustomTimePicker;)Lcom/meizu/common/widget/CustomTimePicker$DayPicker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/meizu/common/widget/CustomTimePicker$DayPicker;->getValidStart()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Lcom/meizu/common/widget/CustomTimePicker;->access$302(Lcom/meizu/common/widget/CustomTimePicker;I)I

    .line 906
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v0}, Lcom/meizu/common/widget/CustomTimePicker;->access$2200(Lcom/meizu/common/widget/CustomTimePicker;)Lcom/meizu/common/widget/CustomTimePicker$DayPicker;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v1}, Lcom/meizu/common/widget/CustomTimePicker;->access$300(Lcom/meizu/common/widget/CustomTimePicker;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1, v5}, Lcom/meizu/common/widget/CustomTimePicker$DayPicker;->setCurrentItem(IZ)V

    .line 907
    return-void

    .line 878
    :cond_0
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v1}, Lcom/meizu/common/widget/CustomTimePicker;->access$2200(Lcom/meizu/common/widget/CustomTimePicker;)Lcom/meizu/common/widget/CustomTimePicker$DayPicker;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/meizu/common/widget/CustomTimePicker$DayPicker;->setValidStart(I)V

    goto/16 :goto_0

    .line 884
    :cond_1
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v1}, Lcom/meizu/common/widget/CustomTimePicker;->access$2200(Lcom/meizu/common/widget/CustomTimePicker;)Lcom/meizu/common/widget/CustomTimePicker$DayPicker;

    move-result-object v1

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Lcom/meizu/common/widget/CustomTimePicker$DayPicker;->setValidEnd(I)V

    goto :goto_1

    .line 887
    :cond_2
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v1}, Lcom/meizu/common/widget/CustomTimePicker;->access$1900(Lcom/meizu/common/widget/CustomTimePicker;)I

    move-result v1

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startDate:[I

    aget v2, v2, v4

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v1}, Lcom/meizu/common/widget/CustomTimePicker;->access$2000(Lcom/meizu/common/widget/CustomTimePicker;)I

    move-result v1

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startDate:[I

    aget v2, v2, v5

    if-ne v1, v2, :cond_3

    .line 888
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v1}, Lcom/meizu/common/widget/CustomTimePicker;->access$2200(Lcom/meizu/common/widget/CustomTimePicker;)Lcom/meizu/common/widget/CustomTimePicker$DayPicker;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startDate:[I

    aget v2, v2, v6

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/meizu/common/widget/CustomTimePicker$DayPicker;->setValidStart(I)V

    .line 893
    :goto_2
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v1}, Lcom/meizu/common/widget/CustomTimePicker;->access$1900(Lcom/meizu/common/widget/CustomTimePicker;)I

    move-result v1

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endDate:[I

    aget v2, v2, v4

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v1}, Lcom/meizu/common/widget/CustomTimePicker;->access$2000(Lcom/meizu/common/widget/CustomTimePicker;)I

    move-result v1

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endDate:[I

    aget v2, v2, v5

    if-ne v1, v2, :cond_4

    .line 894
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v1}, Lcom/meizu/common/widget/CustomTimePicker;->access$2200(Lcom/meizu/common/widget/CustomTimePicker;)Lcom/meizu/common/widget/CustomTimePicker$DayPicker;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endDate:[I

    aget v2, v2, v6

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/meizu/common/widget/CustomTimePicker$DayPicker;->setValidEnd(I)V

    goto/16 :goto_1

    .line 890
    :cond_3
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v1}, Lcom/meizu/common/widget/CustomTimePicker;->access$2200(Lcom/meizu/common/widget/CustomTimePicker;)Lcom/meizu/common/widget/CustomTimePicker$DayPicker;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/meizu/common/widget/CustomTimePicker$DayPicker;->setValidStart(I)V

    goto :goto_2

    .line 896
    :cond_4
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v1}, Lcom/meizu/common/widget/CustomTimePicker;->access$2200(Lcom/meizu/common/widget/CustomTimePicker;)Lcom/meizu/common/widget/CustomTimePicker$DayPicker;

    move-result-object v1

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Lcom/meizu/common/widget/CustomTimePicker$DayPicker;->setValidEnd(I)V

    goto/16 :goto_1
.end method

.method public setMonth(IIIZ)V
    .locals 4

    .prologue
    const/16 v3, 0xc

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 830
    if-gez p2, :cond_0

    .line 870
    :goto_0
    return-void

    .line 833
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v0, p4}, Lcom/meizu/common/widget/CustomTimePicker;->access$1702(Lcom/meizu/common/widget/CustomTimePicker;Z)Z

    .line 834
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v0}, Lcom/meizu/common/widget/CustomTimePicker;->access$600(Lcom/meizu/common/widget/CustomTimePicker;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 835
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startLunarDate:[I

    aget v0, v0, v1

    if-ne p1, v0, :cond_4

    .line 836
    iget v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->leapMonthIn1stYear:I

    if-eqz v0, :cond_2

    .line 837
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startLunarDate:[I

    aget v0, v0, v1

    iget v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->leapMonthIn1stYear:I

    if-gt v0, v1, :cond_2

    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startLunarDate:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    if-eq v0, v2, :cond_2

    .line 838
    iget v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->leapMonthIn1stYear:I

    if-gt p2, v0, :cond_1

    iget v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->leapMonthIn1stYear:I

    if-ne v0, p2, :cond_2

    if-eqz p4, :cond_2

    .line 840
    :cond_1
    add-int/lit8 p2, p2, 0x1

    .line 844
    :cond_2
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v0}, Lcom/meizu/common/widget/CustomTimePicker;->access$1800(Lcom/meizu/common/widget/CustomTimePicker;)I

    move-result v0

    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startLunarDate:[I

    aget v1, v1, v2

    sub-int v1, p2, v1

    invoke-virtual {p0, v0, v1}, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->refreshCountAndCurrent(II)V

    .line 869
    :cond_3
    :goto_1
    invoke-virtual {p0, p3}, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->setDayPickerValidField(I)V

    goto :goto_0

    .line 847
    :cond_4
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endLunarDate:[I

    aget v0, v0, v1

    if-ne p1, v0, :cond_3

    .line 848
    iget v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->leapMonthIn2ndYear:I

    if-eqz v0, :cond_6

    .line 849
    iget v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->leapMonthIn2ndYear:I

    if-gt p2, v0, :cond_5

    iget v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->leapMonthIn2ndYear:I

    if-ne v0, p2, :cond_6

    if-eqz p4, :cond_6

    .line 851
    :cond_5
    add-int/lit8 p2, p2, 0x1

    .line 854
    :cond_6
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v0}, Lcom/meizu/common/widget/CustomTimePicker;->access$1800(Lcom/meizu/common/widget/CustomTimePicker;)I

    move-result v0

    iget v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->lunarMonthsIn1stYear:I

    add-int/2addr v1, p2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->refreshCountAndCurrent(II)V

    goto :goto_1

    .line 858
    :cond_7
    if-gt p2, v3, :cond_3

    .line 859
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startDate:[I

    aget v0, v0, v1

    if-ne p1, v0, :cond_8

    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startDate:[I

    aget v0, v0, v2

    if-lt p2, v0, :cond_8

    .line 860
    const/16 v0, 0xb

    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startDate:[I

    aget v1, v1, v2

    sub-int v1, p2, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 861
    invoke-virtual {p0, v3, v0}, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->refreshCountAndCurrent(II)V

    goto :goto_1

    .line 862
    :cond_8
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endDate:[I

    aget v0, v0, v1

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endDate:[I

    aget v0, v0, v2

    if-gt p2, v0, :cond_3

    .line 863
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endDate:[I

    aget v0, v0, v2

    sub-int/2addr v0, p2

    rsub-int/lit8 v0, v0, 0xb

    .line 864
    invoke-virtual {p0, v3, v0}, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->refreshCountAndCurrent(II)V

    goto :goto_1
.end method

.method public setSelectItemHeight(I)V
    .locals 2

    .prologue
    .line 763
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->picker:Lcom/meizu/common/widget/ScrollTextView;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/ScrollTextView;->setSelectItemHeight(F)V

    .line 764
    return-void
.end method

.method public setTextColor(II)V
    .locals 1

    .prologue
    .line 923
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->picker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {v0, p1, p2}, Lcom/meizu/common/widget/ScrollTextView;->setTextColor(II)V

    .line 924
    return-void
.end method

.method public setTextSize(II)V
    .locals 3

    .prologue
    .line 919
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->picker:Lcom/meizu/common/widget/ScrollTextView;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/meizu/common/widget/ScrollTextView;->setTextSize(FF)V

    .line 920
    return-void
.end method
