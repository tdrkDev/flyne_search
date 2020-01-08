.class public final Lcn/com/xy/sms/sdk/queue/i;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcn/com/xy/sms/sdk/queue/k;",
            ">;"
        }
    .end annotation
.end field

.field public static b:I

.field private static c:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sput-object v0, Lcn/com/xy/sms/sdk/queue/i;->a:Ljava/util/concurrent/BlockingQueue;

    const/16 v0, 0xa

    sput v0, Lcn/com/xy/sms/sdk/queue/i;->b:I

    const/4 v0, 0x0

    sput-object v0, Lcn/com/xy/sms/sdk/queue/i;->c:Ljava/lang/Thread;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()V
    .locals 2

    const-class v1, Lcn/com/xy/sms/sdk/queue/i;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcn/com/xy/sms/sdk/queue/i;->c:Ljava/lang/Thread;

    if-nez v0, :cond_0

    new-instance v0, Lcn/com/xy/sms/sdk/queue/j;

    invoke-direct {v0}, Lcn/com/xy/sms/sdk/queue/j;-><init>()V

    sput-object v0, Lcn/com/xy/sms/sdk/queue/i;->c:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Lcn/com/xy/sms/sdk/queue/k;)V
    .locals 1

    :try_start_0
    sget-object v0, Lcn/com/xy/sms/sdk/queue/i;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
