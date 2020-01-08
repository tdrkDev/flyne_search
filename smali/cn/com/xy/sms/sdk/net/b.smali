.class public final Lcn/com/xy/sms/sdk/net/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/com/xy/sms/sdk/net/b;->a:Ljavax/net/ssl/SSLSocketFactory;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljavax/net/ssl/HttpsURLConnection;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcn/com/xy/sms/sdk/net/b;->a(Ljava/lang/String;I)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;I)Ljavax/net/ssl/HttpsURLConnection;
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lcn/com/xy/sms/sdk/net/b;

    invoke-direct {v2}, Lcn/com/xy/sms/sdk/net/b;-><init>()V

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-direct {v2, v0, p1}, Lcn/com/xy/sms/sdk/net/b;->a(Ljavax/net/ssl/HttpsURLConnection;I)V

    const/4 v1, 0x4

    invoke-static {v1}, Lcn/com/xy/sms/sdk/dex/DexUtil;->getOnLineConfigureData(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "bizport.cn/66dc91e8b78b1c284027a3eb1be0a70e"

    :cond_0
    const-string v2, "referer"

    invoke-virtual {v0, v2, v1}, Ljavax/net/ssl/HttpsURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->connect()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private a(Ljava/net/URL;)V
    .locals 2

    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    instance-of v1, v0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v1, :cond_0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcn/com/xy/sms/sdk/net/b;->a(Ljavax/net/ssl/HttpsURLConnection;I)V

    :cond_0
    return-void
.end method

.method private a(Ljavax/net/ssl/HttpsURLConnection;I)V
    .locals 2

    iget-object v0, p0, Lcn/com/xy/sms/sdk/net/b;->a:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {p2}, Lcn/com/xy/sms/sdk/net/d;->a(I)Lcn/com/xy/sms/sdk/net/d;

    move-result-object v0

    invoke-virtual {v0}, Lcn/com/xy/sms/sdk/net/d;->a()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lcn/com/xy/sms/sdk/net/b;->a:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    iget-object v0, p0, Lcn/com/xy/sms/sdk/net/b;->a:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/com/xy/sms/sdk/net/b;->a:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {p1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    :cond_1
    :try_start_1
    invoke-static {p2}, Lcn/com/xy/sms/sdk/net/d;->a(I)Lcn/com/xy/sms/sdk/net/d;

    move-result-object v0

    invoke-virtual {v0}, Lcn/com/xy/sms/sdk/net/d;->b()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_0
    move-exception v0

    instance-of v1, v0, Ljava/io/IOException;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/io/IOException;

    throw v0

    :cond_2
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static b(Ljava/lang/String;)Ljavax/net/ssl/HttpsURLConnection;
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lcn/com/xy/sms/sdk/net/b;

    invoke-direct {v2}, Lcn/com/xy/sms/sdk/net/b;-><init>()V

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :try_start_1
    invoke-direct {v2, v0, v1}, Lcn/com/xy/sms/sdk/net/b;->a(Ljavax/net/ssl/HttpsURLConnection;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method
