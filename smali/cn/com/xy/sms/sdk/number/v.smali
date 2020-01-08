.class public Lcn/com/xy/sms/sdk/number/v;
.super Lcn/com/xy/sms/sdk/util/b;


# static fields
.field private static b:Lcn/com/xy/sms/sdk/util/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcn/com/xy/sms/sdk/number/v;->b:Lcn/com/xy/sms/sdk/util/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcn/com/xy/sms/sdk/util/b;-><init>()V

    const/16 v0, 0x2a

    const-wide/32 v2, 0x240c8400

    invoke-static {v0, v2, v3}, Lcn/com/xy/sms/sdk/dex/DexUtil;->getUpdateCycleByType(IJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcn/com/xy/sms/sdk/number/v;->a:J

    return-void
.end method

.method public static a()Lcn/com/xy/sms/sdk/util/b;
    .locals 2

    const-class v1, Lcn/com/xy/sms/sdk/number/v;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcn/com/xy/sms/sdk/number/v;->b:Lcn/com/xy/sms/sdk/util/b;

    if-nez v0, :cond_0

    new-instance v0, Lcn/com/xy/sms/sdk/number/v;

    invoke-direct {v0}, Lcn/com/xy/sms/sdk/number/v;-><init>()V

    sput-object v0, Lcn/com/xy/sms/sdk/number/v;->b:Lcn/com/xy/sms/sdk/util/b;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcn/com/xy/sms/sdk/number/v;->b:Lcn/com/xy/sms/sdk/util/b;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final b()V
    .locals 1

    new-instance v0, Lcn/com/xy/sms/sdk/number/w;

    invoke-direct {v0, p0}, Lcn/com/xy/sms/sdk/number/w;-><init>(Lcn/com/xy/sms/sdk/number/v;)V

    invoke-static {v0}, Lcn/com/xy/sms/sdk/number/ParseNumberManager;->upgradeEmbedNumber(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;)V

    return-void
.end method
