.class public Lcom/meizu/gslb2/urlconn/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/meizu/gslb2/GslbManager;

.field private b:Ljava/net/URL;

.field private c:Ljava/net/URL;

.field private d:Lcom/meizu/gslb2/o;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/meizu/gslb2/GslbManager;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/meizu/gslb2/urlconn/a;->a:Lcom/meizu/gslb2/GslbManager;

    .line 29
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/meizu/gslb2/urlconn/a;->b:Ljava/net/URL;

    .line 30
    return-void
.end method

.method private a()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lcom/meizu/gslb2/urlconn/a;->b:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/gslb2/urlconn/a;->e:Ljava/lang/String;

    .line 34
    iget-object v0, p0, Lcom/meizu/gslb2/urlconn/a;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/meizu/gslb2/l;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/meizu/gslb2/urlconn/a;->a:Lcom/meizu/gslb2/GslbManager;

    iget-object v1, p0, Lcom/meizu/gslb2/urlconn/a;->e:Ljava/lang/String;

    .line 36
    invoke-static {}, Lcom/meizu/gslb2/c;->a()Lcom/meizu/gslb2/c;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/gslb2/urlconn/a;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/meizu/gslb2/c;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 35
    invoke-virtual {v0, v1, v2}, Lcom/meizu/gslb2/GslbManager;->convert(Ljava/lang/String;Ljava/util/Map;)Lcom/meizu/gslb2/o;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/gslb2/urlconn/a;->d:Lcom/meizu/gslb2/o;

    .line 37
    iget-object v0, p0, Lcom/meizu/gslb2/urlconn/a;->d:Lcom/meizu/gslb2/o;

    if-eqz v0, :cond_1

    .line 38
    iget-object v0, p0, Lcom/meizu/gslb2/urlconn/a;->a:Lcom/meizu/gslb2/GslbManager;

    invoke-virtual {v0}, Lcom/meizu/gslb2/GslbManager;->eventListener()Lcom/meizu/gslb2/j;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/gslb2/urlconn/a;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/meizu/gslb2/urlconn/a;->d:Lcom/meizu/gslb2/o;

    invoke-virtual {v2}, Lcom/meizu/gslb2/o;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/meizu/gslb2/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/meizu/gslb2/urlconn/a;->b:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/gslb2/urlconn/a;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/meizu/gslb2/urlconn/a;->d:Lcom/meizu/gslb2/o;

    invoke-virtual {v3}, Lcom/meizu/gslb2/o;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/meizu/gslb2/urlconn/a;->c:Ljava/net/URL;

    .line 44
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    iget-object v0, p0, Lcom/meizu/gslb2/urlconn/a;->a:Lcom/meizu/gslb2/GslbManager;

    invoke-virtual {v0}, Lcom/meizu/gslb2/GslbManager;->eventListener()Lcom/meizu/gslb2/j;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/gslb2/urlconn/a;->e:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/meizu/gslb2/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/meizu/gslb2/urlconn/b;)Ljava/net/HttpURLConnection;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 47
    invoke-direct {p0}, Lcom/meizu/gslb2/urlconn/a;->a()V

    .line 50
    iget-object v0, p0, Lcom/meizu/gslb2/urlconn/a;->c:Ljava/net/URL;

    if-eqz v0, :cond_9

    .line 51
    if-eqz p1, :cond_6

    iget-object v0, p1, Lcom/meizu/gslb2/urlconn/b;->a:Ljava/net/Proxy;

    if-eqz v0, :cond_6

    .line 52
    iget-object v0, p0, Lcom/meizu/gslb2/urlconn/a;->c:Ljava/net/URL;

    iget-object v1, p1, Lcom/meizu/gslb2/urlconn/b;->a:Ljava/net/Proxy;

    invoke-virtual {v0, v1}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 56
    :goto_0
    const-string v0, "Host"

    iget-object v4, p0, Lcom/meizu/gslb2/urlconn/a;->e:Ljava/lang/String;

    invoke-virtual {v1, v0, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    instance-of v0, v1, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 58
    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 59
    iget-object v4, p0, Lcom/meizu/gslb2/urlconn/a;->a:Lcom/meizu/gslb2/GslbManager;

    invoke-virtual {v4}, Lcom/meizu/gslb2/GslbManager;->sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 60
    iget-object v4, p0, Lcom/meizu/gslb2/urlconn/a;->a:Lcom/meizu/gslb2/GslbManager;

    invoke-virtual {v4}, Lcom/meizu/gslb2/GslbManager;->sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 62
    :cond_0
    new-instance v4, Lcom/meizu/gslb2/e;

    iget-object v5, p0, Lcom/meizu/gslb2/urlconn/a;->e:Ljava/lang/String;

    invoke-direct {v4, v5, v3}, Lcom/meizu/gslb2/e;-><init>(Ljava/lang/String;Ljavax/net/ssl/HostnameVerifier;)V

    invoke-virtual {v0, v4}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 64
    :cond_1
    if-eqz p1, :cond_2

    .line 65
    invoke-virtual {p1, v1}, Lcom/meizu/gslb2/urlconn/b;->a(Ljava/net/HttpURLConnection;)V

    .line 68
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/meizu/gslb2/urlconn/a;->d:Lcom/meizu/gslb2/o;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/meizu/gslb2/o;->a(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 69
    :goto_1
    iget-object v0, p0, Lcom/meizu/gslb2/urlconn/a;->a:Lcom/meizu/gslb2/GslbManager;

    invoke-virtual {v0}, Lcom/meizu/gslb2/GslbManager;->eventListener()Lcom/meizu/gslb2/j;

    move-result-object v0

    iget-object v3, p0, Lcom/meizu/gslb2/urlconn/a;->b:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/meizu/gslb2/urlconn/a;->d:Lcom/meizu/gslb2/o;

    invoke-virtual {v4}, Lcom/meizu/gslb2/o;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    invoke-interface {v0, v3, v4, v5}, Lcom/meizu/gslb2/j;->a(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :goto_2
    if-eqz v2, :cond_3

    .line 75
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 78
    :cond_3
    :goto_3
    if-eqz v2, :cond_5

    .line 79
    if-eqz p1, :cond_8

    iget-object v0, p1, Lcom/meizu/gslb2/urlconn/b;->a:Ljava/net/Proxy;

    if-eqz v0, :cond_8

    .line 80
    iget-object v0, p0, Lcom/meizu/gslb2/urlconn/a;->b:Ljava/net/URL;

    iget-object v1, p1, Lcom/meizu/gslb2/urlconn/b;->a:Ljava/net/Proxy;

    invoke-virtual {v0, v1}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 84
    :goto_4
    iget-object v0, p0, Lcom/meizu/gslb2/urlconn/a;->a:Lcom/meizu/gslb2/GslbManager;

    invoke-virtual {v0}, Lcom/meizu/gslb2/GslbManager;->sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    if-eqz v0, :cond_4

    instance-of v0, v1, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_4

    move-object v0, v1

    .line 86
    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 87
    iget-object v2, p0, Lcom/meizu/gslb2/urlconn/a;->a:Lcom/meizu/gslb2/GslbManager;

    invoke-virtual {v2}, Lcom/meizu/gslb2/GslbManager;->sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 89
    :cond_4
    if-eqz p1, :cond_5

    .line 90
    invoke-virtual {p1, v1}, Lcom/meizu/gslb2/urlconn/b;->a(Ljava/net/HttpURLConnection;)V

    .line 93
    :cond_5
    return-object v1

    .line 54
    :cond_6
    iget-object v0, p0, Lcom/meizu/gslb2/urlconn/a;->c:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    goto/16 :goto_0

    .line 68
    :cond_7
    const/4 v2, 0x0

    goto :goto_1

    .line 70
    :catch_0
    move-exception v0

    .line 71
    iget-object v3, p0, Lcom/meizu/gslb2/urlconn/a;->a:Lcom/meizu/gslb2/GslbManager;

    invoke-virtual {v3}, Lcom/meizu/gslb2/GslbManager;->eventListener()Lcom/meizu/gslb2/j;

    move-result-object v3

    iget-object v4, p0, Lcom/meizu/gslb2/urlconn/a;->b:Ljava/net/URL;

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/meizu/gslb2/urlconn/a;->d:Lcom/meizu/gslb2/o;

    invoke-virtual {v5}, Lcom/meizu/gslb2/o;->a()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5, v0}, Lcom/meizu/gslb2/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 72
    iget-object v0, p0, Lcom/meizu/gslb2/urlconn/a;->d:Lcom/meizu/gslb2/o;

    const/16 v3, 0x3e8

    invoke-virtual {v0, v3}, Lcom/meizu/gslb2/o;->a(I)Z

    goto :goto_2

    .line 82
    :cond_8
    iget-object v0, p0, Lcom/meizu/gslb2/urlconn/a;->b:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    goto :goto_4

    :cond_9
    move-object v1, v3

    goto :goto_3
.end method
