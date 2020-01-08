.class public final Lcn/com/xy/sms/sdk/net/l;
.super Lcn/com/xy/sms/sdk/net/a;


# static fields
.field public static a:Ljava/lang/String; = null

.field public static b:Ljava/lang/String; = null

.field private static c:Ljava/lang/String; = "HTTP"


# instance fields
.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcn/com/xy/sms/sdk/net/l;->a:Ljava/lang/String;

    sput-object v0, Lcn/com/xy/sms/sdk/net/l;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcn/com/xy/sms/sdk/Iservice/XyCallBack;Ljava/lang/Boolean;)V
    .locals 8

    const/4 v2, 0x0

    invoke-virtual {p7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p5

    move-object v5, p4

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcn/com/xy/sms/sdk/net/a;-><init>(Ljava/lang/String;Lcn/com/xy/sms/sdk/net/c;Ljava/lang/String;ZLjava/lang/String;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;Z)V

    iput-object p3, p0, Lcn/com/xy/sms/sdk/net/l;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final setHttpHeader(Lcn/com/xy/sms/sdk/net/c;ZLjava/lang/String;Ljava/net/HttpURLConnection;)V
    .locals 4

    const-string v0, "Content-Type"

    const-string v1, "text/xml;UTF-8"

    invoke-virtual {p4, v0, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/com/xy/sms/sdk/net/l;->d:Ljava/lang/String;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "cnum"

    iget-object v1, p0, Lcn/com/xy/sms/sdk/net/l;->d:Ljava/lang/String;

    invoke-virtual {p4, v0, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcn/com/xy/sms/sdk/net/l;->b:Ljava/lang/String;

    if-eqz p2, :cond_5

    const-string v1, "command"

    const-string v2, "2"

    invoke-virtual {p4, v1, v2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    sget-object v1, Lcn/com/xy/sms/sdk/net/l;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcn/com/xy/sms/sdk/net/util/m;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "app-key"

    sget-object v2, Lcn/com/xy/sms/sdk/net/l;->b:Ljava/lang/String;

    invoke-virtual {p4, v1, v2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "app-key-sign"

    invoke-virtual {p4, v1, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "compress"

    const-string v1, "1"

    invoke-virtual {p4, v0, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "loginid"

    const-string v1, ""

    invoke-virtual {p4, v0, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "recordState"

    invoke-static {}, Lcn/com/xy/sms/sdk/util/u;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v0, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sdkversion"

    sget-object v1, Lcn/com/xy/sms/sdk/net/NetUtil;->APPVERSION:Ljava/lang/String;

    invoke-virtual {p4, v0, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "abi"

    invoke-static {}, Lcn/com/xy/sms/sdk/net/l;->a()Ljava/lang/String;

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

    if-eqz v3, :cond_2

    const-string v0, "bizport.cn/66dc91e8b78b1c284027a3eb1be0a70e"

    :cond_2
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

    sget-boolean v0, Lcn/com/xy/sms/sdk/log/LogManager;->debug:Z

    if-eqz v0, :cond_3

    invoke-virtual {p4}, Ljava/net/HttpURLConnection;->getRequestProperties()Ljava/util/Map;

    :cond_3
    invoke-static {p3}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "cmd"

    invoke-virtual {p4, v0, p3}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p0, p4}, Lcn/com/xy/sms/sdk/net/l;->addHeadSign(Ljava/net/HttpURLConnection;)V

    return-void

    :cond_5
    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "HTTPTOKEN"

    invoke-static {v1, v2}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->getStringParam(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "command"

    const-string v3, "1"

    invoke-virtual {p4, v2, v3}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

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

    goto/16 :goto_0
.end method
