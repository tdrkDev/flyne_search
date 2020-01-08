.class public final Lcom/meizu/cloud/pushsdk/networking/http/MultipartBody;
.super Lcom/meizu/cloud/pushsdk/networking/http/RequestBody;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/cloud/pushsdk/networking/http/MultipartBody$Builder;,
        Lcom/meizu/cloud/pushsdk/networking/http/MultipartBody$Part;
    }
.end annotation


# static fields
.field public static final ALTERNATIVE:Lcom/meizu/cloud/pushsdk/networking/http/MediaType;

.field private static final COLONSPACE:[B

.field private static final CRLF:[B

.field private static final DASHDASH:[B

.field public static final DIGEST:Lcom/meizu/cloud/pushsdk/networking/http/MediaType;

.field public static final FORM:Lcom/meizu/cloud/pushsdk/networking/http/MediaType;

.field public static final MIXED:Lcom/meizu/cloud/pushsdk/networking/http/MediaType;

.field public static final PARALLEL:Lcom/meizu/cloud/pushsdk/networking/http/MediaType;


# instance fields
.field private final boundary:Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;

.field private contentLength:J

.field private final contentType:Lcom/meizu/cloud/pushsdk/networking/http/MediaType;

.field private final originalType:Lcom/meizu/cloud/pushsdk/networking/http/MediaType;

.field private final parts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/meizu/cloud/pushsdk/networking/http/MultipartBody$Part;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 23
    const-string v0, "multipart/mixed"

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/networking/http/MediaType;->parse(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/http/MediaType;

    move-result-object v0

    sput-object v0, Lcom/meizu/cloud/pushsdk/networking/http/MultipartBody;->MIXED:Lcom/meizu/cloud/pushsdk/networking/http/MediaType;

    .line 30
    const-string v0, "multipart/alternative"

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/networking/http/MediaType;->parse(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/http/MediaType;

    move-result-object v0

    sput-object v0, Lcom/meizu/cloud/pushsdk/networking/http/MultipartBody;->ALTERNATIVE:Lcom/meizu/cloud/pushsdk/networking/http/MediaType;

    .line 37
    const-string v0, "multipart/digest"

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/networking/http/MediaType;->parse(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/http/MediaType;

    move-result-object v0

    sput-object v0, Lcom/meizu/cloud/pushsdk/networking/http/MultipartBody;->DIGEST:Lcom/meizu/cloud/pushsdk/networking/http/MediaType;

    .line 43
    const-string v0, "multipart/parallel"

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/networking/http/MediaType;->parse(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/http/MediaType;

    move-result-object v0

    sput-object v0, Lcom/meizu/cloud/pushsdk/networking/http/MultipartBody;->PARALLEL:Lcom/meizu/cloud/pushsdk/networking/http/MediaType;

    .line 50
    const-string v0, "multipart/form-data"

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/networking/http/MediaType;->parse(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/http/MediaType;

    move-result-object v0

    sput-object v0, Lcom/meizu/cloud/pushsdk/networking/http/MultipartBody;->FORM:Lcom/meizu/cloud/pushsdk/networking/http/MediaType;

    .line 52
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/meizu/cloud/pushsdk/networking/http/MultipartBody;->COLONSPACE:[B

    .line 53
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/meizu/cloud/pushsdk/networking/http/MultipartBody;->CRLF:[B

    .line 54
    new-array v0, v1, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/meizu/cloud/pushsdk/networking/http/MultipartBody;->DASHDASH:[B

    return-void

    .line 52
    nop

    :array_0
    .array-data 1
        0x3at
        0x20t
    .end array-data

    .line 53
    nop

    :array_1
    .array-data 1
        0xdt
        0xat
    .end array-data

    .line 54
    nop

    :array_2
    .array-data 1
        0x2dt
        0x2dt
    .end array-data
.end method

.method constructor <init>(Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;Lcom/meizu/cloud/pushsdk/networking/http/MediaType;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;",
            "Lcom/meizu/cloud/pushsdk/networking/http/MediaType;",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/cloud/pushsdk/networking/http/MultipartBody$Part;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/meizu/cloud/pushsdk/networking/http/RequestBody;-><init>()V

    .line 60
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/MultipartBody;->contentLength:J

    .line 63
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/networking/http/MultipartBody;->boundary:Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;

    .line 64
    iput-object p2, p0, Lcom/meizu/cloud/pushsdk/networking/http/MultipartBody;->originalType:Lcom/meizu/cloud/pushsdk/networking/http/MediaType;

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; boundary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/networking/http/MediaType;->parse(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/http/MediaType;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/MultipartBody;->contentType:Lcom/meizu/cloud/pushsdk/networking/http/MediaType;

    .line 66
    invoke-static {p3}, Lcom/meizu/cloud/pushsdk/networking/http/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/MultipartBody;->parts:Ljava/util/List;

    .line 67
    return-void
.end method

.method static appendQuotedString(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 4

    .prologue
    const/16 v3, 0x22

    .line 190
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 191
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 192
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 193
    sparse-switch v2, :sswitch_data_0

    .line 204
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 191
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 195
    :sswitch_0
    const-string v2, "%0A"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 198
    :sswitch_1
    const-string v2, "%0D"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 201
    :sswitch_2
    const-string v2, "%22"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 208
    :cond_0
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 209
    return-object p0

    .line 193
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0xd -> :sswitch_1
        0x22 -> :sswitch_2
    .end sparse-switch
.end method

.method private writeOrCountBytes(Lcom/meizu/cloud/pushsdk/networking/okio/BufferedSink;Z)J
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    const-wide/16 v2, 0x0

    .line 114
    const/4 v0, 0x0

    .line 115
    if-eqz p2, :cond_7

    .line 116
    new-instance v0, Lcom/meizu/cloud/pushsdk/networking/okio/Buffer;

    invoke-direct {v0}, Lcom/meizu/cloud/pushsdk/networking/okio/Buffer;-><init>()V

    move-object v1, v0

    move-object p1, v0

    .line 119
    :goto_0
    const/4 v0, 0x0

    iget-object v4, p0, Lcom/meizu/cloud/pushsdk/networking/http/MultipartBody;->parts:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    move v4, v0

    :goto_1
    if-ge v4, v5, :cond_6

    .line 120
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/MultipartBody;->parts:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/cloud/pushsdk/networking/http/MultipartBody$Part;

    .line 121
    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/networking/http/MultipartBody$Part;->access$000(Lcom/meizu/cloud/pushsdk/networking/http/MultipartBody$Part;)Lcom/meizu/cloud/pushsdk/networking/http/Headers;

    move-result-object v6

    .line 122
    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/networking/http/MultipartBody$Part;->access$100(Lcom/meizu/cloud/pushsdk/networking/http/MultipartBody$Part;)Lcom/meizu/cloud/pushsdk/networking/http/RequestBody;

    move-result-object v7

    .line 124
    sget-object v0, Lcom/meizu/cloud/pushsdk/networking/http/MultipartBody;->DASHDASH:[B

    invoke-interface {p1, v0}, Lcom/meizu/cloud/pushsdk/networking/okio/BufferedSink;->write([B)Lcom/meizu/cloud/pushsdk/networking/okio/BufferedSink;

    .line 125
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/MultipartBody;->boundary:Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;

    invoke-interface {p1, v0}, Lcom/meizu/cloud/pushsdk/networking/okio/BufferedSink;->write(Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;)Lcom/meizu/cloud/pushsdk/networking/okio/BufferedSink;

    .line 126
    sget-object v0, Lcom/meizu/cloud/pushsdk/networking/http/MultipartBody;->CRLF:[B

    invoke-interface {p1, v0}, Lcom/meizu/cloud/pushsdk/networking/okio/BufferedSink;->write([B)Lcom/meizu/cloud/pushsdk/networking/okio/BufferedSink;

    .line 128
    if-eqz v6, :cond_0

    .line 129
    const/4 v0, 0x0

    invoke-virtual {v6}, Lcom/meizu/cloud/pushsdk/networking/http/Headers;->size()I

    move-result v8

    :goto_2
    if-ge v0, v8, :cond_0

    .line 130
    invoke-virtual {v6, v0}, Lcom/meizu/cloud/pushsdk/networking/http/Headers;->name(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {p1, v9}, Lcom/meizu/cloud/pushsdk/networking/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/okio/BufferedSink;

    move-result-object v9

    sget-object v10, Lcom/meizu/cloud/pushsdk/networking/http/MultipartBody;->COLONSPACE:[B

    .line 131
    invoke-interface {v9, v10}, Lcom/meizu/cloud/pushsdk/networking/okio/BufferedSink;->write([B)Lcom/meizu/cloud/pushsdk/networking/okio/BufferedSink;

    move-result-object v9

    .line 132
    invoke-virtual {v6, v0}, Lcom/meizu/cloud/pushsdk/networking/http/Headers;->value(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lcom/meizu/cloud/pushsdk/networking/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/okio/BufferedSink;

    move-result-object v9

    sget-object v10, Lcom/meizu/cloud/pushsdk/networking/http/MultipartBody;->CRLF:[B

    .line 133
    invoke-interface {v9, v10}, Lcom/meizu/cloud/pushsdk/networking/okio/BufferedSink;->write([B)Lcom/meizu/cloud/pushsdk/networking/okio/BufferedSink;

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 137
    :cond_0
    invoke-virtual {v7}, Lcom/meizu/cloud/pushsdk/networking/http/RequestBody;->contentType()Lcom/meizu/cloud/pushsdk/networking/http/MediaType;

    move-result-object v0

    .line 138
    if-eqz v0, :cond_1

    .line 139
    const-string v6, "Content-Type: "

    invoke-interface {p1, v6}, Lcom/meizu/cloud/pushsdk/networking/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/okio/BufferedSink;

    move-result-object v6

    .line 140
    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/networking/http/MediaType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Lcom/meizu/cloud/pushsdk/networking/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/okio/BufferedSink;

    move-result-object v0

    sget-object v6, Lcom/meizu/cloud/pushsdk/networking/http/MultipartBody;->CRLF:[B

    .line 141
    invoke-interface {v0, v6}, Lcom/meizu/cloud/pushsdk/networking/okio/BufferedSink;->write([B)Lcom/meizu/cloud/pushsdk/networking/okio/BufferedSink;

    .line 144
    :cond_1
    invoke-virtual {v7}, Lcom/meizu/cloud/pushsdk/networking/http/RequestBody;->contentLength()J

    move-result-wide v8

    .line 145
    const-wide/16 v10, -0x1

    cmp-long v0, v8, v10

    if-eqz v0, :cond_3

    .line 146
    const-string v0, "Content-Length: "

    invoke-interface {p1, v0}, Lcom/meizu/cloud/pushsdk/networking/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/okio/BufferedSink;

    move-result-object v0

    .line 147
    invoke-interface {v0, v8, v9}, Lcom/meizu/cloud/pushsdk/networking/okio/BufferedSink;->writeDecimalLong(J)Lcom/meizu/cloud/pushsdk/networking/okio/BufferedSink;

    move-result-object v0

    sget-object v6, Lcom/meizu/cloud/pushsdk/networking/http/MultipartBody;->CRLF:[B

    .line 148
    invoke-interface {v0, v6}, Lcom/meizu/cloud/pushsdk/networking/okio/BufferedSink;->write([B)Lcom/meizu/cloud/pushsdk/networking/okio/BufferedSink;

    .line 155
    :cond_2
    sget-object v0, Lcom/meizu/cloud/pushsdk/networking/http/MultipartBody;->CRLF:[B

    invoke-interface {p1, v0}, Lcom/meizu/cloud/pushsdk/networking/okio/BufferedSink;->write([B)Lcom/meizu/cloud/pushsdk/networking/okio/BufferedSink;

    .line 157
    if-eqz p2, :cond_5

    .line 158
    add-long/2addr v2, v8

    .line 163
    :goto_3
    sget-object v0, Lcom/meizu/cloud/pushsdk/networking/http/MultipartBody;->CRLF:[B

    invoke-interface {p1, v0}, Lcom/meizu/cloud/pushsdk/networking/okio/BufferedSink;->write([B)Lcom/meizu/cloud/pushsdk/networking/okio/BufferedSink;

    .line 119
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto/16 :goto_1

    .line 149
    :cond_3
    if-eqz p2, :cond_2

    .line 151
    invoke-virtual {v1}, Lcom/meizu/cloud/pushsdk/networking/okio/Buffer;->clear()V

    .line 152
    const-wide/16 v2, -0x1

    .line 176
    :cond_4
    :goto_4
    return-wide v2

    .line 160
    :cond_5
    invoke-virtual {v7, p1}, Lcom/meizu/cloud/pushsdk/networking/http/RequestBody;->writeTo(Lcom/meizu/cloud/pushsdk/networking/okio/BufferedSink;)V

    goto :goto_3

    .line 166
    :cond_6
    sget-object v0, Lcom/meizu/cloud/pushsdk/networking/http/MultipartBody;->DASHDASH:[B

    invoke-interface {p1, v0}, Lcom/meizu/cloud/pushsdk/networking/okio/BufferedSink;->write([B)Lcom/meizu/cloud/pushsdk/networking/okio/BufferedSink;

    .line 167
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/MultipartBody;->boundary:Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;

    invoke-interface {p1, v0}, Lcom/meizu/cloud/pushsdk/networking/okio/BufferedSink;->write(Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;)Lcom/meizu/cloud/pushsdk/networking/okio/BufferedSink;

    .line 168
    sget-object v0, Lcom/meizu/cloud/pushsdk/networking/http/MultipartBody;->DASHDASH:[B

    invoke-interface {p1, v0}, Lcom/meizu/cloud/pushsdk/networking/okio/BufferedSink;->write([B)Lcom/meizu/cloud/pushsdk/networking/okio/BufferedSink;

    .line 169
    sget-object v0, Lcom/meizu/cloud/pushsdk/networking/http/MultipartBody;->CRLF:[B

    invoke-interface {p1, v0}, Lcom/meizu/cloud/pushsdk/networking/okio/BufferedSink;->write([B)Lcom/meizu/cloud/pushsdk/networking/okio/BufferedSink;

    .line 171
    if-eqz p2, :cond_4

    .line 172
    invoke-virtual {v1}, Lcom/meizu/cloud/pushsdk/networking/okio/Buffer;->size()J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 173
    invoke-virtual {v1}, Lcom/meizu/cloud/pushsdk/networking/okio/Buffer;->clear()V

    goto :goto_4

    :cond_7
    move-object v1, v0

    goto/16 :goto_0
.end method


# virtual methods
.method public boundary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/MultipartBody;->boundary:Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public contentLength()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    iget-wide v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/MultipartBody;->contentLength:J

    .line 97
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 98
    :goto_0
    return-wide v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/meizu/cloud/pushsdk/networking/http/MultipartBody;->writeOrCountBytes(Lcom/meizu/cloud/pushsdk/networking/okio/BufferedSink;Z)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/MultipartBody;->contentLength:J

    goto :goto_0
.end method

.method public contentType()Lcom/meizu/cloud/pushsdk/networking/http/MediaType;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/MultipartBody;->contentType:Lcom/meizu/cloud/pushsdk/networking/http/MediaType;

    return-object v0
.end method

.method public part(I)Lcom/meizu/cloud/pushsdk/networking/http/MultipartBody$Part;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/MultipartBody;->parts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/cloud/pushsdk/networking/http/MultipartBody$Part;

    return-object v0
.end method

.method public parts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/cloud/pushsdk/networking/http/MultipartBody$Part;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/MultipartBody;->parts:Ljava/util/List;

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/MultipartBody;->parts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public type()Lcom/meizu/cloud/pushsdk/networking/http/MediaType;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/MultipartBody;->originalType:Lcom/meizu/cloud/pushsdk/networking/http/MediaType;

    return-object v0
.end method

.method public writeTo(Lcom/meizu/cloud/pushsdk/networking/okio/BufferedSink;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/cloud/pushsdk/networking/http/MultipartBody;->writeOrCountBytes(Lcom/meizu/cloud/pushsdk/networking/okio/BufferedSink;Z)J

    .line 103
    return-void
.end method
