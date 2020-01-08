.class public Lcom/meizu/cloud/pushsdk/platform/PushIdEncryptUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "PushIdEncryptUtils"

.field private static final keyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static secretKeyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    invoke-static {}, Lcom/meizu/cloud/pushsdk/platform/PushIdEncryptUtils;->initKeyMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/meizu/cloud/pushsdk/platform/PushIdEncryptUtils;->secretKeyMap:Ljava/util/Map;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/meizu/cloud/pushsdk/platform/PushIdEncryptUtils;->secretKeyMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/meizu/cloud/pushsdk/platform/PushIdEncryptUtils;->keyList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decryptPushId(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v1, 0x3

    const/4 v3, 0x0

    .line 104
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    :cond_0
    :goto_0
    return-object p0

    .line 109
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 110
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 111
    sget-object v1, Lcom/meizu/cloud/pushsdk/platform/PushIdEncryptUtils;->secretKeyMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    sget-object v1, Lcom/meizu/cloud/pushsdk/platform/PushIdEncryptUtils;->secretKeyMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 113
    const/4 v1, 0x3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 115
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    new-array v5, v2, [C

    move v2, v3

    move v4, v3

    .line 116
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    if-ge v4, v6, :cond_3

    .line 117
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v2, v6, :cond_2

    move v2, v3

    .line 120
    :cond_2
    mul-int/lit8 v6, v4, 0x2

    mul-int/lit8 v7, v4, 0x2

    add-int/lit8 v7, v7, 0x2

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-char v6, v6

    .line 121
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    xor-int/2addr v6, v7

    int-to-char v6, v6

    aput-char v6, v5, v4

    .line 116
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 123
    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v2

    const-string v3, "iso-8859-1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object p0, v0

    goto :goto_0

    .line 126
    :catch_0
    move-exception v0

    move-object v0, p0

    .line 127
    :goto_2
    const-string v1, "PushIdEncryptUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid pushId encryption "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/meizu/cloud/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 126
    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_2
.end method

.method private static encryptPushId(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 69
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    const-string v4, ""

    .line 94
    :cond_0
    return-object v4

    .line 73
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sget-object v1, Lcom/meizu/cloud/pushsdk/platform/PushIdEncryptUtils;->secretKeyMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    rem-int/2addr v0, v1

    .line 74
    sget-object v1, Lcom/meizu/cloud/pushsdk/platform/PushIdEncryptUtils;->keyList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 75
    sget-object v1, Lcom/meizu/cloud/pushsdk/platform/PushIdEncryptUtils;->secretKeyMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 78
    :try_start_0
    new-instance v2, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-virtual {p0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    const-string v5, "iso-8859-1"

    invoke-direct {v2, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v2

    .line 82
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    new-array v5, v2, [C

    move v2, v3

    move-object v4, v0

    move v0, v3

    .line 83
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 84
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v0, v6, :cond_2

    move v0, v3

    .line 86
    :cond_2
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    xor-int/2addr v6, v7

    int-to-char v6, v6

    aput-char v6, v5, v2

    .line 87
    aget-char v6, v5, v2

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    .line 88
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3

    .line 89
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "0"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 83
    :goto_2
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 79
    :catch_0
    move-exception v2

    .line 80
    const-string v4, "PushIdEncryptUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "encryptPushId getBytes error "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/meizu/cloud/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 91
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2
.end method

.method private static initKeyMap()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    sget-object v0, Lcom/meizu/cloud/pushsdk/platform/PushIdEncryptUtils;->secretKeyMap:Ljava/util/Map;

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/platform/PushIdEncryptUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 32
    const-class v1, Lcom/meizu/cloud/pushsdk/platform/PushIdEncryptUtils;

    monitor-enter v1

    .line 33
    :try_start_0
    sget-object v0, Lcom/meizu/cloud/pushsdk/platform/PushIdEncryptUtils;->secretKeyMap:Ljava/util/Map;

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/platform/PushIdEncryptUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Lcom/meizu/cloud/pushsdk/platform/PushIdEncryptUtils;->secretKeyMap:Ljava/util/Map;

    .line 35
    sget-object v0, Lcom/meizu/cloud/pushsdk/platform/PushIdEncryptUtils;->secretKeyMap:Ljava/util/Map;

    const-string v2, "UCI"

    const-string v3, "v9tC0Myz1MGwXRFy"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcom/meizu/cloud/pushsdk/platform/PushIdEncryptUtils;->secretKeyMap:Ljava/util/Map;

    const-string v2, "G3G"

    const-string v3, "XAsFqhhaf4gKpmAi"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lcom/meizu/cloud/pushsdk/platform/PushIdEncryptUtils;->secretKeyMap:Ljava/util/Map;

    const-string v2, "V5R"

    const-string v3, "cOqH18NXwBtZVkvz"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/meizu/cloud/pushsdk/platform/PushIdEncryptUtils;->secretKeyMap:Ljava/util/Map;

    const-string v2, "0XC"

    const-string v3, "IgSEKZ3Ea6Pm4woS"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/meizu/cloud/pushsdk/platform/PushIdEncryptUtils;->secretKeyMap:Ljava/util/Map;

    const-string v2, "Z9K"

    const-string v3, "pH6J9DMPNgqQp8m8"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/meizu/cloud/pushsdk/platform/PushIdEncryptUtils;->secretKeyMap:Ljava/util/Map;

    const-string v2, "EIM"

    const-string v3, "K11Rs9HAKRXeNwq8"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/meizu/cloud/pushsdk/platform/PushIdEncryptUtils;->secretKeyMap:Ljava/util/Map;

    const-string v2, "SO7"

    const-string v3, "T8LquL1DvwVcogiU"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/meizu/cloud/pushsdk/platform/PushIdEncryptUtils;->secretKeyMap:Ljava/util/Map;

    const-string v2, "DDI"

    const-string v3, "d02F6ttOtV05MYCQ"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/meizu/cloud/pushsdk/platform/PushIdEncryptUtils;->secretKeyMap:Ljava/util/Map;

    const-string v2, "ULY"

    const-string v3, "ToZZIhAywnUfHShN"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/meizu/cloud/pushsdk/platform/PushIdEncryptUtils;->secretKeyMap:Ljava/util/Map;

    const-string v2, "0EV"

    const-string v3, "r5D5RRwQhfV0AYLb"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/meizu/cloud/pushsdk/platform/PushIdEncryptUtils;->secretKeyMap:Ljava/util/Map;

    const-string v2, "N6A"

    const-string v3, "QAtSBFcXnQoUgHO2"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/meizu/cloud/pushsdk/platform/PushIdEncryptUtils;->secretKeyMap:Ljava/util/Map;

    const-string v2, "S5Q"

    const-string v3, "sDWLrZINnum227am"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/meizu/cloud/pushsdk/platform/PushIdEncryptUtils;->secretKeyMap:Ljava/util/Map;

    const-string v2, "RA5"

    const-string v3, "4Uq3Ruxo1FTBdHQE"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/meizu/cloud/pushsdk/platform/PushIdEncryptUtils;->secretKeyMap:Ljava/util/Map;

    const-string v2, "J04"

    const-string v3, "N5hViUTdLCpN59H0"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/meizu/cloud/pushsdk/platform/PushIdEncryptUtils;->secretKeyMap:Ljava/util/Map;

    const-string v2, "B68"

    const-string v3, "EY3sH1KKtalg5ZaT"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/meizu/cloud/pushsdk/platform/PushIdEncryptUtils;->secretKeyMap:Ljava/util/Map;

    const-string v2, "9IW"

    const-string v3, "q1u0MiuFyim4pCYY"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/meizu/cloud/pushsdk/platform/PushIdEncryptUtils;->secretKeyMap:Ljava/util/Map;

    const-string v2, "UU3"

    const-string v3, "syLnkkd8AqNykVV7"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/meizu/cloud/pushsdk/platform/PushIdEncryptUtils;->secretKeyMap:Ljava/util/Map;

    const-string v2, "Z49"

    const-string v3, "V00FiWu124yE91sH"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/meizu/cloud/pushsdk/platform/PushIdEncryptUtils;->secretKeyMap:Ljava/util/Map;

    const-string v2, "BNA"

    const-string v3, "rPP7AK1VWpKEry3p"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/meizu/cloud/pushsdk/platform/PushIdEncryptUtils;->secretKeyMap:Ljava/util/Map;

    const-string v2, "WXG"

    const-string v3, "om8w5ahkJJgpAH9v"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    :cond_1
    sget-object v0, Lcom/meizu/cloud/pushsdk/platform/PushIdEncryptUtils;->secretKeyMap:Ljava/util/Map;

    return-object v0

    .line 56
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static isEmpty(Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 134
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
