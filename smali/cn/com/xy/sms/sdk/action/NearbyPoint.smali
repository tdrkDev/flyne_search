.class public Lcn/com/xy/sms/sdk/action/NearbyPoint;
.super Ljava/lang/Object;


# static fields
.field public static final DO_GET_LOCATION:I = 0x1005

.field public static final GET_QUERY_URL_FAILURE:I = 0x1003

.field public static final QUERY_PARAM_ERROR:I = 0x1002

.field public static final QUERY_REQUEST_ERROR:I = 0x1004

.field public static final QUERY_RESULT:Ljava/lang/String; = "queryResult"

.field public static final QUERY_RESULT_RECEIVE:I = 0x1001


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lcn/com/xy/sms/sdk/action/e;

.field private c:Landroid/os/Handler;

.field private d:D

.field private e:D

.field private f:Ljava/lang/String;

.field private g:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/com/xy/sms/sdk/action/NearbyPoint;->b:Lcn/com/xy/sms/sdk/action/e;

    const/4 v0, 0x0

    iput v0, p0, Lcn/com/xy/sms/sdk/action/NearbyPoint;->g:I

    iput-object p2, p0, Lcn/com/xy/sms/sdk/action/NearbyPoint;->c:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcn/com/xy/sms/sdk/action/NearbyPoint;)D
    .locals 2

    iget-wide v0, p0, Lcn/com/xy/sms/sdk/action/NearbyPoint;->d:D

    return-wide v0
.end method

.method static synthetic a(Lcn/com/xy/sms/sdk/action/NearbyPoint;Ljava/lang/String;DDII)Ljava/lang/String;
    .locals 10

    const/16 v6, 0x4e20

    const-string v0, "6a0ddfcfdf1a1e7a1f38501fc5d218bf"

    const-string v7, "json"

    const/4 v8, 0x2

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move/from16 v9, p7

    invoke-static/range {v0 .. v9}, Lcn/com/xy/sms/sdk/action/NearbyPoint;->a(Ljava/lang/String;Ljava/lang/String;DDILjava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;DDII)Ljava/lang/String;
    .locals 10

    const-string v0, "6a0ddfcfdf1a1e7a1f38501fc5d218bf"

    const-string v7, "json"

    const/4 v8, 0x2

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move/from16 v6, p6

    move/from16 v9, p7

    invoke-static/range {v0 .. v9}, Lcn/com/xy/sms/sdk/action/NearbyPoint;->a(Ljava/lang/String;Ljava/lang/String;DDILjava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;DDILjava/lang/String;II)Ljava/lang/String;
    .locals 4

    const-wide/16 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    if-eqz p1, :cond_1

    cmpg-double v0, p2, v2

    if-ltz v0, :cond_1

    cmpg-double v0, p4, v2

    if-ltz v0, :cond_1

    if-lez p6, :cond_1

    const-string v0, "json"

    invoke-virtual {p7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "xml"

    invoke-virtual {p7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "http://android.bizport.cn:9998/AndroidWeb/getPlaceListAPI?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "query="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :try_start_0
    const-string v1, "UTF-8"

    invoke-static {p1, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v1, "&lat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    const-string v1, "&lng="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    const-string v1, "&radius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "&scope="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "&page_num="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "&output="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic b(Lcn/com/xy/sms/sdk/action/NearbyPoint;)D
    .locals 2

    iget-wide v0, p0, Lcn/com/xy/sms/sdk/action/NearbyPoint;->e:D

    return-wide v0
.end method

.method static synthetic c(Lcn/com/xy/sms/sdk/action/NearbyPoint;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/com/xy/sms/sdk/action/NearbyPoint;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcn/com/xy/sms/sdk/action/NearbyPoint;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcn/com/xy/sms/sdk/action/NearbyPoint;->c:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic e(Lcn/com/xy/sms/sdk/action/NearbyPoint;)I
    .locals 1

    iget v0, p0, Lcn/com/xy/sms/sdk/action/NearbyPoint;->g:I

    return v0
.end method


# virtual methods
.method public getLocationLatitude()D
    .locals 2

    iget-wide v0, p0, Lcn/com/xy/sms/sdk/action/NearbyPoint;->d:D

    return-wide v0
.end method

.method public getLocationLongitude()D
    .locals 2

    iget-wide v0, p0, Lcn/com/xy/sms/sdk/action/NearbyPoint;->e:D

    return-wide v0
.end method

.method public sendMapQueryUrl(Ljava/lang/String;DDI)V
    .locals 2

    iget-object v0, p0, Lcn/com/xy/sms/sdk/action/NearbyPoint;->b:Lcn/com/xy/sms/sdk/action/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/xy/sms/sdk/action/NearbyPoint;->b:Lcn/com/xy/sms/sdk/action/e;

    invoke-virtual {v0}, Lcn/com/xy/sms/sdk/action/e;->isInterrupted()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/com/xy/sms/sdk/action/NearbyPoint;->b:Lcn/com/xy/sms/sdk/action/e;

    :cond_0
    iput-object p1, p0, Lcn/com/xy/sms/sdk/action/NearbyPoint;->f:Ljava/lang/String;

    iput-wide p2, p0, Lcn/com/xy/sms/sdk/action/NearbyPoint;->d:D

    iput-wide p4, p0, Lcn/com/xy/sms/sdk/action/NearbyPoint;->e:D

    iput p6, p0, Lcn/com/xy/sms/sdk/action/NearbyPoint;->g:I

    new-instance v0, Lcn/com/xy/sms/sdk/action/e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/com/xy/sms/sdk/action/e;-><init>(Lcn/com/xy/sms/sdk/action/NearbyPoint;B)V

    iput-object v0, p0, Lcn/com/xy/sms/sdk/action/NearbyPoint;->b:Lcn/com/xy/sms/sdk/action/e;

    iget-object v0, p0, Lcn/com/xy/sms/sdk/action/NearbyPoint;->b:Lcn/com/xy/sms/sdk/action/e;

    invoke-virtual {v0}, Lcn/com/xy/sms/sdk/action/e;->start()V

    return-void
.end method
