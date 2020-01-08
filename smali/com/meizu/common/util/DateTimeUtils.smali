.class public Lcom/meizu/common/util/DateTimeUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final FORMAT_TYPE_APP_VERSIONS:I = 0x7

.field public static final FORMAT_TYPE_CALENDAR_APPWIDGET:I = 0x8

.field public static final FORMAT_TYPE_CALL_LOGS:I = 0x5

.field public static final FORMAT_TYPE_CALL_LOGS_NEW:I = 0xb

.field public static final FORMAT_TYPE_CONTACTS_BIRTHDAY_MD:I = 0xa

.field public static final FORMAT_TYPE_CONTACTS_BIRTHDAY_YMD:I = 0x9

.field public static final FORMAT_TYPE_EMAIL:I = 0x2

.field public static final FORMAT_TYPE_MMS:I = 0x1

.field public static final FORMAT_TYPE_NORMAL:I = 0x0

.field public static final FORMAT_TYPE_PERSONAL_FOOTPRINT:I = 0x6

.field public static final FORMAT_TYPE_RECORDER:I = 0x3

.field public static final FORMAT_TYPE_RECORDER_PHONE:I = 0x4

.field public static final FORMAT_TYPE_SIMPLE:I = 0xc

.field private static FormatResultLast:Ljava/lang/String; = null

.field private static FormatTypeLast:I = 0x0

.field private static final MILLISECONDS_OF_HOUR:I = 0x36ee80

.field private static NowMillisLast:J

.field private static NowTimeLast:Landroid/text/format/Time;

