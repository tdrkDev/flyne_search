.class public Lcn/com/xy/sms/sdk/db/entity/NumberInfo;
.super Ljava/lang/Object;


# static fields
.field public static final AMOUNT_KEY:Ljava/lang/String; = "amount"

.field public static final AREA_CODE_KEY:Ljava/lang/String; = "areaCode"

.field public static final AUTH_KEY:Ljava/lang/String; = "auth"

.field public static final KEY_AMOUNT:Ljava/lang/String; = "amount"

.field public static final KEY_TAG:Ljava/lang/String; = "tag"

.field public static final LOCAL_LOGO_KEY:Ljava/lang/String; = "logo_exist"

.field public static final LOGO_KEY:Ljava/lang/String; = "logo"

.field public static final LOGO_NAME_KEY:Ljava/lang/String; = "logoName"

.field public static final NAME_KEY:Ljava/lang/String; = "name"

.field public static final NUM_KEY:Ljava/lang/String; = "pubnum"

.field public static final NUM_TYPE_KEY:Ljava/lang/String; = "numtype"

.field public static final SERVER_URL_KEY:Ljava/lang/String; = "serverUrl"

.field public static final SOURCE_KEY:Ljava/lang/String; = "src"

.field public static final TAG_KEY:Ljava/lang/String; = "tag"

.field public static final TYPE_KEY:Ljava/lang/String; = "type"

.field public static final UPLOAD_STATUS_NO_UPLOAD:I = 0x0

.field public static final UPLOAD_STATUS_UPLOADED:I = 0x1

.field public static final USER_TAG_KEY:Ljava/lang/String; = "userTag"

.field public static final USER_TAG_TYPE_KEY:Ljava/lang/String; = "userTagType"

.field public static final USER_TAG_UPLOAD_STATUS_KEY:Ljava/lang/String; = "u"

.field public static final VERSION_KEY:Ljava/lang/String; = "version"


# instance fields
.field public id:I

.field public lastQueryTime:J

.field public num:Ljava/lang/String;

.field public result:Ljava/lang/String;

.field public version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/com/xy/sms/sdk/db/entity/NumberInfo;->lastQueryTime:J

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/com/xy/sms/sdk/db/entity/NumberInfo;->lastQueryTime:J

    iput p1, p0, Lcn/com/xy/sms/sdk/db/entity/NumberInfo;->id:I

    iput-object p2, p0, Lcn/com/xy/sms/sdk/db/entity/NumberInfo;->num:Ljava/lang/String;

    iput-object p3, p0, Lcn/com/xy/sms/sdk/db/entity/NumberInfo;->result:Ljava/lang/String;

    iput-object p4, p0, Lcn/com/xy/sms/sdk/db/entity/NumberInfo;->version:Ljava/lang/String;

    iput-wide p5, p0, Lcn/com/xy/sms/sdk/db/entity/NumberInfo;->lastQueryTime:J

    return-void
.end method
