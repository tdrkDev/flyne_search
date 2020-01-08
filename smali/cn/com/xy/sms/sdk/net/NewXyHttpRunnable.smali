.class public Lcn/com/xy/sms/sdk/net/NewXyHttpRunnable;
.super Lcn/com/xy/sms/sdk/net/a;


# static fields
.field public static final ERROR_CODE_PARE_ERR:Ljava/lang/String; = "2"

.field public static final ERROR_CODE_SERVICE_ERR:Ljava/lang/String; = "3"

.field public static final ERROR_CODE_TOKEN_FAILED:Ljava/lang/String; = "1"

.field public static RSA_PRV_KEY:Ljava/lang/String; = null

.field private static a:Ljava/lang/String; = "HTTP"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcn/com/xy/sms/sdk/net/NewXyHttpRunnable;->RSA_PRV_KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;ZZLjava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcn/com/xy/sms/sdk/Iservice/XyCallBack;",
            "ZZ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p4

    move-object v6, p3

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcn/com/xy/sms/sdk/net/a;-><init>(Ljava/lang/String;Lcn/com/xy/sms/sdk/net/c;Ljava/lang/String;ZLjava/lang/String;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;Z)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    const/16 v11, 0x75

    const/4 v1, 0x0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcn/com/xy/sms/sdk/net/NewXyHttpRunnable;->getHttpURLConnection()Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_b
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v3

    if-nez v3, :cond_1

    const/4 v0, -0x7

    :try_start_1
    const-string v2, "http null"

    invoke-virtual {p0, v0, v2}, Lcn/com/xy/sms/sdk/net/NewXyHttpRunnable;->callBack(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_c
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v3, :cond_0

    :try_start_2
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_8

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_3
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_c
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v2

    if-nez v2, :cond_3

    const/4 v0, -0x7

    :try_start_4
    const-string v4, "http out null"

    invoke-virtual {p0, v0, v4}, Lcn/com/xy/sms/sdk/net/NewXyHttpRunnable;->callBack(ILjava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_6
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
    iget-boolean v4, p0, Lcn/com/xy/sms/sdk/net/NewXyHttpRunnable;->isCompress:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcn/com/xy/sms/sdk/net/NewXyHttpRunnable;->content:Ljava/lang/String;

    const-string v5, "utf-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v4}, Lcn/com/xy/sms/sdk/util/StringUtils;->compressGZip([B)[B

    move-result-object v4

    move-object v5, v4

    :goto_1
    iget-boolean v4, p0, Lcn/com/xy/sms/sdk/net/NewXyHttpRunnable;->isLogin:Z

    if-eqz v4, :cond_9

    sget-object v4, Lcn/com/xy/sms/sdk/net/NewXyHttpRunnable;->RSA_PRV_KEY:Ljava/lang/String;

    invoke-static {v4}, Lcn/com/xy/sms/sdk/net/util/b;->a(Ljava/lang/String;)[B

    move-result-object v4

    new-instance v6, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v6, v4}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    const-string v4, "RSA"

    invoke-static {v4}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v4

    const-string v6, "RSA/ECB/PKCS1Padding"

    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    array-length v7, v5

    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move v4, v0

    :goto_2
    sub-int v9, v7, v0

    if-gtz v9, :cond_7

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V

    move-object v4, v0

    move-object v0, v1

    :goto_3
    if-eqz v4, :cond_4

    const/4 v5, 0x0

    array-length v6, v4

    invoke-virtual {v2, v4, v5, v6}, Ljava/io/OutputStream;->write([BII)V

    :cond_4
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_16

    const-string v4, "XY-ERR-CODE"

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_a

    const-string v0, ""

    invoke-virtual {p0, v4, v0}, Lcn/com/xy/sms/sdk/net/NewXyHttpRunnable;->callBack(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v2, :cond_5

    :try_start_7
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    :cond_5
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    goto/16 :goto_0

    :cond_6
    :try_start_8
    iget-object v4, p0, Lcn/com/xy/sms/sdk/net/NewXyHttpRunnable;->content:Ljava/lang/String;

    const-string v5, "utf-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    move-object v5, v4

    goto :goto_1

    :cond_7
    sub-int v9, v7, v0

    if-le v9, v11, :cond_8

    const/16 v9, 0x75

    invoke-virtual {v6, v5, v0, v9}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v0

    :goto_4
    const/4 v9, 0x0

    array-length v10, v0

    invoke-virtual {v8, v0, v9, v10}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    add-int/lit8 v0, v4, 0x1

    mul-int/lit8 v4, v0, 0x75

    move v12, v0

    move v0, v4

    move v4, v12

    goto :goto_2

    :cond_8
    sub-int v9, v7, v0

    invoke-virtual {v6, v5, v0, v9}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v0

    goto :goto_4

    :cond_9
    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v4, "AESKEY"

    invoke-static {v0, v4}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->getStringParam(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/net/util/h;->a(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v5, v4}, Lcn/com/xy/sms/sdk/net/util/a;->a([B[B)[B

    move-result-object v4

    goto :goto_3

    :cond_a
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lcn/com/xy/sms/sdk/util/f;->b(Ljava/io/InputStream;)[B

    move-result-object v4

    array-length v5, v4

    iget-object v6, p0, Lcn/com/xy/sms/sdk/net/NewXyHttpRunnable;->content:Ljava/lang/String;

    invoke-static {v6, v5}, Lcn/com/xy/sms/sdk/net/NewXyHttpRunnable;->logNetInfo(Ljava/lang/String;I)V

    int-to-long v6, v5

    const-wide/32 v8, 0x1900000

    cmp-long v6, v6, v8

    if-lez v6, :cond_d

    const/16 v0, -0x9

    const-string v4, ""

    invoke-virtual {p0, v0, v4}, Lcn/com/xy/sms/sdk/net/NewXyHttpRunnable;->callBack(ILjava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v1, :cond_b

    :try_start_9
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_b
    if-eqz v2, :cond_c

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    :cond_c
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    goto/16 :goto_0

    :cond_d
    if-nez v5, :cond_10

    const/4 v0, -0x5

    :try_start_a
    const-string v4, ""

    invoke-virtual {p0, v0, v4}, Lcn/com/xy/sms/sdk/net/NewXyHttpRunnable;->callBack(ILjava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-eqz v1, :cond_e

    :try_start_b
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_e
    if-eqz v2, :cond_f

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    :cond_f
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v0

    goto/16 :goto_0

    :cond_10
    :try_start_c
    iget-boolean v5, p0, Lcn/com/xy/sms/sdk/net/NewXyHttpRunnable;->isLogin:Z

    if-eqz v5, :cond_15

    sget-object v0, Lcn/com/xy/sms/sdk/net/NewXyHttpRunnable;->RSA_PRV_KEY:Ljava/lang/String;

    invoke-static {v4, v0}, Lcn/com/xy/sms/sdk/net/util/h;->b([BLjava/lang/String;)[B

    move-result-object v0

    :goto_5
    iget-boolean v4, p0, Lcn/com/xy/sms/sdk/net/NewXyHttpRunnable;->isCompress:Z
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_6
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    if-eqz v4, :cond_11

    :try_start_d
    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->uncompressGZip([B)[B
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_9
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    move-result-object v0

    :cond_11
    :goto_6
    :try_start_e
    new-instance v4, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-direct {v4, v0, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v4}, Lcn/com/xy/sms/sdk/net/NewXyHttpRunnable;->callBack(ILjava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_6
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :cond_12
    :goto_7
    if-eqz v1, :cond_13

    :try_start_f
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_13
    if-eqz v2, :cond_14

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    :cond_14
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_4

    goto/16 :goto_0

    :catch_4
    move-exception v0

    goto/16 :goto_0

    :cond_15
    :try_start_10
    invoke-static {v0}, Lcn/com/xy/sms/sdk/net/util/h;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v4, v0}, Lcn/com/xy/sms/sdk/net/util/a;->b([B[B)[B

    move-result-object v0

    goto :goto_5

    :cond_16
    const/16 v0, 0xcc

    if-ne v4, v0, :cond_18

    const-string v0, "XY-ERR-CODE"

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_12

    const-string v4, "token refresh"

    invoke-virtual {p0, v0, v4}, Lcn/com/xy/sms/sdk/net/NewXyHttpRunnable;->callBack(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_6
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    if-eqz v2, :cond_17

    :try_start_11
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    :cond_17
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_5

    goto/16 :goto_0

    :catch_5
    move-exception v0

    goto/16 :goto_0

    :cond_18
    const/4 v0, -0x8

    :try_start_12
    const-string v4, ""

    invoke-virtual {p0, v0, v4}, Lcn/com/xy/sms/sdk/net/NewXyHttpRunnable;->callBack(ILjava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_6
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto :goto_7

    :catch_6
    move-exception v0

    :goto_8
    :try_start_13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Ljava/net/SocketTimeoutException;

    if-ne v4, v5, :cond_1b

    const/4 v0, -0x6

    const-string v4, ""

    invoke-virtual {p0, v0, v4}, Lcn/com/xy/sms/sdk/net/NewXyHttpRunnable;->callBack(ILjava/lang/String;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    :goto_9
    if-eqz v1, :cond_19

    :try_start_14
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_19
    if-eqz v2, :cond_1a

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    :cond_1a
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_7

    goto/16 :goto_0

    :catch_7
    move-exception v0

    goto/16 :goto_0

    :cond_1b
    :try_start_15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v4, Ljavax/net/ssl/SSLHandshakeException;

    if-ne v0, v4, :cond_1f

    const/16 v0, -0xc

    const-string v4, ""

    invoke-virtual {p0, v0, v4}, Lcn/com/xy/sms/sdk/net/NewXyHttpRunnable;->callBack(ILjava/lang/String;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    goto :goto_9

    :catchall_0
    move-exception v0

    :goto_a
    if-eqz v1, :cond_1c

    :try_start_16
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_1c
    if-eqz v2, :cond_1d

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    :cond_1d
    if-eqz v3, :cond_1e

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_a

    :cond_1e
    :goto_b
    throw v0

    :cond_1f
    const/4 v0, -0x7

    :try_start_17
    const-string v4, ""

    invoke-virtual {p0, v0, v4}, Lcn/com/xy/sms/sdk/net/NewXyHttpRunnable;->callBack(ILjava/lang/String;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    goto :goto_9

    :catch_8
    move-exception v0

    goto/16 :goto_0

    :catch_9
    move-exception v4

    goto/16 :goto_6

    :catch_a
    move-exception v1

    goto :goto_b

    :catchall_1
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    goto :goto_a

    :catchall_2
    move-exception v0

    move-object v2, v1

    goto :goto_a

    :catch_b
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    goto :goto_8

    :catch_c
    move-exception v0

    move-object v2, v1

    goto :goto_8
.end method

.method public setHttpHeader(Lcn/com/xy/sms/sdk/net/c;ZLjava/lang/String;Ljava/net/HttpURLConnection;)V
    .locals 4

    sget-object v0, Lcn/com/xy/sms/sdk/net/l;->b:Ljava/lang/String;

    invoke-static {}, Lcn/com/xy/sms/sdk/net/NetUtil;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "token"

    invoke-virtual {p4, v2, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-object v1, Lcn/com/xy/sms/sdk/net/l;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcn/com/xy/sms/sdk/net/util/m;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "appkey"

    sget-object v2, Lcn/com/xy/sms/sdk/net/l;->b:Ljava/lang/String;

    invoke-virtual {p4, v1, v2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "app-key-sign"

    invoke-virtual {p4, v1, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "recordState"

    invoke-static {}, Lcn/com/xy/sms/sdk/util/u;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v0, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sdkversion"

    sget-object v1, Lcn/com/xy/sms/sdk/net/NetUtil;->APPVERSION:Ljava/lang/String;

    invoke-virtual {p4, v0, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p4}, Lcn/com/xy/sms/sdk/net/NewXyHttpRunnable;->addHeadSign(Ljava/net/HttpURLConnection;)V

    const-string v0, "abi"

    invoke-static {}, Lcn/com/xy/sms/sdk/net/NewXyHttpRunnable;->a()Ljava/lang/String;

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

    if-eqz v3, :cond_1

    const-string v0, "bizport.cn/66dc91e8b78b1c284027a3eb1be0a70e"

    :cond_1
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

    const-string v0, "Content-Type"

    const-string v1, "application/octet-stream"

    invoke-virtual {p4, v0, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcn/com/xy/sms/sdk/log/LogManager;->debug:Z

    if-eqz v0, :cond_2

    invoke-virtual {p4}, Ljava/net/HttpURLConnection;->getRequestProperties()Ljava/util/Map;

    :cond_2
    return-void
.end method
