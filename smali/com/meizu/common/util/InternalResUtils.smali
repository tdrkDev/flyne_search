.class public Lcom/meizu/common/util/InternalResUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final RES_TYPE_ARRAY:I = 0x8

.field public static final RES_TYPE_ATTR:I = 0x4

.field public static final RES_TYPE_BOOL:I = 0x7

.field public static final RES_TYPE_COLOR:I = 0xa

.field public static final RES_TYPE_DIMEN:I = 0x1

.field public static final RES_TYPE_DRAWABLE:I = 0xb

.field public static final RES_TYPE_ID:I = 0x0

.field public static final RES_TYPE_INTEGER:I = 0x9

.field public static final RES_TYPE_LAYOUT:I = 0x5

.field public static final RES_TYPE_STRING:I = 0x2

.field public static final RES_TYPE_STYLE:I = 0x6

.field public static final RES_TYPE_STYLEABLE:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInternalResId(ILjava/lang/String;)I
    .locals 3

    .prologue
    .line 30
    const/4 v0, -0x1

    .line 31
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 78
    :cond_0
    :goto_0
    return v0

    .line 34
    :cond_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 35
    if-eqz v1, :cond_0

    .line 38
    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 40
    :pswitch_0
    const-string v0, "id"

    const-string v2, "android"

    invoke-static {v1, p1, v0, v2}, Lcom/meizu/common/util/ResourceUtils;->getIdentifier(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 43
    :pswitch_1
    const-string v0, "dimen"

    const-string v2, "android"

    invoke-static {v1, p1, v0, v2}, Lcom/meizu/common/util/ResourceUtils;->getIdentifier(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 46
    :pswitch_2
    const-string v0, "string"

    const-string v2, "android"

    invoke-static {v1, p1, v0, v2}, Lcom/meizu/common/util/ResourceUtils;->getIdentifier(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 49
    :pswitch_3
    const-string v0, "styleable"

    const-string v2, "android"

    invoke-static {v1, p1, v0, v2}, Lcom/meizu/common/util/ResourceUtils;->getIdentifier(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 52
    :pswitch_4
    const-string v0, "attr"

    const-string v2, "android"

    invoke-static {v1, p1, v0, v2}, Lcom/meizu/common/util/ResourceUtils;->getIdentifier(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 55
    :pswitch_5
    const-string v0, "layout"

    const-string v2, "android"

    invoke-static {v1, p1, v0, v2}, Lcom/meizu/common/util/ResourceUtils;->getIdentifier(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 58
    :pswitch_6
    const-string v0, "style"

    const-string v2, "android"

    invoke-static {v1, p1, v0, v2}, Lcom/meizu/common/util/ResourceUtils;->getIdentifier(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 61
    :pswitch_7
    const-string v0, "bool"

    const-string v2, "android"

    invoke-static {v1, p1, v0, v2}, Lcom/meizu/common/util/ResourceUtils;->getIdentifier(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 64
    :pswitch_8
    const-string v0, "array"

    const-string v2, "android"

    invoke-static {v1, p1, v0, v2}, Lcom/meizu/common/util/ResourceUtils;->getIdentifier(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 67
    :pswitch_9
    const-string v0, "integer"

    const-string v2, "android"

    invoke-static {v1, p1, v0, v2}, Lcom/meizu/common/util/ResourceUtils;->getIdentifier(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 70
    :pswitch_a
    const-string v0, "color"

    const-string v2, "android"

    invoke-static {v1, p1, v0, v2}, Lcom/meizu/common/util/ResourceUtils;->getIdentifier(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 73
    :pswitch_b
    const-string v0, "drawable"

    const-string v2, "android"

    invoke-static {v1, p1, v0, v2}, Lcom/meizu/common/util/ResourceUtils;->getIdentifier(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 38
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
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method
