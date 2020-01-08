.class public Lcom/meizu/flyme/media/news/a/l;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(JLandroid/content/Context;IZ)Ljava/lang/String;
    .locals 8

    .prologue
    .line 44
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 45
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    sub-long/2addr v2, p0

    .line 48
    const-wide/32 v4, 0xea60

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    .line 49
    sget v0, Lcom/meizu/flyme/media/news/lite/R$string;->news_lite_just_now:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 82
    :goto_0
    return-object v0

    .line 52
    :cond_0
    const-wide/32 v4, 0x36ee80

    cmp-long v4, v2, v4

    if-gez v4, :cond_1

    .line 53
    const-wide/32 v4, 0xea60

    div-long/2addr v2, v4

    long-to-int v0, v2

    .line 54
    sget v2, Lcom/meizu/flyme/media/news/lite/R$plurals;->news_lite_minute_ago:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 57
    :cond_1
    const/16 v4, 0xb

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const v5, 0x36ee80

    mul-int/2addr v4, v5

    const/16 v5, 0xc

    .line 58
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const v6, 0xea60

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    const/16 v5, 0xd

    .line 59
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    mul-int/lit16 v5, v5, 0x3e8

    add-int/2addr v4, v5

    const/16 v5, 0xe

    .line 60
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/2addr v0, v4

    int-to-long v4, v0

    .line 61
    cmp-long v0, v2, v4

    if-gez v0, :cond_2

    .line 62
    const-wide/32 v4, 0x36ee80

    div-long/2addr v2, v4

    .line 63
    sget v0, Lcom/meizu/flyme/media/news/lite/R$plurals;->news_lite_hour_ago:I

    long-to-int v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-virtual {v1, v0, v4, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 66
    :cond_2
    sub-long/2addr v2, v4

    const-wide/32 v4, 0x5265c00

    div-long/2addr v2, v4

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    long-to-int v2, v2

    .line 68
    const/4 v0, 0x1

    if-ne p3, v0, :cond_4

    .line 69
    if-eqz p4, :cond_3

    .line 70
    sget v0, Lcom/meizu/flyme/media/news/lite/R$plurals;->news_lite_before_today_chinese_year:I

    .line 81
    :goto_1
    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    .line 82
    invoke-static {v0, p0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 72
    :cond_3
    sget v0, Lcom/meizu/flyme/media/news/lite/R$plurals;->news_lite_before_today_chinese:I

    goto :goto_1

    .line 75
    :cond_4
    if-eqz p4, :cond_5

    .line 76
    sget v0, Lcom/meizu/flyme/media/news/lite/R$plurals;->news_lite_before_today_year:I

    goto :goto_1

    .line 78
    :cond_5
    sget v0, Lcom/meizu/flyme/media/news/lite/R$plurals;->news_lite_before_today:I

    goto :goto_1
.end method
