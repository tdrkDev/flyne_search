.class public Lcn/com/xy/sms/sdk/ui/util/XYServiceUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEFAULT_ITEM_COUNT:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static filterButtonData(Lorg/json/JSONObject;Ljava/util/HashMap;)Lorg/json/JSONArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .prologue
    .line 18
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcn/com/xy/sms/sdk/ui/util/XYServiceUtil;->filterButtonData(Lorg/json/JSONObject;Ljava/util/HashMap;I)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public static filterButtonData(Lorg/json/JSONObject;Ljava/util/HashMap;I)Lorg/json/JSONArray;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 22
    if-nez p1, :cond_0

    move-object v0, v1

    .line 46
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v0, "NEW_ADACTION"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 27
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 28
    goto :goto_0

    .line 33
    :cond_1
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    const-string v0, ""

    .line 40
    if-eqz p0, :cond_2

    .line 41
    const-string v0, "view_group_value"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    :cond_2
    invoke-static {v2, v0, p2}, Lcn/com/xy/sms/sdk/ui/util/XYServiceUtil;->getAdAction(Lorg/json/JSONArray;Ljava/lang/String;I)Lorg/json/JSONArray;

    move-result-object v0

    goto :goto_0

    .line 34
    :catch_0
    move-exception v0

    .line 35
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v1

    .line 36
    goto :goto_0
.end method

.method private static getAdAction(Lorg/json/JSONArray;Ljava/lang/String;I)Lorg/json/JSONArray;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 50
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    move-object v0, v2

    .line 66
    :goto_0
    return-object v0

    .line 54
    :cond_1
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 56
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 57
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3, p1, v2}, Lcn/com/xy/sms/sdk/ui/util/XYServiceUtil;->getButtonItem(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v3

    .line 58
    if-eqz v3, :cond_2

    .line 59
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 62
    :cond_2
    if-lez p2, :cond_4

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lt v3, p2, :cond_4

    :cond_3
    move-object v0, v1

    .line 66
    goto :goto_0

    .line 56
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static getButtonItem(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 70
    if-nez p0, :cond_1

    move-object p0, v0

    .line 77
    :cond_0
    :goto_0
    return-object p0

    .line 72
    :cond_1
    const-string v1, "groupValue"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 74
    invoke-static {p1}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object p0, v0

    .line 75
    goto :goto_0
.end method
