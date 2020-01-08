.class final Lcn/com/xy/sms/util/r;
.super Ljava/lang/Thread;


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field private final synthetic b:Ljava/util/Map;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcn/com/xy/sms/util/r;->a:Ljava/lang/String;

    iput-object p2, p0, Lcn/com/xy/sms/util/r;->b:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    const-string v0, "xiaoyuan-parseSmsToBubble1"

    invoke-virtual {p0, v0}, Lcn/com/xy/sms/util/r;->setName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcn/com/xy/sms/util/r;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcn/com/xy/sms/util/r;->b:Ljava/util/Map;

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/dex/DexUtil;->handerValueMapByType(ILjava/util/Map;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcn/com/xy/sms/sdk/util/DuoquUtils;->getSdkDoAction()Lcn/com/xy/sms/sdk/action/AbsSdkDoAction;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcn/com/xy/sms/sdk/action/AbsSdkDoAction;->parseMsgCallBack(ILjava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method
