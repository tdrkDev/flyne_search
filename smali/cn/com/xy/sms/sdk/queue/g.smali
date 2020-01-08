.class public final Lcn/com/xy/sms/sdk/queue/g;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sput-object v0, Lcn/com/xy/sms/sdk/queue/g;->a:Ljava/util/concurrent/BlockingQueue;

    const/4 v0, 0x0

    sput-object v0, Lcn/com/xy/sms/sdk/queue/g;->b:Ljava/lang/Thread;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized a()V
    .locals 2

    const-class v1, Lcn/com/xy/sms/sdk/queue/g;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcn/com/xy/sms/sdk/queue/g;->b:Ljava/lang/Thread;

    if-nez v0, :cond_0

    new-instance v0, Lcn/com/xy/sms/sdk/queue/h;

    invoke-direct {v0}, Lcn/com/xy/sms/sdk/queue/h;-><init>()V

    sput-object v0, Lcn/com/xy/sms/sdk/queue/g;->b:Ljava/lang/Thread;

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

.method public static a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLorg/json/JSONObject;)V
    .locals 2

    if-nez p8, :cond_0

    new-instance p8, Lorg/json/JSONObject;

    invoke-direct {p8}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    :try_start_0
    const-string v0, "dataStatu"

    invoke-virtual {p8, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "msg_id"

    invoke-virtual {p8, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "phoneNum"

    invoke-virtual {p8, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "smsContent"

    invoke-virtual {p8, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "smsReceiveTime"

    invoke-virtual {p8, v0, p6, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    if-eqz p4, :cond_1

    const-string v0, "centerNum"

    invoke-virtual {p8, v0, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    const-string v0, "dataType"

    invoke-virtual {p8, v0, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-object v0, Lcn/com/xy/sms/sdk/queue/g;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p8}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    invoke-static {}, Lcn/com/xy/sms/sdk/queue/g;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
