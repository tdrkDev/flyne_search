.class final Lcn/com/xy/sms/sdk/service/f/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcn/com/xy/sms/sdk/db/entity/G;


# direct methods
.method constructor <init>(Lcn/com/xy/sms/sdk/db/entity/G;)V
    .locals 0

    iput-object p1, p0, Lcn/com/xy/sms/sdk/service/f/f;->a:Lcn/com/xy/sms/sdk/db/entity/G;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    const-string v0, "xy_update_pubinfo_1"

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/a/a;->a(Ljava/lang/String;I)V

    const-wide/16 v0, 0x7d0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    iget-object v0, p0, Lcn/com/xy/sms/sdk/service/f/f;->a:Lcn/com/xy/sms/sdk/db/entity/G;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/db/entity/D;->a(Lcn/com/xy/sms/sdk/db/entity/G;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    sget-object v1, Lcn/com/xy/sms/sdk/service/f/g;->a:Lcn/com/xy/sms/sdk/service/f/a;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_1
    invoke-static {v0}, Lcn/com/xy/sms/sdk/service/f/b;->a(Z)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcn/com/xy/sms/sdk/service/f/g;->a:Lcn/com/xy/sms/sdk/service/f/a;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_2
    invoke-static {v0}, Lcn/com/xy/sms/sdk/service/f/b;->a(Z)V

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_1
    move-exception v0

    sget-object v1, Lcn/com/xy/sms/sdk/service/f/g;->a:Lcn/com/xy/sms/sdk/service/f/a;

    monitor-enter v1

    const/4 v2, 0x0

    :try_start_3
    invoke-static {v2}, Lcn/com/xy/sms/sdk/service/f/b;->a(Z)V

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_3
    move-exception v0

    monitor-exit v1

    throw v0
.end method
