.class final Lcn/com/xy/sms/sdk/service/msgurlservice/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Ljava/lang/String;

.field private final synthetic e:[Ljava/lang/String;

.field private final synthetic f:Ljava/util/Map;

.field private final synthetic g:Ljava/util/HashMap;

.field private final synthetic h:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;Ljava/util/HashMap;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;)V
    .locals 0

    iput-object p1, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/b;->a:Ljava/lang/String;

    iput-object p2, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/b;->b:Ljava/lang/String;

    iput-object p3, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/b;->c:Ljava/lang/String;

    iput-object p4, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/b;->d:Ljava/lang/String;

    iput-object p5, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/b;->e:[Ljava/lang/String;

    iput-object p6, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/b;->f:Ljava/util/Map;

    iput-object p7, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/b;->g:Ljava/util/HashMap;

    iput-object p8, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/b;->h:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/b;->a:Ljava/lang/String;

    iget-object v1, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/b;->b:Ljava/lang/String;

    iget-object v2, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/b;->c:Ljava/lang/String;

    iget-object v3, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/b;->d:Ljava/lang/String;

    iget-object v4, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/b;->e:[Ljava/lang/String;

    iget-object v5, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/b;->f:Ljava/util/Map;

    const/4 v6, 0x0

    iget-object v7, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/b;->g:Ljava/util/HashMap;

    iget-object v8, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/b;->h:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;

    invoke-static/range {v0 .. v8}, Lcn/com/xy/sms/sdk/service/msgurlservice/MsgUrlService;->checkValidUrlNet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;ZLjava/util/HashMap;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;)V

    return-void
.end method
