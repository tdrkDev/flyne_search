.class public Lcom/inveno/se/adapi/config/DeviceConfig;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inveno/se/adapi/config/DeviceConfig$NewApiWrapper;
    }
.end annotation


# static fields
.field public static StatusBarHeight:I

.field public static country:Ljava/lang/String;

.field private static density:F

.field private static densityDPI:I

.field private static deviceConfig:Lcom/inveno/se/adapi/config/DeviceConfig;

.field private static h:I

.field public static imei:Ljava/lang/String;

.field public static mac:Ljava/lang/String;

.field public static net:Ljava/lang/String;

.field public static operator:Ljava/lang/String;

.field public static osVersion:Ljava/lang/String;

.field public static ua:Ljava/lang/String;

.field private static w:I


# instance fields
.field private device:Lcom/inveno/se/adapi/model/adreq/Device;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "WIFI"

    sput-object v0, Lcom/inveno/se/adapi/config/DeviceConfig;->net:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/inveno/se/adapi/config/DeviceConfig;->init(Landroid/content/Context;)V

    return-void
.end method

.method protected static execRootCmdSilent(Ljava/lang/String;)I
    .locals 4

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v1, "su"

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    new-instance v2, Ljava/io/DataOutputStream;

    check-cast v0, Ljava/io/OutputStream;

    invoke-direct {v2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    const-string v0, "exit\n"

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    invoke-virtual {v1}, Ljava/lang/Process;->exitValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static getCountry()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/inveno/se/adapi/config/DeviceConfig;->country:Ljava/lang/String;

    return-object v0
.end method

.method public static getDefaultUserAgentString(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Lcom/inveno/se/adapi/config/DeviceConfig$NewApiWrapper;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    const-class v0, Landroid/webkit/WebSettings;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Landroid/content/Context;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Landroid/webkit/WebView;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x2

    :try_start_1
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v0, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-object v3, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    const/4 v2, 0x0

    :try_start_2
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "http.agent"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    const/4 v2, 0x0

    :try_start_3
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
.end method

.method public static getDeviceHeight()I
    .locals 1

    sget v0, Lcom/inveno/se/adapi/config/DeviceConfig;->h:I

    return v0
.end method

.method public static getDeviceList(Landroid/content/Context;)V
    .locals 4

    const-string v0, "usb"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get device list  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inveno/se/tools/LogTools;->showLogR(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbDevice;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "device name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLogR(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static getDeviceWidth()I
    .locals 1

    sget v0, Lcom/inveno/se/adapi/config/DeviceConfig;->w:I

    return v0
.end method

.method public static getOsCountry(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getOsLanguage(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getOsLocaleLanguage(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static getRandomString(I)Ljava/lang/String;
    .locals 5

    const-string v1, "abcdefghijklmnopqrstuvwxyz0123456789"

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStatusBarHeight(Landroid/content/Context;)I
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.android.internal.R$dimen"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "status_bar_height"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected static haveRoot()Z
    .locals 2

    const-string v0, "echo test"

    invoke-static {v0}, Lcom/inveno/se/adapi/config/DeviceConfig;->execRootCmdSilent(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 12

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    new-instance v0, Lcom/inveno/se/adapi/model/adreq/Device;

    invoke-direct {v0}, Lcom/inveno/se/adapi/model/adreq/Device;-><init>()V

    iput-object v0, p0, Lcom/inveno/se/adapi/config/DeviceConfig;->device:Lcom/inveno/se/adapi/model/adreq/Device;

    new-instance v1, Lcom/inveno/se/adapi/model/adreq/DeviceId;

    invoke-direct {v1}, Lcom/inveno/se/adapi/model/adreq/DeviceId;-><init>()V

    sget-boolean v0, Ld/a;->c:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/inveno/se/tools/TelephonyManagerTools;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inveno/se/adapi/config/DeviceConfig;->imei:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/inveno/se/adapi/config/DeviceConfig;->imei:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/inveno/se/adapi/model/adreq/DeviceId;->setDevice_id(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Lcom/inveno/se/adapi/model/adreq/DeviceId;->setDevice_id_type(I)V

    invoke-virtual {v1, v9}, Lcom/inveno/se/adapi/model/adreq/DeviceId;->setHash_type(I)V

    new-instance v2, Lcom/inveno/se/adapi/model/adreq/DeviceId;

    invoke-direct {v2}, Lcom/inveno/se/adapi/model/adreq/DeviceId;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "android_id"

    invoke-static {v0, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/inveno/se/adapi/model/adreq/DeviceId;->setDevice_id(Ljava/lang/String;)V

    const/4 v0, 0x3

    invoke-virtual {v2, v0}, Lcom/inveno/se/adapi/model/adreq/DeviceId;->setDevice_id_type(I)V

    invoke-virtual {v2, v9}, Lcom/inveno/se/adapi/model/adreq/DeviceId;->setHash_type(I)V

    new-instance v4, Lcom/inveno/se/adapi/model/adreq/DeviceId;

    invoke-direct {v4}, Lcom/inveno/se/adapi/model/adreq/DeviceId;-><init>()V

    const-string v0, ""

    sget-boolean v5, Ld/a;->c:Z

    if-nez v5, :cond_1

    invoke-static {p1}, Lcom/inveno/se/tools/TelephonyManagerTools;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {v4, v0}, Lcom/inveno/se/adapi/model/adreq/DeviceId;->setDevice_id(Ljava/lang/String;)V

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/inveno/se/adapi/model/adreq/DeviceId;->setDevice_id_type(I)V

    invoke-virtual {v4, v9}, Lcom/inveno/se/adapi/model/adreq/DeviceId;->setHash_type(I)V

    new-instance v5, Lcom/inveno/se/adapi/model/adreq/DeviceId;

    invoke-direct {v5}, Lcom/inveno/se/adapi/model/adreq/DeviceId;-><init>()V

    sget-object v6, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/inveno/se/adapi/model/adreq/DeviceId;->setDevice_id(Ljava/lang/String;)V

    const/4 v7, 0x7

    invoke-virtual {v5, v7}, Lcom/inveno/se/adapi/model/adreq/DeviceId;->setDevice_id_type(I)V

    invoke-virtual {v5, v9}, Lcom/inveno/se/adapi/model/adreq/DeviceId;->setHash_type(I)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    sget-object v8, Lcom/inveno/se/adapi/config/DeviceConfig;->imei:Ljava/lang/String;

    invoke-static {v8}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-static {v3}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-static {v0}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-static {v6}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    iget-object v0, p0, Lcom/inveno/se/adapi/config/DeviceConfig;->device:Lcom/inveno/se/adapi/model/adreq/Device;

    invoke-virtual {v0, v7}, Lcom/inveno/se/adapi/model/adreq/Device;->setDevice_id(Ljava/util/List;)V

    iget-object v0, p0, Lcom/inveno/se/adapi/config/DeviceConfig;->device:Lcom/inveno/se/adapi/model/adreq/Device;

    invoke-virtual {v0, v11}, Lcom/inveno/se/adapi/model/adreq/Device;->setOs_type(I)V

    iget-object v0, p0, Lcom/inveno/se/adapi/config/DeviceConfig;->device:Lcom/inveno/se/adapi/model/adreq/Device;

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/inveno/se/adapi/model/adreq/Device;->setOs_version(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inveno/se/adapi/config/DeviceConfig;->device:Lcom/inveno/se/adapi/model/adreq/Device;

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/inveno/se/adapi/model/adreq/Device;->setBrand(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inveno/se/adapi/config/DeviceConfig;->device:Lcom/inveno/se/adapi/model/adreq/Device;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/inveno/se/adapi/model/adreq/Device;->setModel(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/inveno/se/adapi/config/DeviceConfig;->isPad(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/inveno/se/adapi/config/DeviceConfig;->device:Lcom/inveno/se/adapi/model/adreq/Device;

    invoke-virtual {v0, v10}, Lcom/inveno/se/adapi/model/adreq/Device;->setDevice_type(I)V

    :goto_0
    iget-object v0, p0, Lcom/inveno/se/adapi/config/DeviceConfig;->device:Lcom/inveno/se/adapi/model/adreq/Device;

    invoke-static {p1}, Lcom/inveno/se/adapi/config/DeviceConfig;->getOsLocaleLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inveno/se/adapi/model/adreq/Device;->setLanguage(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/inveno/se/adapi/config/DeviceConfig;->reinstallScreenSize(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/inveno/se/adapi/config/DeviceConfig;->device:Lcom/inveno/se/adapi/model/adreq/Device;

    sget v1, Lcom/inveno/se/adapi/config/DeviceConfig;->w:I

    invoke-virtual {v0, v1}, Lcom/inveno/se/adapi/model/adreq/Device;->setScreen_width(I)V

    iget-object v0, p0, Lcom/inveno/se/adapi/config/DeviceConfig;->device:Lcom/inveno/se/adapi/model/adreq/Device;

    sget v1, Lcom/inveno/se/adapi/config/DeviceConfig;->h:I

    invoke-virtual {v0, v1}, Lcom/inveno/se/adapi/model/adreq/Device;->setScreen_height(I)V

    iget-object v0, p0, Lcom/inveno/se/adapi/config/DeviceConfig;->device:Lcom/inveno/se/adapi/model/adreq/Device;

    sget v1, Lcom/inveno/se/adapi/config/DeviceConfig;->densityDPI:I

    int-to-double v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/inveno/se/adapi/model/adreq/Device;->setScreen_density(D)V

    sget v0, Lcom/inveno/se/adapi/config/DeviceConfig;->w:I

    sget v1, Lcom/inveno/se/adapi/config/DeviceConfig;->h:I

    if-le v0, v1, :cond_9

    iget-object v0, p0, Lcom/inveno/se/adapi/config/DeviceConfig;->device:Lcom/inveno/se/adapi/model/adreq/Device;

    invoke-virtual {v0, v11}, Lcom/inveno/se/adapi/model/adreq/Device;->setScreen_orientation(I)V

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "device = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/inveno/se/adapi/config/DeviceConfig;->device:Lcom/inveno/se/adapi/model/adreq/Device;

    invoke-virtual {v1}, Lcom/inveno/se/adapi/model/adreq/Device;->toJsonObject()Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/inveno/se/adapi/config/JsonUtil;->toJson(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLogR(Ljava/lang/String;)V

    sget-object v0, Lcom/inveno/se/adapi/config/DeviceConfig;->ua:Ljava/lang/String;

    invoke-static {v0}, Lcom/inveno/se/tools/StringTools;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p1}, Lcom/inveno/se/adapi/config/DeviceConfig;->getDefaultUserAgentString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inveno/se/adapi/config/DeviceConfig;->ua:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u83b7\u53d6user-agent\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/inveno/se/adapi/config/DeviceConfig;->ua:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLogB(Ljava/lang/String;)V

    :cond_6
    return-void

    :cond_7
    invoke-static {p1}, Lcom/inveno/se/adapi/config/DeviceConfig;->isPad(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/inveno/se/adapi/config/DeviceConfig;->device:Lcom/inveno/se/adapi/model/adreq/Device;

    invoke-virtual {v0, v11}, Lcom/inveno/se/adapi/model/adreq/Device;->setDevice_type(I)V

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/inveno/se/adapi/config/DeviceConfig;->device:Lcom/inveno/se/adapi/model/adreq/Device;

    invoke-virtual {v0, v9}, Lcom/inveno/se/adapi/model/adreq/Device;->setDevice_type(I)V

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/inveno/se/adapi/config/DeviceConfig;->device:Lcom/inveno/se/adapi/model/adreq/Device;

    invoke-virtual {v0, v10}, Lcom/inveno/se/adapi/model/adreq/Device;->setScreen_orientation(I)V

    goto :goto_1
.end method

.method public static initDeviceData(Landroid/content/Context;)V
    .locals 3

    sget-object v0, Lcom/inveno/se/adapi/config/DeviceConfig;->imei:Ljava/lang/String;

    invoke-static {v0}, Lcom/inveno/se/tools/StringTools;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/inveno/se/tools/TelephonyManagerTools;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inveno/se/adapi/config/DeviceConfig;->imei:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/inveno/se/adapi/config/DeviceConfig;->mac:Ljava/lang/String;

    invoke-static {v0}, Lcom/inveno/se/tools/StringTools;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/inveno/se/tools/TelephonyManagerTools;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inveno/se/adapi/config/DeviceConfig;->mac:Ljava/lang/String;

    :cond_1
    sget-object v0, Lcom/inveno/se/adapi/config/DeviceConfig;->operator:Ljava/lang/String;

    invoke-static {v0}, Lcom/inveno/se/tools/StringTools;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/inveno/se/tools/TelephonyManagerTools;->getProvidersName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inveno/se/adapi/config/DeviceConfig;->operator:Ljava/lang/String;

    :cond_2
    sget-object v0, Lcom/inveno/se/adapi/config/DeviceConfig;->net:Ljava/lang/String;

    invoke-static {v0}, Lcom/inveno/se/tools/StringTools;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0}, Lcom/inveno/se/tools/NetWorkUtil;->getNetWorkType(Landroid/content/Context;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u83b7\u53d6\u7f51\u7edc\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/inveno/se/adapi/config/DeviceConfig;->net:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLogB(Ljava/lang/String;)V

    :cond_3
    sget v0, Lcom/inveno/se/adapi/config/DeviceConfig;->StatusBarHeight:I

    if-nez v0, :cond_4

    invoke-static {p0}, Lcom/inveno/se/adapi/config/DeviceConfig;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/inveno/se/adapi/config/DeviceConfig;->StatusBarHeight:I

    :cond_4
    sget-object v0, Lcom/inveno/se/adapi/config/DeviceConfig;->country:Ljava/lang/String;

    invoke-static {v0}, Lcom/inveno/se/tools/StringTools;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p0}, Lcom/inveno/se/adapi/config/DeviceConfig;->getOsLocaleLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inveno/se/adapi/config/DeviceConfig;->country:Ljava/lang/String;

    const-string v0, "deviceinfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "country:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/inveno/se/adapi/config/DeviceConfig;->country:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void

    :pswitch_0
    const-string v0, "2G"

    sput-object v0, Lcom/inveno/se/adapi/config/DeviceConfig;->net:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    const-string v0, "3G"

    sput-object v0, Lcom/inveno/se/adapi/config/DeviceConfig;->net:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    const-string v0, "WIFI"

    sput-object v0, Lcom/inveno/se/adapi/config/DeviceConfig;->net:Ljava/lang/String;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static initScreenSize(Landroid/content/Context;)V
    .locals 2

    sget v0, Lcom/inveno/se/adapi/config/DeviceConfig;->w:I

    if-eqz v0, :cond_0

    sget v0, Lcom/inveno/se/adapi/config/DeviceConfig;->h:I

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u624b\u673a\u5206\u8fa8\u7387w\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/inveno/se/adapi/config/DeviceConfig;->w:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  h:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/inveno/se/adapi/config/DeviceConfig;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLogB(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/inveno/se/adapi/config/DeviceConfig;->reinstallScreenSize(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method public static isPad(Landroid/content/Context;)Z
    .locals 6

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    int-to-float v1, v1

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    iget v2, v1, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr v0, v2

    float-to-double v2, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    iget v1, v1, Landroid/util/DisplayMetrics;->ydpi:F

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4020000000000000L    # 8.0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isRoot()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/bin/su"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/File;

    const-string v2, "/system/xbin/su"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRoot = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inveno/se/tools/LogTools;->showLogR(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public static declared-synchronized newInstance(Landroid/content/Context;)Lcom/inveno/se/adapi/config/DeviceConfig;
    .locals 2

    const-class v1, Lcom/inveno/se/adapi/config/DeviceConfig;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/inveno/se/adapi/config/DeviceConfig;->deviceConfig:Lcom/inveno/se/adapi/config/DeviceConfig;

    if-nez v0, :cond_0

    new-instance v0, Lcom/inveno/se/adapi/config/DeviceConfig;

    invoke-direct {v0, p0}, Lcom/inveno/se/adapi/config/DeviceConfig;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/inveno/se/adapi/config/DeviceConfig;->deviceConfig:Lcom/inveno/se/adapi/config/DeviceConfig;

    :cond_0
    sget-object v0, Lcom/inveno/se/adapi/config/DeviceConfig;->deviceConfig:Lcom/inveno/se/adapi/config/DeviceConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static reinstallScreenSize(Landroid/content/Context;)V
    .locals 2

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v0, Lcom/inveno/se/adapi/config/DeviceConfig;->w:I

    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v0, Lcom/inveno/se/adapi/config/DeviceConfig;->h:I

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/inveno/se/adapi/config/DeviceConfig;->density:F

    iget v0, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    sput v0, Lcom/inveno/se/adapi/config/DeviceConfig;->densityDPI:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reinstallScreenSize \u624b\u673a\u5206\u8fa8\u7387w\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/inveno/se/adapi/config/DeviceConfig;->w:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  h:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/inveno/se/adapi/config/DeviceConfig;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLogB(Ljava/lang/String;)V

    return-void
.end method

.method public static resetLanguage(Landroid/content/Context;)V
    .locals 2

    invoke-static {p0}, Lcom/inveno/se/adapi/config/DeviceConfig;->getOsLocaleLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sput-object v0, Lcom/inveno/se/adapi/config/DeviceConfig;->country:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static resetNetStatus(Landroid/content/Context;)V
    .locals 2

    invoke-static {p0}, Lcom/inveno/se/tools/NetWorkUtil;->getNetWorkType(Landroid/content/Context;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u7f51\u7edc\u53d1\u751f\u53d8\u5316\uff0c\u91cd\u65b0\u83b7\u53d6\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/inveno/se/adapi/config/DeviceConfig;->net:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLogB(Ljava/lang/String;)V

    return-void

    :pswitch_0
    const-string v0, "2G"

    sput-object v0, Lcom/inveno/se/adapi/config/DeviceConfig;->net:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    const-string v0, "3G"

    sput-object v0, Lcom/inveno/se/adapi/config/DeviceConfig;->net:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    const-string v0, "WIFI"

    sput-object v0, Lcom/inveno/se/adapi/config/DeviceConfig;->net:Ljava/lang/String;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public getDevice()Lcom/inveno/se/adapi/model/adreq/Device;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/adapi/config/DeviceConfig;->device:Lcom/inveno/se/adapi/model/adreq/Device;

    return-object v0
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/inveno/se/adapi/config/DeviceConfig;->deviceConfig:Lcom/inveno/se/adapi/config/DeviceConfig;

    iput-object v0, p0, Lcom/inveno/se/adapi/config/DeviceConfig;->device:Lcom/inveno/se/adapi/model/adreq/Device;

    return-void
.end method

.method public setDevice(Lcom/inveno/se/adapi/model/adreq/Device;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/adapi/config/DeviceConfig;->device:Lcom/inveno/se/adapi/model/adreq/Device;

    return-void
.end method
