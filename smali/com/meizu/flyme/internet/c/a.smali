.class public Lcom/meizu/flyme/internet/c/a;
.super Ljavax/net/ssl/SSLSocketFactory;
.source "SourceFile"


# instance fields
.field private a:Ljavax/net/ssl/SSLSocketFactory;

.field private b:Landroid/net/SSLSessionCache;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/flyme/internet/c/a;-><init>(Landroid/content/Context;Ljavax/net/ssl/SSLContext;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljavax/net/ssl/SSLContext;)V
    .locals 5

    .prologue
    .line 34
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocketFactory;-><init>()V

    .line 35
    new-instance v0, Landroid/net/SSLSessionCache;

    invoke-direct {v0, p1}, Landroid/net/SSLSessionCache;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meizu/flyme/internet/c/a;->b:Landroid/net/SSLSessionCache;

    .line 37
    if-nez p2, :cond_0

    .line 38
    :try_start_0
    invoke-static {}, Ljavax/net/ssl/SSLContext;->getDefault()Ljavax/net/ssl/SSLContext;

    move-result-object p2

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/meizu/flyme/internet/c/a;->b:Landroid/net/SSLSessionCache;

    invoke-static {v0}, Lcom/meizu/flyme/internet/b/a;->a(Ljava/lang/Object;)Lcom/meizu/flyme/internet/b/a;

    move-result-object v0

    const-string v1, "install"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/net/SSLSessionCache;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljavax/net/ssl/SSLContext;

    aput-object v4, v2, v3

    .line 41
    invoke-virtual {v0, v1, v2}, Lcom/meizu/flyme/internet/b/a;->a(Ljava/lang/String;[Ljava/lang/Class;)Lcom/meizu/flyme/internet/b/b;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/meizu/flyme/internet/c/a;->b:Landroid/net/SSLSessionCache;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    .line 42
    invoke-virtual {v0, v1}, Lcom/meizu/flyme/internet/b/b;->a([Ljava/lang/Object;)Lcom/meizu/flyme/internet/a;

    move-result-object v0

    .line 43
    const-string v1, "TlsSessionTicket"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "install tls session cache "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, v0, Lcom/meizu/flyme/internet/a;->b:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/meizu/flyme/internet/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p2}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/flyme/internet/c/a;->a:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :goto_0
    return-void

    .line 45
    :catch_0
    move-exception v0

    .line 46
    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocketFactory;

    iput-object v0, p0, Lcom/meizu/flyme/internet/c/a;->a:Ljavax/net/ssl/SSLSocketFactory;

    goto :goto_0
.end method

.method private a(Ljava/net/Socket;)Ljava/net/Socket;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 51
    instance-of v0, p1, Ljavax/net/ssl/SSLSocket;

    if-eqz v0, :cond_1

    .line 52
    invoke-static {p1}, Lcom/meizu/flyme/internet/b/a;->a(Ljava/lang/Object;)Lcom/meizu/flyme/internet/b/a;

    move-result-object v0

    const-string v1, "setUseSessionTickets"

    new-array v2, v4, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v5

    .line 53
    invoke-virtual {v0, v1, v2}, Lcom/meizu/flyme/internet/b/a;->a(Ljava/lang/String;[Ljava/lang/Class;)Lcom/meizu/flyme/internet/b/b;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    .line 55
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lcom/meizu/flyme/internet/b/b;->a([Ljava/lang/Object;)Lcom/meizu/flyme/internet/a;

    move-result-object v0

    .line 56
    iget-boolean v0, v0, Lcom/meizu/flyme/internet/a;->b:Z

    if-nez v0, :cond_0

    .line 57
    const-string v0, "TlsSessionTicket"

    const-string v1, "set ssl session ticket support false"

    invoke-static {v0, v1}, Lcom/meizu/flyme/internet/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :cond_0
    :goto_0
    return-object p1

    .line 60
    :cond_1
    const-string v0, "TlsSessionTicket"

    const-string v1, "socket is not instance of SSLSocket"

    invoke-static {v0, v1}, Lcom/meizu/flyme/internet/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/meizu/flyme/internet/c/a;->a:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/meizu/flyme/internet/c/a;->a(Ljava/net/Socket;)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lcom/meizu/flyme/internet/c/a;->a:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/meizu/flyme/internet/c/a;->a(Ljava/net/Socket;)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lcom/meizu/flyme/internet/c/a;->a:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/meizu/flyme/internet/c/a;->a(Ljava/net/Socket;)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lcom/meizu/flyme/internet/c/a;->a:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/meizu/flyme/internet/c/a;->a(Ljava/net/Socket;)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lcom/meizu/flyme/internet/c/a;->a:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/meizu/flyme/internet/c/a;->a(Ljava/net/Socket;)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultCipherSuites()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/meizu/flyme/internet/c/a;->a:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->getDefaultCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/meizu/flyme/internet/c/a;->a:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
