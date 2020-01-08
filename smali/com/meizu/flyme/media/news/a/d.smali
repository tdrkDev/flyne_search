.class public Lcom/meizu/flyme/media/news/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "MissingPermission"
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/Boolean;

.field private static f:Ljava/lang/String;


# direct methods
.method public static a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 39
    sget-object v0, Lcom/meizu/flyme/media/news/a/d;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 41
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    .line 42
    invoke-static {}, Landroid/os/Build;->getSerial()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meizu/flyme/media/news/a/d;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :cond_0
    :goto_0
    sget-object v0, Lcom/meizu/flyme/media/news/a/d;->a:Ljava/lang/String;

    return-object v0

    .line 44
    :cond_1
    :try_start_1
    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    sput-object v0, Lcom/meizu/flyme/media/news/a/d;->a:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 46
    :catch_0
    move-exception v0

    .line 47
    const-string v0, ""

    sput-object v0, Lcom/meizu/flyme/media/news/a/d;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method public static a(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit16 v1, p0, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 131
    const-string v0, ""

    .line 132
    invoke-static {p0}, Lcom/meizu/flyme/media/news/a/h;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    invoke-static {p0}, Lcom/meizu/flyme/media/news/a/h;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    invoke-static {p0}, Lcom/meizu/flyme/media/news/a/d;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 139
    :cond_0
    :goto_0
    return-object v0

    .line 136
    :cond_1
    invoke-static {}, Lcom/meizu/flyme/media/news/a/d;->g()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 106
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Lcom/meizu/flyme/media/news/helper/d;->c(Ljava/lang/String;)Lcom/meizu/flyme/media/news/helper/d;

    move-result-object v0

    const-string v1, "get"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/meizu/flyme/media/news/helper/d;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static b()Ljava/lang/String;
    .locals 3

    .prologue
    .line 60
    sget-object v0, Lcom/meizu/flyme/media/news/a/d;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 61
    const-string v0, "android.telephony.MzTelephonyManager"

    invoke-static {v0}, Lcom/meizu/flyme/media/news/helper/d;->c(Ljava/lang/String;)Lcom/meizu/flyme/media/news/helper/d;

    move-result-object v0

    const-string v1, "getDeviceId"

    .line 62
    invoke-virtual {v0, v1}, Lcom/meizu/flyme/media/news/helper/d;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 63
    if-eqz v0, :cond_1

    .line 64
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meizu/flyme/media/news/a/d;->b:Ljava/lang/String;

    .line 85
    :cond_0
    :goto_0
    sget-object v0, Lcom/meizu/flyme/media/news/a/d;->b:Ljava/lang/String;

    return-object v0

    .line 66
    :cond_1
    invoke-static {}, Lcom/meizu/flyme/media/news/lite/f;->h()Lcom/meizu/flyme/media/news/lite/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/flyme/media/news/lite/f;->a()Landroid/content/Context;

    move-result-object v0

    .line 67
    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 68
    if-eqz v0, :cond_4

    .line 70
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_2

    .line 71
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meizu/flyme/media/news/a/d;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    const-string v0, ""

    sput-object v0, Lcom/meizu/flyme/media/news/a/d;->b:Ljava/lang/String;

    goto :goto_0

    .line 72
    :cond_2
    :try_start_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_3

    .line 73
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getDeviceId(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meizu/flyme/media/news/a/d;->b:Ljava/lang/String;

    goto :goto_0

    .line 75
    :cond_3
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meizu/flyme/media/news/a/d;->b:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 81
    :cond_4
    const-string v0, ""

    sput-object v0, Lcom/meizu/flyme/media/news/a/d;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 160
    const-string v1, ""

    .line 161
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 162
    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 164
    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v0

    invoke-static {v0}, Lcom/meizu/flyme/media/news/a/d;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 168
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public static c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "imei="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/meizu/flyme/media/news/a/d;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&sn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/meizu/flyme/media/news/a/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 94
    invoke-static {v0}, Lcom/meizu/flyme/media/news/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/flyme/media/news/a/k;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 95
    return-object v0
.end method

.method public static d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 99
    sget-object v0, Lcom/meizu/flyme/media/news/a/d;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 100
    const-string v0, "ro.build.mask.id"

    invoke-static {v0}, Lcom/meizu/flyme/media/news/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/meizu/flyme/media/news/a/k;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/meizu/flyme/media/news/a/d;->c:Ljava/lang/String;

    .line 102
    :cond_0
    sget-object v0, Lcom/meizu/flyme/media/news/a/d;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 110
    sget-object v0, Lcom/meizu/flyme/media/news/a/d;->d:Ljava/lang/String;

    if-nez v0, :cond_2

    invoke-static {}, Lcom/meizu/flyme/media/news/a/d;->f()Z

    move-result v0

    if-nez v0, :cond_2

    .line 111
    const-string v0, "android.os.BuildExt"

    invoke-static {v0}, Lcom/meizu/flyme/media/news/helper/d;->c(Ljava/lang/String;)Lcom/meizu/flyme/media/news/helper/d;

    move-result-object v0

    const-string v1, "MZ_MODEL"

    .line 112
    invoke-virtual {v0, v1}, Lcom/meizu/flyme/media/news/helper/d;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 113
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "unknown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 114
    :cond_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 116
    :cond_1
    invoke-static {v0}, Lcom/meizu/flyme/media/news/a/k;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/meizu/flyme/media/news/a/d;->d:Ljava/lang/String;

    .line 118
    :cond_2
    sget-object v0, Lcom/meizu/flyme/media/news/a/d;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static f()Z
    .locals 2

    .prologue
    .line 122
    sget-object v0, Lcom/meizu/flyme/media/news/a/d;->e:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 123
    const-string v0, "android.os.BuildExt"

    invoke-static {v0}, Lcom/meizu/flyme/media/news/helper/d;->c(Ljava/lang/String;)Lcom/meizu/flyme/media/news/helper/d;

    move-result-object v0

    const-string v1, "isFlymeRom"

    .line 124
    invoke-virtual {v0, v1}, Lcom/meizu/flyme/media/news/helper/d;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 125
    if-eqz v0, :cond_1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/meizu/flyme/media/news/a/d;->e:Ljava/lang/Boolean;

    .line 127
    :cond_0
    sget-object v0, Lcom/meizu/flyme/media/news/a/d;->e:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 125
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static g()Ljava/lang/String;
    .locals 4

    .prologue
    .line 144
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 145
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    .line 146
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 148
    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v3

    if-nez v3, :cond_1

    .line 149
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 156
    :goto_0
    return-object v0

    .line 153
    :catch_0
    move-exception v0

    .line 154
    const-string v1, "getGprsIpAddress"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/meizu/flyme/media/news/helper/a;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static h()Ljava/lang/String;
    .locals 4

    .prologue
    .line 177
    sget-object v0, Lcom/meizu/flyme/media/news/a/d;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 178
    invoke-static {}, Lcom/meizu/flyme/media/news/lite/f;->h()Lcom/meizu/flyme/media/news/lite/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/flyme/media/news/lite/f;->a()Landroid/content/Context;

    move-result-object v0

    .line 180
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meizu/flyme/media/news/a/d;->f:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :cond_0
    :goto_0
    sget-object v0, Lcom/meizu/flyme/media/news/a/d;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/meizu/flyme/media/news/a/k;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 181
    :catch_0
    move-exception v0

    .line 182
    const-string v1, "NewsDeviceUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOpenUDID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/meizu/flyme/media/news/helper/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