.field private static ThenTimeLast:Landroid/text/format/Time;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 152
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/meizu/common/util/DateTimeUtils;->NowMillisLast:J

    .line 153
    const/4 v0, -0x1

    sput v0, Lcom/meizu/common/util/DateTimeUtils;->FormatTypeLast:I

    .line 154
    const/4 v0, 0x0

    sput-object v0, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatTimeStampString(Landroid/content/Context;JI)Ljava/lang/String;
    .locals 17

    .prologue
    .line 169
    new-instance v12, Landroid/text/format/Time;

    invoke-direct {v12}, Landroid/text/format/Time;-><init>()V

    .line 170
    move-wide/from16 v0, p1

    invoke-virtual {v12, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 172
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    .line 173
    invoke-static/range {p0 .. p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v14

    .line 175
    sget v2, Lcom/meizu/common/util/DateTimeUtils;->FormatTypeLast:I

    move/from16 v0, p3

    if-ne v0, v2, :cond_2

    const/4 v2, 0x1

    .line 176
    :goto_0
    sput p3, Lcom/meizu/common/util/DateTimeUtils;->FormatTypeLast:I

    .line 179
    sget-object v3, Lcom/meizu/common/util/DateTimeUtils;->NowTimeLast:Landroid/text/format/Time;

    if-nez v3, :cond_3

    .line 180
    const/4 v3, 0x0

    move v11, v3

    .line 185
    :goto_1
    if-nez v11, :cond_5

    .line 186
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    .line 187
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 189
    sput-object v3, Lcom/meizu/common/util/DateTimeUtils;->NowTimeLast:Landroid/text/format/Time;

    .line 190
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget v6, v3, Landroid/text/format/Time;->hour:I

    mul-int/lit8 v6, v6, 0x3c

    mul-int/lit8 v6, v6, 0x3c

    mul-int/lit16 v6, v6, 0x3e8

    iget v7, v3, Landroid/text/format/Time;->minute:I

    mul-int/lit8 v7, v7, 0x3c

    mul-int/lit16 v7, v7, 0x3e8

    add-int/2addr v6, v7

    iget v7, v3, Landroid/text/format/Time;->second:I

    mul-int/lit16 v7, v7, 0x3e8

    add-int/2addr v6, v7

    int-to-long v6, v6

    sub-long/2addr v4, v6

    sput-wide v4, Lcom/meizu/common/util/DateTimeUtils;->NowMillisLast:J

    .line 195
    :goto_2
    const/4 v4, 0x0

    .line 196
    sget-object v5, Lcom/meizu/common/util/DateTimeUtils;->ThenTimeLast:Landroid/text/format/Time;

    if-eqz v5, :cond_0

    .line 197
    sget-object v4, Lcom/meizu/common/util/DateTimeUtils;->ThenTimeLast:Landroid/text/format/Time;

    iget v4, v4, Landroid/text/format/Time;->year:I

    iget v5, v12, Landroid/text/format/Time;->year:I

    if-ne v4, v5, :cond_6

    sget-object v4, Lcom/meizu/common/util/DateTimeUtils;->ThenTimeLast:Landroid/text/format/Time;

    iget v4, v4, Landroid/text/format/Time;->yearDay:I

    iget v5, v12, Landroid/text/format/Time;->yearDay:I

    if-ne v4, v5, :cond_6

    const/4 v4, 0x1

    .line 200
    :cond_0
    :goto_3
    const/4 v5, 0x0

    .line 201
    sget-object v6, Lcom/meizu/common/util/DateTimeUtils;->ThenTimeLast:Landroid/text/format/Time;

    if-eqz v6, :cond_1

    .line 202
    sget-object v5, Lcom/meizu/common/util/DateTimeUtils;->ThenTimeLast:Landroid/text/format/Time;

    iget v5, v5, Landroid/text/format/Time;->year:I

    iget v6, v12, Landroid/text/format/Time;->year:I

    if-ne v5, v6, :cond_7

    sget-object v5, Lcom/meizu/common/util/DateTimeUtils;->ThenTimeLast:Landroid/text/format/Time;

    iget v5, v5, Landroid/text/format/Time;->month:I

    iget v6, v12, Landroid/text/format/Time;->month:I

    if-ne v5, v6, :cond_7

    const/4 v5, 0x1

    .line 205
    :cond_1
    :goto_4
    sput-object v12, Lcom/meizu/common/util/DateTimeUtils;->ThenTimeLast:Landroid/text/format/Time;

    .line 206
    iget v6, v3, Landroid/text/format/Time;->yearDay:I

    iget v7, v3, Landroid/text/format/Time;->weekDay:I

    sub-int v15, v6, v7

    .line 207
    iget v6, v12, Landroid/text/format/Time;->year:I

    iget v7, v3, Landroid/text/format/Time;->year:I

    if-gt v6, v7, :cond_8

    const/4 v6, 0x1

    .line 208
    :goto_5
    iget v7, v3, Landroid/text/format/Time;->year:I

    iget v8, v12, Landroid/text/format/Time;->year:I

    if-ne v7, v8, :cond_9

    iget v7, v12, Landroid/text/format/Time;->yearDay:I

    iget v8, v3, Landroid/text/format/Time;->yearDay:I

    if-gt v7, v8, :cond_9

    const/4 v7, 0x1

    move v10, v7

    .line 209
    :goto_6
    if-eqz v10, :cond_a

    iget v7, v12, Landroid/text/format/Time;->yearDay:I

    iget v8, v3, Landroid/text/format/Time;->yearDay:I

    if-ne v7, v8, :cond_a

    const/4 v7, 0x1

    move v9, v7

    .line 210
    :goto_7
    if-eqz v10, :cond_b

    iget v7, v12, Landroid/text/format/Time;->yearDay:I

    iget v8, v3, Landroid/text/format/Time;->yearDay:I

    add-int/lit8 v8, v8, -0x1

    if-ne v7, v8, :cond_b

    const/4 v7, 0x1

    move v8, v7

    .line 211
    :goto_8
    if-eqz v10, :cond_c

    iget v7, v12, Landroid/text/format/Time;->yearDay:I

    if-lt v7, v15, :cond_c

    iget v7, v12, Landroid/text/format/Time;->yearDay:I

    iget v15, v3, Landroid/text/format/Time;->yearDay:I

    if-ge v7, v15, :cond_c

    const/4 v7, 0x1

    .line 212
    :goto_9
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    .line 213
    const-string v16, ""

    .line 214
    const-string v16, ""

    .line 215
    packed-switch p3, :pswitch_data_0

    .line 544
    const/4 v2, 0x0

    :goto_a
    return-object v2

    .line 175
    :cond_2
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 183
    :cond_3
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sget-wide v6, Lcom/meizu/common/util/DateTimeUtils;->NowMillisLast:J

    cmp-long v3, v4, v6

    if-ltz v3, :cond_4

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sget-wide v6, Lcom/meizu/common/util/DateTimeUtils;->NowMillisLast:J

    const-wide/32 v8, 0x5265c00

    add-long/2addr v6, v8

    cmp-long v3, v4, v6

    if-gez v3, :cond_4

    const/4 v3, 0x1

    :goto_b
    move v11, v3

    goto/16 :goto_1

    :cond_4
    const/4 v3, 0x0

    goto :goto_b

    .line 192
    :cond_5
    sget-object v3, Lcom/meizu/common/util/DateTimeUtils;->NowTimeLast:Landroid/text/format/Time;

    goto/16 :goto_2

    .line 197
    :cond_6
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 202
    :cond_7
    const/4 v5, 0x0

    goto :goto_4

    .line 207
    :cond_8
    const/4 v6, 0x0

    goto :goto_5

    .line 208
    :cond_9
    const/4 v7, 0x0

    move v10, v7

    goto :goto_6

    .line 209
    :cond_a
    const/4 v7, 0x0

    move v9, v7

    goto :goto_7

    .line 210
    :cond_b
    const/4 v7, 0x0

    move v8, v7

    goto :goto_8

    .line 211
    :cond_c
    const/4 v7, 0x0

    goto :goto_9

    .line 217
    :pswitch_0
    if-eqz v9, :cond_e

    .line 218
    if-eqz v14, :cond_d

    .line 219
    sget v2, Lcom/meizu/common/R$string;->mc_pattern_hour_minute:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_a

    .line 221
    :cond_d
    sget v2, Lcom/meizu/common/R$string;->mc_pattern_hour_minute_12:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_a

    .line 223
    :cond_e
    if-eqz v8, :cond_f

    .line 224
    sget v2, Lcom/meizu/common/R$string;->mc_pattern_yesterday:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_a

    .line 225
    :cond_f
    if-eqz v7, :cond_11

    .line 227
    if-eqz v11, :cond_10

    if-eqz v4, :cond_10

    if-eqz v2, :cond_10

    sget-object v2, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 228
    sget-object v2, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto :goto_a

    .line 230
    :cond_10
    sget v2, Lcom/meizu/common/R$string;->mc_pattern_week:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    .line 231
    sget-object v2, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto :goto_a

    .line 232
    :cond_11
    if-eqz v10, :cond_13

    .line 234
    if-eqz v11, :cond_12

    if-eqz v4, :cond_12

    if-eqz v2, :cond_12

    sget-object v2, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 235
    sget-object v2, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_a

    .line 237
    :cond_12
    sget v2, Lcom/meizu/common/R$string;->mc_pattern_month_day:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    .line 238
    sget-object v2, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_a

    .line 239
    :cond_13
    if-eqz v6, :cond_15

    .line 240
    if-eqz v11, :cond_14

    if-eqz v4, :cond_14

    if-eqz v2, :cond_14

    sget-object v2, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 241
    sget-object v2, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_a

    .line 243
    :cond_14
    sget v2, Lcom/meizu/common/R$string;->mc_pattern_year_month_day:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    .line 244
    sget-object v2, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_a

    .line 248
    :cond_15
    if-eqz v11, :cond_16

    if-eqz v4, :cond_16

    if-eqz v2, :cond_16

    sget-object v2, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 249
    sget-object v2, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_a

    .line 251
    :cond_16
    sget v2, Lcom/meizu/common/R$string;->mc_pattern_year_month_day:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    .line 252
    sget-object v2, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_a

    .line 256
    :pswitch_1
    if-eqz v9, :cond_18

    .line 257
    if-eqz v14, :cond_17

    .line 258
    sget v2, Lcom/meizu/common/R$string;->mc_pattern_hour_minute:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_a

    .line 260
    :cond_17
    sget v2, Lcom/meizu/common/R$string;->mc_pattern_hour_minute_12:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_a

    .line 262
    :cond_18
    if-eqz v8, :cond_1a

    .line 263
    if-eqz v14, :cond_19

    .line 264
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcom/meizu/common/R$string;->mc_pattern_yesterday:I

    invoke-virtual {v15, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/meizu/common/R$string;->mc_pattern_hour_minute:I

    invoke-virtual {v15, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_a

    .line 266
    :cond_19
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcom/meizu/common/R$string;->mc_pattern_yesterday:I

    invoke-virtual {v15, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/meizu/common/R$string;->mc_pattern_hour_minute_12:I

    invoke-virtual {v15, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_a

    .line 268
    :cond_1a
    if-eqz v7, :cond_1c

    .line 269
    if-eqz v14, :cond_1b

    .line 270
    sget v2, Lcom/meizu/common/R$string;->mc_pattern_week_hour_minute:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_a

    .line 272
    :cond_1b
    sget v2, Lcom/meizu/common/R$string;->mc_pattern_week_hour_minute_12:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_a

    .line 274
    :cond_1c
    if-eqz v10, :cond_1e

    .line 275
    if-eqz v14, :cond_1d

    .line 276
    sget v2, Lcom/meizu/common/R$string;->mc_pattern_month_day_hour_minute:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_a

    .line 278
    :cond_1d
    sget v2, Lcom/meizu/common/R$string;->mc_pattern_month_day_hour_minute_12:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_a

    .line 280
    :cond_1e
    if-eqz v6, :cond_20

    .line 281
    if-eqz v11, :cond_1f

    if-eqz v4, :cond_1f

    if-eqz v2, :cond_1f

    sget-object v2, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 282
    sget-object v2, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_a

    .line 284
    :cond_1f
    sget v2, Lcom/meizu/common/R$string;->mc_pattern_year_month_day:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    .line 285
    sget-object v2, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_a

    .line 287
    :cond_20
    if-eqz v14, :cond_21

    .line 288
    sget v2, Lcom/meizu/common/R$string;->mc_pattern_year_month_day_hour_minute:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_a

    .line 290
    :cond_21
    sget v2, Lcom/meizu/common/R$string;->mc_pattern_year_month_day_hour_minute_12:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_a

    .line 310
    :pswitch_2
    if-eqz v9, :cond_23

    .line 311
    if-eqz v14, :cond_22

    .line 312
    sget v2, Lcom/meizu/common/R$string;->mc_pattern_hour_minute:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_a

    .line 314
    :cond_22
    sget v2, Lcom/meizu/common/R$string;->mc_pattern_hour_minute_12:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_a

    .line 316
    :cond_23
    if-eqz v8, :cond_24

    .line 317
    sget v2, Lcom/meizu/common/R$string;->mc_pattern_yesterday:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_a

    .line 318
    :cond_24
    if-eqz v10, :cond_26

    .line 319
    if-eqz v14, :cond_25

    .line 320
    sget v2, Lcom/meizu/common/R$string;->mc_pattern_month_day_hour_minute:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_a

    .line 322
    :cond_25
    sget v2, Lcom/meizu/common/R$string;->mc_pattern_month_day_hour_minute_12:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_a

    .line 324
    :cond_26
    if-eqz v6, :cond_28

    .line 325
    if-eqz v11, :cond_27

    if-eqz v4, :cond_27

    if-eqz v2, :cond_27

    sget-object v2, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_27

    .line 326
    sget-object v2, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_a

    .line 328
    :cond_27
    sget v2, Lcom/meizu/common/R$string;->mc_pattern_year_month_day:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    .line 329
    sget-object v2, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_a

    .line 331
    :cond_28
    if-eqz v14, :cond_29

    .line 332
    sget v2, Lcom/meizu/common/R$string;->mc_pattern_year_month_day_hour_minute:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_a

    .line 334
    :cond_29
    sget v2, Lcom/meizu/common/R$string;->mc_pattern_year_month_day_hour_minute_12:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_a

    .line 338
    :pswitch_3
    if-eqz v9, :cond_2b

    .line 339
    if-eqz v14, :cond_2a

    .line 340
    sget v2, Lcom/meizu/common/R$string;->mc_pattern_hour_minute:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_a

    .line 342
    :cond_2a
    sget v2, Lcom/meizu/common/R$string;->mc_pattern_hour_minute_12:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_a

    .line 344
    :cond_2b
    if-eqz v8, :cond_2c

    .line 345
    sget v2, Lcom/meizu/common/R$string;->mc_pattern_yesterday:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_a

    .line 346
    :cond_2c
    if-eqz v10, :cond_2e

    .line 348
    if-eqz v11, :cond_2d

    if-eqz v4, :cond_2d

    if-eqz v2, :cond_2d

    sget-object v2, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2d

    .line 349
    sget-object v2, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_a

    .line 351
    :cond_2d
    sget v2, Lcom/meizu/common/R$string;->mc_pattern_month_day:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    .line 352
    sget-object v2, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_a

    .line 353
    :cond_2e
    if-eqz v6, :cond_30

    .line 354
    if-eqz v11, :cond_2f

    if-eqz v4, :cond_2f

    if-eqz v2, :cond_2f

    sget-object v2, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2f

    .line 355
    sget-object v2, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_a

    .line 357
    :cond_2f
    sget v2, Lcom/meizu/common/R$string;->mc_pattern_year_month_day:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    .line 358
    sget-object v2, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_a

    .line 361
    :cond_30
    if-eqz v11, :cond_31

    if-eqz v4, :cond_31

    if-eqz v2, :cond_31

    sget-object v2, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_31

    .line 362
    sget-object v2, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_a

    .line 364
    :cond_31
    sget v2, Lcom/meizu/common/R$string;->mc_pattern_year_month_day:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    .line 365
    sget-object v2, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_a

    .line 368
    :pswitch_4
    if-eqz v9, :cond_33

    .line 369
    if-eqz v14, :cond_32

    .line 370
    sget v2, Lcom/meizu/common/R$string;->mc_pattern_hour_minute:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_a

    .line 372
    :cond_32
    sget v2, Lcom/meizu/common/R$string;->mc_pattern_hour_minute_12:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_a

    .line 374
    :cond_33
    if-eqz v8, :cond_35

    .line 375
    if-eqz v14, :cond_34

    .line 376
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcom/meizu/common/R$string;->mc_pattern_yesterday:I

    invoke-virtual {v15, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/meizu/common/R$string;->mc_pattern_hour_minute:I

    invoke-virtual {v15, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_a

    .line 378
    :cond_34
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcom/meizu/common/R$string;->mc_pattern_yesterday:I

    invoke-virtual {v15, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/meizu/common/R$string;->mc_pattern_hour_minute_12:I

    invoke-virtual {v15, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_a

    .line 380
    :cond_35
    if-eqz v7, :cond_37

    .line 381
    if-eqz v14, :cond_36

    .line 382
    sget v2, Lcom/meizu/common/R$string;->mc_pattern_week_hour_minute:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_a

    .line 384
    :cond_36
    sget v2, Lcom/meizu/common/R$string;->mc_pattern_week_hour_minute_12:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_a

    .line 386
    :cond_37
    if-eqz v10, :cond_39

    .line 387
    if-eqz v14, :cond_38

    .line 388
    sget v2, Lcom/meizu/common/R$string;->mc_pattern_month_day_hour_minute:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_a

    .line 390
    :cond_38
    sget v2, Lcom/meizu/common/R$string;->mc_pattern_month_day_hour_minute_12:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_a

    .line 393
    :cond_39
    if-eqz v14, :cond_3a

    .line 394
    sget v2, Lcom/meizu/common/R$string;->mc_pattern_year_month_day_hour_minute:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    .line 398
    :goto_c
    sget-object v2, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_a

    .line 396
    :cond_3a
    sget v2, Lcom/meizu/common/R$string;->mc_pattern_year_month_day_hour_minute_12:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto :goto_c

    .line 401
    :pswitch_5
    if-eqz v9, :cond_3e

    .line 402
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long v2, v2, p1

    .line 404
    const-wide/32 v4, 0x36ee80

    cmp-long v4, v2, v4

    if-ltz v4, :cond_3c

    .line 405
    long-to-int v2, v2

    div-int/lit8 v2, v2, 0x3c

    div-int/lit8 v2, v2, 0x3c

    div-int/lit16 v2, v2, 0x3e8

    .line 406
    const/4 v3, 0x1

    if-ne v2, v3, :cond_3b

    .line 407
    sget v2, Lcom/meizu/common/R$string;->mc_pattern_a_hour_before:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_a

    .line 409
    :cond_3b
    sget v3, Lcom/meizu/common/R$string;->mc_pattern_hour_before:I

    invoke-virtual {v15, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ","

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_a

    .line 412
    :cond_3c
    long-to-int v2, v2

    div-int/lit8 v2, v2, 0x3c

    div-int/lit16 v2, v2, 0x3e8

    .line 413
    const/4 v3, 0x1

    if-gt v2, v3, :cond_3d

    .line 414
    sget v2, Lcom/meizu/common/R$string;->mc_pattern_a_minute_before:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_a

    .line 416
    :cond_3d
    sget v3, Lcom/meizu/common/R$string;->mc_pattern_minute_before:I

    invoke-virtual {v15, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ","

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_a

    .line 419
    :cond_3e
    if-eqz v8, :cond_3f

    .line 420
    sget v2, Lcom/meizu/common/R$string;->mc_pattern_yesterday:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_a

    .line 421
    :cond_3f
    if-eqz v10, :cond_41

    .line 423
    if-eqz v11, :cond_40

    if-eqz v4, :cond_40

    if-eqz v2, :cond_40

    sget-object v2, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_40

    .line 424
    sget-object v2, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_a

    .line 426
    :cond_40
    sget v2, Lcom/meizu/common/R$string;->mc_pattern_month_day:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    .line 427
    sget-object v2, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_a

    .line 428
    :cond_41
    if-eqz v6, :cond_43

    .line 429
    if-eqz v11, :cond_42

    if-eqz v4, :cond_42

    if-eqz v2, :cond_42

    sget-object v2, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_42

    .line 430
    sget-object v2, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_a

    .line 432
    :cond_42
    sget v2, Lcom/meizu/common/R$string;->mc_pattern_year_month_day:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    .line 433
    sget-object v2, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_a

    .line 436
    :cond_43
    if-eqz v11, :cond_44

    if-eqz v4, :cond_44

    if-eqz v2, :cond_44

    sget-object v2, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_44

    .line 437
    sget-object v2, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_a

    .line 439
    :cond_44
    sget v2, Lcom/meizu/common/R$string;->mc_pattern_year_month_day:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    .line 440
    sget-object v2, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_a

    .line 444
    :pswitch_6
    if-eqz v11, :cond_45

    if-eqz v4, :cond_45

    if-eqz v2, :cond_45

    sget-object v2, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_45

    .line 445
    sget-object v2, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_a

    .line 447
    :cond_45
    if-eqz v10, :cond_46

    .line 448
    sget v2, Lcom/meizu/common/R$string;->mc_pattern_month_day:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    .line 449
    sget-object v2, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_a

    .line 451
    :cond_46
    sget v2, Lcom/meizu/common/R$string;->mc_pattern_year_month_day:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    .line 452
    sget-object v2, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_a

    .line 455
    :pswitch_7
    iget v3, v3, Landroid/text/format/Time;->year:I

    iget v6, v12, Landroid/text/format/Time;->year:I

    if-ne v3, v6, :cond_48

    .line 457
    if-eqz v11, :cond_47

    if-eqz v4, :cond_47

    if-eqz v2, :cond_47

    sget-object v2, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_47

    .line 458
    sget-object v2, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_a

    .line 460
    :cond_47
    sget v2, Lcom/meizu/common/R$string;->mc_pattern_month_day:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    .line 461
    sget-object v2, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_a

    .line 464
    :cond_48
    if-eqz v11, :cond_49

    if-eqz v5, :cond_49

    if-eqz v2, :cond_49

    sget-object v2, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_49

    .line 465
    sget-object v2, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_a

    .line 467
    :cond_49
    sget v2, Lcom/meizu/common/R$string;->mc_pattern_year_month:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    .line 468
    sget-object v2, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_a

    .line 472
    :pswitch_8
    if-eqz v11, :cond_4a

    if-eqz v4, :cond_4a

    if-eqz v2, :cond_4a

    sget-object v2, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4a

    .line 473
    sget-object v2, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_a

    .line 475
    :cond_4a
    sget v2, Lcom/meizu/common/R$string;->mc_pattern_year_month_day:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    .line 476
    sget-object v2, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_a

    .line 479
    :pswitch_9
    if-eqz v11, :cond_4b

    if-eqz v4, :cond_4b

    if-eqz v2, :cond_4b

    sget-object v2, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4b

    .line 480
    sget-object v2, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_a

    .line 482
    :cond_4b
    sget v2, Lcom/meizu/common/R$string;->mc_pattern_month_day:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    .line 483
    sget-object v2, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_a

    .line 485
    :pswitch_a
    if-eqz v9, :cond_4d

    .line 486
    if-eqz v14, :cond_4c

    .line 487
    sget v2, Lcom/meizu/common/R$string;->mc_pattern_hour_minute:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_a

    .line 489
    :cond_4c
    sget v2, Lcom/meizu/common/R$string;->mc_pattern_hour_minute_12:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_a

    .line 491
    :cond_4d
    if-eqz v8, :cond_4e

    .line 492
    sget v2, Lcom/meizu/common/R$string;->mc_pattern_yesterday:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_a

    .line 493
    :cond_4e
    if-eqz v7, :cond_4f

    .line 494
    sget v2, Lcom/meizu/common/R$string;->mc_pattern_week:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_a

    .line 495
    :cond_4f
    if-eqz v10, :cond_50

    .line 496
    sget v2, Lcom/meizu/common/R$string;->mc_pattern_month_day:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_a

    .line 498
    :cond_50
    if-eqz v11, :cond_51

    if-eqz v4, :cond_51

    if-eqz v2, :cond_51

    sget-object v2, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_51

    .line 499
    sget-object v2, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_a

    .line 502
    :cond_51
    sget v2, Lcom/meizu/common/R$string;->mc_pattern_month_day:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    .line 503
    sget-object v2, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_a

    .line 506
    :pswitch_b
    if-eqz v9, :cond_53

    .line 507
    if-eqz v14, :cond_52

    .line 508
    sget v2, Lcom/meizu/common/R$string;->mc_pattern_hour_minute:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_a

    .line 510
    :cond_52
    sget v2, Lcom/meizu/common/R$string;->mc_pattern_hour_minute_12:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_a

    .line 512
    :cond_53
    if-eqz v8, :cond_54

    .line 513
    sget v2, Lcom/meizu/common/R$string;->mc_pattern_yesterday:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_a

    .line 514
    :cond_54
    if-eqz v7, :cond_56

    .line 516
    if-eqz v11, :cond_55

    if-eqz v4, :cond_55

    if-eqz v2, :cond_55

    sget-object v2, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_55

    .line 517
    sget-object v2, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_a

    .line 519
    :cond_55
    sget v2, Lcom/meizu/common/R$string;->mc_pattern_week:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    .line 520
    sget-object v2, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_a

    .line 521
    :cond_56
    if-eqz v10, :cond_58

    .line 523
    if-eqz v11, :cond_57

    if-eqz v4, :cond_57

    if-eqz v2, :cond_57

    sget-object v2, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_57

    .line 524
    sget-object v2, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_a

    .line 526
    :cond_57
    sget v2, Lcom/meizu/common/R$string;->mc_simple_pattern_month_day:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    .line 527
    sget-object v2, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_a

    .line 528
    :cond_58
    if-eqz v6, :cond_5a

    .line 529
    if-eqz v11, :cond_59

    if-eqz v4, :cond_59

    if-eqz v2, :cond_59

    sget-object v2, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_59

    .line 530
    sget-object v2, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_a

    .line 532
    :cond_59
    sget v2, Lcom/meizu/common/R$string;->mc_simple_pattern_year_month_day:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    .line 533
    sget-object v2, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_a

    .line 537
    :cond_5a
    if-eqz v11, :cond_5b

    if-eqz v4, :cond_5b

    if-eqz v2, :cond_5b

    sget-object v2, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5b

    .line 538
    sget-object v2, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_a

    .line 540
    :cond_5b
    sget v2, Lcom/meizu/common/R$string;->mc_simple_pattern_year_month_day:I

    invoke-virtual {v15, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    .line 541
    sget-object v2, Lcom/meizu/common/util/DateTimeUtils;->FormatResultLast:Ljava/lang/String;

    goto/16 :goto_a

    .line 215
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public static formatTimeStampString(Landroid/content/Context;JIZ)Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    invoke-static {p0, p1, p2, p3}, Lcom/meizu/common/util/DateTimeUtils;->formatTimeStampString(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/meizu/common/util/DateTimeUtils;->formatTimeStampString(Landroid/content/Context;JIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getWeek(Landroid/content/Context;III)Ljava/lang/String;
    .locals 3

    .prologue
    .line 548
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 549
    invoke-virtual {v0, p1, p2, p3}, Ljava/util/Calendar;->set(III)V

    .line 550
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 551
    add-int/lit8 v0, v0, -0x1

    .line 552
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$array;->mc_custom_weekday:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 553
    if-ltz v0, :cond_0

    array-length v2, v1

    if-lt v0, v2, :cond_1

    .line 554
    :cond_0
    const-string v0, ""

    .line 556
    :goto_0
    return-object v0

    :cond_1
    aget-object v0, v1, v0

    goto :goto_0
.end method
