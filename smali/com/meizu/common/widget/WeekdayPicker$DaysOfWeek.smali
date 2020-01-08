.class final Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/WeekdayPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DaysOfWeek"
.end annotation


# static fields
.field private static DAY_MAP:[I


# instance fields
.field private mDays:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 448
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;->DAY_MAP:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x1
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 461
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 462
    iput p1, p0, Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;->mDays:I

    .line 463
    return-void
.end method

.method private isSet(I)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 517
    iget v1, p0, Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;->mDays:I

    shl-int v2, v0, p1

    and-int/2addr v1, v2

    if-lez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getBooleanArray()[Z
    .locals 4

    .prologue
    const/4 v3, 0x7

    .line 546
    new-array v1, v3, [Z

    .line 547
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    .line 548
    invoke-direct {p0, v0}, Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;->isSet(I)Z

    move-result v2

    aput-boolean v2, v1, v0

    .line 547
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 550
    :cond_0
    return-object v1
.end method

.method public getCoded()I
    .locals 1

    .prologue
    .line 539
    iget v0, p0, Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;->mDays:I

    return v0
.end method

.method public set(IZ)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 527
    if-eqz p2, :cond_0

    .line 528
    iget v0, p0, Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;->mDays:I

    shl-int/2addr v1, p1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;->mDays:I

    .line 532
    :goto_0
    return-void

    .line 530
    :cond_0
    iget v0, p0, Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;->mDays:I

    shl-int/2addr v1, p1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;->mDays:I

    goto :goto_0
.end method

.method public set(Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;)V
    .locals 1

    .prologue
    .line 535
    iget v0, p1, Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;->mDays:I

    iput v0, p0, Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;->mDays:I

    .line 536
    return-void
.end method

.method public setDays(I)V
    .locals 0

    .prologue
    .line 466
    iput p1, p0, Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;->mDays:I

    .line 467
    return-void
.end method

.method public toString(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x1

    .line 470
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 472
    iget v0, p0, Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;->mDays:I

    if-nez v0, :cond_1

    .line 473
    if-eqz p2, :cond_0

    sget v0, Lcom/meizu/common/R$string;->mc_never:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 513
    :goto_0
    return-object v0

    .line 473
    :cond_0
    const-string v0, ""

    goto :goto_0

    .line 477
    :cond_1
    iget v0, p0, Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;->mDays:I

    const/16 v2, 0x7f

    if-ne v0, v2, :cond_2

    .line 478
    sget v0, Lcom/meizu/common/R$string;->mc_every_day:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 482
    :cond_2
    iget v0, p0, Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;->mDays:I

    const/16 v2, 0x1f

    if-ne v0, v2, :cond_3

    .line 483
    sget v0, Lcom/meizu/common/R$string;->mc_working_day:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 487
    :cond_3
    iget v0, p0, Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;->mDays:I

    const/16 v2, 0x60

    if-ne v0, v2, :cond_4

    .line 488
    sget v0, Lcom/meizu/common/R$string;->mc_weekend:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 492
    :cond_4
    iget v0, p0, Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;->mDays:I

    move v2, v0

    move v0, v1

    .line 493
    :goto_1
    if-lez v2, :cond_6

    .line 494
    and-int/lit8 v4, v2, 0x1

    if-ne v4, v7, :cond_5

    add-int/lit8 v0, v0, 0x1

    .line 495
    :cond_5
    shr-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 498
    :cond_6
    new-instance v2, Ljava/text/DateFormatSymbols;

    invoke-direct {v2}, Ljava/text/DateFormatSymbols;-><init>()V

    .line 499
    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object v4

    move v2, v1

    move v1, v0

    .line 501
    :goto_2
    const/4 v0, 0x7

    if-ge v2, v0, :cond_9

    .line 502
    iget v0, p0, Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;->mDays:I

    shl-int v5, v7, v2

    and-int/2addr v0, v5

    if-eqz v0, :cond_a

    .line 503
    sget-object v0, Lcom/meizu/common/widget/WeekdayPicker$DaysOfWeek;->DAY_MAP:[I

    aget v0, v0, v2

    aget-object v0, v4, v0

    .line 504
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    const-string v6, "zh"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_7

    .line 505
    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 508
    :cond_7
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    add-int/lit8 v0, v1, -0x1

    .line 510
    if-lez v0, :cond_8

    const-string v1, "  "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    :cond_8
    :goto_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_2

    .line 513
    :cond_9
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_a
    move v0, v1

    goto :goto_3
.end method
