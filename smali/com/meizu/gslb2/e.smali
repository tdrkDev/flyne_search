.class public Lcom/meizu/gslb2/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljavax/net/ssl/HostnameVerifier;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljavax/net/ssl/HostnameVerifier;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/meizu/gslb2/e;->a:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/meizu/gslb2/e;->b:Ljavax/net/ssl/HostnameVerifier;

    .line 23
    return-void
.end method


# virtual methods
.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 28
    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v2

    .line 29
    iget-object v3, p0, Lcom/meizu/gslb2/e;->a:Ljava/lang/String;

    invoke-interface {v2, v3, p2}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 30
    invoke-interface {v2, p1, p2}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    move v2, v1

    .line 31
    :goto_0
    if-nez v2, :cond_4

    iget-object v3, p0, Lcom/meizu/gslb2/e;->b:Ljavax/net/ssl/HostnameVerifier;

    if-eqz v3, :cond_4

    .line 32
    iget-object v2, p0, Lcom/meizu/gslb2/e;->b:Ljavax/net/ssl/HostnameVerifier;

    iget-object v3, p0, Lcom/meizu/gslb2/e;->a:Ljava/lang/String;

    invoke-interface {v2, v3, p2}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/meizu/gslb2/e;->b:Ljavax/net/ssl/HostnameVerifier;

    .line 33
    invoke-interface {v2, p1, p2}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    move v0, v1

    .line 35
    :cond_2
    :goto_1
    return v0

    :cond_3
    move v2, v0

    .line 30
    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1
.end method
