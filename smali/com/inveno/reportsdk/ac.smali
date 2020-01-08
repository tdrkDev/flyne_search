.class public Lcom/inveno/reportsdk/ac;
.super Ljava/lang/Object;


# direct methods
.method static a(Landroid/content/Context;I)V
    .locals 2

    const-string v0, "data_sdk"

    const-string v1, "sid_seq"

    invoke-static {p0, v0, v1, p1}, Ld/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "data_sdk"

    const-string v1, "sid_time"

    invoke-static {p0, v0, v1}, Ld/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    const-wide/16 v2, 0x7530

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 4

    const-string v0, "data_sdk"

    const-string v1, "sid_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {p0, v0, v1, v2, v3}, Ld/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method private static b(Landroid/content/Context;I)V
    .locals 2

    const-string v0, "data_sdk"

    const-string v1, "sid_name"

    invoke-static {p0, v0, v1, p1}, Ld/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static c(Landroid/content/Context;)I
    .locals 2

    const-string v0, "data_sdk"

    const-string v1, "sid_seq"

    invoke-static {p0, v0, v1}, Ld/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static d(Landroid/content/Context;)I
    .locals 2

    invoke-static {p0}, Lcom/inveno/reportsdk/ac;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "DataSDK"

    const-string v1, "sid\u672a\u8fc7\u671f"

    invoke-static {v0, v1}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/inveno/reportsdk/ac;->e(Landroid/content/Context;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const-string v0, "DataSDK"

    const-string v1, "sid\u5df2\u8fc7\u671f"

    invoke-static {v0, v1}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const v1, 0x3b9aca00

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-static {p0}, Lcom/inveno/reportsdk/ac;->b(Landroid/content/Context;)V

    invoke-static {p0, v0}, Lcom/inveno/reportsdk/ac;->b(Landroid/content/Context;I)V

    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/inveno/reportsdk/ac;->a(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method private static e(Landroid/content/Context;)I
    .locals 2

    const-string v0, "data_sdk"

    const-string v1, "sid_name"

    invoke-static {p0, v0, v1}, Ld/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
