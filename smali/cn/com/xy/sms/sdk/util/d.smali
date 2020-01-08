.class public final Lcn/com/xy/sms/sdk/util/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static b:Lcn/com/xy/sms/sdk/util/d;


# instance fields
.field private a:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Lcn/com/xy/sms/sdk/util/d;
    .locals 1

    sget-object v0, Lcn/com/xy/sms/sdk/util/d;->b:Lcn/com/xy/sms/sdk/util/d;

    if-nez v0, :cond_0

    new-instance v0, Lcn/com/xy/sms/sdk/util/d;

    invoke-direct {v0}, Lcn/com/xy/sms/sdk/util/d;-><init>()V

    sput-object v0, Lcn/com/xy/sms/sdk/util/d;->b:Lcn/com/xy/sms/sdk/util/d;

    :cond_0
    sget-object v0, Lcn/com/xy/sms/sdk/util/d;->b:Lcn/com/xy/sms/sdk/util/d;

    return-object v0
.end method

.method private static a(Ljava/lang/Throwable;)Z
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {p0}, Lcn/com/xy/sms/sdk/dex/DexUtil;->saveExceptionLog(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private b()V
    .locals 1

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcn/com/xy/sms/sdk/util/d;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    invoke-static {p2}, Lcn/com/xy/sms/sdk/util/d;->a(Ljava/lang/Throwable;)Z

    iget-object v0, p0, Lcn/com/xy/sms/sdk/util/d;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method
