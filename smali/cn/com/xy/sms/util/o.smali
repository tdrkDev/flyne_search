.class final Lcn/com/xy/sms/util/o;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/com/xy/sms/util/SdkCallBack;


# instance fields
.field private final synthetic a:Ljava/util/HashMap;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Ljava/lang/String;

.field private final synthetic e:Ljava/lang/String;

.field private final synthetic f:J

.field private final synthetic g:Z

.field private final synthetic h:Lcn/com/xy/sms/util/SdkCallBack;


# direct methods
.method constructor <init>(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZLcn/com/xy/sms/util/SdkCallBack;)V
    .locals 0

    iput-object p1, p0, Lcn/com/xy/sms/util/o;->a:Ljava/util/HashMap;

    iput-object p2, p0, Lcn/com/xy/sms/util/o;->b:Ljava/lang/String;

    iput-object p3, p0, Lcn/com/xy/sms/util/o;->c:Ljava/lang/String;

    iput-object p4, p0, Lcn/com/xy/sms/util/o;->d:Ljava/lang/String;

    iput-object p5, p0, Lcn/com/xy/sms/util/o;->e:Ljava/lang/String;

    iput-wide p6, p0, Lcn/com/xy/sms/util/o;->f:J

    iput-boolean p8, p0, Lcn/com/xy/sms/util/o;->g:Z

    iput-object p9, p0, Lcn/com/xy/sms/util/o;->h:Lcn/com/xy/sms/util/SdkCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs execute([Ljava/lang/Object;)V
    .locals 11

    :try_start_0
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcn/com/xy/sms/util/o;->a:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/xy/sms/util/o;->a:Ljava/util/HashMap;

    const-string v1, "isUseNewAction"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "isUseNewAction"

    iget-object v1, p0, Lcn/com/xy/sms/util/o;->a:Ljava/util/HashMap;

    const-string v2, "isUseNewAction"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v10, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Lcn/com/xy/sms/util/o;->b:Ljava/lang/String;

    iget-object v2, p0, Lcn/com/xy/sms/util/o;->c:Ljava/lang/String;

    iget-object v3, p0, Lcn/com/xy/sms/util/o;->d:Ljava/lang/String;

    iget-object v4, p0, Lcn/com/xy/sms/util/o;->e:Ljava/lang/String;

    const/4 v5, 0x1

    iget-wide v6, p0, Lcn/com/xy/sms/util/o;->f:J

    new-instance v8, Lcn/com/xy/sms/util/p;

    iget-object v0, p0, Lcn/com/xy/sms/util/o;->h:Lcn/com/xy/sms/util/SdkCallBack;

    iget-object v9, p0, Lcn/com/xy/sms/util/o;->b:Ljava/lang/String;

    invoke-direct {v8, p0, p1, v0, v9}, Lcn/com/xy/sms/util/p;-><init>(Lcn/com/xy/sms/util/o;[Ljava/lang/Object;Lcn/com/xy/sms/util/SdkCallBack;Ljava/lang/String;)V

    iget-boolean v9, p0, Lcn/com/xy/sms/util/o;->g:Z

    invoke-static/range {v1 .. v10}, Lcn/com/xy/sms/util/ParseBubbleManager;->queryDataByMsgItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLcn/com/xy/sms/util/SdkCallBack;ZLjava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
