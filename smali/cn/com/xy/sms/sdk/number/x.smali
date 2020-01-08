.class public Lcn/com/xy/sms/sdk/number/x;
.super Lcn/com/xy/sms/sdk/util/b;


# static fields
.field private static b:Lcn/com/xy/sms/sdk/util/b; = null

.field private static final c:I = 0x14


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcn/com/xy/sms/sdk/number/x;->b:Lcn/com/xy/sms/sdk/util/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcn/com/xy/sms/sdk/util/b;-><init>()V

    const-wide/32 v0, 0x36ee80

    iput-wide v0, p0, Lcn/com/xy/sms/sdk/number/x;->a:J

    return-void
.end method

.method public static a()Lcn/com/xy/sms/sdk/util/b;
    .locals 2

    const-class v1, Lcn/com/xy/sms/sdk/number/x;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcn/com/xy/sms/sdk/number/x;->b:Lcn/com/xy/sms/sdk/util/b;

    if-nez v0, :cond_0

    new-instance v0, Lcn/com/xy/sms/sdk/number/x;

    invoke-direct {v0}, Lcn/com/xy/sms/sdk/number/x;-><init>()V

    sput-object v0, Lcn/com/xy/sms/sdk/number/x;->b:Lcn/com/xy/sms/sdk/util/b;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcn/com/xy/sms/sdk/number/x;->b:Lcn/com/xy/sms/sdk/util/b;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    new-instance v1, Lcn/com/xy/sms/sdk/number/y;

    invoke-direct {v1}, Lcn/com/xy/sms/sdk/number/y;-><init>()V

    invoke-static {p0, v0, v1}, Lcn/com/xy/sms/sdk/service/c/n;->a(Ljava/util/Map;Ljava/util/Map;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 3

    const/16 v0, 0x14

    invoke-static {v0}, Lcn/com/xy/sms/sdk/db/entity/m;->a(I)Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcn/com/xy/sms/sdk/number/y;

    invoke-direct {v2}, Lcn/com/xy/sms/sdk/number/y;-><init>()V

    invoke-static {v0, v1, v2}, Lcn/com/xy/sms/sdk/service/c/n;->a(Ljava/util/Map;Ljava/util/Map;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;)V

    return-void
.end method
