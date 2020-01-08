.class final Lcn/com/xy/sms/sdk/net/util/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field private final synthetic b:Lcn/com/xy/sms/sdk/db/entity/G;

.field private final synthetic c:I


# direct methods
.method constructor <init>(Ljava/lang/String;Lcn/com/xy/sms/sdk/db/entity/G;I)V
    .locals 0

    iput-object p1, p0, Lcn/com/xy/sms/sdk/net/util/l;->a:Ljava/lang/String;

    iput-object p2, p0, Lcn/com/xy/sms/sdk/net/util/l;->b:Lcn/com/xy/sms/sdk/db/entity/G;

    iput p3, p0, Lcn/com/xy/sms/sdk/net/util/l;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcn/com/xy/sms/sdk/net/util/l;->a:Ljava/lang/String;

    iget-object v1, p0, Lcn/com/xy/sms/sdk/net/util/l;->b:Lcn/com/xy/sms/sdk/db/entity/G;

    iget v2, p0, Lcn/com/xy/sms/sdk/net/util/l;->c:I

    invoke-static {v0, v1, v2}, Lcn/com/xy/sms/sdk/db/entity/D;->a(Ljava/lang/String;Lcn/com/xy/sms/sdk/db/entity/G;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
