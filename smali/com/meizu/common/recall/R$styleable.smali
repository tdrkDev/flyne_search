.class public final Lcom/meizu/common/recall/R$styleable;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/recall/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final InstallView:[I

.field public static final InstallView_mcAppDesc:I = 0x4

.field public static final InstallView_mcAppPackageName:I = 0x6

.field public static final InstallView_mcAppTitle:I = 0x3

.field public static final InstallView_mcDefaultIcon:I = 0x5

.field public static final InstallView_mcInstallButtonTextComplete:I = 0x1

.field public static final InstallView_mcInstallButtonTextIdle:I = 0x2

.field public static final InstallView_mcInstallingText:I = 0x0

.field public static final LoadingTextView:[I

.field public static final LoadingTextView_mcDotColor:I = 0x4

.field public static final LoadingTextView_mcDotRadius:I = 0x2

.field public static final LoadingTextView_mcLoadingText:I = 0x0

.field public static final LoadingTextView_mcLoadingTextColor:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/meizu/common/recall/R$styleable;->InstallView:[I

    .line 60
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/meizu/common/recall/R$styleable;->LoadingTextView:[I

    return-void

    .line 52
    nop

    :array_0
    .array-data 4
        0x7f01022b
        0x7f01022c
        0x7f01022d
        0x7f01022e
        0x7f01022f
        0x7f010230
        0x7f010231
    .end array-data

    .line 60
    :array_1
    .array-data 4
        0x7f01024a
        0x7f01024b
        0x7f01024c
        0x7f01024d
        0x7f01024e
        0x7f01024f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
