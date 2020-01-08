.class public Lcom/inveno/se/adapi/config/NetWorkConfig;
.super Ljava/lang/Object;


# static fields
.field private static networkConfig:Lcom/inveno/se/adapi/config/NetWorkConfig;


# instance fields
.field private context:Landroid/content/Context;

.field private networkData:Lcom/inveno/se/adapi/model/adreq/Network;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/inveno/se/adapi/config/NetWorkConfig;->init(Landroid/content/Context;)V

    return-void
.end method

.method private getCellInfo(Landroid/content/Context;)Lcom/inveno/se/adapi/model/adreq/SCell;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v4, 0x3

    new-instance v2, Lcom/inveno/se/adapi/model/adreq/SCell;

    invoke-direct {v2}, Lcom/inveno/se/adapi/model/adreq/SCell;-><init>()V

    sget-boolean v0, Ld/a;->b:Z

    if-eqz v0, :cond_0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v1

    check-cast v1, Landroid/telephony/gsm/GsmCellLocation;

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "\u83b7\u53d6\u57fa\u7ad9\u4fe1\u606f\u5931\u8d25"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v4

    invoke-virtual {v1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v1

    invoke-virtual {v2, v3}, Lcom/inveno/se/adapi/model/adreq/SCell;->setMCC(I)V

    invoke-virtual {v2, v0}, Lcom/inveno/se/adapi/model/adreq/SCell;->setMNC(I)V

    invoke-virtual {v2, v1}, Lcom/inveno/se/adapi/model/adreq/SCell;->setLAC(I)V

    invoke-virtual {v2, v4}, Lcom/inveno/se/adapi/model/adreq/SCell;->setCID(I)V

    move-object v0, v2

    goto :goto_0
.end method

.method public static getNetworkOperator(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    sget-boolean v0, Ld/a;->c:Z

    if-eqz v0, :cond_1

    const-string v0, "unkown"

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/tools/StringTools;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "unkown"

    goto :goto_0
.end method

.method public static getNetworkType(Landroid/content/Context;)I
    .locals 7

    const/4 v1, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const-string v4, ""

    sget-boolean v0, Ld/a;->c:Z

    if-nez v0, :cond_0

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, v3, :cond_2

    const-string v1, "WIFI"

    move v2, v3

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Network Type : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", networkTypeNumber : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLogR(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Network getSubtypeName : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/inveno/se/tools/LogTools;->showLogR(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    const-string v4, "TD-SCDMA"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "WCDMA"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "CDMA2000"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    const-string v0, "3G"

    move v6, v1

    move-object v1, v0

    move v0, v6

    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Network getSubtype : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/inveno/se/tools/LogTools;->showLogR(Ljava/lang/String;)V

    move v2, v0

    goto/16 :goto_1

    :pswitch_0
    const-string v1, "2G"

    const/4 v0, 0x2

    goto :goto_2

    :pswitch_1
    const-string v0, "3G"

    move v6, v1

    move-object v1, v0

    move v0, v6

    goto :goto_2

    :pswitch_2
    const-string v1, "4G"

    const/4 v0, 0x4

    goto :goto_2

    :cond_4
    move-object v1, v0

    move v0, v2

    goto :goto_2

    :cond_5
    move-object v1, v4

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private getWifiList(Landroid/content/Context;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/inveno/se/adapi/model/adreq/WiFiAp;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sget-boolean v0, Ld/a;->c:Z

    if-eqz v0, :cond_0

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v5

    if-eqz v4, :cond_3

    move v1, v2

    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    new-instance v6, Lcom/inveno/se/adapi/model/adreq/WiFiAp;

    invoke-direct {v6}, Lcom/inveno/se/adapi/model/adreq/WiFiAp;-><init>()V

    iget-object v7, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/inveno/se/adapi/model/adreq/WiFiAp;->setMac(Ljava/lang/String;)V

    if-eqz v5, :cond_2

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/inveno/se/adapi/model/adreq/WiFiAp;->setIs_connected(Ljava/lang/Boolean;)V

    :goto_2
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/inveno/se/adapi/model/adreq/WiFiAp;->setIs_connected(Ljava/lang/Boolean;)V

    goto :goto_2

    :cond_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/inveno/se/adapi/model/adreq/WiFiAp;->setIs_connected(Ljava/lang/Boolean;)V

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wifiAps = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v3}, Lcom/inveno/se/adapi/model/adreq/WiFiAp;->toJsonArray(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Lcom/inveno/se/adapi/config/JsonUtil;->toJson(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLogR(Ljava/lang/String;)V

    move-object v0, v3

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 4

    iput-object p1, p0, Lcom/inveno/se/adapi/config/NetWorkConfig;->context:Landroid/content/Context;

    new-instance v0, Lcom/inveno/se/adapi/model/adreq/Network;

    invoke-direct {v0}, Lcom/inveno/se/adapi/model/adreq/Network;-><init>()V

    iput-object v0, p0, Lcom/inveno/se/adapi/config/NetWorkConfig;->networkData:Lcom/inveno/se/adapi/model/adreq/Network;

    invoke-virtual {p0}, Lcom/inveno/se/adapi/config/NetWorkConfig;->getLocalIpAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inveno/se/adapi/config/NetWorkConfig;->networkData:Lcom/inveno/se/adapi/model/adreq/Network;

    invoke-virtual {p0}, Lcom/inveno/se/adapi/config/NetWorkConfig;->getLocalIpAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inveno/se/adapi/model/adreq/Network;->setIp(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/inveno/se/adapi/config/NetWorkConfig;->networkData:Lcom/inveno/se/adapi/model/adreq/Network;

    invoke-static {p1}, Lcom/inveno/se/adapi/config/NetWorkConfig;->getNetworkType(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/inveno/se/adapi/model/adreq/Network;->setNetwork_type(I)V

    iget-object v0, p0, Lcom/inveno/se/adapi/config/NetWorkConfig;->networkData:Lcom/inveno/se/adapi/model/adreq/Network;

    invoke-static {p1}, Lcom/inveno/se/adapi/config/NetWorkConfig;->getNetworkOperator(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inveno/se/adapi/model/adreq/Network;->setCarrier_id(Ljava/lang/String;)V

    new-instance v0, Lcom/inveno/se/adapi/model/adreq/SCell;

    invoke-direct {v0}, Lcom/inveno/se/adapi/model/adreq/SCell;-><init>()V

    :try_start_0
    invoke-direct {p0, p1}, Lcom/inveno/se/adapi/config/NetWorkConfig;->getCellInfo(Landroid/content/Context;)Lcom/inveno/se/adapi/model/adreq/SCell;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SCell Data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/inveno/se/adapi/model/adreq/SCell;->toJsonObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/inveno/se/adapi/config/JsonUtil;->toJson(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inveno/se/tools/LogTools;->showLogR(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/inveno/se/adapi/config/NetWorkConfig;->networkData:Lcom/inveno/se/adapi/model/adreq/Network;

    invoke-virtual {v1, v0}, Lcom/inveno/se/adapi/model/adreq/Network;->setCellular_id(Lcom/inveno/se/adapi/model/adreq/SCell;)V

    invoke-direct {p0, p1}, Lcom/inveno/se/adapi/config/NetWorkConfig;->getWifiList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/inveno/se/adapi/config/NetWorkConfig;->networkData:Lcom/inveno/se/adapi/model/adreq/Network;

    invoke-direct {p0, p1}, Lcom/inveno/se/adapi/config/NetWorkConfig;->getWifiList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inveno/se/adapi/model/adreq/Network;->setWifi_aps(Ljava/util/List;)V

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "networkData = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/inveno/se/adapi/config/NetWorkConfig;->networkData:Lcom/inveno/se/adapi/model/adreq/Network;

    invoke-virtual {v1}, Lcom/inveno/se/adapi/model/adreq/Network;->toJsonObject()Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/inveno/se/adapi/config/JsonUtil;->toJson(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLogR(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inveno/se/tools/LogTools;->showLogA(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static declared-synchronized newInstance(Landroid/content/Context;)Lcom/inveno/se/adapi/config/NetWorkConfig;
    .locals 2

    const-class v1, Lcom/inveno/se/adapi/config/NetWorkConfig;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/inveno/se/adapi/config/NetWorkConfig;->networkConfig:Lcom/inveno/se/adapi/config/NetWorkConfig;

    if-nez v0, :cond_0

    new-instance v0, Lcom/inveno/se/adapi/config/NetWorkConfig;

    invoke-direct {v0, p0}, Lcom/inveno/se/adapi/config/NetWorkConfig;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/inveno/se/adapi/config/NetWorkConfig;->networkConfig:Lcom/inveno/se/adapi/config/NetWorkConfig;

    :cond_0
    sget-object v0, Lcom/inveno/se/adapi/config/NetWorkConfig;->networkConfig:Lcom/inveno/se/adapi/config/NetWorkConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getLocalIpAddress()Ljava/lang/String;
    .locals 5

    const-string v1, ""

    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv4Address(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u83b7\u53d6\u5230Ip\u5730\u5740\u4e86\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inveno/se/tools/LogTools;->showLogR(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-object v0

    :cond_2
    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_1
    const-string v1, "ip is error"

    invoke-static {v1}, Lcom/inveno/se/tools/LogTools;->showLogR(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public getNetworkData()Lcom/inveno/se/adapi/model/adreq/Network;
    .locals 2

    invoke-virtual {p0}, Lcom/inveno/se/adapi/config/NetWorkConfig;->getLocalIpAddress()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/inveno/se/adapi/config/NetWorkConfig;->networkData:Lcom/inveno/se/adapi/model/adreq/Network;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/inveno/se/adapi/config/NetWorkConfig;->networkData:Lcom/inveno/se/adapi/model/adreq/Network;

    invoke-virtual {v1, v0}, Lcom/inveno/se/adapi/model/adreq/Network;->setIp(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/inveno/se/adapi/config/NetWorkConfig;->networkData:Lcom/inveno/se/adapi/model/adreq/Network;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inveno/se/adapi/config/NetWorkConfig;->networkData:Lcom/inveno/se/adapi/model/adreq/Network;

    iget-object v1, p0, Lcom/inveno/se/adapi/config/NetWorkConfig;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/inveno/se/adapi/config/NetWorkConfig;->getNetworkType(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/inveno/se/adapi/model/adreq/Network;->setNetwork_type(I)V

    :cond_1
    iget-object v0, p0, Lcom/inveno/se/adapi/config/NetWorkConfig;->networkData:Lcom/inveno/se/adapi/model/adreq/Network;

    return-object v0
.end method

.method public release()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/inveno/se/adapi/config/NetWorkConfig;->networkData:Lcom/inveno/se/adapi/model/adreq/Network;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inveno/se/adapi/config/NetWorkConfig;->networkData:Lcom/inveno/se/adapi/model/adreq/Network;

    invoke-virtual {v0}, Lcom/inveno/se/adapi/model/adreq/Network;->getWifi_aps()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inveno/se/adapi/config/NetWorkConfig;->networkData:Lcom/inveno/se/adapi/model/adreq/Network;

    invoke-virtual {v0}, Lcom/inveno/se/adapi/model/adreq/Network;->getWifi_aps()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    iput-object v1, p0, Lcom/inveno/se/adapi/config/NetWorkConfig;->networkData:Lcom/inveno/se/adapi/model/adreq/Network;

    sput-object v1, Lcom/inveno/se/adapi/config/NetWorkConfig;->networkConfig:Lcom/inveno/se/adapi/config/NetWorkConfig;

    iput-object v1, p0, Lcom/inveno/se/adapi/config/NetWorkConfig;->context:Landroid/content/Context;

    return-void
.end method

.method public setNetworkData(Lcom/inveno/se/adapi/model/adreq/Network;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/adapi/config/NetWorkConfig;->networkData:Lcom/inveno/se/adapi/model/adreq/Network;

    return-void
.end method
