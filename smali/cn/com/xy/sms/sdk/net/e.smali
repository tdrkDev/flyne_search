.class final Lcn/com/xy/sms/sdk/net/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# instance fields
.field private synthetic a:Lcn/com/xy/sms/sdk/net/d;


# direct methods
.method constructor <init>(Lcn/com/xy/sms/sdk/net/d;)V
    .locals 0

    iput-object p1, p0, Lcn/com/xy/sms/sdk/net/e;->a:Lcn/com/xy/sms/sdk/net/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v2, -0x1

    :try_start_0
    iget-object v1, p0, Lcn/com/xy/sms/sdk/net/e;->a:Lcn/com/xy/sms/sdk/net/d;

    invoke-static {v1}, Lcn/com/xy/sms/sdk/net/d;->a(Lcn/com/xy/sms/sdk/net/d;)I

    move-result v1

    if-nez v1, :cond_2

    if-eqz p1, :cond_2

    const-string v1, "duoqu.in"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_0

    const-string v1, "bizport.cn"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_2

    :cond_0
    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1, p1, p2}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
