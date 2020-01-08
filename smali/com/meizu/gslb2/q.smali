.class public Lcom/meizu/gslb2/q;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/gslb2/q$b;,
        Lcom/meizu/gslb2/q$a;
    }
.end annotation


# instance fields
.field private a:Lcom/meizu/gslb2/GslbManager;

.field private b:Ljava/security/PublicKey;


# direct methods
.method constructor <init>(Lcom/meizu/gslb2/GslbManager;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/meizu/gslb2/q;->a:Lcom/meizu/gslb2/GslbManager;

    .line 49
    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;,
            Ljava/security/NoSuchAlgorithmException;,
            Lorg/json/JSONException;,
            Ljava/io/IOException;,
            Ljava/security/SignatureException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/meizu/gslb2/q;->a:Lcom/meizu/gslb2/GslbManager;

    invoke-virtual {v0}, Lcom/meizu/gslb2/GslbManager;->logger()Lcom/meizu/gslb2/f;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIpsByDomain: domain = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/gslb2/f;->a(Ljava/lang/String;)V

    .line 56
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 57
    const-string v0, "version"

    const-string v1, "2.0"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v0, p0, Lcom/meizu/gslb2/q;->a:Lcom/meizu/gslb2/GslbManager;

    invoke-virtual {v0}, Lcom/meizu/gslb2/GslbManager;->context()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/gslb2/i;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 59
    if-eqz v0, :cond_0

    .line 60
    const-string v1, "sim_card_sp"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    :cond_0
    const-string v0, "name"

    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    if-eqz p3, :cond_2

    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 64
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 65
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 66
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 67
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 71
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 72
    iget-object v1, p0, Lcom/meizu/gslb2/q;->a:Lcom/meizu/gslb2/GslbManager;

    invoke-virtual {v1}, Lcom/meizu/gslb2/GslbManager;->context()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/meizu/flyme/internet/d/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 73
    if-eqz v1, :cond_3

    .line 74
    const-string v3, "X-IMEI"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    :cond_3
    invoke-static {}, Lcom/meizu/flyme/internet/d/a;->a()Ljava/lang/String;

    move-result-object v1

    .line 77
    if-eqz v1, :cond_4

    .line 78
    const-string v3, "X-SN"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    :cond_4
    const-string v1, "X-MAC"

    const-string v3, ""

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string v1, "X-SDK-VERSION"

    const-string v3, "2.2.1"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    new-instance v1, Lcom/meizu/gslb2/t;

    iget-object v3, p0, Lcom/meizu/gslb2/q;->a:Lcom/meizu/gslb2/GslbManager;

    invoke-virtual {v3}, Lcom/meizu/gslb2/GslbManager;->usage()Lcom/meizu/gslb2/h;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/meizu/gslb2/t;-><init>(Lcom/meizu/gslb2/h;)V

    .line 84
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 85
    invoke-virtual {v1, p1}, Lcom/meizu/gslb2/t;->a(Ljava/lang/String;)Lcom/meizu/gslb2/t;

    .line 87
    :try_start_0
    iget-object v3, p0, Lcom/meizu/gslb2/q;->a:Lcom/meizu/gslb2/GslbManager;

    invoke-virtual {v3}, Lcom/meizu/gslb2/GslbManager;->executor()Lcom/meizu/gslb2/q$a;

    move-result-object v3

    const-string v6, "https://servicecut.meizu.com/interface/locate"

    invoke-interface {v3, v6, v2, v0}, Lcom/meizu/gslb2/q$a;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/meizu/gslb2/q$b;

    move-result-object v2

    .line 88
    if-nez v2, :cond_5

    const/4 v0, -0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/meizu/gslb2/t;->a(I)Lcom/meizu/gslb2/t;

    .line 89
    if-nez v2, :cond_6

    .line 90
    new-instance v0, Ljava/io/IOException;

    const-string v2, "server response is null"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    :catch_0
    move-exception v0

    .line 114
    :try_start_1
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    .line 115
    invoke-virtual {v1, v2}, Lcom/meizu/gslb2/t;->b(Ljava/lang/String;)Lcom/meizu/gslb2/t;

    .line 116
    iget-object v3, p0, Lcom/meizu/gslb2/q;->a:Lcom/meizu/gslb2/GslbManager;

    invoke-virtual {v3}, Lcom/meizu/gslb2/GslbManager;->logger()Lcom/meizu/gslb2/f;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/meizu/gslb2/f;->d(Ljava/lang/String;)V

    .line 117
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 120
    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/meizu/gslb2/t;->a(J)Lcom/meizu/gslb2/t;

    .line 121
    invoke-virtual {v1}, Lcom/meizu/gslb2/t;->a()V

    .line 122
    throw v0

    .line 88
    :cond_5
    :try_start_2
    invoke-interface {v2}, Lcom/meizu/gslb2/q$b;->a()I

    move-result v0

    goto :goto_1

    .line 92
    :cond_6
    invoke-interface {v2}, Lcom/meizu/gslb2/q$b;->a()I

    move-result v0

    const/16 v3, 0xc8

    if-eq v0, v3, :cond_7

    .line 93
    new-instance v0, Ljava/io/IOException;

    const-string v2, "http code is not 200"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_7
    invoke-interface {v2}, Lcom/meizu/gslb2/q$b;->b()Ljava/lang/String;

    move-result-object v0

    .line 96
    iget-object v3, p0, Lcom/meizu/gslb2/q;->a:Lcom/meizu/gslb2/GslbManager;

    invoke-virtual {v3}, Lcom/meizu/gslb2/GslbManager;->logger()Lcom/meizu/gslb2/f;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "server response: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/meizu/gslb2/f;->b(Ljava/lang/String;)V

    .line 97
    const-string v3, "secrete"

    invoke-interface {v2, v3}, Lcom/meizu/gslb2/q$b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 98
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 99
    new-instance v0, Ljava/io/IOException;

    const-string v2, "server response without a sign"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 102
    new-instance v0, Ljava/io/IOException;

    const-string v2, "server body is empty"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_9
    iget-object v3, p0, Lcom/meizu/gslb2/q;->b:Ljava/security/PublicKey;

    if-nez v3, :cond_a

    .line 105
    const-string v3, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDFRh6o89BH2bel0G2Fq0BQXc8+QK9HA1M9fytmpjJKxb3MXpQuSdyWkZPfZJavVMURwY9yvc6WzdHO/5dnmh3zR9LVFaAV+R6i1dGWx4/nm2+qC67rP/cjNZ1oDVvdN4nivFtOdnH5cot7sS7laTz7h7t3dMUUrQ+/v+jQnBG1QwIDAQAB"

    invoke-static {v3}, Lcom/meizu/gslb2/i;->a(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/gslb2/q;->b:Ljava/security/PublicKey;

    .line 107
    :cond_a
    const-string v3, "secrete"

    invoke-interface {v2, v3}, Lcom/meizu/gslb2/q$b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/gslb2/q;->b:Ljava/security/PublicKey;

    invoke-static {v0, v2, v3}, Lcom/meizu/gslb2/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/security/PublicKey;)Z

    .line 108
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 109
    const-string v3, "name"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 110
    const-string v3, "key"

    invoke-virtual {v2, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 111
    const-string v3, "load_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v2, v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 112
    const-string v3, "body"

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 119
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 120
    sub-long v4, v6, v4

    invoke-virtual {v1, v4, v5}, Lcom/meizu/gslb2/t;->a(J)Lcom/meizu/gslb2/t;

    .line 121
    invoke-virtual {v1}, Lcom/meizu/gslb2/t;->a()V

    .line 123
    iget-object v0, p0, Lcom/meizu/gslb2/q;->a:Lcom/meizu/gslb2/GslbManager;

    invoke-virtual {v0}, Lcom/meizu/gslb2/GslbManager;->logger()Lcom/meizu/gslb2/f;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "json response:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/gslb2/f;->b(Ljava/lang/String;)V

    .line 124
    return-object v2
.end method
