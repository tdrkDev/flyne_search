.class public Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final IV_SIZE:I = 0x10

.field private static final KEY_SIZE:I = 0x10

.field private static final TAG:Ljava/lang/String; = "HttpKeyMgr"

.field private static instance:Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;

.field private static final lock:Ljava/lang/Object;


# instance fields
.field private aKey:[B

.field private aKey64:[B

.field iv:[B

.field private lastResetKeysTime:J

.field private mContext:Landroid/content/Context;

.field private publicKey:Ljava/security/PublicKey;

.field private rKey:[B

.field private rKey64:[B

.field private sKey64:[B

.field salt:[B

.field seedText:Ljava/lang/String;

.field private spKey:Landroid/content/SharedPreferences;

.field private spPublicKey:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->lock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-wide v4, p0, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->lastResetKeysTime:J

    .line 53
    const-string v0, "88&*5a9*4&a122ek"

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->seedText:Ljava/lang/String;

    .line 56
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->mContext:Landroid/content/Context;

    .line 57
    const-string v0, "com.x.y.1"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->spKey:Landroid/content/SharedPreferences;

    .line 58
    const-string v0, "com.x.y.2"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->spPublicKey:Landroid/content/SharedPreferences;

    .line 59
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->spKey:Landroid/content/SharedPreferences;

    const-string v1, "keyTimeout"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 60
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->spKey:Landroid/content/SharedPreferences;

    const-string v1, "createDate"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 65
    invoke-direct {p0}, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->loadKeys()V

    .line 67
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->rKey:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->rKey:[B

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->rKey:[B

    array-length v0, v0

    if-nez v0, :cond_3

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->loadPublicKey(Landroid/content/Context;)Ljava/security/PublicKey;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->publicKey:Ljava/security/PublicKey;

    .line 70
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->publicKey:Ljava/security/PublicKey;

    if-eqz v0, :cond_2

    .line 71
    invoke-direct {p0}, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->generateKeys()V

    .line 93
    :cond_1
    :goto_0
    return-void

    .line 73
    :cond_2
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->spKey:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 76
    :try_start_0
    invoke-direct {p0}, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->downloadPublicKey()V

    .line 77
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->loadPublicKey(Landroid/content/Context;)Ljava/security/PublicKey;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->publicKey:Ljava/security/PublicKey;

    .line 78
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->publicKey:Ljava/security/PublicKey;

    if-eqz v0, :cond_1

    .line 79
    invoke-direct {p0}, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->generateKeys()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 86
    :cond_3
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->aKey:[B

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->aKey:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->aKey:[B

    array-length v0, v0

    if-nez v0, :cond_1

    .line 87
    :cond_4
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->loadPublicKey(Landroid/content/Context;)Ljava/security/PublicKey;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->publicKey:Ljava/security/PublicKey;

    .line 88
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->publicKey:Ljava/security/PublicKey;

    if-eqz v0, :cond_1

    .line 89
    invoke-direct {p0}, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->generateAkey()V

    goto :goto_0
.end method

.method private clearKeys()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 223
    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->rKey:[B

    .line 224
    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->aKey:[B

    .line 225
    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->rKey64:[B

    .line 226
    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->aKey64:[B

    .line 227
    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->sKey64:[B

    .line 228
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->spKey:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 229
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 230
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 231
    return-void
.end method

.method private clearPublicKey()V
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->spPublicKey:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 235
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 236
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 237
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->publicKey:Ljava/security/PublicKey;

    .line 238
    return-void
.end method

.method private deriveKeySecurely(Ljava/lang/String;I)Ljavax/crypto/SecretKey;
    .locals 5

    .prologue
    .line 242
    const-string v0, "salt"

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1}, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->readFromPreferenceOrCreateRandom(Ljava/lang/String;I)[B

    move-result-object v0

    .line 243
    new-instance v1, Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const/16 v3, 0x64

    mul-int/lit8 v4, p2, 0x8

    invoke-direct {v1, v2, v0, v3, v4}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    .line 246
    :try_start_0
    const-string v0, "PBKDF2WithHmacSHA1"

    invoke-static {v0}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v0

    .line 247
    invoke-virtual {v0, v1}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v0

    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    .line 248
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 249
    :catch_0
    move-exception v0

    .line 250
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Deal with exceptions properly!"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private downloadPublicKey()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 135
    .line 137
    :try_start_0
    new-instance v0, Ljava/net/URL;

    const-string v1, "http://norma-external-collect.meizu.com/android/exchange/getpublickey.do"

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_6

    .line 142
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 143
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 144
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 146
    :try_start_1
    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_0

    .line 150
    :goto_0
    const-string v1, "Charset"

    const-string v2, "UTF-8"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const/4 v4, 0x0

    .line 154
    :try_start_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 155
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "code = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->sLogD(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v2

    .line 158
    if-eqz v2, :cond_0

    .line 159
    :try_start_3
    invoke-direct {p0, v2}, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->getStringByInputStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .line 160
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "body = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->sLogD(Ljava/lang/String;)V

    .line 161
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v5

    if-nez v5, :cond_0

    .line 163
    :try_start_4
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 164
    const-string v1, "code"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 165
    const/16 v6, 0xc8

    if-ne v1, v6, :cond_0

    .line 166
    const-string v1, "value"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 167
    iget-object v5, p0, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->spPublicKey:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 168
    const-string v6, "publicKey"

    invoke-interface {v5, v6, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 169
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 177
    :cond_0
    :goto_1
    if-eqz v3, :cond_1

    .line 179
    :try_start_5
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 183
    :cond_1
    :goto_2
    if-eqz v2, :cond_2

    .line 185
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 189
    :cond_2
    :goto_3
    if-eqz v0, :cond_3

    .line 190
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 193
    :cond_3
    :goto_4
    return-void

    .line 147
    :catch_0
    move-exception v1

    .line 148
    invoke-virtual {v1}, Ljava/net/ProtocolException;->printStackTrace()V

    goto :goto_0

    .line 171
    :catch_1
    move-exception v1

    .line 172
    :try_start_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "downloadPublicKey message error "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->sLogE(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    .line 177
    :catchall_0
    move-exception v1

    :goto_5
    if-eqz v3, :cond_4

    .line 179
    :try_start_8
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 183
    :cond_4
    :goto_6
    if-eqz v2, :cond_5

    .line 185
    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 189
    :cond_5
    :goto_7
    if-eqz v0, :cond_6

    .line 190
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6
    throw v1

    .line 180
    :catch_2
    move-exception v1

    goto :goto_2

    .line 186
    :catch_3
    move-exception v1

    goto :goto_3

    .line 180
    :catch_4
    move-exception v3

    goto :goto_6

    .line 186
    :catch_5
    move-exception v2

    goto :goto_7

    .line 177
    :catchall_1
    move-exception v1

    move-object v2, v3

    goto :goto_5

    .line 138
    :catch_6
    move-exception v0

    goto :goto_4
.end method

.method private generateAkey()V
    .locals 4

    .prologue
    .line 300
    .line 302
    :try_start_0
    const-string v0, "RSA/ECB/PKCS1Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 303
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->publicKey:Ljava/security/PublicKey;

    invoke-virtual {v0, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 304
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->rKey:[B

    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->aKey:[B

    .line 305
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->aKey:[B

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->aKey64:[B

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "***** aKey64: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->aKey64:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->sLogD(Ljava/lang/String;)V

    .line 307
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->spKey:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 308
    const-string v1, "aKey64"

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->aKey64:[B

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 309
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_4

    .line 321
    :goto_0
    return-void

    .line 310
    :catch_0
    move-exception v0

    .line 311
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0

    .line 312
    :catch_1
    move-exception v0

    .line 313
    invoke-virtual {v0}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V

    goto :goto_0

    .line 314
    :catch_2
    move-exception v0

    .line 315
    invoke-virtual {v0}, Ljavax/crypto/BadPaddingException;->printStackTrace()V

    goto :goto_0

    .line 316
    :catch_3
    move-exception v0

    .line 317
    invoke-virtual {v0}, Ljavax/crypto/IllegalBlockSizeException;->printStackTrace()V

    goto :goto_0

    .line 318
    :catch_4
    move-exception v0

    .line 319
    invoke-virtual {v0}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto :goto_0
.end method

.method private generateKeys()V
    .locals 0

    .prologue
    .line 278
    invoke-direct {p0}, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->generateRkey()V

    .line 279
    invoke-direct {p0}, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->generateAkey()V

    .line 280
    return-void
.end method

.method private generateRkey()V
    .locals 4

    .prologue
    .line 284
    :try_start_0
    const-string v0, "AES"

    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    .line 285
    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Ljavax/crypto/KeyGenerator;->init(I)V

    .line 286
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 287
    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->rKey:[B

    .line 288
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->rKey:[B

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->rKey64:[B

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "***** rKey64: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->rKey64:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->sLogD(Ljava/lang/String;)V

    .line 290
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->spKey:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 291
    const-string v1, "rKey64"

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->rKey64:[B

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 292
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    :goto_0
    return-void

    .line 293
    :catch_0
    move-exception v0

    .line 294
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static get()Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;
    .locals 2

    .prologue
    .line 106
    sget-object v0, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->instance:Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "KeyMgr is not initialised - invoke at least once with parameterised init/get"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_0
    sget-object v0, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->instance:Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;

    return-object v0
.end method

.method private getStringByInputStream(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 324
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 325
    const/4 v0, 0x0

    .line 328
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 329
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 332
    :catch_0
    move-exception v2

    .line 335
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 339
    :goto_1
    return-object v0

    .line 331
    :cond_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 335
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 336
    :catch_1
    move-exception v1

    goto :goto_1

    .line 334
    :catchall_0
    move-exception v0

    .line 335
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 337
    :goto_2
    throw v0

    .line 336
    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_2
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 96
    sget-object v0, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->instance:Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;

    if-nez v0, :cond_1

    .line 97
    sget-object v1, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 98
    :try_start_0
    sget-object v0, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->instance:Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;

    if-nez v0, :cond_0

    .line 99
    new-instance v0, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;

    invoke-direct {v0, p0}, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->instance:Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;

    .line 101
    :cond_0
    monitor-exit v1

    .line 103
    :cond_1
    return-void

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private loadKeys()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 196
    const-string v0, "loadKeys"

    invoke-direct {p0, v0}, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->sLogD(Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->spKey:Landroid/content/SharedPreferences;

    const-string v1, "sKey64"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 199
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saved sKey64: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->sLogD(Ljava/lang/String;)V

    .line 200
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 201
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->sKey64:[B

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->spKey:Landroid/content/SharedPreferences;

    const-string v1, "aKey64"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 206
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saved aKey64: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->sLogD(Ljava/lang/String;)V

    .line 207
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 208
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->aKey64:[B

    .line 209
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->aKey64:[B

    invoke-static {v0, v3}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->aKey:[B

    .line 213
    :cond_1
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->spKey:Landroid/content/SharedPreferences;

    const-string v1, "rKey64"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 214
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saved rKey64: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->sLogD(Ljava/lang/String;)V

    .line 215
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 216
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->rKey64:[B

    .line 217
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->rKey64:[B

    invoke-static {v0, v3}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->rKey:[B

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saved rKey: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->rKey:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->sLogD(Ljava/lang/String;)V

    .line 220
    :cond_2
    return-void
.end method

.method private loadPublicKey(Landroid/content/Context;)Ljava/security/PublicKey;
    .locals 3

    .prologue
    .line 116
    const-string v0, "load publicKey from preference"

    invoke-direct {p0, v0}, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->sLogD(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->spPublicKey:Landroid/content/SharedPreferences;

    const-string v1, "publicKey"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 118
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 120
    const/4 v1, 0x2

    :try_start_0
    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 121
    const-string v1, "RSA"

    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 122
    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v2, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 123
    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 130
    :goto_0
    return-object v0

    .line 124
    :catch_0
    move-exception v0

    .line 125
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 130
    :cond_0
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 126
    :catch_1
    move-exception v0

    .line 127
    invoke-virtual {v0}, Ljava/security/spec/InvalidKeySpecException;->printStackTrace()V

    goto :goto_1
.end method

.method private readFromPreferenceOrCreateRandom(Ljava/lang/String;I)[B
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 259
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->mContext:Landroid/content/Context;

    const-string v1, "com.x.y.1"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 260
    const-string v0, ""

    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 261
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 262
    invoke-static {v0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 263
    array-length v2, v0

    if-ne v2, p2, :cond_0

    .line 273
    :goto_0
    return-object v0

    .line 267
    :cond_0
    new-array v0, p2, [B

    .line 268
    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    .line 269
    invoke-virtual {v2, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 270
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 271
    invoke-static {v0, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 272
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method private sLogD(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 458
    const-string v0, "HttpKeyMgr"

    invoke-static {v0, p1}, Lcom/meizu/cloud/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    return-void
.end method

.method private sLogE(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 462
    const-string v0, "HttpKeyMgr"

    invoke-static {v0, p1}, Lcom/meizu/cloud/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    return-void
.end method


# virtual methods
.method public decrypt([B)[B
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 378
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->rKey:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->rKey:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->rKey:[B

    array-length v0, v0

    if-nez v0, :cond_1

    .line 379
    :cond_0
    const-string v0, "rKey null!"

    invoke-direct {p0, v0}, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->sLogE(Ljava/lang/String;)V

    move-object v0, v1

    .line 409
    :goto_0
    return-object v0

    .line 382
    :cond_1
    if-eqz p1, :cond_2

    if-eqz p1, :cond_3

    array-length v0, p1

    if-nez v0, :cond_3

    .line 383
    :cond_2
    const-string v0, "input null!"

    invoke-direct {p0, v0}, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->sLogE(Ljava/lang/String;)V

    move-object v0, v1

    .line 384
    goto :goto_0

    .line 386
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>>>>>>>>> decrypt input >>>>>>>>>>\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v2, Ljava/lang/String;

    invoke-static {p1, v3}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->sLogD(Ljava/lang/String;)V

    .line 387
    const-string v0, "<<<<<<<<<< decrypt input <<<<<<<<<<"

    invoke-direct {p0, v0}, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->sLogD(Ljava/lang/String;)V

    .line 389
    :try_start_0
    const-string v0, "AES/CBC/PKCS5Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 390
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v3, p0, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->rKey:[B

    const-string v4, "AES"

    invoke-direct {v2, v3, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 391
    const/4 v3, 0x2

    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    iget-object v5, p0, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->rKey:[B

    invoke-direct {v4, v5}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v0, v3, v2, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 392
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 393
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>>>>>>>>> decrypt output >>>>>>>>>>\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v0, v4}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->sLogD(Ljava/lang/String;)V

    .line 394
    const-string v2, "<<<<<<<<<< decrypt output <<<<<<<<<<"

    invoke-direct {p0, v2}, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->sLogD(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_5

    goto :goto_0

    .line 396
    :catch_0
    move-exception v0

    .line 397
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    :goto_1
    move-object v0, v1

    .line 409
    goto :goto_0

    .line 398
    :catch_1
    move-exception v0

    .line 399
    invoke-virtual {v0}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V

    goto :goto_1

    .line 400
    :catch_2
    move-exception v0

    .line 401
    invoke-virtual {v0}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto :goto_1

    .line 402
    :catch_3
    move-exception v0

    .line 403
    invoke-virtual {v0}, Ljavax/crypto/BadPaddingException;->printStackTrace()V

    goto :goto_1

    .line 404
    :catch_4
    move-exception v0

    .line 405
    invoke-virtual {v0}, Ljavax/crypto/IllegalBlockSizeException;->printStackTrace()V

    goto :goto_1

    .line 406
    :catch_5
    move-exception v0

    .line 407
    invoke-virtual {v0}, Ljava/security/InvalidAlgorithmParameterException;->printStackTrace()V

    goto :goto_1
.end method

.method public encrypt([B)[B
    .locals 6

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x0

    .line 343
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->rKey:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->rKey:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->rKey:[B

    array-length v0, v0

    if-nez v0, :cond_1

    .line 344
    :cond_0
    const-string v0, "rKey null!"

    invoke-direct {p0, v0}, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->sLogE(Ljava/lang/String;)V

    move-object v0, v1

    .line 374
    :goto_0
    return-object v0

    .line 347
    :cond_1
    if-eqz p1, :cond_2

    if-eqz p1, :cond_3

    array-length v0, p1

    if-nez v0, :cond_3

    .line 348
    :cond_2
    const-string v0, "input null!"

    invoke-direct {p0, v0}, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->sLogE(Ljava/lang/String;)V

    move-object v0, v1

    .line 349
    goto :goto_0

    .line 351
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>>>>>>>>> encrypt input >>>>>>>>>>\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v2, Ljava/lang/String;

    invoke-static {p1, v3}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->sLogD(Ljava/lang/String;)V

    .line 352
    const-string v0, "<<<<<<<<<< encrypt input <<<<<<<<<<"

    invoke-direct {p0, v0}, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->sLogD(Ljava/lang/String;)V

    .line 354
    :try_start_0
    const-string v0, "AES/CBC/PKCS5Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 355
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v3, p0, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->rKey:[B

    const-string v4, "AES"

    invoke-direct {v2, v3, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 356
    const/4 v3, 0x1

    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    iget-object v5, p0, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->rKey:[B

    invoke-direct {v4, v5}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v0, v3, v2, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 357
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 358
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>>>>>>>>> encrypt output >>>>>>>>>>\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x2

    invoke-static {v0, v4}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->sLogD(Ljava/lang/String;)V

    .line 359
    const-string v2, "<<<<<<<<<< encrypt output <<<<<<<<<<"

    invoke-direct {p0, v2}, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->sLogD(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_5

    goto :goto_0

    .line 361
    :catch_0
    move-exception v0

    .line 362
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    :goto_1
    move-object v0, v1

    .line 374
    goto :goto_0

    .line 363
    :catch_1
    move-exception v0

    .line 364
    invoke-virtual {v0}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V

    goto :goto_1

    .line 365
    :catch_2
    move-exception v0

    .line 366
    invoke-virtual {v0}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto :goto_1

    .line 367
    :catch_3
    move-exception v0

    .line 368
    invoke-virtual {v0}, Ljavax/crypto/BadPaddingException;->printStackTrace()V

    goto :goto_1

    .line 369
    :catch_4
    move-exception v0

    .line 370
    invoke-virtual {v0}, Ljavax/crypto/IllegalBlockSizeException;->printStackTrace()V

    goto :goto_1

    .line 371
    :catch_5
    move-exception v0

    .line 372
    invoke-virtual {v0}, Ljava/security/InvalidAlgorithmParameterException;->printStackTrace()V

    goto :goto_1
.end method

.method public getaKey64()[B
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->aKey64:[B

    return-object v0
.end method

.method public getsKey64()[B
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->sKey64:[B

    return-object v0
.end method

.method public declared-synchronized reInitKeys()V
    .locals 4

    .prologue
    .line 431
    monitor-enter p0

    :try_start_0
    const-string v0, "reInitKeys"

    invoke-direct {p0, v0}, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->sLogD(Ljava/lang/String;)V

    .line 432
    iget-wide v0, p0, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->lastResetKeysTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 433
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->lastResetKeysTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x2bf20

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 434
    :cond_0
    invoke-direct {p0}, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->clearPublicKey()V

    .line 435
    invoke-direct {p0}, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->clearKeys()V

    .line 436
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->lastResetKeysTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 438
    :try_start_1
    invoke-direct {p0}, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->downloadPublicKey()V

    .line 439
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->loadPublicKey(Landroid/content/Context;)Ljava/security/PublicKey;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->publicKey:Ljava/security/PublicKey;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 443
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->publicKey:Ljava/security/PublicKey;

    if-eqz v0, :cond_1

    .line 444
    invoke-direct {p0}, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->generateKeys()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 447
    :cond_1
    monitor-exit p0

    return-void

    .line 440
    :catch_0
    move-exception v0

    .line 441
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 431
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public saveKeyTimeout(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 424
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->spKey:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 425
    const-string v1, "keyTimeout"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 426
    const-string v1, "createDate"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 427
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 428
    return-void
.end method

.method public saveSKey(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 417
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->sKey64:[B

    .line 418
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->spKey:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 419
    const-string v1, "sKey64"

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/meizu/cloud/pushsdk/analytics/secure/HttpKeyMgr;->sKey64:[B

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 420
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 421
    return-void
.end method
