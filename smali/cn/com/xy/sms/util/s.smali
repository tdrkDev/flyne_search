.class final Lcn/com/xy/sms/util/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Landroid/content/Context;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Ljava/lang/String;

.field private final synthetic e:Ljava/lang/String;

.field private final synthetic f:I

.field private final synthetic g:I

.field private final synthetic h:Lcn/com/xy/sms/util/SdkCallBack;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcn/com/xy/sms/util/SdkCallBack;)V
    .locals 0

    iput-object p1, p0, Lcn/com/xy/sms/util/s;->a:Landroid/content/Context;

    iput-object p2, p0, Lcn/com/xy/sms/util/s;->b:Ljava/lang/String;

    iput-object p3, p0, Lcn/com/xy/sms/util/s;->c:Ljava/lang/String;

    iput-object p4, p0, Lcn/com/xy/sms/util/s;->d:Ljava/lang/String;

    iput-object p5, p0, Lcn/com/xy/sms/util/s;->e:Ljava/lang/String;

    iput p6, p0, Lcn/com/xy/sms/util/s;->f:I

    iput p7, p0, Lcn/com/xy/sms/util/s;->g:I

    iput-object p8, p0, Lcn/com/xy/sms/util/s;->h:Lcn/com/xy/sms/util/SdkCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    :try_start_0
    const-string v0, "xy_logo_1"

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/a/a;->a(Ljava/lang/String;I)V

    iget-object v0, p0, Lcn/com/xy/sms/util/s;->a:Landroid/content/Context;

    iget-object v1, p0, Lcn/com/xy/sms/util/s;->b:Ljava/lang/String;

    iget-object v2, p0, Lcn/com/xy/sms/util/s;->c:Ljava/lang/String;

    iget-object v3, p0, Lcn/com/xy/sms/util/s;->d:Ljava/lang/String;

    iget-object v4, p0, Lcn/com/xy/sms/util/s;->e:Ljava/lang/String;

    iget v5, p0, Lcn/com/xy/sms/util/s;->f:I

    iget v6, p0, Lcn/com/xy/sms/util/s;->g:I

    iget-object v7, p0, Lcn/com/xy/sms/util/s;->h:Lcn/com/xy/sms/util/SdkCallBack;

    invoke-static/range {v0 .. v7}, Lcn/com/xy/sms/util/PublicInfoParseManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcn/com/xy/sms/util/SdkCallBack;)Landroid/graphics/drawable/BitmapDrawable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    goto :goto_0
.end method
