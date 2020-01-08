.class public final Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder$ParseResult;
    }
.end annotation


# instance fields
.field encodedFragment:Ljava/lang/String;

.field encodedPassword:Ljava/lang/String;

.field final encodedPathSegments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field encodedQueryNamesAndValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field encodedUsername:Ljava/lang/String;

.field host:Ljava/lang/String;

.field port:I

.field scheme:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 453
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 445
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    .line 446
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    .line 448
    const/4 v0, -0x1

    iput v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->port:I

    .line 449
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    .line 454
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 455
    return-void
.end method

.method private addPathSegments(Ljava/lang/String;Z)Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 554
    move v2, v6

    .line 556
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "/\\"

    invoke-static {p1, v2, v0, v1}, Lcom/meizu/cloud/pushsdk/networking/http/Util;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I

    move-result v3

    .line 557
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v3, v0, :cond_1

    const/4 v4, 0x1

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move v5, p2

    .line 558
    invoke-direct/range {v0 .. v5}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->push(Ljava/lang/String;IIZZ)V

    .line 559
    add-int/lit8 v2, v3, 0x1

    .line 560
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v2, v0, :cond_0

    .line 561
    return-object p0

    :cond_1
    move v4, v6

    .line 557
    goto :goto_0
.end method

.method private static canonicalizeHost(Ljava/lang/String;II)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1052
    invoke-static {p0, p1, p2, v2}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->percentDecode(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    .line 1055
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1057
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 1058
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->decodeIpv6(Ljava/lang/String;II)Ljava/net/InetAddress;

    move-result-object v0

    .line 1060
    :goto_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 1066
    :goto_1
    return-object v0

    .line 1059
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v2, v1}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->decodeIpv6(Ljava/lang/String;II)Ljava/net/InetAddress;

    move-result-object v0

    goto :goto_0

    .line 1061
    :cond_1
    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 1062
    array-length v1, v0

    const/16 v2, 0x10

    if-ne v1, v2, :cond_2

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->inet6AddressToAscii([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1063
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1066
    :cond_3
    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/networking/http/Util;->domainToAscii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private static decodeIpv4Suffix(Ljava/lang/String;II[BI)Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 1143
    move v0, p1

    move v4, p4

    .line 1145
    :goto_0
    if-ge v0, p2, :cond_8

    .line 1146
    array-length v2, p3

    if-ne v4, v2, :cond_0

    move v0, v1

    .line 1172
    :goto_1
    return v0

    .line 1149
    :cond_0
    if-eq v4, p4, :cond_2

    .line 1150
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-eq v2, v3, :cond_1

    move v0, v1

    goto :goto_1

    .line 1151
    :cond_1
    add-int/lit8 v0, v0, 0x1

    :cond_2
    move v2, v1

    move v3, v0

    .line 1157
    :goto_2
    if-ge v3, p2, :cond_3

    .line 1158
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 1159
    const/16 v6, 0x30

    if-lt v5, v6, :cond_3

    const/16 v6, 0x39

    if-le v5, v6, :cond_4

    .line 1164
    :cond_3
    sub-int v0, v3, v0

    .line 1165
    if-nez v0, :cond_7

    move v0, v1

    goto :goto_1

    .line 1160
    :cond_4
    if-nez v2, :cond_5

    if-eq v0, v3, :cond_5

    move v0, v1

    goto :goto_1

    .line 1161
    :cond_5
    mul-int/lit8 v2, v2, 0xa

    add-int/2addr v2, v5

    add-int/lit8 v2, v2, -0x30

    .line 1162
    const/16 v5, 0xff

    if-le v2, v5, :cond_6

    move v0, v1

    goto :goto_1

    .line 1157
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1168
    :cond_7
    add-int/lit8 v0, v4, 0x1

    int-to-byte v2, v2

    aput-byte v2, p3, v4

    move v4, v0

    move v0, v3

    .line 1169
    goto :goto_0

    .line 1171
    :cond_8
    add-int/lit8 v0, p4, 0x4

    if-eq v4, v0, :cond_9

    move v0, v1

    goto :goto_1

    .line 1172
    :cond_9
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private static decodeIpv6(Ljava/lang/String;II)Ljava/net/InetAddress;
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v7, -0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 1071
    const/16 v0, 0x10

    new-array v8, v0, [B

    move v0, p1

    move v4, v7

    move v1, v7

    move v2, v5

    .line 1076
    :goto_0
    if-ge v0, p2, :cond_2

    .line 1077
    array-length v6, v8

    if-ne v2, v6, :cond_0

    move-object v0, v3

    .line 1134
    :goto_1
    return-object v0

    .line 1080
    :cond_0
    add-int/lit8 v6, v0, 0x2

    if-gt v6, p2, :cond_3

    const-string v6, "::"

    const/4 v9, 0x2

    invoke-virtual {p0, v0, v6, v5, v9}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1082
    if-eq v1, v7, :cond_1

    move-object v0, v3

    goto :goto_1

    .line 1083
    :cond_1
    add-int/lit8 v0, v0, 0x2

    .line 1084
    add-int/lit8 v1, v2, 0x2

    .line 1086
    if-ne v0, p2, :cond_e

    move v2, v1

    .line 1127
    :cond_2
    :goto_2
    array-length v0, v8

    if-eq v2, v0, :cond_d

    .line 1128
    if-ne v1, v7, :cond_c

    move-object v0, v3

    goto :goto_1

    .line 1087
    :cond_3
    if-eqz v2, :cond_4

    .line 1089
    const-string v6, ":"

    invoke-virtual {p0, v0, v6, v5, v11}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1090
    add-int/lit8 v0, v0, 0x1

    :cond_4
    :goto_3
    move v4, v5

    move v6, v0

    .line 1104
    :goto_4
    if-ge v6, p2, :cond_5

    .line 1105
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 1106
    invoke-static {v9}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->decodeHexDigit(C)I

    move-result v9

    .line 1107
    if-ne v9, v7, :cond_a

    .line 1110
    :cond_5
    sub-int v9, v6, v0

    .line 1111
    if-eqz v9, :cond_6

    const/4 v10, 0x4

    if-le v9, v10, :cond_b

    :cond_6
    move-object v0, v3

    goto :goto_1

    .line 1091
    :cond_7
    const-string v6, "."

    invoke-virtual {p0, v0, v6, v5, v11}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1093
    add-int/lit8 v0, v2, -0x2

    invoke-static {p0, v4, p2, v8, v0}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->decodeIpv4Suffix(Ljava/lang/String;II[BI)Z

    move-result v0

    if-nez v0, :cond_8

    move-object v0, v3

    goto :goto_1

    .line 1094
    :cond_8
    add-int/lit8 v2, v2, 0x2

    .line 1095
    goto :goto_2

    :cond_9
    move-object v0, v3

    .line 1097
    goto :goto_1

    .line 1108
    :cond_a
    shl-int/lit8 v4, v4, 0x4

    add-int/2addr v4, v9

    .line 1104
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 1114
    :cond_b
    add-int/lit8 v9, v2, 0x1

    ushr-int/lit8 v10, v4, 0x8

    and-int/lit16 v10, v10, 0xff

    int-to-byte v10, v10

    aput-byte v10, v8, v2

    .line 1115
    add-int/lit8 v2, v9, 0x1

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v8, v9

    move v4, v0

    move v0, v6

    .line 1116
    goto :goto_0

    .line 1129
    :cond_c
    array-length v0, v8

    sub-int v3, v2, v1

    sub-int/2addr v0, v3

    sub-int v3, v2, v1

    invoke-static {v8, v1, v8, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1130
    array-length v0, v8

    sub-int/2addr v0, v2

    add-int/2addr v0, v1

    invoke-static {v8, v1, v0, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 1134
    :cond_d
    :try_start_0
    invoke-static {v8}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto/16 :goto_1

    .line 1135
    :catch_0
    move-exception v0

    .line 1136
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_e
    move v2, v1

    goto :goto_3
.end method

.method private static inet6AddressToAscii([B)Ljava/lang/String;
    .locals 8

    .prologue
    const/16 v7, 0x10

    const/16 v6, 0x3a

    const/4 v1, 0x0

    .line 1177
    const/4 v0, -0x1

    move v2, v1

    move v3, v0

    move v0, v1

    .line 1179
    :goto_0
    array-length v4, p0

    if-ge v0, v4, :cond_2

    move v5, v0

    .line 1181
    :goto_1
    if-ge v5, v7, :cond_0

    aget-byte v4, p0, v5

    if-nez v4, :cond_0

    add-int/lit8 v4, v5, 0x1

    aget-byte v4, p0, v4

    if-nez v4, :cond_0

    .line 1182
    add-int/lit8 v4, v5, 0x2

    move v5, v4

    goto :goto_1

    .line 1184
    :cond_0
    sub-int v4, v5, v0

    .line 1185
    if-le v4, v2, :cond_1

    move v2, v4

    move v3, v0

    .line 1179
    :cond_1
    add-int/lit8 v0, v5, 0x2

    goto :goto_0

    .line 1192
    :cond_2
    new-instance v0, Lcom/meizu/cloud/pushsdk/networking/okio/Buffer;

    invoke-direct {v0}, Lcom/meizu/cloud/pushsdk/networking/okio/Buffer;-><init>()V

    .line 1193
    :cond_3
    :goto_2
    array-length v4, p0

    if-ge v1, v4, :cond_6

    .line 1194
    if-ne v1, v3, :cond_4

    .line 1195
    invoke-virtual {v0, v6}, Lcom/meizu/cloud/pushsdk/networking/okio/Buffer;->writeByte(I)Lcom/meizu/cloud/pushsdk/networking/okio/Buffer;

    .line 1196
    add-int/2addr v1, v2

    .line 1197
    if-ne v1, v7, :cond_3

    invoke-virtual {v0, v6}, Lcom/meizu/cloud/pushsdk/networking/okio/Buffer;->writeByte(I)Lcom/meizu/cloud/pushsdk/networking/okio/Buffer;

    goto :goto_2

    .line 1199
    :cond_4
    if-lez v1, :cond_5

    invoke-virtual {v0, v6}, Lcom/meizu/cloud/pushsdk/networking/okio/Buffer;->writeByte(I)Lcom/meizu/cloud/pushsdk/networking/okio/Buffer;

    .line 1200
    :cond_5
    aget-byte v4, p0, v1

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v5, v1, 0x1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    .line 1201
    int-to-long v4, v4

    invoke-virtual {v0, v4, v5}, Lcom/meizu/cloud/pushsdk/networking/okio/Buffer;->writeHexadecimalUnsignedLong(J)Lcom/meizu/cloud/pushsdk/networking/okio/Buffer;

    .line 1202
    add-int/lit8 v1, v1, 0x2

    .line 1203
    goto :goto_2

    .line 1205
    :cond_6
    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/networking/okio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isDot(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 957
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "%2e"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDotDot(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 961
    const-string v0, ".."

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "%2e."

    .line 962
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".%2e"

    .line 963
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "%2e%2e"

    .line 964
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 961
    :goto_0
    return v0

    .line 964
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static parsePort(Ljava/lang/String;II)I
    .locals 9

    .prologue
    const/4 v8, -0x1

    .line 1211
    :try_start_0
    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v7}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    .line 1212
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1213
    if-lez v0, :cond_0

    const v1, 0xffff

    if-gt v0, v1, :cond_0

    .line 1216
    :goto_0
    return v0

    :cond_0
    move v0, v8

    .line 1214
    goto :goto_0

    .line 1215
    :catch_0
    move-exception v0

    move v0, v8

    .line 1216
    goto :goto_0
.end method

.method private pop()V
    .locals 3

    .prologue
    .line 978
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 981
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 982
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 986
    :goto_0
    return-void

    .line 984
    :cond_0
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static portColonOffset(Ljava/lang/String;II)I
    .locals 3

    .prologue
    .line 1035
    move v0, p1

    :goto_0
    if-ge v0, p2, :cond_2

    .line 1036
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 1035
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1038
    :cond_1
    :sswitch_0
    add-int/lit8 v0, v0, 0x1

    if-ge v0, p2, :cond_0

    .line 1039
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5d

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_2
    move v0, p2

    .line 1046
    :sswitch_1
    return v0

    .line 1036
    :sswitch_data_0
    .sparse-switch
        0x3a -> :sswitch_1
        0x5b -> :sswitch_0
    .end sparse-switch
.end method

.method private push(Ljava/lang/String;IIZZ)V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 937
    const-string v3, " \"<>^`{}|/\\?#"

    const/4 v7, 0x1

    move-object v0, p1

    move v1, p2

    move v2, p3

    move v4, p5

    move v6, v5

    invoke-static/range {v0 .. v7}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v1

    .line 939
    invoke-direct {p0, v1}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->isDot(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 954
    :cond_0
    :goto_0
    return-void

    .line 942
    :cond_1
    invoke-direct {p0, v1}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->isDotDot(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 943
    invoke-direct {p0}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->pop()V

    goto :goto_0

    .line 946
    :cond_2
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 947
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 951
    :goto_1
    if-eqz p4, :cond_0

    .line 952
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 949
    :cond_3
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private removeAllCanonicalQueryParameters(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 675
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    :goto_0
    if-ltz v0, :cond_0

    .line 676
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 677
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    add-int/lit8 v2, v0, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 678
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 679
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 680
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    .line 685
    :cond_0
    return-void

    .line 675
    :cond_1
    add-int/lit8 v0, v0, -0x2

    goto :goto_0
.end method

.method private resolvePath(Ljava/lang/String;II)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 909
    if-ne p2, p3, :cond_1

    .line 932
    :cond_0
    return-void

    .line 913
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 914
    const/16 v1, 0x2f

    if-eq v0, v1, :cond_2

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_4

    .line 916
    :cond_2
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 917
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 918
    add-int/lit8 p2, p2, 0x1

    :goto_0
    move v2, p2

    .line 925
    :goto_1
    if-ge v2, p3, :cond_0

    .line 926
    const-string v0, "/\\"

    invoke-static {p1, v2, p3, v0}, Lcom/meizu/cloud/pushsdk/networking/http/Util;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I

    move-result v3

    .line 927
    if-ge v3, p3, :cond_5

    move v4, v5

    :goto_2
    move-object v0, p0

    move-object v1, p1

    .line 928
    invoke-direct/range {v0 .. v5}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->push(Ljava/lang/String;IIZZ)V

    .line 930
    if-eqz v4, :cond_3

    add-int/lit8 v3, v3, 0x1

    :cond_3
    move v2, v3

    .line 931
    goto :goto_1

    .line 921
    :cond_4
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 927
    :cond_5
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private static schemeDelimiterOffset(Ljava/lang/String;II)I
    .locals 8

    .prologue
    const/16 v7, 0x7a

    const/16 v6, 0x61

    const/16 v5, 0x5a

    const/16 v4, 0x41

    const/4 v0, -0x1

    .line 993
    sub-int v1, p2, p1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 1015
    :cond_0
    :goto_0
    return v0

    .line 995
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 996
    if-lt v1, v6, :cond_2

    if-le v1, v7, :cond_3

    :cond_2
    if-lt v1, v4, :cond_0

    if-gt v1, v5, :cond_0

    .line 998
    :cond_3
    add-int/lit8 v1, p1, 0x1

    :goto_1
    if-ge v1, p2, :cond_0

    .line 999
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1001
    if-lt v2, v6, :cond_4

    if-le v2, v7, :cond_7

    :cond_4
    if-lt v2, v4, :cond_5

    if-le v2, v5, :cond_7

    :cond_5
    const/16 v3, 0x30

    if-lt v2, v3, :cond_6

    const/16 v3, 0x39

    if-le v2, v3, :cond_7

    :cond_6
    const/16 v3, 0x2b

    if-eq v2, v3, :cond_7

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_7

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_8

    .line 998
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1008
    :cond_8
    const/16 v3, 0x3a

    if-ne v2, v3, :cond_0

    move v0, v1

    .line 1009
    goto :goto_0
.end method

.method private static slashCount(Ljava/lang/String;II)I
    .locals 3

    .prologue
    .line 1020
    const/4 v0, 0x0

    .line 1021
    :goto_0
    if-ge p1, p2, :cond_1

    .line 1022
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1023
    const/16 v2, 0x5c

    if-eq v1, v2, :cond_0

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_1

    .line 1024
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 1025
    add-int/lit8 p1, p1, 0x1

    .line 1029
    goto :goto_0

    .line 1030
    :cond_1
    return v0
.end method


# virtual methods
.method public addEncodedPathSegment(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 534
    if-nez p1, :cond_0

    .line 535
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "encodedPathSegment == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 537
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->push(Ljava/lang/String;IIZZ)V

    .line 538
    return-object p0
.end method

.method public addEncodedPathSegments(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;
    .locals 2

    .prologue
    .line 547
    if-nez p1, :cond_0

    .line 548
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "encodedPathSegments == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 550
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->addPathSegments(Ljava/lang/String;Z)Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;

    move-result-object v0

    return-object v0
.end method

.method public addEncodedQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 635
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "encodedName == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 636
    :cond_0
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    .line 637
    :cond_1
    iget-object v6, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    const-string v1, " \"\'<>#&="

    move-object v0, p1

    move v4, v2

    move v5, v2

    .line 638
    invoke-static/range {v0 .. v5}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    .line 637
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 639
    iget-object v6, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-eqz p2, :cond_2

    const-string v1, " \"\'<>#&="

    move-object v0, p2

    move v4, v2

    move v5, v2

    .line 640
    invoke-static/range {v0 .. v5}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    .line 639
    :goto_0
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 642
    return-object p0

    .line 640
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addPathSegment(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 519
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pathSegment == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 520
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->push(Ljava/lang/String;IIZZ)V

    .line 521
    return-object p0
.end method

.method public addPathSegments(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;
    .locals 2

    .prologue
    .line 529
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pathSegments == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 530
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->addPathSegments(Ljava/lang/String;Z)Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;

    move-result-object v0

    return-object v0
.end method

.method public addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 623
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 624
    :cond_0
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    .line 625
    :cond_1
    iget-object v6, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    const-string v1, " \"\'<>#&="

    move-object v0, p1

    move v3, v2

    move v5, v4

    .line 626
    invoke-static/range {v0 .. v5}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    .line 625
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 627
    iget-object v6, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-eqz p2, :cond_2

    const-string v1, " \"\'<>#&="

    move-object v0, p2

    move v3, v2

    move v5, v4

    .line 628
    invoke-static/range {v0 .. v5}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    .line 627
    :goto_0
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 630
    return-object p0

    .line 628
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public build()Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;
    .locals 2

    .prologue
    .line 728
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->scheme:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "scheme == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 729
    :cond_0
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->host:Ljava/lang/String;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "host == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 730
    :cond_1
    new-instance v0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;-><init>(Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$1;)V

    return-object v0
.end method

.method effectivePort()I
    .locals 2

    .prologue
    .line 515
    iget v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->port:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->port:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->scheme:Ljava/lang/String;

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->defaultPort(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public encodedFragment(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 695
    if-eqz p1, :cond_0

    const-string v1, ""

    const/4 v2, 0x1

    move-object v0, p1

    move v4, v3

    move v5, v3

    .line 696
    invoke-static/range {v0 .. v5}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    .line 698
    return-object p0

    .line 696
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public encodedPassword(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 490
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "encodedPassword == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 491
    :cond_0
    const-string v1, " \"\':;<=>@[]^`{}|/\\?#"

    move-object v0, p1

    move v4, v3

    move v5, v2

    invoke-static/range {v0 .. v5}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    .line 493
    return-object p0
.end method

.method public encodedPath(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;
    .locals 3

    .prologue
    .line 597
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "encodedPath == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 598
    :cond_0
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 599
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected encodedPath: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 601
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->resolvePath(Ljava/lang/String;II)V

    .line 602
    return-object p0
.end method

.method public encodedQuery(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 614
    if-eqz p1, :cond_0

    const-string v1, " \"\'<>#"

    const/4 v3, 0x0

    move-object v0, p1

    move v4, v2

    move v5, v2

    .line 616
    invoke-static/range {v0 .. v5}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    .line 615
    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->queryStringToNamesAndValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    .line 618
    return-object p0

    .line 615
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public encodedUsername(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 477
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "encodedUsername == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 478
    :cond_0
    const-string v1, " \"\':;<=>@[]^`{}|/\\?#"

    move-object v0, p1

    move v4, v3

    move v5, v2

    invoke-static/range {v0 .. v5}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    .line 480
    return-object p0
.end method

.method public fragment(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 688
    if-eqz p1, :cond_0

    const-string v1, ""

    move-object v0, p1

    move v3, v2

    move v4, v2

    move v5, v2

    .line 689
    invoke-static/range {v0 .. v5}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    .line 691
    return-object p0

    .line 689
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public host(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;
    .locals 3

    .prologue
    .line 501
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "host == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 502
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->canonicalizeHost(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 503
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected host: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 504
    :cond_1
    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->host:Ljava/lang/String;

    .line 505
    return-object p0
.end method

.method parse(Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder$ParseResult;
    .locals 13

    .prologue
    .line 786
    const/4 v0, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p2, v0, v1}, Lcom/meizu/cloud/pushsdk/networking/http/Util;->skipLeadingAsciiWhitespace(Ljava/lang/String;II)I

    move-result v2

    .line 787
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p2, v2, v0}, Lcom/meizu/cloud/pushsdk/networking/http/Util;->skipTrailingAsciiWhitespace(Ljava/lang/String;II)I

    move-result v11

    .line 790
    invoke-static {p2, v2, v11}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->schemeDelimiterOffset(Ljava/lang/String;II)I

    move-result v0

    .line 791
    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 792
    const/4 v1, 0x1

    const-string v3, "https:"

    const/4 v4, 0x0

    const/4 v5, 0x6

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 793
    const-string v0, "https"

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->scheme:Ljava/lang/String;

    .line 794
    const-string v0, "https:"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v2, v0

    .line 808
    :goto_0
    const/4 v1, 0x0

    .line 809
    const/4 v0, 0x0

    .line 810
    invoke-static {p2, v2, v11}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->slashCount(Ljava/lang/String;II)I

    move-result v3

    .line 811
    const/4 v4, 0x2

    if-ge v3, v4, :cond_0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->access$100(Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->scheme:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 821
    :cond_0
    add-int/2addr v2, v3

    move v8, v0

    move v9, v1

    move v1, v2

    .line 824
    :goto_1
    const-string v0, "@/\\?#"

    invoke-static {p2, v1, v11, v0}, Lcom/meizu/cloud/pushsdk/networking/http/Util;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I

    move-result v10

    .line 825
    if-eq v10, v11, :cond_5

    .line 826
    invoke-virtual {p2, v10}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 828
    :goto_2
    sparse-switch v0, :sswitch_data_0

    move v0, v8

    move v2, v1

    move v1, v9

    :goto_3
    move v8, v0

    move v9, v1

    move v1, v2

    .line 871
    goto :goto_1

    .line 795
    :cond_1
    const/4 v1, 0x1

    const-string v3, "http:"

    const/4 v4, 0x0

    const/4 v5, 0x5

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 796
    const-string v0, "http"

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->scheme:Ljava/lang/String;

    .line 797
    const-string v0, "http:"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v2, v0

    goto :goto_0

    .line 799
    :cond_2
    sget-object v0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder$ParseResult;->UNSUPPORTED_SCHEME:Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder$ParseResult;

    .line 904
    :goto_4
    return-object v0

    .line 801
    :cond_3
    if-eqz p1, :cond_4

    .line 802
    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->access$100(Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->scheme:Ljava/lang/String;

    goto :goto_0

    .line 804
    :cond_4
    sget-object v0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder$ParseResult;->MISSING_SCHEME:Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder$ParseResult;

    goto :goto_4

    .line 826
    :cond_5
    const/4 v0, -0x1

    goto :goto_2

    .line 831
    :sswitch_0
    if-nez v8, :cond_8

    .line 832
    const/16 v0, 0x3a

    invoke-static {p2, v1, v10, v0}, Lcom/meizu/cloud/pushsdk/networking/http/Util;->delimiterOffset(Ljava/lang/String;IIC)I

    move-result v2

    .line 834
    const-string v3, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p2

    invoke-static/range {v0 .. v7}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    .line 836
    if-eqz v9, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "%40"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_6
    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    .line 839
    if-eq v2, v10, :cond_7

    .line 840
    const/4 v8, 0x1

    .line 841
    add-int/lit8 v1, v2, 0x1

    const-string v3, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p2

    move v2, v10

    invoke-static/range {v0 .. v7}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    .line 844
    :cond_7
    const/4 v9, 0x1

    .line 849
    :goto_5
    add-int/lit8 v2, v10, 0x1

    move v0, v8

    move v1, v9

    .line 850
    goto :goto_3

    .line 846
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "%40"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v3, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p2

    move v2, v10

    invoke-static/range {v0 .. v7}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    goto :goto_5

    .line 858
    :sswitch_1
    invoke-static {p2, v1, v10}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->portColonOffset(Ljava/lang/String;II)I

    move-result v0

    .line 859
    add-int/lit8 v2, v0, 0x1

    if-ge v2, v10, :cond_9

    .line 860
    invoke-static {p2, v1, v0}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->canonicalizeHost(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->host:Ljava/lang/String;

    .line 861
    add-int/lit8 v0, v0, 0x1

    invoke-static {p2, v0, v10}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->parsePort(Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->port:I

    .line 862
    iget v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->port:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    sget-object v0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder$ParseResult;->INVALID_PORT:Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder$ParseResult;

    goto/16 :goto_4

    .line 864
    :cond_9
    invoke-static {p2, v1, v0}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->canonicalizeHost(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->host:Ljava/lang/String;

    .line 865
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->scheme:Ljava/lang/String;

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->defaultPort(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->port:I

    .line 867
    :cond_a
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->host:Ljava/lang/String;

    if-nez v0, :cond_b

    sget-object v0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder$ParseResult;->INVALID_HOST:Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder$ParseResult;

    goto/16 :goto_4

    :cond_b
    move v2, v10

    .line 886
    :cond_c
    :goto_6
    const-string v0, "?#"

    invoke-static {p2, v2, v11, v0}, Lcom/meizu/cloud/pushsdk/networking/http/Util;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I

    move-result v0

    .line 887
    invoke-direct {p0, p2, v2, v0}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->resolvePath(Ljava/lang/String;II)V

    .line 891
    if-ge v0, v11, :cond_10

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x3f

    if-ne v1, v2, :cond_10

    .line 892
    const/16 v1, 0x23

    invoke-static {p2, v0, v11, v1}, Lcom/meizu/cloud/pushsdk/networking/http/Util;->delimiterOffset(Ljava/lang/String;IIC)I

    move-result v2

    .line 893
    add-int/lit8 v1, v0, 0x1

    const-string v3, " \"\'<>#"

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v0, p2

    invoke-static/range {v0 .. v7}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->queryStringToNamesAndValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    .line 899
    :goto_7
    if-ge v2, v11, :cond_d

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_d

    .line 900
    add-int/lit8 v1, v2, 0x1

    const-string v3, ""

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p2

    move v2, v11

    invoke-static/range {v0 .. v7}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    .line 904
    :cond_d
    sget-object v0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder$ParseResult;->SUCCESS:Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder$ParseResult;

    goto/16 :goto_4

    .line 874
    :cond_e
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->encodedUsername()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    .line 875
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->encodedPassword()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    .line 876
    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->access$200(Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->host:Ljava/lang/String;

    .line 877
    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->access$300(Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;)I

    move-result v0

    iput v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->port:I

    .line 878
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 879
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->encodedPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 880
    if-eq v2, v11, :cond_f

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_c

    .line 881
    :cond_f
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->encodedQuery()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->encodedQuery(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;

    goto/16 :goto_6

    :cond_10
    move v2, v0

    goto :goto_7

    .line 828
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_1
        0x23 -> :sswitch_1
        0x2f -> :sswitch_1
        0x3f -> :sswitch_1
        0x40 -> :sswitch_0
        0x5c -> :sswitch_1
    .end sparse-switch
.end method

.method public password(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 484
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "password == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 485
    :cond_0
    const-string v1, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v5, 0x1

    move-object v0, p1

    move v3, v2

    move v4, v2

    invoke-static/range {v0 .. v5}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    .line 486
    return-object p0
.end method

.method public port(I)Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;
    .locals 3

    .prologue
    .line 509
    if-lez p1, :cond_0

    const v0, 0xffff

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected port: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 510
    :cond_1
    iput p1, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->port:I

    .line 511
    return-object p0
.end method

.method public query(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 606
    if-eqz p1, :cond_0

    const-string v1, " \"\'<>#"

    move-object v0, p1

    move v3, v2

    move v5, v4

    .line 607
    invoke-static/range {v0 .. v5}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->queryStringToNamesAndValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    .line 610
    return-object p0

    .line 607
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method reencodeForUri()Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;
    .locals 11

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 706
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    move v6, v4

    :goto_0
    if-ge v6, v7, :cond_0

    .line 707
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 708
    iget-object v8, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    const-string v1, "[]"

    move v3, v2

    move v5, v2

    .line 709
    invoke-static/range {v0 .. v5}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    .line 708
    invoke-interface {v8, v6, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 706
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 711
    :cond_0
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 712
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    move v0, v4

    :goto_1
    if-ge v0, v1, :cond_2

    .line 713
    iget-object v3, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 714
    if-eqz v5, :cond_1

    .line 715
    iget-object v3, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    const-string v6, "\\^`{|}"

    move v7, v2

    move v8, v2

    move v9, v2

    move v10, v2

    .line 716
    invoke-static/range {v5 .. v10}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v5

    .line 715
    invoke-interface {v3, v0, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 712
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 720
    :cond_2
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 721
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    const-string v1, " \"#<>\\^`{|}"

    move v3, v2

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    .line 724
    :cond_3
    return-object p0
.end method

.method public removeAllEncodedQueryParameters(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 667
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "encodedName == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 668
    :cond_0
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-nez v0, :cond_1

    .line 671
    :goto_0
    return-object p0

    .line 669
    :cond_1
    const-string v1, " \"\'<>#&="

    const/4 v3, 0x0

    move-object v0, p1

    move v4, v2

    move v5, v2

    .line 670
    invoke-static/range {v0 .. v5}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    .line 669
    invoke-direct {p0, v0}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->removeAllCanonicalQueryParameters(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public removeAllQueryParameters(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 658
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 659
    :cond_0
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-nez v0, :cond_1

    .line 663
    :goto_0
    return-object p0

    .line 660
    :cond_1
    const-string v1, " \"\'<>#&="

    move-object v0, p1

    move v3, v2

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    .line 662
    invoke-direct {p0, v0}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->removeAllCanonicalQueryParameters(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public removePathSegment(I)Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;
    .locals 2

    .prologue
    .line 589
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 590
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 591
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 593
    :cond_0
    return-object p0
.end method

.method public scheme(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;
    .locals 3

    .prologue
    .line 458
    if-nez p1, :cond_0

    .line 459
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "scheme == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 460
    :cond_0
    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 461
    const-string v0, "http"

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->scheme:Ljava/lang/String;

    .line 467
    :goto_0
    return-object p0

    .line 462
    :cond_1
    const-string v0, "https"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 463
    const-string v0, "https"

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->scheme:Ljava/lang/String;

    goto :goto_0

    .line 465
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected scheme: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setEncodedPathSegment(ILjava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 576
    if-nez p2, :cond_0

    .line 577
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "encodedPathSegment == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 580
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, " \"<>^`{}|/\\?#"

    move-object v0, p2

    move v5, v1

    move v6, v1

    move v7, v4

    .line 579
    invoke-static/range {v0 .. v7}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    .line 581
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v1, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 582
    invoke-direct {p0, v0}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->isDot(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, v0}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->isDotDot(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 583
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected path segment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 585
    :cond_2
    return-object p0
.end method

.method public setEncodedQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;
    .locals 0

    .prologue
    .line 652
    invoke-virtual {p0, p1}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->removeAllEncodedQueryParameters(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;

    .line 653
    invoke-virtual {p0, p1, p2}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->addEncodedQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;

    .line 654
    return-object p0
.end method

.method public setPathSegment(ILjava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 565
    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pathSegment == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 567
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, " \"<>^`{}|/\\?#"

    const/4 v7, 0x1

    move-object v0, p2

    move v4, v1

    move v5, v1

    move v6, v1

    .line 566
    invoke-static/range {v0 .. v7}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    .line 568
    invoke-direct {p0, v0}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->isDot(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, v0}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->isDotDot(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 569
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected path segment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 571
    :cond_2
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v1, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 572
    return-object p0
.end method

.method public setQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;
    .locals 0

    .prologue
    .line 646
    invoke-virtual {p0, p1}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->removeAllQueryParameters(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;

    .line 647
    invoke-virtual {p0, p1, p2}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;

    .line 648
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x3a

    .line 734
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 735
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->scheme:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 736
    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 738
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 739
    :cond_0
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 740
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 741
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 742
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 744
    :cond_1
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 747
    :cond_2
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->host:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_6

    .line 749
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 750
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 751
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 756
    :goto_0
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->effectivePort()I

    move-result v1

    .line 757
    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->scheme:Ljava/lang/String;

    invoke-static {v2}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->defaultPort(Ljava/lang/String;)I

    move-result v2

    if-eq v1, v2, :cond_3

    .line 758
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 759
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 762
    :cond_3
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->pathSegmentsToString(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 764
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-eqz v1, :cond_4

    .line 765
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 766
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->namesAndValuesToQueryString(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 769
    :cond_4
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 770
    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 771
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 774
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 753
    :cond_6
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public username(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 471
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "username == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 472
    :cond_0
    const-string v1, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v5, 0x1

    move-object v0, p1

    move v3, v2

    move v4, v2

    invoke-static/range {v0 .. v5}, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/http/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    .line 473
    return-object p0
.end method
