.class public Lcn/com/xy/sms/sdk/net/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static a:Ljava/lang/String;

.field public static readTimeout:I

.field public static timeoutConnection:I


# instance fields
.field public callBack:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;

.field public cmd:Ljava/lang/String;

.field public content:Ljava/lang/String;

.field public hhd:Lcn/com/xy/sms/sdk/net/c;

.field public isCompress:Z

.field public isLogin:Z

.field public url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x9c40

    sput v0, Lcn/com/xy/sms/sdk/net/a;->timeoutConnection:I

    const v0, 0x15f90

    sput v0, Lcn/com/xy/sms/sdk/net/a;->readTimeout:I

    const/4 v0, 0x0

    sput-object v0, Lcn/com/xy/sms/sdk/net/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcn/com/xy/sms/sdk/net/c;Ljava/lang/String;ZLcn/com/xy/sms/sdk/Iservice/XyCallBack;)V
    .locals 8

    const/4 v7, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v7, p0, Lcn/com/xy/sms/sdk/net/a;->isLogin:Z

    iput-boolean v7, p0, Lcn/com/xy/sms/sdk/net/a;->isCompress:Z

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v7}, Lcn/com/xy/sms/sdk/net/a;->init(Ljava/lang/String;Lcn/com/xy/sms/sdk/net/c;Ljava/lang/String;ZLjava/lang/String;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcn/com/xy/sms/sdk/net/c;Ljava/lang/String;ZLjava/lang/String;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;)V
    .locals 8

    const/4 v7, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v7, p0, Lcn/com/xy/sms/sdk/net/a;->isLogin:Z

    iput-boolean v7, p0, Lcn/com/xy/sms/sdk/net/a;->isCompress:Z

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lcn/com/xy/sms/sdk/net/a;->init(Ljava/lang/String;Lcn/com/xy/sms/sdk/net/c;Ljava/lang/String;ZLjava/lang/String;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcn/com/xy/sms/sdk/net/c;Ljava/lang/String;ZLjava/lang/String;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcn/com/xy/sms/sdk/net/a;->isLogin:Z

    iput-boolean v0, p0, Lcn/com/xy/sms/sdk/net/a;->isCompress:Z

    invoke-virtual/range {p0 .. p7}, Lcn/com/xy/sms/sdk/net/a;->init(Ljava/lang/String;Lcn/com/xy/sms/sdk/net/c;Ljava/lang/String;ZLjava/lang/String;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;Z)V

    return-void
.end method

.method static a()Ljava/lang/String;
    .locals 3

    const-string v0, ""

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_1

    sget-object v1, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    array-length v2, v1

    if-lez v2, :cond_0

    const/4 v0, 0x0

    aget-object v0, v1, v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getDeviceId(Z)Ljava/lang/String;
    .locals 2

    :try_start_0
    sget-object v0, Lcn/com/xy/sms/sdk/net/a;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/com/xy/sms/sdk/net/a;->a:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcn/com/xy/sms/sdk/net/a;->a:Ljava/lang/String;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_1
    if-eqz p0, :cond_2

    :try_start_1
    sget-object v0, Lcn/com/xy/sms/sdk/net/a;->a:Ljava/lang/String;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/net/util/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    sget-object v0, Lcn/com/xy/sms/sdk/net/a;->a:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0
.end method

.method protected static isAppChannel()Z
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lcn/com/xy/sms/sdk/net/l;->b:Ljava/lang/String;

    invoke-static {v1}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Lcn/com/xy/sms/sdk/dex/DexUtil;->getOnlineParseImpl(Z)Lcn/com/xy/sms/sdk/Iservice/OnlineParseInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Lcn/com/xy/sms/sdk/net/l;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcn/com/xy/sms/sdk/Iservice/OnlineParseInterface;->isAppChannel(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static logNetInfo(Ljava/lang/String;I)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcn/com/xy/sms/sdk/util/DuoquUtils;->getLogSdkDoAction()Lcn/com/xy/sms/sdk/util/n;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "length="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " req="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method protected addHeadSign(Ljava/net/HttpURLConnection;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "x"

    invoke-static {}, Lcn/com/xy/sms/sdk/net/util/j;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/com/xy/sms/sdk/net/a;->isAppChannel()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/com/xy/sms/sdk/net/a;->url:Ljava/lang/String;

    const-string v2, "token/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    invoke-static {v1}, Lcn/com/xy/sms/sdk/net/a;->getDeviceId(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcn/com/xy/sms/sdk/util/XyUtil;->getXyValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1, v2}, Lcn/com/xy/sms/sdk/net/util/a;->a([B[B)[B

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    move v1, v0

    :goto_0
    array-length v0, v2

    if-lt v1, v0, :cond_1

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "s"

    invoke-virtual {p1, v1, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    aget-byte v0, v2, v1

    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v6, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "0"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    invoke-static {v0}, Lcn/com/xy/sms/sdk/net/a;->getDeviceId(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "UNIQUE_CODE"

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->getStringParam(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    const-string v0, ""

    :cond_4
    const-string v1, "p"

    invoke-virtual {p1, v1, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/dex/DexUtil;->saveExceptionLog(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public callBack(ILjava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "STATUS: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " responseStr: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcn/com/xy/sms/sdk/net/a;->callBack:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/xy/sms/sdk/net/a;->callBack:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-interface {v0, v1}, Lcn/com/xy/sms/sdk/Iservice/XyCallBack;->execute([Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public callBack(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcn/com/xy/sms/sdk/net/a;->callBack:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/xy/sms/sdk/net/a;->callBack:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-interface {v0, v1}, Lcn/com/xy/sms/sdk/Iservice/XyCallBack;->execute([Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public getHttpURLConnection()Ljava/net/HttpURLConnection;
    .locals 4

    :try_start_0
    invoke-static {}, Lcn/com/xy/sms/sdk/util/KeyManager;->initAppKey()V

    iget-object v0, p0, Lcn/com/xy/sms/sdk/net/a;->url:Ljava/lang/String;

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/com/xy/sms/sdk/net/a;->url:Ljava/lang/String;

    const-string v1, "HTTPS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcn/com/xy/sms/sdk/net/a;->url:Ljava/lang/String;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/net/b;->b(Ljava/lang/String;)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object v0

    :goto_0
    sget v1, Lcn/com/xy/sms/sdk/net/a;->timeoutConnection:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    sget v1, Lcn/com/xy/sms/sdk/net/a;->readTimeout:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    iget-object v1, p0, Lcn/com/xy/sms/sdk/net/a;->hhd:Lcn/com/xy/sms/sdk/net/c;

    iget-boolean v2, p0, Lcn/com/xy/sms/sdk/net/a;->isLogin:Z

    iget-object v3, p0, Lcn/com/xy/sms/sdk/net/a;->cmd:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3, v0}, Lcn/com/xy/sms/sdk/net/a;->setHttpHeader(Lcn/com/xy/sms/sdk/net/c;ZLjava/lang/String;Ljava/net/HttpURLConnection;)V

    iget-boolean v1, p0, Lcn/com/xy/sms/sdk/net/a;->isCompress:Z

    if-eqz v1, :cond_1

    const-string v1, "nz"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v1, "encrypt"

    const-string v2, "2"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-object v0

    :cond_2
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcn/com/xy/sms/sdk/net/a;->url:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected getRequestByteArray([B)[B
    .locals 2

    iget-object v0, p0, Lcn/com/xy/sms/sdk/net/a;->content:Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iget-boolean v1, p0, Lcn/com/xy/sms/sdk/net/a;->isCompress:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->compressGZip([B)[B

    move-result-object v0

    :cond_0
    invoke-static {v0, p1}, Lcn/com/xy/sms/sdk/net/util/a;->a([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method protected getResponseByteArray([B[B)[B
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1, p2}, Lcn/com/xy/sms/sdk/net/util/a;->b([B[B)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    iget-boolean v1, p0, Lcn/com/xy/sms/sdk/net/a;->isCompress:Z

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    move-object v1, p1

    :goto_1
    :try_start_1
    invoke-static {v1}, Lcn/com/xy/sms/sdk/util/StringUtils;->uncompressGZip([B)[B
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :cond_0
    :goto_2
    if-nez v0, :cond_2

    :goto_3
    return-object p1

    :cond_1
    move-object v1, v0

    goto :goto_1

    :cond_2
    move-object p1, v0

    goto :goto_3

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method public init(Ljava/lang/String;Lcn/com/xy/sms/sdk/net/c;Ljava/lang/String;ZLjava/lang/String;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;Z)V
    .locals 0

    iput-object p2, p0, Lcn/com/xy/sms/sdk/net/a;->hhd:Lcn/com/xy/sms/sdk/net/c;

    iput-object p1, p0, Lcn/com/xy/sms/sdk/net/a;->url:Ljava/lang/String;

    iput-object p3, p0, Lcn/com/xy/sms/sdk/net/a;->content:Ljava/lang/String;

    iput-object p6, p0, Lcn/com/xy/sms/sdk/net/a;->callBack:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;

    iput-boolean p4, p0, Lcn/com/xy/sms/sdk/net/a;->isLogin:Z

    iput-object p5, p0, Lcn/com/xy/sms/sdk/net/a;->cmd:Ljava/lang/String;

    iput-boolean p7, p0, Lcn/com/xy/sms/sdk/net/a;->isCompress:Z

    return-void
.end method

.method public run()V
    .locals 10

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcn/com/xy/sms/sdk/net/a;->getHttpURLConnection()Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v3

    if-nez v3, :cond_1

    const/4 v0, -0x7

    :try_start_1
    const-string v2, "http null"

    invoke-virtual {p0, v0, v2}, Lcn/com/xy/sms/sdk/net/a;->callBack(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v3, :cond_0

    :try_start_2
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_6

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_3
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v2

    if-nez v2, :cond_3

    const/4 v0, -0x7

    :try_start_4
    const-string v4, "http out null"

    invoke-virtual {p0, v0, v4}, Lcn/com/xy/sms/sdk/net/a;->callBack(ILjava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v2, :cond_2

    :try_start_5
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    :cond_2
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_3
    :try_start_6
    invoke-static {}, Lcn/com/xy/sms/sdk/util/XyUtil;->getXyValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/com/xy/sms/sdk/net/a;->getRequestByteArray([B)[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_c

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lcn/com/xy/sms/sdk/util/f;->b(Ljava/io/InputStream;)[B

    move-result-object v4

    array-length v5, v4

    iget-object v6, p0, Lcn/com/xy/sms/sdk/net/a;->content:Ljava/lang/String;

    invoke-static {v6, v5}, Lcn/com/xy/sms/sdk/net/a;->logNetInfo(Ljava/lang/String;I)V

    int-to-long v6, v5

    const-wide/32 v8, 0x1900000

    cmp-long v6, v6, v8

    if-lez v6, :cond_6

    const/16 v0, -0x9

    const-string v4, "len > Constant.NET_MAX_SIZE"

    invoke-virtual {p0, v0, v4}, Lcn/com/xy/sms/sdk/net/a;->callBack(ILjava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v1, :cond_4

    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_4
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    :cond_5
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :cond_6
    if-nez v5, :cond_9

    const/4 v0, -0x5

    :try_start_8
    const-string v4, "len == 0"

    invoke-virtual {p0, v0, v4}, Lcn/com/xy/sms/sdk/net/a;->callBack(ILjava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v1, :cond_7

    :try_start_9
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_7
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    :cond_8
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :cond_9
    :try_start_a
    invoke-virtual {p0, v4, v0}, Lcn/com/xy/sms/sdk/net/a;->getResponseByteArray([B[B)[B

    move-result-object v0

    new-instance v4, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-direct {v4, v0, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v4}, Lcn/com/xy/sms/sdk/net/a;->callBack(ILjava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :goto_1
    if-eqz v1, :cond_a

    :try_start_b
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_a
    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    :cond_b
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v0

    goto/16 :goto_0

    :cond_c
    const/4 v0, -0x8

    :try_start_c
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "code="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Lcn/com/xy/sms/sdk/net/a;->callBack(ILjava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_1

    :catch_4
    move-exception v0

    :goto_2
    :try_start_d
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Ljava/net/SocketTimeoutException;

    if-ne v4, v5, :cond_f

    const/4 v4, -0x6

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v4, v0}, Lcn/com/xy/sms/sdk/net/a;->callBack(ILjava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :goto_3
    if-eqz v1, :cond_d

    :try_start_e
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_d
    if-eqz v2, :cond_e

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    :cond_e
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_5

    goto/16 :goto_0

    :catch_5
    move-exception v0

    goto/16 :goto_0

    :cond_f
    const/4 v4, -0x7

    :try_start_f
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v4, v0}, Lcn/com/xy/sms/sdk/net/a;->callBack(ILjava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v1, :cond_10

    :try_start_10
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_10
    if-eqz v2, :cond_11

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    :cond_11
    if-eqz v3, :cond_12

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_7

    :cond_12
    :goto_5
    throw v0

    :catch_6
    move-exception v0

    goto/16 :goto_0

    :catch_7
    move-exception v1

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v2, v1

    goto :goto_4

    :catch_8
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    goto :goto_2

    :catch_9
    move-exception v0

    move-object v2, v1

    goto :goto_2
.end method

.method public setHttpHeader(Lcn/com/xy/sms/sdk/net/c;ZLjava/lang/String;Ljava/net/HttpURLConnection;)V
    .locals 4

    if-nez p4, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "Content-Type"

    const-string v1, "text/xml;UTF-8"

    invoke-virtual {p4, v0, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcn/com/xy/sms/sdk/net/l;->a:Ljava/lang/String;

    sget-object v1, Lcn/com/xy/sms/sdk/net/l;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/net/util/m;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "app-key"

    sget-object v2, Lcn/com/xy/sms/sdk/net/l;->b:Ljava/lang/String;

    invoke-virtual {p4, v1, v2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "app-key-sign"

    invoke-virtual {p4, v1, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "compress"

    const-string v1, "1"

    invoke-virtual {p4, v0, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "loginid"

    const-string v1, ""

    invoke-virtual {p4, v0, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "recordState"

    invoke-static {}, Lcn/com/xy/sms/sdk/util/u;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v0, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sdkversion"

    sget-object v1, Lcn/com/xy/sms/sdk/net/NetUtil;->APPVERSION:Ljava/lang/String;

    invoke-virtual {p4, v0, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_3

    const-string v0, ""

    sget-object v1, Lcn/com/xy/sms/sdk/net/l;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/net/util/m;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "h-token"

    invoke-virtual {p4, v1, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "command"

    const-string v1, "0"

    invoke-virtual {p4, v0, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-static {p3}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "cmd"

    invoke-virtual {p4, v0, p3}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v0, "abi"

    invoke-static {}, Lcn/com/xy/sms/sdk/net/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v0, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "uiversion"

    invoke-static {}, Lcn/com/xy/sms/sdk/dex/DexUtil;->getUIVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v0, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/com/xy/sms/util/v;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcn/com/xy/sms/util/v;->c()Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x4

    invoke-static {v0}, Lcn/com/xy/sms/sdk/dex/DexUtil;->getOnLineConfigureData(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v0, "bizport.cn/66dc91e8b78b1c284027a3eb1be0a70e"

    :cond_2
    const-string v3, "ai"

    invoke-static {v1}, Lcn/com/xy/sms/sdk/net/util/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v3, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ni"

    invoke-static {v2}, Lcn/com/xy/sms/sdk/net/util/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v1, v2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "referer"

    invoke-virtual {p4, v1, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p4}, Lcn/com/xy/sms/sdk/net/a;->addHeadSign(Ljava/net/HttpURLConnection;)V

    goto/16 :goto_0

    :cond_3
    const-string v0, "command"

    const-string v1, "1"

    invoke-virtual {p4, v0, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
