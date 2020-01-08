.class final Lcn/com/xy/sms/sdk/service/f/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/com/xy/sms/sdk/Iservice/XyCallBack;


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Z

.field private final synthetic e:Ljava/lang/String;

.field private final synthetic f:Ljava/lang/String;

.field private final synthetic g:Ljava/lang/String;

.field private final synthetic h:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;

.field private final synthetic i:I

.field private final synthetic j:Z

.field private final synthetic k:Z

.field private final synthetic l:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;IZZZ)V
    .locals 0

    iput-object p1, p0, Lcn/com/xy/sms/sdk/service/f/c;->a:Ljava/lang/String;

    iput-object p2, p0, Lcn/com/xy/sms/sdk/service/f/c;->b:Ljava/lang/String;

    iput-object p3, p0, Lcn/com/xy/sms/sdk/service/f/c;->c:Ljava/lang/String;

    iput-boolean p4, p0, Lcn/com/xy/sms/sdk/service/f/c;->d:Z

    iput-object p5, p0, Lcn/com/xy/sms/sdk/service/f/c;->e:Ljava/lang/String;

    iput-object p6, p0, Lcn/com/xy/sms/sdk/service/f/c;->f:Ljava/lang/String;

    iput-object p7, p0, Lcn/com/xy/sms/sdk/service/f/c;->g:Ljava/lang/String;

    iput-object p8, p0, Lcn/com/xy/sms/sdk/service/f/c;->h:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;

    iput p9, p0, Lcn/com/xy/sms/sdk/service/f/c;->i:I

    iput-boolean p10, p0, Lcn/com/xy/sms/sdk/service/f/c;->j:Z

    iput-boolean p11, p0, Lcn/com/xy/sms/sdk/service/f/c;->k:Z

    iput-boolean p12, p0, Lcn/com/xy/sms/sdk/service/f/c;->l:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs execute([Ljava/lang/Object;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v0, p0, Lcn/com/xy/sms/sdk/service/f/c;->a:Ljava/lang/String;

    iget-object v1, p0, Lcn/com/xy/sms/sdk/service/f/c;->b:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcn/com/xy/sms/sdk/service/f/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcn/com/xy/sms/sdk/service/f/c;->c:Ljava/lang/String;

    const-string v1, "cn.com.xy.sms.sdk.service.pubInfo.PubInfoNetService"

    const-string v2, "queryPubInfoRequest"

    const/16 v3, 0xc

    new-array v3, v3, [Ljava/lang/Object;

    iget-boolean v4, p0, Lcn/com/xy/sms/sdk/service/f/c;->d:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v7

    iget-object v4, p0, Lcn/com/xy/sms/sdk/service/f/c;->a:Ljava/lang/String;

    aput-object v4, v3, v8

    const/4 v4, 0x2

    iget-object v5, p0, Lcn/com/xy/sms/sdk/service/f/c;->e:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p0, Lcn/com/xy/sms/sdk/service/f/c;->b:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    iget-object v5, p0, Lcn/com/xy/sms/sdk/service/f/c;->f:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x5

    iget-object v5, p0, Lcn/com/xy/sms/sdk/service/f/c;->g:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x6

    iget-object v5, p0, Lcn/com/xy/sms/sdk/service/f/c;->h:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;

    aput-object v5, v3, v4

    const/4 v4, 0x7

    iget v5, p0, Lcn/com/xy/sms/sdk/service/f/c;->i:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0x8

    iget-boolean v5, p0, Lcn/com/xy/sms/sdk/service/f/c;->j:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0x9

    iget-boolean v5, p0, Lcn/com/xy/sms/sdk/service/f/c;->k:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0xa

    iget-boolean v5, p0, Lcn/com/xy/sms/sdk/service/f/c;->l:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0xb

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcn/com/xy/sms/sdk/util/ConversationManager;->saveLogIn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcn/com/xy/sms/sdk/service/f/c;->d:Z

    iget-object v2, p0, Lcn/com/xy/sms/sdk/service/f/c;->a:Ljava/lang/String;

    iget-object v3, p0, Lcn/com/xy/sms/sdk/service/f/c;->e:Ljava/lang/String;

    iget-object v3, p0, Lcn/com/xy/sms/sdk/service/f/c;->b:Ljava/lang/String;

    iget-object v3, p0, Lcn/com/xy/sms/sdk/service/f/c;->f:Ljava/lang/String;

    iget-object v4, p0, Lcn/com/xy/sms/sdk/service/f/c;->h:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;

    iget v5, p0, Lcn/com/xy/sms/sdk/service/f/c;->i:I

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcn/com/xy/sms/sdk/service/f/b;->a(Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcn/com/xy/sms/sdk/service/f/c;->i:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/com/xy/sms/sdk/service/f/c;->a:Ljava/lang/String;

    iget-object v1, p0, Lcn/com/xy/sms/sdk/service/f/c;->b:Ljava/lang/String;

    iget-object v2, p0, Lcn/com/xy/sms/sdk/service/f/c;->g:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcn/com/xy/sms/sdk/db/entity/a/f;->a(Ljava/lang/String;Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcn/com/xy/sms/sdk/service/f/c;->h:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/com/xy/sms/sdk/service/f/c;->a:Ljava/lang/String;

    iget-object v2, p0, Lcn/com/xy/sms/sdk/service/f/c;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcn/com/xy/sms/sdk/util/JsonUtil;->pubInfoToJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/com/xy/sms/sdk/service/f/c;->h:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;

    new-array v2, v8, [Ljava/lang/Object;

    aput-object v0, v2, v7

    invoke-interface {v1, v2}, Lcn/com/xy/sms/sdk/Iservice/XyCallBack;->execute([Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
