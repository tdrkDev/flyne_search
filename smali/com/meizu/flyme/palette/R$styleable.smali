.class public final Lcom/meizu/flyme/palette/R$styleable;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/flyme/palette/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final FontFamily:[I

.field public static final FontFamilyFont:[I

.field public static final FontFamilyFont_android_font:I = 0x0

.field public static final FontFamilyFont_android_fontStyle:I = 0x2

.field public static final FontFamilyFont_android_fontWeight:I = 0x1

.field public static final FontFamilyFont_font:I = 0x4

.field public static final FontFamilyFont_fontStyle:I = 0x3

.field public static final FontFamilyFont_fontWeight:I = 0x5

.field public static final FontFamily_fontProviderAuthority:I = 0x0

.field public static final FontFamily_fontProviderCerts:I = 0x3

.field public static final FontFamily_fontProviderFetchStrategy:I = 0x4

.field public static final FontFamily_fontProviderFetchTimeout:I = 0x5

.field public static final FontFamily_fontProviderPackage:I = 0x1

.field public static final FontFamily_fontProviderQuery:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x6

    .line 118
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/meizu/flyme/palette/R$styleable;->FontFamily:[I

    .line 119
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/meizu/flyme/palette/R$styleable;->FontFamilyFont:[I

    return-void

    .line 118
    :array_0
    .array-data 4
        0x7f0101d5
        0x7f0101d6
        0x7f0101d7
        0x7f0101d8
        0x7f0101d9
        0x7f0101da
    .end array-data

    .line 119
    :array_1
    .array-data 4
        0x1010532
        0x1010533
        0x101053f
        0x7f0101db
        0x7f0101dc
        0x7f0101dd
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
