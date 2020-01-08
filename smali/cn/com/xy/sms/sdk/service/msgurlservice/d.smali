.class final Lcn/com/xy/sms/sdk/service/msgurlservice/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lorg/json/JSONArray;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:I


# direct methods
.method constructor <init>(Lorg/json/JSONArray;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/d;->a:Lorg/json/JSONArray;

    iput-object p2, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/d;->b:Ljava/lang/String;

    iput p3, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/d;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/d;->a:Lorg/json/JSONArray;

    iget-object v1, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/d;->b:Ljava/lang/String;

    iget v2, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/d;->c:I

    invoke-static {v0, v1, v2}, Lcn/com/xy/sms/sdk/service/msgurlservice/MsgUrlService;->saveUrlResult(Lorg/json/JSONArray;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    goto :goto_0
.end method
