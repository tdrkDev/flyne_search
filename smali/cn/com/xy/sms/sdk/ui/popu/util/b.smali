.class public final Lcn/com/xy/sms/sdk/ui/popu/util/b;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcn/com/xy/sms/sdk/ui/popu/util/b;->a:I

    iput v2, p0, Lcn/com/xy/sms/sdk/ui/popu/util/b;->b:I

    iput v2, p0, Lcn/com/xy/sms/sdk/ui/popu/util/b;->c:I

    iput v1, p0, Lcn/com/xy/sms/sdk/ui/popu/util/b;->d:I

    iput v0, p0, Lcn/com/xy/sms/sdk/ui/popu/util/b;->e:F

    iput v0, p0, Lcn/com/xy/sms/sdk/ui/popu/util/b;->f:F

    iput v0, p0, Lcn/com/xy/sms/sdk/ui/popu/util/b;->g:F

    iput v0, p0, Lcn/com/xy/sms/sdk/ui/popu/util/b;->h:F

    iput v1, p0, Lcn/com/xy/sms/sdk/ui/popu/util/b;->i:I

    iput v2, p0, Lcn/com/xy/sms/sdk/ui/popu/util/b;->j:I

    iput v1, p0, Lcn/com/xy/sms/sdk/ui/popu/util/b;->k:I

    iput v1, p0, Lcn/com/xy/sms/sdk/ui/popu/util/b;->l:I

    iput v1, p0, Lcn/com/xy/sms/sdk/ui/popu/util/b;->m:I

    iput v1, p0, Lcn/com/xy/sms/sdk/ui/popu/util/b;->n:I

    iput v1, p0, Lcn/com/xy/sms/sdk/ui/popu/util/b;->o:I

    iput v1, p0, Lcn/com/xy/sms/sdk/ui/popu/util/b;->p:I

    iput v1, p0, Lcn/com/xy/sms/sdk/ui/popu/util/b;->q:I

    const/4 v0, -0x1

    iput v0, p0, Lcn/com/xy/sms/sdk/ui/popu/util/b;->r:I

    iput v1, p0, Lcn/com/xy/sms/sdk/ui/popu/util/b;->s:I

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcn/com/xy/sms/sdk/ui/popu/util/b;
    .locals 6

    const/4 v1, 0x0

    if-eqz p1, :cond_14

    :try_start_0
    new-instance v0, Lcn/com/xy/sms/sdk/ui/popu/util/b;

    invoke-direct {v0}, Lcn/com/xy/sms/sdk/ui/popu/util/b;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v1, ";"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_0

    :goto_1
    return-object v0

    :cond_0
    aget-object v4, v2, v1

    const-string v5, "TL"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {p0, v4}, Lcn/com/xy/sms/sdk/ui/popu/util/ViewUtil;->dp2px(Landroid/content/Context;I)I

    move-result v4

    int-to-float v4, v4

    iput v4, v0, Lcn/com/xy/sms/sdk/ui/popu/util/b;->e:F

    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const-string v5, "TR"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {p0, v4}, Lcn/com/xy/sms/sdk/ui/popu/util/ViewUtil;->dp2px(Landroid/content/Context;I)I

    move-result v4

    int-to-float v4, v4

    iput v4, v0, Lcn/com/xy/sms/sdk/ui/popu/util/b;->f:F

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_3
    const-string v5, "BL"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {p0, v4}, Lcn/com/xy/sms/sdk/ui/popu/util/ViewUtil;->dp2px(Landroid/content/Context;I)I

    move-result v4

    int-to-float v4, v4

    iput v4, v0, Lcn/com/xy/sms/sdk/ui/popu/util/b;->g:F

    goto :goto_2

    :cond_4
    const-string v5, "BR"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {p0, v4}, Lcn/com/xy/sms/sdk/ui/popu/util/ViewUtil;->dp2px(Landroid/content/Context;I)I

    move-result v4

    int-to-float v4, v4

    iput v4, v0, Lcn/com/xy/sms/sdk/ui/popu/util/b;->h:F

    goto :goto_2

    :cond_5
    const-string v5, "TP"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v0, Lcn/com/xy/sms/sdk/ui/popu/util/b;->i:I

    goto :goto_2

    :cond_6
    const-string v5, "SC"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Lcn/com/xy/sms/sdk/ui/popu/util/b;->j:I

    goto/16 :goto_2

    :cond_7
    const-string v5, "SW"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v0, Lcn/com/xy/sms/sdk/ui/popu/util/b;->k:I

    goto/16 :goto_2

    :cond_8
    const-string v5, "DW"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v0, Lcn/com/xy/sms/sdk/ui/popu/util/b;->l:I

    goto/16 :goto_2

    :cond_9
    const-string v5, "DG"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v0, Lcn/com/xy/sms/sdk/ui/popu/util/b;->m:I

    goto/16 :goto_2

    :cond_a
    const-string v5, "CX"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {p0, v4}, Lcn/com/xy/sms/sdk/ui/popu/util/ViewUtil;->dp2px(Landroid/content/Context;I)I

    move-result v4

    iput v4, v0, Lcn/com/xy/sms/sdk/ui/popu/util/b;->p:I

    goto/16 :goto_2

    :cond_b
    const-string v5, "CY"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {p0, v4}, Lcn/com/xy/sms/sdk/ui/popu/util/ViewUtil;->dp2px(Landroid/content/Context;I)I

    move-result v4

    iput v4, v0, Lcn/com/xy/sms/sdk/ui/popu/util/b;->q:I

    goto/16 :goto_2

    :cond_c
    const-string v5, "GT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v0, Lcn/com/xy/sms/sdk/ui/popu/util/b;->r:I

    goto/16 :goto_2

    :cond_d
    const-string v5, "GR"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {p0, v4}, Lcn/com/xy/sms/sdk/ui/popu/util/ViewUtil;->dp2px(Landroid/content/Context;I)I

    move-result v4

    iput v4, v0, Lcn/com/xy/sms/sdk/ui/popu/util/b;->s:I

    goto/16 :goto_2

    :cond_e
    const-string v5, "W"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {p0, v4}, Lcn/com/xy/sms/sdk/ui/popu/util/ViewUtil;->dp2px(Landroid/content/Context;I)I

    move-result v4

    iput v4, v0, Lcn/com/xy/sms/sdk/ui/popu/util/b;->n:I

    goto/16 :goto_2

    :cond_f
    const-string v5, "H"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {p0, v4}, Lcn/com/xy/sms/sdk/ui/popu/util/ViewUtil;->dp2px(Landroid/content/Context;I)I

    move-result v4

    iput v4, v0, Lcn/com/xy/sms/sdk/ui/popu/util/b;->o:I

    goto/16 :goto_2

    :cond_10
    const-string v5, "S"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Lcn/com/xy/sms/sdk/ui/popu/util/b;->a:I

    goto/16 :goto_2

    :cond_11
    const-string v5, "C"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_12

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Lcn/com/xy/sms/sdk/ui/popu/util/b;->b:I

    goto/16 :goto_2

    :cond_12
    const-string v5, "E"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_13

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Lcn/com/xy/sms/sdk/ui/popu/util/b;->c:I

    goto/16 :goto_2

    :cond_13
    const-string v5, "A"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v0, Lcn/com/xy/sms/sdk/ui/popu/util/b;->d:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    :catch_1
    move-exception v0

    move-object v0, v1

    goto/16 :goto_1

    :cond_14
    move-object v0, v1

    goto/16 :goto_1
