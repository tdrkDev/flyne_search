.class public Lcn/com/xy/sms/sdk/ui/popu/util/d;
.super Landroid/text/style/ClickableSpan;


# instance fields
.field private a:Z

.field private b:I

.field private c:I

.field private d:Z

.field private e:Lorg/json/JSONObject;

.field private f:Ljava/util/Map;
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

.field private g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const v0, -0xffff01

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    iput v0, p0, Lcn/com/xy/sms/sdk/ui/popu/util/d;->b:I

    iput v0, p0, Lcn/com/xy/sms/sdk/ui/popu/util/d;->c:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/com/xy/sms/sdk/ui/popu/util/d;->f:Ljava/util/Map;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/com/xy/sms/sdk/ui/popu/util/d;->g:Z

    return-void
.end method

.method private constructor <init>(IILorg/json/JSONObject;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lorg/json/JSONObject;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const v0, -0xffff01

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    iput v0, p0, Lcn/com/xy/sms/sdk/ui/popu/util/d;->b:I

    iput v0, p0, Lcn/com/xy/sms/sdk/ui/popu/util/d;->c:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/com/xy/sms/sdk/ui/popu/util/d;->f:Ljava/util/Map;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/com/xy/sms/sdk/ui/popu/util/d;->g:Z

    iput p1, p0, Lcn/com/xy/sms/sdk/ui/popu/util/d;->b:I

    iput p2, p0, Lcn/com/xy/sms/sdk/ui/popu/util/d;->c:I

    iput-object p3, p0, Lcn/com/xy/sms/sdk/ui/popu/util/d;->e:Lorg/json/JSONObject;

    iput-object p4, p0, Lcn/com/xy/sms/sdk/ui/popu/util/d;->f:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const v0, -0xffff01

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    iput v0, p0, Lcn/com/xy/sms/sdk/ui/popu/util/d;->b:I

    iput v0, p0, Lcn/com/xy/sms/sdk/ui/popu/util/d;->c:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/com/xy/sms/sdk/ui/popu/util/d;->f:Ljava/util/Map;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/com/xy/sms/sdk/ui/popu/util/d;->g:Z

    iput-object p1, p0, Lcn/com/xy/sms/sdk/ui/popu/util/d;->e:Lorg/json/JSONObject;

    iput-object p2, p0, Lcn/com/xy/sms/sdk/ui/popu/util/d;->f:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 0

    if-eqz p1, :cond_0

    iput p1, p0, Lcn/com/xy/sms/sdk/ui/popu/util/d;->b:I

    :cond_0
    if-eqz p2, :cond_1

    iput p2, p0, Lcn/com/xy/sms/sdk/ui/popu/util/d;->c:I

    :cond_1
    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/com/xy/sms/sdk/ui/popu/util/d;->d:Z

    return-void
.end method

.method public final b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/com/xy/sms/sdk/ui/popu/util/d;->a:Z

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/popu/util/d;->f:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/popu/util/d;->f:Ljava/util/Map;

    const-string v1, "isClickAble"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "false"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Lcn/com/xy/sms/sdk/ui/popu/util/ViewUtil;->clearSpan()V

    iget-boolean v0, p0, Lcn/com/xy/sms/sdk/ui/popu/util/d;->g:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    iput-boolean v3, p0, Lcn/com/xy/sms/sdk/ui/popu/util/d;->g:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcn/com/xy/sms/sdk/ui/popu/util/d;->g:Z

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_2

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcn/com/xy/sms/sdk/ui/popu/util/d;->e:Lorg/json/JSONObject;

    iget-object v2, p0, Lcn/com/xy/sms/sdk/ui/popu/util/d;->f:Ljava/util/Map;

    invoke-static {v1, v2}, Lcn/com/xy/sms/util/ParseManager;->getRecogniseActionConfig(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/com/xy/sms/sdk/ui/popu/util/d;->f:Ljava/util/Map;

    invoke-static {v0, v1, v2}, Lcn/com/xy/sms/sdk/util/DuoquUtils;->doAction(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    iput-boolean v3, p0, Lcn/com/xy/sms/sdk/ui/popu/util/d;->g:Z

    goto :goto_0

    :catch_0
    move-exception v0

    iput-boolean v3, p0, Lcn/com/xy/sms/sdk/ui/popu/util/d;->g:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-boolean v3, p0, Lcn/com/xy/sms/sdk/ui/popu/util/d;->g:Z

    throw v0
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    iget-boolean v0, p0, Lcn/com/xy/sms/sdk/ui/popu/util/d;->a:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcn/com/xy/sms/sdk/ui/popu/util/d;->c:I

    :goto_0
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    iget-boolean v0, p0, Lcn/com/xy/sms/sdk/ui/popu/util/d;->d:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    :goto_1
    return-void

    :cond_0
    iget v0, p0, Lcn/com/xy/sms/sdk/ui/popu/util/d;->b:I

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcn/com/xy/sms/sdk/ui/popu/util/d;->a:Z

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    goto :goto_1
.end method
