.class Lcom/inveno/reportsdk/m;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/inveno/reportsdk/l$j;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/inveno/reportsdk/l$e;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/inveno/reportsdk/m;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/inveno/reportsdk/m;->b:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/inveno/reportsdk/m;->c:Ljava/util/Map;

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "%s_%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/lang/String;J)V
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/inveno/reportsdk/ad;->a()Lcom/inveno/reportsdk/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/reportsdk/ad;->c()V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/inveno/reportsdk/l$j;

    invoke-direct {v0, p0, p1, p2}, Lcom/inveno/reportsdk/l$j;-><init>(Ljava/lang/String;J)V

    sget-object v1, Lcom/inveno/reportsdk/m;->a:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method static a(Ljava/lang/String;Lcom/inveno/se/callback/DownloadCallback;)V
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/inveno/se/callback/DownloadCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/inveno/se/callback/DownloadCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const-string v0, "DataSDK"

    const-string v1, "onInterestReport: parameter chooseCategories or callback is null !!! "

    invoke-static {v0, v1}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/inveno/reportsdk/y;->a()Lcom/inveno/reportsdk/y;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/inveno/reportsdk/y;->a(Ljava/lang/String;Lcom/inveno/se/callback/DownloadCallback;)V

    goto :goto_0
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/inveno/reportsdk/ad;->a()Lcom/inveno/reportsdk/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/reportsdk/ad;->c()V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/inveno/reportsdk/m;->b:Ljava/util/Map;

    invoke-static {p0, p1}, Lcom/inveno/reportsdk/m;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/reportsdk/l$e;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/inveno/reportsdk/l$e;->a(I)Lcom/inveno/reportsdk/l$e;

    goto :goto_0
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;IJZ)V
    .locals 7
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    if-ltz p2, :cond_2

    const/4 v0, 0x2

    if-gt p2, v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_3

    :cond_0
    const-string v0, "DataSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCustomEvent: parameter error !!! \nactionName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nactionValue="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nactionType"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\neventTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/inveno/reportsdk/l$a;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/inveno/reportsdk/l$a;-><init>(Ljava/lang/String;Ljava/lang/String;IJ)V

    invoke-static {}, Lcom/inveno/reportsdk/n;->a()Lcom/inveno/reportsdk/n;

    move-result-object v1

    invoke-virtual {v0}, Lcom/inveno/reportsdk/l$a;->a()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/inveno/reportsdk/n;->a(Lorg/json/JSONObject;)V

    if-eqz p5, :cond_1

    invoke-static {}, Lcom/inveno/reportsdk/y;->a()Lcom/inveno/reportsdk/y;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/inveno/reportsdk/y;->a(I)V

    goto :goto_1
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 8
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/inveno/reportsdk/ad;->a()Lcom/inveno/reportsdk/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/reportsdk/ad;->c()V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Lcom/inveno/reportsdk/l$e;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/inveno/reportsdk/l$e;-><init>(Ljava/lang/String;Ljava/lang/String;JI)V

    sget-object v0, Lcom/inveno/reportsdk/m;->b:Ljava/util/Map;

    invoke-static {p0, p1}, Lcom/inveno/reportsdk/m;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;J)V
    .locals 11
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/inveno/reportsdk/ad;->a()Lcom/inveno/reportsdk/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/reportsdk/ad;->c()V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "0x0308ff"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/inveno/reportsdk/l$h;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide/from16 v4, p7

    move-wide v6, p3

    invoke-direct/range {v0 .. v9}, Lcom/inveno/reportsdk/l$h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/inveno/reportsdk/y;->a()Lcom/inveno/reportsdk/y;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/inveno/reportsdk/y;->a(Lcom/inveno/reportsdk/l$d;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/inveno/reportsdk/l$h;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide/from16 v4, p7

    move-wide v6, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lcom/inveno/reportsdk/l$h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/inveno/reportsdk/i;->a()Lcom/inveno/reportsdk/i;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/inveno/reportsdk/i;->a(Lcom/inveno/reportsdk/l$d;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/inveno/reportsdk/n;->a()Lcom/inveno/reportsdk/n;

    move-result-object v1

    invoke-virtual {v0}, Lcom/inveno/reportsdk/l$h;->a()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/inveno/reportsdk/n;->a(Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 5
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/inveno/reportsdk/ad;->a()Lcom/inveno/reportsdk/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/reportsdk/ad;->c()V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0, p1}, Lcom/inveno/reportsdk/m;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/inveno/reportsdk/m;->b:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/reportsdk/l$e;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p2}, Lcom/inveno/reportsdk/l$e;->a(Ljava/lang/String;)Lcom/inveno/reportsdk/l$e;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/inveno/reportsdk/l$e;->b(Ljava/lang/String;)Lcom/inveno/reportsdk/l$e;

    move-result-object v2

    invoke-virtual {v2, p4}, Lcom/inveno/reportsdk/l$e;->c(Ljava/lang/String;)Lcom/inveno/reportsdk/l$e;

    move-result-object v2

    invoke-virtual {v2, p5, p6}, Lcom/inveno/reportsdk/l$e;->a(J)Lcom/inveno/reportsdk/l$e;

    invoke-static {}, Lcom/inveno/reportsdk/n;->a()Lcom/inveno/reportsdk/n;

    move-result-object v2

    invoke-virtual {v0}, Lcom/inveno/reportsdk/l$e;->a()Lcom/inveno/reportsdk/l$f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/inveno/reportsdk/l$f;->a()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/inveno/reportsdk/n;->a(Lorg/json/JSONObject;)V

    invoke-static {}, Lcom/inveno/reportsdk/n;->a()Lcom/inveno/reportsdk/n;

    move-result-object v2

    invoke-virtual {v0}, Lcom/inveno/reportsdk/l$e;->b()Lcom/inveno/reportsdk/l$g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/reportsdk/l$g;->a()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/inveno/reportsdk/n;->a(Lorg/json/JSONObject;)V

    sget-object v0, Lcom/inveno/reportsdk/m;->b:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-static {}, Lcom/inveno/reportsdk/y;->a()Lcom/inveno/reportsdk/y;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/inveno/reportsdk/y;->a(I)V

    goto :goto_0
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;J)V
    .locals 10
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/inveno/reportsdk/ad;->a()Lcom/inveno/reportsdk/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/reportsdk/ad;->c()V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "0x0308ff"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/inveno/reportsdk/l$c;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide/from16 v4, p6

    move v6, p3

    invoke-direct/range {v0 .. v8}, Lcom/inveno/reportsdk/l$c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZLjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/inveno/reportsdk/y;->a()Lcom/inveno/reportsdk/y;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/inveno/reportsdk/y;->a(Lcom/inveno/reportsdk/l$d;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/inveno/reportsdk/l$c;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide/from16 v4, p6

    move v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/inveno/reportsdk/l$c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZLjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/inveno/reportsdk/i;->a()Lcom/inveno/reportsdk/i;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/inveno/reportsdk/i;->a(Lcom/inveno/reportsdk/l$d;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/inveno/reportsdk/n;->a()Lcom/inveno/reportsdk/n;

    move-result-object v1

    invoke-virtual {v0}, Lcom/inveno/reportsdk/l$c;->a()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/inveno/reportsdk/n;->a(Lorg/json/JSONObject;)V

    :cond_3
    invoke-static {}, Lcom/inveno/reportsdk/y;->a()Lcom/inveno/reportsdk/y;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/inveno/reportsdk/y;->a(I)V

    goto :goto_0
.end method

.method static b(Ljava/lang/String;J)V
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/inveno/reportsdk/ad;->a()Lcom/inveno/reportsdk/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/reportsdk/ad;->c()V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/inveno/reportsdk/m;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/reportsdk/l$j;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lcom/inveno/reportsdk/l$j;->a(J)Lcom/inveno/reportsdk/l$j;

    invoke-static {}, Lcom/inveno/reportsdk/n;->a()Lcom/inveno/reportsdk/n;

    move-result-object v1

    invoke-virtual {v0}, Lcom/inveno/reportsdk/l$j;->a()Lcom/inveno/reportsdk/l$i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/reportsdk/l$i;->a()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/inveno/reportsdk/n;->a(Lorg/json/JSONObject;)V

    sget-object v0, Lcom/inveno/reportsdk/m;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-static {}, Lcom/inveno/reportsdk/y;->a()Lcom/inveno/reportsdk/y;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/inveno/reportsdk/y;->a(I)V

    goto :goto_0
.end method
