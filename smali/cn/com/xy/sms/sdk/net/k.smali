.class public final Lcn/com/xy/sms/sdk/net/k;
.super Lcn/com/xy/sms/sdk/net/a;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;Z)V
    .locals 8

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p2

    move-object v3, p3

    move-object v5, v2

    move-object v6, p4

    invoke-direct/range {v0 .. v7}, Lcn/com/xy/sms/sdk/net/a;-><init>(Ljava/lang/String;Lcn/com/xy/sms/sdk/net/c;Ljava/lang/String;ZLjava/lang/String;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;Z)V

    const/4 v0, -0x1

    iput v0, p0, Lcn/com/xy/sms/sdk/net/k;->a:I

    iput p1, p0, Lcn/com/xy/sms/sdk/net/k;->a:I

    return-void
.end method


# virtual methods
.method public final setHttpHeader(Lcn/com/xy/sms/sdk/net/c;ZLjava/lang/String;Ljava/net/HttpURLConnection;)V
    .locals 3

    invoke-super {p0, p1, p2, p3, p4}, Lcn/com/xy/sms/sdk/net/a;->setHttpHeader(Lcn/com/xy/sms/sdk/net/c;ZLjava/lang/String;Ljava/net/HttpURLConnection;)V

    const-string v0, "sceneType"

    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, p0, Lcn/com/xy/sms/sdk/net/k;->a:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v0, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "reqVersion"

    const-string v1, "5.1.2"

    invoke-virtual {p4, v0, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "clientKey"

    sget-object v1, Lcn/com/xy/sms/sdk/net/l;->b:Ljava/lang/String;

    invoke-virtual {p4, v0, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "client_key"

    const-string v1, "123456"

    invoke-virtual {p4, v0, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
