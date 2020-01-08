.class public final Lcn/com/xy/sms/sdk/util/v;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcn/com/xy/sms/sdk/util/b;

.field public static final b:Lcn/com/xy/sms/sdk/util/b;

.field public static final c:Lcn/com/xy/sms/sdk/util/b;

.field public static final d:Lcn/com/xy/sms/sdk/util/b;

.field public static final e:Lcn/com/xy/sms/sdk/util/b;

.field public static final f:Lcn/com/xy/sms/sdk/util/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lcn/com/xy/sms/sdk/number/p;->a(I)Lcn/com/xy/sms/sdk/util/b;

    move-result-object v0

    sput-object v0, Lcn/com/xy/sms/sdk/util/v;->a:Lcn/com/xy/sms/sdk/util/b;

    const/4 v0, 0x2

    invoke-static {v0}, Lcn/com/xy/sms/sdk/number/p;->a(I)Lcn/com/xy/sms/sdk/util/b;

    move-result-object v0

    sput-object v0, Lcn/com/xy/sms/sdk/util/v;->b:Lcn/com/xy/sms/sdk/util/b;

    const/4 v0, 0x3

    invoke-static {v0}, Lcn/com/xy/sms/sdk/number/p;->a(I)Lcn/com/xy/sms/sdk/util/b;

    move-result-object v0

    sput-object v0, Lcn/com/xy/sms/sdk/util/v;->c:Lcn/com/xy/sms/sdk/util/b;

    invoke-static {}, Lcn/com/xy/sms/sdk/number/x;->a()Lcn/com/xy/sms/sdk/util/b;

    move-result-object v0

    sput-object v0, Lcn/com/xy/sms/sdk/util/v;->d:Lcn/com/xy/sms/sdk/util/b;

    invoke-static {}, Lcn/com/xy/sms/sdk/number/d;->a()Lcn/com/xy/sms/sdk/util/b;

    move-result-object v0

    sput-object v0, Lcn/com/xy/sms/sdk/util/v;->e:Lcn/com/xy/sms/sdk/util/b;

    invoke-static {}, Lcn/com/xy/sms/sdk/number/v;->a()Lcn/com/xy/sms/sdk/util/b;

    move-result-object v0

    sput-object v0, Lcn/com/xy/sms/sdk/util/v;->f:Lcn/com/xy/sms/sdk/util/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/concurrent/ExecutorService;Lcn/com/xy/sms/sdk/util/b;)V
    .locals 1

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcn/com/xy/sms/sdk/util/b;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
