.class public Lcom/inveno/se/volley/toolbox/PreferredCipherSuiteSSLSocketFactory;
.super Ljavax/net/ssl/SSLSocketFactory;


# static fields
.field private static final PREFERRED_CIPHER_SUITE:Ljava/lang/String; = "TLS_RSA_WITH_AES_128_CBC_SHA"


# instance fields
.field private final delegate:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method public constructor <init>(Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 0

    invoke-direct {p0}, Ljavax/net/ssl/SSLSocketFactory;-><init>()V

    iput-object p1, p0, Lcom/inveno/se/volley/toolbox/PreferredCipherSuiteSSLSocketFactory;->delegate:Ljavax/net/ssl/SSLSocketFactory;

    return-void
.end method

.method private static setupPreferredDefaultCipherSuites(Ljavax/net/ssl/SSLSocketFactory;)[Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Ljavax/net/ssl/SSLSocketFactory;->getDefaultCipherSuites()[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v0, "TLS_RSA_WITH_AES_128_CBC_SHA"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    const-string v2, "TLS_RSA_WITH_AES_128_CBC_SHA"

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method private static setupPreferredSupportedCipherSuites(Ljavax/net/ssl/SSLSocketFactory;)[Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Ljavax/net/ssl/SSLSocketFactory;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v0, "TLS_RSA_WITH_AES_128_CBC_SHA"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    const-string v2, "TLS_RSA_WITH_AES_128_CBC_SHA"

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    iget-object v0, p0, Lcom/inveno/se/volley/toolbox/PreferredCipherSuiteSSLSocketFactory;->delegate:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v1

    iget-object v0, p0, Lcom/inveno/se/volley/toolbox/PreferredCipherSuiteSSLSocketFactory;->delegate:Ljavax/net/ssl/SSLSocketFactory;

    invoke-static {v0}, Lcom/inveno/se/volley/toolbox/PreferredCipherSuiteSSLSocketFactory;->setupPreferredDefaultCipherSuites(Ljavax/net/ssl/SSLSocketFactory;)[Ljava/lang/String;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0, v2}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    return-object v1
.end method

.method public createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    iget-object v0, p0, Lcom/inveno/se/volley/toolbox/PreferredCipherSuiteSSLSocketFactory;->delegate:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v1

    iget-object v0, p0, Lcom/inveno/se/volley/toolbox/PreferredCipherSuiteSSLSocketFactory;->delegate:Ljavax/net/ssl/SSLSocketFactory;

    invoke-static {v0}, Lcom/inveno/se/volley/toolbox/PreferredCipherSuiteSSLSocketFactory;->setupPreferredDefaultCipherSuites(Ljavax/net/ssl/SSLSocketFactory;)[Ljava/lang/String;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0, v2}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    return-object v1
.end method

.method public createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/inveno/se/volley/toolbox/PreferredCipherSuiteSSLSocketFactory;->delegate:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v1

    iget-object v0, p0, Lcom/inveno/se/volley/toolbox/PreferredCipherSuiteSSLSocketFactory;->delegate:Ljavax/net/ssl/SSLSocketFactory;

    invoke-static {v0}, Lcom/inveno/se/volley/toolbox/PreferredCipherSuiteSSLSocketFactory;->setupPreferredDefaultCipherSuites(Ljavax/net/ssl/SSLSocketFactory;)[Ljava/lang/String;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0, v2}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    return-object v1
.end method

.method public createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/inveno/se/volley/toolbox/PreferredCipherSuiteSSLSocketFactory;->delegate:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v1

    iget-object v0, p0, Lcom/inveno/se/volley/toolbox/PreferredCipherSuiteSSLSocketFactory;->delegate:Ljavax/net/ssl/SSLSocketFactory;

    invoke-static {v0}, Lcom/inveno/se/volley/toolbox/PreferredCipherSuiteSSLSocketFactory;->setupPreferredDefaultCipherSuites(Ljavax/net/ssl/SSLSocketFactory;)[Ljava/lang/String;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0, v2}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    return-object v1
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/inveno/se/volley/toolbox/PreferredCipherSuiteSSLSocketFactory;->delegate:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v1

    iget-object v0, p0, Lcom/inveno/se/volley/toolbox/PreferredCipherSuiteSSLSocketFactory;->delegate:Ljavax/net/ssl/SSLSocketFactory;

    invoke-static {v0}, Lcom/inveno/se/volley/toolbox/PreferredCipherSuiteSSLSocketFactory;->setupPreferredDefaultCipherSuites(Ljavax/net/ssl/SSLSocketFactory;)[Ljava/lang/String;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0, v2}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    return-object v1
.end method

.method public getDefaultCipherSuites()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/volley/toolbox/PreferredCipherSuiteSSLSocketFactory;->delegate:Ljavax/net/ssl/SSLSocketFactory;

    invoke-static {v0}, Lcom/inveno/se/volley/toolbox/PreferredCipherSuiteSSLSocketFactory;->setupPreferredDefaultCipherSuites(Ljavax/net/ssl/SSLSocketFactory;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/volley/toolbox/PreferredCipherSuiteSSLSocketFactory;->delegate:Ljavax/net/ssl/SSLSocketFactory;

    invoke-static {v0}, Lcom/inveno/se/volley/toolbox/PreferredCipherSuiteSSLSocketFactory;->setupPreferredSupportedCipherSuites(Ljavax/net/ssl/SSLSocketFactory;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
