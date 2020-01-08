.class final Lcn/com/xy/sms/sdk/service/f/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/com/xy/sms/sdk/Iservice/XyCallBack;


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field private final synthetic b:Ljava/util/List;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Ljava/lang/String;

.field private final synthetic e:Ljava/lang/String;

.field private final synthetic f:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;

.field private final synthetic g:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;Z)V
    .locals 0

    iput-object p1, p0, Lcn/com/xy/sms/sdk/service/f/d;->a:Ljava/lang/String;

    iput-object p2, p0, Lcn/com/xy/sms/sdk/service/f/d;->b:Ljava/util/List;

    iput-object p3, p0, Lcn/com/xy/sms/sdk/service/f/d;->c:Ljava/lang/String;

    iput-object p4, p0, Lcn/com/xy/sms/sdk/service/f/d;->d:Ljava/lang/String;

    iput-object p5, p0, Lcn/com/xy/sms/sdk/service/f/d;->e:Ljava/lang/String;

    iput-object p6, p0, Lcn/com/xy/sms/sdk/service/f/d;->f:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;

    iput-boolean p7, p0, Lcn/com/xy/sms/sdk/service/f/d;->g:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs execute([Ljava/lang/Object;)V
    .locals 8

    const/4 v5, 0x2

    const/4 v1, 0x0

    iget-object v0, p0, Lcn/com/xy/sms/sdk/service/f/d;->a:Ljava/lang/String;

    const-string v2, "cn.com.xy.sms.sdk.service.pubInfo.PubInfoNetService"

    const-string v3, "queryPubInfoByList"

    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lcn/com/xy/sms/sdk/service/f/d;->b:Ljava/util/List;

    aput-object v6, v4, v1

    const/4 v6, 0x1

    iget-object v7, p0, Lcn/com/xy/sms/sdk/service/f/d;->c:Ljava/lang/String;

    aput-object v7, v4, v6

    iget-object v6, p0, Lcn/com/xy/sms/sdk/service/f/d;->d:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v6, 0x3

    iget-object v7, p0, Lcn/com/xy/sms/sdk/service/f/d;->e:Ljava/lang/String;

    aput-object v7, v4, v6

    const/4 v6, 0x4

    iget-object v7, p0, Lcn/com/xy/sms/sdk/service/f/d;->f:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;

    aput-object v7, v4, v6

    const/4 v6, 0x5

    iget-boolean v7, p0, Lcn/com/xy/sms/sdk/service/f/d;->g:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x6

    aput-object p1, v4, v6

    invoke-static {v0, v2, v3, v4}, Lcn/com/xy/sms/sdk/util/ConversationManager;->saveLogOut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcn/com/xy/sms/sdk/service/f/d;->b:Ljava/util/List;

    const/4 v2, 0x0

    iget-object v3, p0, Lcn/com/xy/sms/sdk/service/f/d;->c:Ljava/lang/String;

    iget-object v3, p0, Lcn/com/xy/sms/sdk/service/f/d;->d:Ljava/lang/String;

    iget-object v4, p0, Lcn/com/xy/sms/sdk/service/f/d;->f:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcn/com/xy/sms/sdk/service/f/b;->a(Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;I[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
