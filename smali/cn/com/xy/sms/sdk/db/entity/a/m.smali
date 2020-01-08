.class public final enum Lcn/com/xy/sms/sdk/db/entity/a/m;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcn/com/xy/sms/sdk/db/entity/a/m;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcn/com/xy/sms/sdk/db/entity/a/m;

.field public static final enum b:Lcn/com/xy/sms/sdk/db/entity/a/m;

.field public static final enum c:Lcn/com/xy/sms/sdk/db/entity/a/m;

.field private static synthetic d:[I

.field private static final synthetic e:[Lcn/com/xy/sms/sdk/db/entity/a/m;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcn/com/xy/sms/sdk/db/entity/a/m;

    const-string v1, "STATUS_NOT_REQUEST"

    invoke-direct {v0, v1, v2}, Lcn/com/xy/sms/sdk/db/entity/a/m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/com/xy/sms/sdk/db/entity/a/m;->a:Lcn/com/xy/sms/sdk/db/entity/a/m;

    new-instance v0, Lcn/com/xy/sms/sdk/db/entity/a/m;

    const-string v1, "STATUS_HAS_REQUEST"

    invoke-direct {v0, v1, v3}, Lcn/com/xy/sms/sdk/db/entity/a/m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/com/xy/sms/sdk/db/entity/a/m;->b:Lcn/com/xy/sms/sdk/db/entity/a/m;

    new-instance v0, Lcn/com/xy/sms/sdk/db/entity/a/m;

    const-string v1, "ALL"

    invoke-direct {v0, v1, v4}, Lcn/com/xy/sms/sdk/db/entity/a/m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/com/xy/sms/sdk/db/entity/a/m;->c:Lcn/com/xy/sms/sdk/db/entity/a/m;

    const/4 v0, 0x3

    new-array v0, v0, [Lcn/com/xy/sms/sdk/db/entity/a/m;

    sget-object v1, Lcn/com/xy/sms/sdk/db/entity/a/m;->a:Lcn/com/xy/sms/sdk/db/entity/a/m;

    aput-object v1, v0, v2

    sget-object v1, Lcn/com/xy/sms/sdk/db/entity/a/m;->b:Lcn/com/xy/sms/sdk/db/entity/a/m;

    aput-object v1, v0, v3

    sget-object v1, Lcn/com/xy/sms/sdk/db/entity/a/m;->c:Lcn/com/xy/sms/sdk/db/entity/a/m;

    aput-object v1, v0, v4

    sput-object v0, Lcn/com/xy/sms/sdk/db/entity/a/m;->e:[Lcn/com/xy/sms/sdk/db/entity/a/m;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static synthetic a()[I
    .locals 3

    sget-object v0, Lcn/com/xy/sms/sdk/db/entity/a/m;->d:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcn/com/xy/sms/sdk/db/entity/a/m;->values()[Lcn/com/xy/sms/sdk/db/entity/a/m;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcn/com/xy/sms/sdk/db/entity/a/m;->c:Lcn/com/xy/sms/sdk/db/entity/a/m;

    invoke-virtual {v1}, Lcn/com/xy/sms/sdk/db/entity/a/m;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcn/com/xy/sms/sdk/db/entity/a/m;->b:Lcn/com/xy/sms/sdk/db/entity/a/m;

    invoke-virtual {v1}, Lcn/com/xy/sms/sdk/db/entity/a/m;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcn/com/xy/sms/sdk/db/entity/a/m;->a:Lcn/com/xy/sms/sdk/db/entity/a/m;

    invoke-virtual {v1}, Lcn/com/xy/sms/sdk/db/entity/a/m;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcn/com/xy/sms/sdk/db/entity/a/m;->d:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/com/xy/sms/sdk/db/entity/a/m;
    .locals 1

    const-class v0, Lcn/com/xy/sms/sdk/db/entity/a/m;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/com/xy/sms/sdk/db/entity/a/m;

    return-object v0
.end method

.method public static values()[Lcn/com/xy/sms/sdk/db/entity/a/m;
    .locals 4

    const/4 v3, 0x3

    const/4 v2, 0x0

    sget-object v0, Lcn/com/xy/sms/sdk/db/entity/a/m;->e:[Lcn/com/xy/sms/sdk/db/entity/a/m;

    new-array v1, v3, [Lcn/com/xy/sms/sdk/db/entity/a/m;

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcn/com/xy/sms/sdk/db/entity/a/m;->a()[I

    move-result-object v0

    invoke-virtual {p0}, Lcn/com/xy/sms/sdk/db/entity/a/m;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "0"

    goto :goto_0

    :pswitch_1
    const-string v0, "1"

    goto :goto_0

    :pswitch_2
    const-string v0, "2"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
