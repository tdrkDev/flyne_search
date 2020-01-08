.class public Lcom/meizu/common/util/GroupUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DATE_TYPE_LENGTH:I = 0x6

.field private static final DEFAULT_DATE:I = -0x1

.field public static final FORMER_YEAR:I = 0x5

.field public static final FUTURE:I = 0x0

.field private static final SPECIFIED_DATE_GROUP_LENGTH:I = 0x4

.field public static final SPECIFIED_FUTURE:I = 0x0

.field public static final SPECIFIED_OTHER:I = 0x3

.field public static final SPECIFIED_THIS_MONTH:I = 0x2

.field public static final SPECIFIED_THIS_WEEK:I = 0x1

.field public static final THIS_MONTH:I = 0x3

.field public static final THIS_WEEK:I = 0x2

.field public static final THIS_YEAR:I = 0x4

.field public static final TODAY:I = 0x1

.field public static final TYPE_FWMO:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkDateType(JLandroid/text/format/Time;Landroid/text/format/Time;J)I
    .locals 4

    .prologue
    .line 162
    const/4 v0, -0x1

    .line 163
    invoke-virtual {p2, p0, p1}, Landroid/text/format/Time;->set(J)V

    .line 164
    iget v1, p2, Landroid/text/format/Time;->year:I

    iget v2, p3, Landroid/text/format/Time;->year:I

    if-ge v1, v2, :cond_1

    .line 165
    const/4 v0, 0x5

    .line 184
    :cond_0
    :goto_0
    return v0

    .line 167
    :cond_1
    cmp-long v1, p0, p4

    if-lez v1, :cond_2

    .line 168
    const/4 v0, 0x0

    .line 170
    :cond_2
    iget v1, p2, Landroid/text/format/Time;->year:I

    iget v2, p3, Landroid/text/format/Time;->year:I

    if-ne v1, v2, :cond_3

    .line 171
    const/4 v0, 0x4

    .line 172
    iget v1, p2, Landroid/text/format/Time;->month:I

    iget v2, p3, Landroid/text/format/Time;->month:I

    if-ne v1, v2, :cond_3

    .line 173
    const/4 v0, 0x3

    .line 176
    :cond_3
    iget v1, p3, Landroid/text/format/Time;->yearDay:I

    iget v2, p3, Landroid/text/format/Time;->weekDay:I

    sub-int/2addr v1, v2

    .line 177
    add-int/lit8 v2, v1, 0x7

    .line 178
    iget v3, p2, Landroid/text/format/Time;->yearDay:I

    if-lt v3, v1, :cond_0

    iget v1, p2, Landroid/text/format/Time;->yearDay:I

    if-ge v1, v2, :cond_0

    .line 179
    const/4 v0, 0x2

    .line 180
    iget v1, p2, Landroid/text/format/Time;->monthDay:I

    iget v2, p3, Landroid/text/format/Time;->monthDay:I

    if-ne v1, v2, :cond_0

    .line 181
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getGroupCountsByCursor(Landroid/database/Cursor;I)[I
    .locals 2

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p0, p1, v0, v1}, Lcom/meizu/common/util/GroupUtils;->getGroupCountsByCursor(Landroid/database/Cursor;III)[I

    move-result-object v0

    return-object v0
.end method

.method public static getGroupCountsByCursor(Landroid/database/Cursor;III)[I
    .locals 7

    .prologue
    .line 100
    if-le p2, p3, :cond_0

    .line 101
    const-string v0, "Error"

    const-string v1, "getGroupConntByCursor startPos > endPos error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const/4 v0, 0x0

    .line 118
    :goto_0
    return-object v0

    .line 104
    :cond_0
    const/4 v0, 0x6

    new-array v6, v0, [I

    .line 105
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 106
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    .line 107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 108
    invoke-virtual {v3, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 109
    invoke-interface {p0, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 111
    :cond_1
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static/range {v0 .. v5}, Lcom/meizu/common/util/GroupUtils;->checkDateType(JLandroid/text/format/Time;Landroid/text/format/Time;J)I

    move-result v0

    .line 112
    invoke-static {v0, v6}, Lcom/meizu/common/util/GroupUtils;->signDateCount(I[I)V

    .line 113
    invoke-interface {p0}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    if-ne v0, p3, :cond_3

    :cond_2
    :goto_1
    move-object v0, v6

    .line 118
    goto :goto_0

    .line 116
    :cond_3
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1
.end method

.method public static getGroupCountsByList(Ljava/util/List;)[I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p0, v0, v1}, Lcom/meizu/common/util/GroupUtils;->getGroupCountsByList(Ljava/util/List;II)[I

    move-result-object v0

    return-object v0
.end method

.method public static getGroupCountsByList(Ljava/util/List;II)[I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;II)[I"
        }
    .end annotation

    .prologue
    .line 144
    if-le p1, p2, :cond_0

    .line 145
    const-string v0, "Error"

    const-string v1, "getGroupConntByCursor startPos > endPos error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    const/4 v0, 0x0

    .line 157
    :goto_0
    return-object v0

    .line 148
    :cond_0
    const/4 v0, 0x6

    new-array v6, v0, [I

    .line 149
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 150
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    .line 151
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 152
    invoke-virtual {v3, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 153
    :goto_1
    if-gt p1, p2, :cond_1

    .line 154
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static/range {v0 .. v5}, Lcom/meizu/common/util/GroupUtils;->checkDateType(JLandroid/text/format/Time;Landroid/text/format/Time;J)I

    move-result v0

    .line 155
    invoke-static {v0, v6}, Lcom/meizu/common/util/GroupUtils;->signDateCount(I[I)V

    .line 153
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v6

    .line 157
    goto :goto_0
.end method

.method public static getSpecifiedGroupCounts(ILandroid/database/Cursor;I)[I
    .locals 2

    .prologue
    .line 256
    const/4 v0, 0x0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p0, p1, p2, v0, v1}, Lcom/meizu/common/util/GroupUtils;->getSpecifiedGroupCounts(ILandroid/database/Cursor;III)[I

    move-result-object v0

    return-object v0
.end method

.method public static getSpecifiedGroupCounts(ILandroid/database/Cursor;III)[I
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 231
    new-array v0, v7, [I

    .line 232
    invoke-static {p1, p2, p3, p4}, Lcom/meizu/common/util/GroupUtils;->getGroupCountsByCursor(Landroid/database/Cursor;III)[I

    move-result-object v1

    .line 233
    aget v2, v1, v3

    aput v2, v0, v3

    .line 234
    aget v2, v1, v4

    aget v3, v1, v5

    add-int/2addr v2, v3

    aput v2, v0, v4

    .line 235
    aget v2, v1, v6

    aput v2, v0, v5

    .line 236
    aget v2, v1, v7

    const/4 v3, 0x5

    aget v1, v1, v3

    add-int/2addr v1, v2

    aput v1, v0, v6

    .line 237
    return-object v0
.end method

.method public static getSpecifiedGroupCounts(ILjava/util/List;)[I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .line 302
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p0, p1, v0, v1}, Lcom/meizu/common/util/GroupUtils;->getSpecifiedGroupCounts(ILjava/util/List;II)[I

    move-result-object v0

    return-object v0
.end method

.method public static getSpecifiedGroupCounts(ILjava/util/List;II)[I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;II)[I"
        }
    .end annotation

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 276
    new-array v0, v7, [I

    .line 277
    invoke-static {p1, p2, p3}, Lcom/meizu/common/util/GroupUtils;->getGroupCountsByList(Ljava/util/List;II)[I

    move-result-object v1

    .line 278
    aget v2, v1, v3

    aput v2, v0, v3

    .line 279
    aget v2, v1, v4

    aget v3, v1, v5

    add-int/2addr v2, v3

    aput v2, v0, v4

    .line 280
    aget v2, v1, v6

    aput v2, v0, v5

    .line 281
    aget v2, v1, v7

    const/4 v3, 0x5

    aget v1, v1, v3

    add-int/2addr v1, v2

    aput v1, v0, v6

    .line 282
    return-object v0
.end method

.method private static signDateCount(I[I)V
    .locals 2

    .prologue
    .line 189
    packed-switch p0, :pswitch_data_0

    .line 211
    :goto_0
    return-void

    .line 191
    :pswitch_0
    const/4 v0, 0x0

    aget v1, p1, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, p1, v0

    goto :goto_0

    .line 194
    :pswitch_1
    const/4 v0, 0x1

    aget v1, p1, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, p1, v0

    goto :goto_0

    .line 197
    :pswitch_2
    const/4 v0, 0x2

    aget v1, p1, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, p1, v0

    goto :goto_0

    .line 200
    :pswitch_3
    const/4 v0, 0x3

    aget v1, p1, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, p1, v0

    goto :goto_0

    .line 203
    :pswitch_4
    const/4 v0, 0x4

    aget v1, p1, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, p1, v0

    goto :goto_0

    .line 206
    :pswitch_5
    const/4 v0, 0x5

    aget v1, p1, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, p1, v0

    goto :goto_0

    .line 189
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
