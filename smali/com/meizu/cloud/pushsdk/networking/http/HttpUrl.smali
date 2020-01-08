.class public Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;
    }
.end annotation


# static fields
.field static final FORM_ENCODE_SET:Ljava/lang/String; = " \"\':;<=>@[]^`{}|/\\?#&!$(),~"

.field static final FRAGMENT_ENCODE_SET:Ljava/lang/String; = ""

.field static final FRAGMENT_ENCODE_SET_URI:Ljava/lang/String; = " \"#<>\\^`{|}"

.field private static final HEX_DIGITS:[C

.field static final PASSWORD_ENCODE_SET:Ljava/lang/String; = " \"\':;<=>@[]^`{}|/\\?#"

.field static final PATH_SEGMENT_ENCODE_SET:Ljava/lang/String; = " \"<>^`{}|/\\?#"

.field static final PATH_SEGMENT_ENCODE_SET_URI:Ljava/lang/String; = "[]"

.field static final QUERY_COMPONENT_ENCODE_SET:Ljava/lang/String; = " \"\'<>#&="

.field static final QUERY_COMPONENT_ENCODE_SET_URI:Ljava/lang/String; = "\\^`{|}"

.field static final QUERY_ENCODE_SET:Ljava/lang/String; = " \"\'<>#"

.field static final USERNAME_ENCODE_SET:Ljava/lang/String; = " \"\':;<=>@[]^`{}|/\\?#"


# instance fields
.field private final fragment:Ljava/lang/String;

.field private final host:Ljava/lang/String;

.field private final password:Ljava/lang/String;

.field private final pathSegments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final port:I

.field private final queryNamesAndValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final scheme:Ljava/lang/String;

.field private final url:Ljava/lang/String;

.field private final username:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->HEX_DIGITS:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method private constructor <init>(Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iget-object v0, p1, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->scheme:Ljava/lang/String;

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->scheme:Ljava/lang/String;

    .line 78
    iget-object v0, p1, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->percentDecode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->username:Ljava/lang/String;

    .line 79
    iget-object v0, p1, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->percentDecode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->password:Ljava/lang/String;

    .line 80
    iget-object v0, p1, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->host:Ljava/lang/String;

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->host:Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->effectivePort()I

    move-result v0

    iput v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->port:I

    .line 82
    iget-object v0, p1, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-direct {p0, v0, v3}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->percentDecode(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->pathSegments:Ljava/util/List;

    .line 83
    iget-object v0, p1, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    const/4 v2, 0x1

    .line 84
    invoke-direct {p0, v0, v2}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->percentDecode(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    .line 86
    iget-object v0, p1, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    .line 87
    invoke-static {v0, v3}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->percentDecode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    :cond_0
    iput-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->fragment:Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->url:Ljava/lang/String;

    .line 90
    return-void

    :cond_1
    move-object v0, v1

    .line 84
    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$1;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;-><init>(Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;)V

    return-void
.end method

.method static synthetic access$100(Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->scheme:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->host:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;)I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->port:I

    return v0
.end method

.method static canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;
    .locals 9

    .prologue
    .line 1302
    move v2, p1

    :goto_0
    if-ge v2, p2, :cond_4

    .line 1303
    invoke-virtual {p0, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 1304
    const/16 v1, 0x20

    if-lt v0, v1, :cond_2

    const/16 v1, 0x7f

    if-eq v0, v1, :cond_2

    const/16 v1, 0x80

    if-lt v0, v1, :cond_0

    if-nez p7, :cond_2

    .line 1307
    :cond_0
    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_2

    const/16 v1, 0x25

    if-ne v0, v1, :cond_1

    if-eqz p4, :cond_2

    if-eqz p5, :cond_1

    .line 1308
    invoke-static {p0, v2, p2}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->percentEncoded(Ljava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/16 v1, 0x2b

    if-ne v0, v1, :cond_3

    if-eqz p6, :cond_3

    .line 1311
    :cond_2
    new-instance v0, Lcom/meizu/cloud/pushsdk/networking/okio/Buffer;

    invoke-direct {v0}, Lcom/meizu/cloud/pushsdk/networking/okio/Buffer;-><init>()V

    .line 1312
    invoke-virtual {v0, p0, p1, v2}, Lcom/meizu/cloud/pushsdk/networking/okio/Buffer;->writeUtf8(Ljava/lang/String;II)Lcom/meizu/cloud/pushsdk/networking/okio/Buffer;

    move-object v1, p0

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    .line 1313
    invoke-static/range {v0 .. v8}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->canonicalize(Lcom/meizu/cloud/pushsdk/networking/okio/Buffer;Ljava/lang/String;IILjava/lang/String;ZZZZ)V

    .line 1315
    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/networking/okio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1320
    :goto_1
    return-object v0

    .line 1302
    :cond_3
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    add-int/2addr v2, v0

    goto :goto_0

    .line 1320
    :cond_4
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method static canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;
    .locals 8

    .prologue
    .line 1360
    const/4 v1, 0x0

    .line 1361
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    .line 1360
    invoke-static/range {v0 .. v7}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static canonicalize(Lcom/meizu/cloud/pushsdk/networking/okio/Buffer;Ljava/lang/String;IILjava/lang/String;ZZZZ)V
    .locals 6

    .prologue
    const/16 v5, 0x25

    .line 1325
    const/4 v0, 0x0

    .line 1327
    :goto_0
    if-ge p2, p3, :cond_8

    .line 1328
    invoke-virtual {p1, p2}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    .line 1329
    if-eqz p5, :cond_1

    const/16 v1, 0x9

    if-eq v2, v1, :cond_0

    const/16 v1, 0xa

    if-eq v2, v1, :cond_0

    const/16 v1, 0xc

    if-eq v2, v1, :cond_0

    const/16 v1, 0xd

    if-ne v2, v1, :cond_1

    .line 1327
    :cond_0
    :goto_1
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int/2addr p2, v1

    goto :goto_0

    .line 1332
    :cond_1
    const/16 v1, 0x2b

    if-ne v2, v1, :cond_3

    if-eqz p7, :cond_3

    .line 1334
    if-eqz p5, :cond_2

    const-string v1, "+"

    :goto_2
    invoke-virtual {p0, v1}, Lcom/meizu/cloud/pushsdk/networking/okio/Buffer;->writeUtf8(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/okio/Buffer;

    goto :goto_1

    :cond_2
    const-string v1, "%2B"

    goto :goto_2

    .line 1335
    :cond_3
    const/16 v1, 0x20

    if-lt v2, v1, :cond_5

    const/16 v1, 0x7f

    if-eq v2, v1, :cond_5

    const/16 v1, 0x80

    if-lt v2, v1, :cond_4

    if-nez p8, :cond_5

    .line 1338
    :cond_4
    invoke-virtual {p4, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_5

    if-ne v2, v5, :cond_7

    if-eqz p5, :cond_5

    if-eqz p6, :cond_7

    .line 1339
    invoke-static {p1, p2, p3}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->percentEncoded(Ljava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_7

    .line 1341
    :cond_5
    if-nez v0, :cond_6

    .line 1342
    new-instance v0, Lcom/meizu/cloud/pushsdk/networking/okio/Buffer;

    invoke-direct {v0}, Lcom/meizu/cloud/pushsdk/networking/okio/Buffer;-><init>()V

    .line 1344
    :cond_6
    invoke-virtual {v0, v2}, Lcom/meizu/cloud/pushsdk/networking/okio/Buffer;->writeUtf8CodePoint(I)Lcom/meizu/cloud/pushsdk/networking/okio/Buffer;

    .line 1345
    :goto_3
    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/networking/okio/Buffer;->exhausted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1346
    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/networking/okio/Buffer;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    .line 1347
    invoke-virtual {p0, v5}, Lcom/meizu/cloud/pushsdk/networking/okio/Buffer;->writeByte(I)Lcom/meizu/cloud/pushsdk/networking/okio/Buffer;

    .line 1348
    sget-object v3, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->HEX_DIGITS:[C

    shr-int/lit8 v4, v1, 0x4

    and-int/lit8 v4, v4, 0xf

    aget-char v3, v3, v4

    invoke-virtual {p0, v3}, Lcom/meizu/cloud/pushsdk/networking/okio/Buffer;->writeByte(I)Lcom/meizu/cloud/pushsdk/networking/okio/Buffer;

    .line 1349
    sget-object v3, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->HEX_DIGITS:[C

    and-int/lit8 v1, v1, 0xf

    aget-char v1, v3, v1

    invoke-virtual {p0, v1}, Lcom/meizu/cloud/pushsdk/networking/okio/Buffer;->writeByte(I)Lcom/meizu/cloud/pushsdk/networking/okio/Buffer;

    goto :goto_3

    .line 1353
    :cond_7
    invoke-virtual {p0, v2}, Lcom/meizu/cloud/pushsdk/networking/okio/Buffer;->writeUtf8CodePoint(I)Lcom/meizu/cloud/pushsdk/networking/okio/Buffer;

    goto :goto_1

    .line 1356
    :cond_8
    return-void
.end method

.method static decodeHexDigit(C)I
    .locals 1

    .prologue
    .line 1277
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    add-int/lit8 v0, p0, -0x30

    .line 1280
    :goto_0
    return v0

    .line 1278
    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x66

    if-gt p0, v0, :cond_1

    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 1279
    :cond_1
    const/16 v0, 0x41

    if-lt p0, v0, :cond_2

    const/16 v0, 0x46

    if-gt p0, v0, :cond_2

    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 1280
    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static defaultPort(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 192
    const-string v0, "http"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    const/16 v0, 0x50

    .line 197
    :goto_0
    return v0

    .line 194
    :cond_0
    const-string v0, "https"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 195
    const/16 v0, 0x1bb

    goto :goto_0

    .line 197
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static get(Ljava/net/URI;)Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;
    .locals 1

    .prologue
    .line 428
    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->parse(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;

    move-result-object v0

    return-object v0
.end method

.method public static get(Ljava/net/URL;)Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;
    .locals 1

    .prologue
    .line 401
    invoke-virtual {p0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->parse(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;

    move-result-object v0

    return-object v0
.end method

.method static getChecked(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 412
    new-instance v0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;

    invoke-direct {v0}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;-><init>()V

    .line 413
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->parse(Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder$ParseResult;

    move-result-object v1

    .line 414
    sget-object v2, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$1;->$SwitchMap$com$meizu$cloud$pushsdk$networking$http$HttpUrl$Builder$ParseResult:[I

    invoke-virtual {v1}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder$ParseResult;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 423
    new-instance v0, Ljava/net/MalformedURLException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 416
    :pswitch_0
    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->build()Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;

    move-result-object v0

    return-object v0

    .line 418
    :pswitch_1
    new-instance v0, Ljava/net/UnknownHostException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid host: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 414
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static namesAndValuesToQueryString(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 252
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_2

    .line 253
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 254
    add-int/lit8 v1, v2, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 255
    if-lez v2, :cond_0

    const/16 v4, 0x26

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 256
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    if-eqz v1, :cond_1

    .line 258
    const/16 v0, 0x3d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 259
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    :cond_1
    add-int/lit8 v0, v2, 0x2

    move v2, v0

    goto :goto_0

    .line 262
    :cond_2
    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 391
    new-instance v1, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;

    invoke-direct {v1}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;-><init>()V

    .line 392
    invoke-virtual {v1, v0, p0}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->parse(Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder$ParseResult;

    move-result-object v2

    .line 393
    sget-object v3, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder$ParseResult;->SUCCESS:Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder$ParseResult;

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->build()Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method static pathSegmentsToString(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 216
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 217
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 218
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 220
    :cond_0
    return-void
.end method

.method static percentDecode(Ljava/lang/String;IIZ)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1234
    move v0, p1

    :goto_0
    if-ge v0, p2, :cond_2

    .line 1235
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1236
    const/16 v2, 0x25

    if-eq v1, v2, :cond_0

    const/16 v2, 0x2b

    if-ne v1, v2, :cond_1

    if-eqz p3, :cond_1

    .line 1238
    :cond_0
    new-instance v1, Lcom/meizu/cloud/pushsdk/networking/okio/Buffer;

    invoke-direct {v1}, Lcom/meizu/cloud/pushsdk/networking/okio/Buffer;-><init>()V

    .line 1239
    invoke-virtual {v1, p0, p1, v0}, Lcom/meizu/cloud/pushsdk/networking/okio/Buffer;->writeUtf8(Ljava/lang/String;II)Lcom/meizu/cloud/pushsdk/networking/okio/Buffer;

    .line 1240
    invoke-static {v1, p0, v0, p2, p3}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->percentDecode(Lcom/meizu/cloud/pushsdk/networking/okio/Buffer;Ljava/lang/String;IIZ)V

    .line 1241
    invoke-virtual {v1}, Lcom/meizu/cloud/pushsdk/networking/okio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1246
    :goto_1
    return-object v0

    .line 1234
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1246
    :cond_2
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method static percentDecode(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1222
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p0, v0, v1, p1}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->percentDecode(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private percentDecode(Ljava/util/List;Z)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1226
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1227
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1228
    if-eqz v0, :cond_0

    invoke-static {v0, p2}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->percentDecode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 1230
    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static percentDecode(Lcom/meizu/cloud/pushsdk/networking/okio/Buffer;Ljava/lang/String;IIZ)V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 1251
    move v0, p2

    :goto_0
    if-ge v0, p3, :cond_2

    .line 1252
    invoke-virtual {p1, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    .line 1253
    const/16 v2, 0x25

    if-ne v1, v2, :cond_0

    add-int/lit8 v2, v0, 0x2

    if-ge v2, p3, :cond_0

    .line 1254
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->decodeHexDigit(C)I

    move-result v2

    .line 1255
    add-int/lit8 v3, v0, 0x2

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->decodeHexDigit(C)I

    move-result v3

    .line 1256
    if-eq v2, v4, :cond_1

    if-eq v3, v4, :cond_1

    .line 1257
    shl-int/lit8 v2, v2, 0x4

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/meizu/cloud/pushsdk/networking/okio/Buffer;->writeByte(I)Lcom/meizu/cloud/pushsdk/networking/okio/Buffer;

    .line 1258
    add-int/lit8 v0, v0, 0x2

    .line 1251
    :goto_1
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    .line 1261
    :cond_0
    const/16 v2, 0x2b

    if-ne v1, v2, :cond_1

    if-eqz p4, :cond_1

    .line 1262
    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Lcom/meizu/cloud/pushsdk/networking/okio/Buffer;->writeByte(I)Lcom/meizu/cloud/pushsdk/networking/okio/Buffer;

    goto :goto_1

    .line 1265
    :cond_1
    invoke-virtual {p0, v1}, Lcom/meizu/cloud/pushsdk/networking/okio/Buffer;->writeUtf8CodePoint(I)Lcom/meizu/cloud/pushsdk/networking/okio/Buffer;

    goto :goto_1

    .line 1267
    :cond_2
    return-void
.end method

.method static percentEncoded(Ljava/lang/String;II)Z
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 1270
    add-int/lit8 v0, p1, 0x2

    if-ge v0, p2, :cond_0

    .line 1271
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x25

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, p1, 0x1

    .line 1272
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->decodeHexDigit(C)I

    move-result v0

    if-eq v0, v2, :cond_0

    add-int/lit8 v0, p1, 0x2

    .line 1273
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->decodeHexDigit(C)I

    move-result v0

    if-eq v0, v2, :cond_0

    const/4 v0, 0x1

    .line 1270
    :goto_0
    return v0

    .line 1273
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static queryStringToNamesAndValues(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 271
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 272
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v0, v1, :cond_3

    .line 273
    const/16 v1, 0x26

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 274
    if-ne v1, v4, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 276
    :cond_0
    const/16 v3, 0x3d

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 277
    if-eq v3, v4, :cond_1

    if-le v3, v1, :cond_2

    .line 278
    :cond_1
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    :goto_1
    add-int/lit8 v0, v1, 0x1

    .line 285
    goto :goto_0

    .line 281
    :cond_2
    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    add-int/lit8 v0, v3, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 286
    :cond_3
    return-object v2
.end method


# virtual methods
.method public encodedFragment()Ljava/lang/String;
    .locals 2

    .prologue
    .line 343
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->fragment:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 345
    :goto_0
    return-object v0

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->url:Ljava/lang/String;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 345
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->url:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public encodedPassword()Ljava/lang/String;
    .locals 3

    .prologue
    .line 152
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->password:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    .line 155
    :goto_0
    return-object v0

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->url:Ljava/lang/String;

    const/16 v1, 0x3a

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->scheme:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 154
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->url:Ljava/lang/String;

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 155
    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->url:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public encodedPath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 210
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->url:Ljava/lang/String;

    const/16 v1, 0x2f

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->scheme:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 211
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->url:Ljava/lang/String;

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->url:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "?#"

    invoke-static {v1, v0, v2, v3}, Lcom/meizu/cloud/pushsdk/networking/http/Util;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I

    move-result v1

    .line 212
    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->url:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encodedPathSegments()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v5, 0x2f

    .line 223
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->url:Ljava/lang/String;

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->scheme:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 224
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->url:Ljava/lang/String;

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->url:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "?#"

    invoke-static {v1, v0, v2, v3}, Lcom/meizu/cloud/pushsdk/networking/http/Util;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I

    move-result v1

    .line 225
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 226
    :goto_0
    if-ge v0, v1, :cond_0

    .line 227
    add-int/lit8 v3, v0, 0x1

    .line 228
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->url:Ljava/lang/String;

    invoke-static {v0, v3, v1, v5}, Lcom/meizu/cloud/pushsdk/networking/http/Util;->delimiterOffset(Ljava/lang/String;IIC)I

    move-result v0

    .line 229
    iget-object v4, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->url:Ljava/lang/String;

    invoke-virtual {v4, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 232
    :cond_0
    return-object v2
.end method

.method public encodedQuery()Ljava/lang/String;
    .locals 5

    .prologue
    .line 245
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 248
    :goto_0
    return-object v0

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->url:Ljava/lang/String;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 247
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->url:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->url:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x23

    invoke-static {v1, v2, v3, v4}, Lcom/meizu/cloud/pushsdk/networking/http/Util;->delimiterOffset(Ljava/lang/String;IIC)I

    move-result v1

    .line 248
    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->url:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public encodedUsername()Ljava/lang/String;
    .locals 4

    .prologue
    .line 140
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->username:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    .line 143
    :goto_0
    return-object v0

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->scheme:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    .line 142
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->url:Ljava/lang/String;

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->url:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, ":@"

    invoke-static {v1, v0, v2, v3}, Lcom/meizu/cloud/pushsdk/networking/http/Util;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I

    move-result v1

    .line 143
    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->url:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 432
    instance-of v0, p1, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;

    iget-object v0, p1, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->url:Ljava/lang/String;

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public fragment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->fragment:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->url:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public host()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->host:Ljava/lang/String;

    return-object v0
.end method

.method public isHttps()Z
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->scheme:Ljava/lang/String;

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public newBuilder()Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;
    .locals 3

    .prologue
    .line 362
    new-instance v1, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;

    invoke-direct {v1}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;-><init>()V

    .line 363
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->scheme:Ljava/lang/String;

    iput-object v0, v1, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->scheme:Ljava/lang/String;

    .line 364
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->encodedUsername()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    .line 365
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->encodedPassword()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    .line 366
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->host:Ljava/lang/String;

    iput-object v0, v1, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->host:Ljava/lang/String;

    .line 368
    iget v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->port:I

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->scheme:Ljava/lang/String;

    invoke-static {v2}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->defaultPort(Ljava/lang/String;)I

    move-result v2

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->port:I

    :goto_0
    iput v0, v1, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->port:I

    .line 369
    iget-object v0, v1, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 370
    iget-object v0, v1, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->encodedPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 371
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->encodedQuery()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->encodedQuery(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;

    .line 372
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->encodedFragment()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    .line 373
    return-object v1

    .line 368
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public newBuilder(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;
    .locals 3

    .prologue
    .line 381
    new-instance v0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;

    invoke-direct {v0}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;-><init>()V

    .line 382
    invoke-virtual {v0, p0, p1}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->parse(Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder$ParseResult;

    move-result-object v1

    .line 383
    sget-object v2, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder$ParseResult;->SUCCESS:Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder$ParseResult;

    if-ne v1, v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public password()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->password:Ljava/lang/String;

    return-object v0
.end method

.method public pathSegments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 236
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->pathSegments:Ljava/util/List;

    return-object v0
.end method

.method public pathSize()I
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->pathSegments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public port()I
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->port:I

    return v0
.end method

.method public query()Ljava/lang/String;
    .locals 2

    .prologue
    .line 290
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 293
    :goto_0
    return-object v0

    .line 291
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 292
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->namesAndValuesToQueryString(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 293
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public queryParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 305
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    if-nez v1, :cond_1

    .line 311
    :cond_0
    :goto_0
    return-object v0

    .line 306
    :cond_1
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_1
    if-ge v1, v2, :cond_0

    .line 307
    iget-object v3, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 308
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 306
    :cond_2
    add-int/lit8 v1, v1, 0x2

    goto :goto_1
.end method

.method public queryParameterName(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 335
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    mul-int/lit8 v1, p1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public queryParameterNames()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 315
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 320
    :goto_0
    return-object v0

    .line 316
    :cond_0
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 317
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_1
    if-ge v0, v2, :cond_1

    .line 318
    iget-object v3, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 317
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 320
    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method

.method public queryParameterValue(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 339
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    mul-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public queryParameterValues(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 324
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 331
    :goto_0
    return-object v0

    .line 325
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 326
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_1
    if-ge v0, v2, :cond_2

    .line 327
    iget-object v3, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 328
    iget-object v3, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    add-int/lit8 v4, v0, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 326
    :cond_1
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 331
    :cond_2
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public querySize()I
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->queryNamesAndValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resolve(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;
    .locals 1

    .prologue
    .line 357
    invoke-virtual {p0, p1}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->newBuilder(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;

    move-result-object v0

    .line 358
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->build()Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public scheme()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->scheme:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->url:Ljava/lang/String;

    return-object v0
.end method

.method public uri()Ljava/net/URI;
    .locals 4

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->newBuilder()Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->reencodeForUri()Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 117
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :goto_0
    return-object v0

    .line 118
    :catch_0
    move-exception v0

    .line 121
    :try_start_1
    const-string v2, "[\\u0000-\\u001F\\u007F-\\u009F\\p{javaWhitespace}]"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 122
    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    .line 123
    :catch_1
    move-exception v1

    .line 124
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public url()Ljava/net/URL;
    .locals 2

    .prologue
    .line 95
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->url:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 96
    :catch_0
    move-exception v0

    .line 97
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public username()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->username:Ljava/lang/String;

    return-object v0
.end method
