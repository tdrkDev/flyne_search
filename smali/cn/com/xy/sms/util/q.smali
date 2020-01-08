.class final Lcn/com/xy/sms/util/q;
.super Ljava/lang/Thread;


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Ljava/lang/String;

.field private final synthetic e:J

.field private final synthetic f:Z

.field private final synthetic g:Z

.field private final synthetic h:Ljava/util/Map;

.field private final synthetic i:Ljava/util/Map;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZZLjava/util/Map;Ljava/util/Map;)V
    .locals 1

    iput-object p1, p0, Lcn/com/xy/sms/util/q;->a:Ljava/lang/String;

    iput-object p2, p0, Lcn/com/xy/sms/util/q;->b:Ljava/lang/String;

    iput-object p3, p0, Lcn/com/xy/sms/util/q;->c:Ljava/lang/String;

    iput-object p4, p0, Lcn/com/xy/sms/util/q;->d:Ljava/lang/String;

    iput-wide p5, p0, Lcn/com/xy/sms/util/q;->e:J

    iput-boolean p7, p0, Lcn/com/xy/sms/util/q;->f:Z

    iput-boolean p8, p0, Lcn/com/xy/sms/util/q;->g:Z

    iput-object p9, p0, Lcn/com/xy/sms/util/q;->h:Ljava/util/Map;

    iput-object p10, p0, Lcn/com/xy/sms/util/q;->i:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    :try_start_0
    const-string v0, "xiaoyuan-parseSmsToBubble"

    invoke-virtual {p0, v0}, Lcn/com/xy/sms/util/q;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/com/xy/sms/util/q;->a:Ljava/lang/String;

    iget-object v1, p0, Lcn/com/xy/sms/util/q;->b:Ljava/lang/String;

    iget-object v2, p0, Lcn/com/xy/sms/util/q;->c:Ljava/lang/String;

    iget-object v3, p0, Lcn/com/xy/sms/util/q;->d:Ljava/lang/String;

    iget-wide v4, p0, Lcn/com/xy/sms/util/q;->e:J

    const/4 v6, 0x3

    iget-boolean v7, p0, Lcn/com/xy/sms/util/q;->f:Z

    iget-boolean v8, p0, Lcn/com/xy/sms/util/q;->g:Z

    iget-object v9, p0, Lcn/com/xy/sms/util/q;->h:Ljava/util/Map;

    iget-object v10, p0, Lcn/com/xy/sms/util/q;->i:Ljava/util/Map;

    invoke-static/range {v0 .. v10}, Lcn/com/xy/sms/util/ParseSmsToBubbleUtil;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIZZLjava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    goto :goto_0
.end method
