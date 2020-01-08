.class public final Lcom/alibaba/fastjson/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[C

.field public static final b:[Z

.field public static final c:[Z

.field public static final d:[Z

.field public static final e:[Z

.field public static final f:[C

.field public static final g:[C


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v6, 0xb

    const/16 v5, 0xa

    const/16 v4, 0x8

    const/16 v3, 0x5c

    const/4 v2, 0x1

    .line 22
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/alibaba/fastjson/a/b;->a:[C

    .line 28
    const/16 v0, 0x100

    new-array v0, v0, [Z

    sput-object v0, Lcom/alibaba/fastjson/a/b;->b:[Z

    .line 30
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/alibaba/fastjson/a/b;->b:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 31
    const/16 v1, 0x41

    if-lt v0, v1, :cond_1

    const/16 v1, 0x5a

    if-gt v0, v1, :cond_1

    .line 32
    sget-object v1, Lcom/alibaba/fastjson/a/b;->b:[Z

    aput-boolean v2, v1, v0

    .line 30
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    goto :goto_0

    .line 33
    :cond_1
    const/16 v1, 0x61

    if-lt v0, v1, :cond_2

    const/16 v1, 0x7a

    if-gt v0, v1, :cond_2

    .line 34
    sget-object v1, Lcom/alibaba/fastjson/a/b;->b:[Z

    aput-boolean v2, v1, v0

    goto :goto_1

    .line 35
    :cond_2
    const/16 v1, 0x5f

    if-ne v0, v1, :cond_0

    .line 36
    sget-object v1, Lcom/alibaba/fastjson/a/b;->b:[Z

    aput-boolean v2, v1, v0

    goto :goto_1

    .line 41
    :cond_3
    const/16 v0, 0x100

    new-array v0, v0, [Z

    sput-object v0, Lcom/alibaba/fastjson/a/b;->c:[Z

    .line 44
    const/4 v0, 0x0

    :goto_2
    sget-object v1, Lcom/alibaba/fastjson/a/b;->c:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_8

    .line 45
    const/16 v1, 0x41

    if-lt v0, v1, :cond_5

    const/16 v1, 0x5a

    if-gt v0, v1, :cond_5

    .line 46
    sget-object v1, Lcom/alibaba/fastjson/a/b;->c:[Z

    aput-boolean v2, v1, v0

    .line 44
    :cond_4
    :goto_3
    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    goto :goto_2

    .line 47
    :cond_5
    const/16 v1, 0x61

    if-lt v0, v1, :cond_6

    const/16 v1, 0x7a

    if-gt v0, v1, :cond_6

    .line 48
    sget-object v1, Lcom/alibaba/fastjson/a/b;->c:[Z

    aput-boolean v2, v1, v0

    goto :goto_3

    .line 49
    :cond_6
    const/16 v1, 0x5f

    if-ne v0, v1, :cond_7

    .line 50
    sget-object v1, Lcom/alibaba/fastjson/a/b;->c:[Z

    aput-boolean v2, v1, v0

    goto :goto_3

    .line 51
    :cond_7
    const/16 v1, 0x30

    if-lt v0, v1, :cond_4

    const/16 v1, 0x39

    if-gt v0, v1, :cond_4

    .line 52
    sget-object v1, Lcom/alibaba/fastjson/a/b;->c:[Z

    aput-boolean v2, v1, v0

    goto :goto_3

    .line 57
    :cond_8
    const/16 v0, 0x80

    new-array v0, v0, [Z

    sput-object v0, Lcom/alibaba/fastjson/a/b;->d:[Z

    .line 58
    const/16 v0, 0x80

    new-array v0, v0, [Z

    sput-object v0, Lcom/alibaba/fastjson/a/b;->e:[Z

    .line 64
    const/16 v0, 0x80

    new-array v0, v0, [C

    sput-object v0, Lcom/alibaba/fastjson/a/b;->f:[C

    .line 66
    sget-object v0, Lcom/alibaba/fastjson/a/b;->d:[Z

    aput-boolean v2, v0, v4

    .line 67
    sget-object v0, Lcom/alibaba/fastjson/a/b;->d:[Z

    aput-boolean v2, v0, v5

    .line 68
    sget-object v0, Lcom/alibaba/fastjson/a/b;->d:[Z

    const/16 v1, 0xc

    aput-boolean v2, v0, v1

    .line 69
    sget-object v0, Lcom/alibaba/fastjson/a/b;->d:[Z

    const/16 v1, 0xd

    aput-boolean v2, v0, v1

    .line 70
    sget-object v0, Lcom/alibaba/fastjson/a/b;->d:[Z

    const/16 v1, 0x22

    aput-boolean v2, v0, v1

    .line 71
    sget-object v0, Lcom/alibaba/fastjson/a/b;->d:[Z

    aput-boolean v2, v0, v3

    .line 72
    sget-object v0, Lcom/alibaba/fastjson/a/b;->d:[Z

    aput-boolean v2, v0, v6

    .line 74
    sget-object v0, Lcom/alibaba/fastjson/a/b;->e:[Z

    aput-boolean v2, v0, v4

    .line 75
    sget-object v0, Lcom/alibaba/fastjson/a/b;->e:[Z

    aput-boolean v2, v0, v5

    .line 76
    sget-object v0, Lcom/alibaba/fastjson/a/b;->e:[Z

    const/16 v1, 0xc

    aput-boolean v2, v0, v1

    .line 77
    sget-object v0, Lcom/alibaba/fastjson/a/b;->e:[Z

    const/16 v1, 0xd

    aput-boolean v2, v0, v1

    .line 78
    sget-object v0, Lcom/alibaba/fastjson/a/b;->e:[Z

    const/16 v1, 0x27

    aput-boolean v2, v0, v1

    .line 79
    sget-object v0, Lcom/alibaba/fastjson/a/b;->e:[Z

    aput-boolean v2, v0, v3

    .line 80
    sget-object v0, Lcom/alibaba/fastjson/a/b;->e:[Z

    aput-boolean v2, v0, v6

    .line 82
    sget-object v0, Lcom/alibaba/fastjson/a/b;->f:[C

    const/16 v1, 0x62

    aput-char v1, v0, v4

    .line 83
    sget-object v0, Lcom/alibaba/fastjson/a/b;->f:[C

    const/16 v1, 0x6e

    aput-char v1, v0, v5

    .line 84
    sget-object v0, Lcom/alibaba/fastjson/a/b;->f:[C

    const/16 v1, 0xc

    const/16 v2, 0x66

    aput-char v2, v0, v1

    .line 85
    sget-object v0, Lcom/alibaba/fastjson/a/b;->f:[C

    const/16 v1, 0xd

    const/16 v2, 0x72

    aput-char v2, v0, v1

    .line 86
    sget-object v0, Lcom/alibaba/fastjson/a/b;->f:[C

    const/16 v1, 0x22

    const/16 v2, 0x22

    aput-char v2, v0, v1

    .line 87
    sget-object v0, Lcom/alibaba/fastjson/a/b;->f:[C

    const/16 v1, 0x27

    const/16 v2, 0x27

    aput-char v2, v0, v1

    .line 88
    sget-object v0, Lcom/alibaba/fastjson/a/b;->f:[C

    aput-char v3, v0, v3

    .line 89
    sget-object v0, Lcom/alibaba/fastjson/a/b;->f:[C

    const/16 v1, 0x9

    const/16 v2, 0x74

    aput-char v2, v0, v1

    .line 90
    sget-object v0, Lcom/alibaba/fastjson/a/b;->f:[C

    const/16 v1, 0x2f

    const/16 v2, 0x2f

    aput-char v2, v0, v1

    .line 91
    sget-object v0, Lcom/alibaba/fastjson/a/b;->f:[C

    const/16 v1, 0x76

    aput-char v1, v0, v6

    .line 94
    const/16 v0, 0x60

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/alibaba/fastjson/a/b;->g:[C

    return-void

    .line 22
    nop

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

    .line 94
    :array_1
    .array-data 2
        0x30s
        0x30s
        0x30s
        0x31s
        0x30s
        0x32s
        0x30s
        0x33s
        0x30s
        0x34s
        0x30s
        0x35s
        0x30s
        0x36s
        0x30s
        0x37s
        0x30s
        0x38s
        0x30s
        0x39s
        0x30s
        0x41s
        0x30s
        0x42s
        0x30s
        0x43s
        0x30s
        0x44s
        0x30s
        0x45s
        0x30s
        0x46s
        0x31s
        0x30s
        0x31s
        0x31s
        0x31s
        0x32s
        0x31s
        0x33s
        0x31s
        0x34s
        0x31s
        0x35s
        0x31s
        0x36s
        0x31s
        0x37s
        0x31s
        0x38s
        0x31s
        0x39s
        0x31s
        0x41s
        0x31s
        0x42s
        0x31s
        0x43s
        0x31s
        0x44s
        0x31s
        0x45s
        0x31s
        0x46s
        0x32s
        0x30s
        0x32s
        0x31s
        0x32s
        0x32s
        0x32s
        0x33s
        0x32s
        0x34s
        0x32s
        0x35s
        0x32s
        0x36s
        0x32s
        0x37s
        0x32s
        0x38s
        0x32s
        0x39s
        0x32s
        0x41s
        0x32s
        0x42s
        0x32s
        0x43s
        0x32s
        0x44s
        0x32s
        0x45s
        0x32s
        0x46s
    .end array-data
.end method
