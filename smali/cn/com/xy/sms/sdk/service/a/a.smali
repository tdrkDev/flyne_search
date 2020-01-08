.class public final Lcn/com/xy/sms/sdk/service/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:J

.field f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field g:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/com/xy/sms/sdk/service/a/a;->g:Ljava/lang/Thread;

    return-void
.end method

.method private c()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "xy_baseparse_1"

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/a/a;->a(Ljava/lang/String;I)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcn/com/xy/sms/sdk/service/a/a;->g:Ljava/lang/Thread;

    iget-object v0, p0, Lcn/com/xy/sms/sdk/service/a/a;->a:Landroid/content/Context;

    iget-object v1, p0, Lcn/com/xy/sms/sdk/service/a/a;->b:Ljava/lang/String;

    iget-object v2, p0, Lcn/com/xy/sms/sdk/service/a/a;->c:Ljava/lang/String;

    iget-object v3, p0, Lcn/com/xy/sms/sdk/service/a/a;->d:Ljava/lang/String;

    iget-wide v4, p0, Lcn/com/xy/sms/sdk/service/a/a;->e:J

    iget-object v6, p0, Lcn/com/xy/sms/sdk/service/a/a;->f:Ljava/util/Map;

    invoke-static/range {v0 .. v6}, Lcn/com/xy/sms/sdk/service/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    const/4 v2, 0x0

    iput-object v2, p0, Lcn/com/xy/sms/sdk/service/a/a;->a:Landroid/content/Context;

    iput-object v2, p0, Lcn/com/xy/sms/sdk/service/a/a;->b:Ljava/lang/String;

    iput-object v2, p0, Lcn/com/xy/sms/sdk/service/a/a;->c:Ljava/lang/String;

    iput-object v2, p0, Lcn/com/xy/sms/sdk/service/a/a;->d:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/com/xy/sms/sdk/service/a/a;->e:J

    iput-object v2, p0, Lcn/com/xy/sms/sdk/service/a/a;->f:Ljava/util/Map;

    iput-object v2, p0, Lcn/com/xy/sms/sdk/service/a/a;->g:Ljava/lang/Thread;

    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/com/xy/sms/sdk/service/a/a;->a:Landroid/content/Context;

    iput-object p2, p0, Lcn/com/xy/sms/sdk/service/a/a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcn/com/xy/sms/sdk/service/a/a;->c:Ljava/lang/String;

    iput-object p4, p0, Lcn/com/xy/sms/sdk/service/a/a;->d:Ljava/lang/String;

    iput-wide p5, p0, Lcn/com/xy/sms/sdk/service/a/a;->e:J

    iput-object p7, p0, Lcn/com/xy/sms/sdk/service/a/a;->f:Ljava/util/Map;

    return-void
.end method

.method public final b()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcn/com/xy/sms/sdk/service/a/a;->g:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/xy/sms/sdk/service/a/a;->g:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->stop()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final synthetic call()Ljava/lang/Object;
    .locals 7

    const-string v0, "xy_baseparse_1"

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/a/a;->a(Ljava/lang/String;I)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcn/com/xy/sms/sdk/service/a/a;->g:Ljava/lang/Thread;

    iget-object v0, p0, Lcn/com/xy/sms/sdk/service/a/a;->a:Landroid/content/Context;

    iget-object v1, p0, Lcn/com/xy/sms/sdk/service/a/a;->b:Ljava/lang/String;

    iget-object v2, p0, Lcn/com/xy/sms/sdk/service/a/a;->c:Ljava/lang/String;

    iget-object v3, p0, Lcn/com/xy/sms/sdk/service/a/a;->d:Ljava/lang/String;

    iget-wide v4, p0, Lcn/com/xy/sms/sdk/service/a/a;->e:J

    iget-object v6, p0, Lcn/com/xy/sms/sdk/service/a/a;->f:Ljava/util/Map;

    invoke-static/range {v0 .. v6}, Lcn/com/xy/sms/sdk/service/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