.end method


# virtual methods
.method public final a()Landroid/graphics/drawable/Drawable;
    .locals 6

    const/4 v1, 0x0

    const/4 v5, 0x1

    :try_start_0
    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget v2, p0, Lcn/com/xy/sms/sdk/ui/popu/util/b;->d:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    packed-switch v2, :pswitch_data_0

    :goto_0
    move-object v3, v0

    :goto_1
    :try_start_2
    iget v0, p0, Lcn/com/xy/sms/sdk/ui/popu/util/b;->b:I

    if-eq v0, v5, :cond_0

    iget v0, p0, Lcn/com/xy/sms/sdk/ui/popu/util/b;->a:I

    if-eq v0, v5, :cond_0

    iget v0, p0, Lcn/com/xy/sms/sdk/ui/popu/util/b;->c:I

    if-eq v0, v5, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v2, 0x0

    iget v4, p0, Lcn/com/xy/sms/sdk/ui/popu/util/b;->a:I

    aput v4, v0, v2

    const/4 v2, 0x1

    iget v4, p0, Lcn/com/xy/sms/sdk/ui/popu/util/b;->b:I

    aput v4, v0, v2

    const/4 v2, 0x2

    iget v4, p0, Lcn/com/xy/sms/sdk/ui/popu/util/b;->c:I

    aput v4, v0, v2
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    if-eqz v0, :cond_1

    :try_start_3
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    :try_start_4
    iget v0, p0, Lcn/com/xy/sms/sdk/ui/popu/util/b;->i:I

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    move-object v0, v2

    :goto_3
    if-nez v0, :cond_2

    :goto_4
    return-object v1

    :pswitch_0
    :try_start_5
    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    move-object v3, v0

    goto :goto_1

    :pswitch_1
    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->RIGHT_LEFT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    move-object v3, v0

    goto :goto_1

    :pswitch_2
    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    move-object v3, v0

    goto :goto_1

    :pswitch_3
    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    move-object v3, v0

    goto :goto_1

    :pswitch_4
    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    move-object v3, v0

    goto :goto_1

    :pswitch_5
    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->TR_BL:Landroid/graphics/drawable/GradientDrawable$Orientation;

    move-object v3, v0

    goto :goto_1

    :pswitch_6
    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->BL_TR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    move-object v3, v0

    goto :goto_1

    :pswitch_7
    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->BR_TL:Landroid/graphics/drawable/GradientDrawable$Orientation;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    move-object v3, v0

    goto :goto_1

    :cond_0
    :try_start_6
    iget v0, p0, Lcn/com/xy/sms/sdk/ui/popu/util/b;->c:I

    if-eq v0, v5, :cond_9

    iget v0, p0, Lcn/com/xy/sms/sdk/ui/popu/util/b;->a:I

    if-eq v0, v5, :cond_9

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v2, 0x0

    iget v4, p0, Lcn/com/xy/sms/sdk/ui/popu/util/b;->a:I

    aput v4, v0, v2

    const/4 v2, 0x1

    iget v4, p0, Lcn/com/xy/sms/sdk/ui/popu/util/b;->c:I

    aput v4, v0, v2
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_4

    :cond_1
    :try_start_7
    iget v0, p0, Lcn/com/xy/sms/sdk/ui/popu/util/b;->a:I

    if-eq v0, v5, :cond_8

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3

    :try_start_8
    iget v2, p0, Lcn/com/xy/sms/sdk/ui/popu/util/b;->a:I

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_3

    :catch_2
    move-exception v2

    goto :goto_3

    :cond_2
    const/16 v2, 0x8

    :try_start_9
    new-array v2, v2, [F

    const/4 v3, 0x0

    iget v4, p0, Lcn/com/xy/sms/sdk/ui/popu/util/b;->e:F

    aput v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcn/com/xy/sms/sdk/ui/popu/util/b;->e:F

    aput v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lcn/com/xy/sms/sdk/ui/popu/util/b;->f:F

    aput v4, v2, v3

    const/4 v3, 0x3

    iget v4, p0, Lcn/com/xy/sms/sdk/ui/popu/util/b;->f:F

    aput v4, v2, v3

    const/4 v3, 0x4

    iget v4, p0, Lcn/com/xy/sms/sdk/ui/popu/util/b;->g:F

    aput v4, v2, v3

    const/4 v3, 0x5

    iget v4, p0, Lcn/com/xy/sms/sdk/ui/popu/util/b;->g:F

    aput v4, v2, v3

    const/4 v3, 0x6

    iget v4, p0, Lcn/com/xy/sms/sdk/ui/popu/util/b;->h:F

    aput v4, v2, v3

    const/4 v3, 0x7

    iget v4, p0, Lcn/com/xy/sms/sdk/ui/popu/util/b;->h:F

    aput v4, v2, v3

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    iget v2, p0, Lcn/com/xy/sms/sdk/ui/popu/util/b;->j:I

    if-eq v2, v5, :cond_3

    iget v2, p0, Lcn/com/xy/sms/sdk/ui/popu/util/b;->k:I

    iget v3, p0, Lcn/com/xy/sms/sdk/ui/popu/util/b;->j:I

    iget v4, p0, Lcn/com/xy/sms/sdk/ui/popu/util/b;->l:I

    int-to-float v4, v4

    iget v5, p0, Lcn/com/xy/sms/sdk/ui/popu/util/b;->m:I

    int-to-float v5, v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setStroke(IIFF)V

    :cond_3
    iget v2, p0, Lcn/com/xy/sms/sdk/ui/popu/util/b;->n:I

    if-lez v2, :cond_4

    iget v2, p0, Lcn/com/xy/sms/sdk/ui/popu/util/b;->o:I

    if-lez v2, :cond_4

    iget v2, p0, Lcn/com/xy/sms/sdk/ui/popu/util/b;->n:I

    iget v3, p0, Lcn/com/xy/sms/sdk/ui/popu/util/b;->o:I

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    :cond_4
    iget v2, p0, Lcn/com/xy/sms/sdk/ui/popu/util/b;->p:I

    if-lez v2, :cond_5

    iget v2, p0, Lcn/com/xy/sms/sdk/ui/popu/util/b;->q:I

    if-lez v2, :cond_5

    iget v2, p0, Lcn/com/xy/sms/sdk/ui/popu/util/b;->p:I

    int-to-float v2, v2

    iget v3, p0, Lcn/com/xy/sms/sdk/ui/popu/util/b;->q:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setGradientCenter(FF)V

    :cond_5
    iget v2, p0, Lcn/com/xy/sms/sdk/ui/popu/util/b;->r:I

    if-ltz v2, :cond_6

    iget v2, p0, Lcn/com/xy/sms/sdk/ui/popu/util/b;->r:I

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    :cond_6
    iget v2, p0, Lcn/com/xy/sms/sdk/ui/popu/util/b;->s:I

    if-lez v2, :cond_7

    iget v2, p0, Lcn/com/xy/sms/sdk/ui/popu/util/b;->s:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setGradientRadius(F)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1

    :cond_7
    move-object v1, v0

    goto/16 :goto_4

    :catch_3
    move-exception v0

    move-object v0, v1

    goto/16 :goto_3

    :catch_4
    move-exception v0

    move-object v0, v2

    goto/16 :goto_3

    :cond_8
    move-object v0, v1

    goto/16 :goto_3

    :cond_9
    move-object v0, v1

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
