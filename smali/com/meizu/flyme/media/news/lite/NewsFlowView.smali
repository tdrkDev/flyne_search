.class public Lcom/meizu/flyme/media/news/lite/NewsFlowView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field public static a:I

.field public static b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public static d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static e:I

.field public static f:Landroid/graphics/drawable/Drawable;

.field public static g:I

.field public static h:I

.field public static i:I

.field public static j:Landroid/graphics/Typeface;

.field public static k:F

.field public static l:F

.field public static m:I

.field public static n:I

.field public static o:Landroid/graphics/Typeface;

.field public static p:F

.field public static q:F

.field public static r:I

.field public static s:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static t:I

.field public static u:I

.field public static v:Z


# instance fields
.field private w:Lcom/meizu/flyme/media/news/lite/a;

.field private x:I

.field private y:Lcom/meizu/flyme/media/news/lite/f$b;

.field private z:Lcom/meizu/flyme/media/news/lite/i;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v1, -0x1

    .line 121
    sput v1, Lcom/meizu/flyme/media/news/lite/NewsFlowView;->a:I

    .line 122
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/meizu/flyme/media/news/lite/NewsFlowView;->b:Ljava/util/HashMap;

    .line 123
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/meizu/flyme/media/news/lite/NewsFlowView;->c:Ljava/util/HashMap;

    .line 124
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/meizu/flyme/media/news/lite/NewsFlowView;->d:Ljava/util/HashMap;

    .line 125
    sput v1, Lcom/meizu/flyme/media/news/lite/NewsFlowView;->e:I

    .line 126
    sput-object v3, Lcom/meizu/flyme/media/news/lite/NewsFlowView;->f:Landroid/graphics/drawable/Drawable;

    .line 127
    sput v1, Lcom/meizu/flyme/media/news/lite/NewsFlowView;->g:I

    .line 129
    sput v1, Lcom/meizu/flyme/media/news/lite/NewsFlowView;->h:I

    .line 130
    sput v1, Lcom/meizu/flyme/media/news/lite/NewsFlowView;->i:I

    .line 131
    sput-object v3, Lcom/meizu/flyme/media/news/lite/NewsFlowView;->j:Landroid/graphics/Typeface;

    .line 132
    sput v2, Lcom/meizu/flyme/media/news/lite/NewsFlowView;->k:F

    .line 133
    sput v2, Lcom/meizu/flyme/media/news/lite/NewsFlowView;->l:F

    .line 134
    sput v1, Lcom/meizu/flyme/media/news/lite/NewsFlowView;->m:I

    .line 135
    sput v1, Lcom/meizu/flyme/media/news/lite/NewsFlowView;->n:I

    .line 136
    sput-object v3, Lcom/meizu/flyme/media/news/lite/NewsFlowView;->o:Landroid/graphics/Typeface;

    .line 137
    sput v2, Lcom/meizu/flyme/media/news/lite/NewsFlowView;->p:F

    .line 138
    sput v2, Lcom/meizu/flyme/media/news/lite/NewsFlowView;->q:F

    .line 139
    const/4 v0, 0x0

    sput v0, Lcom/meizu/flyme/media/news/lite/NewsFlowView;->r:I

    .line 140
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/meizu/flyme/media/news/lite/NewsFlowView;->s:Ljava/util/HashMap;

    .line 141
    sput v1, Lcom/meizu/flyme/media/news/lite/NewsFlowView;->t:I

    .line 142
    sput v1, Lcom/meizu/flyme/media/news/lite/NewsFlowView;->u:I

    .line 143
    const/4 v0, 0x1

    sput-boolean v0, Lcom/meizu/flyme/media/news/lite/NewsFlowView;->v:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/meizu/flyme/media/news/lite/i;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/meizu/flyme/media/news/lite/i;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    if-eqz p1, :cond_0

    if-nez p4, :cond_1

    .line 47
    :cond_0
    const-string v0, "NewsFlowView"

    const-string v1, "Illegal parameters! context=%s requestData=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/meizu/flyme/media/news/helper/a;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    :goto_0
    return-void

    .line 50
    :cond_1
    sget-object v0, Lcom/meizu/flyme/media/news/helper/g;->a:Lcom/meizu/flyme/media/news/helper/g;

    invoke-virtual {v0}, Lcom/meizu/flyme/media/news/helper/g;->a()I

    move-result v0

    iput v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFlowView;->x:I

    .line 51
    iget v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFlowView;->x:I

    invoke-virtual {p0, p1, p4, v0}, Lcom/meizu/flyme/media/news/lite/NewsFlowView;->a(Landroid/content/Context;Lcom/meizu/flyme/media/news/lite/i;I)Lcom/meizu/flyme/media/news/lite/a;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFlowView;->w:Lcom/meizu/flyme/media/news/lite/a;

    .line 52
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFlowView;->w:Lcom/meizu/flyme/media/news/lite/a;

    invoke-virtual {v0}, Lcom/meizu/flyme/media/news/lite/a;->e()V

    .line 53
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFlowView;->w:Lcom/meizu/flyme/media/news/lite/a;

    iget-object v0, v0, Lcom/meizu/flyme/media/news/lite/a;->b:Lcom/meizu/flyme/media/news/lite/f$b;

    iput-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFlowView;->y:Lcom/meizu/flyme/media/news/lite/f$b;

    .line 54
    iput-object p4, p0, Lcom/meizu/flyme/media/news/lite/NewsFlowView;->z:Lcom/meizu/flyme/media/news/lite/i;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/meizu/flyme/media/news/lite/i;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/meizu/flyme/media/news/lite/i;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/meizu/flyme/media/news/lite/NewsFlowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/meizu/flyme/media/news/lite/i;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/meizu/flyme/media/news/lite/i;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/meizu/flyme/media/news/lite/i;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/meizu/flyme/media/news/lite/NewsFlowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/meizu/flyme/media/news/lite/i;)V

    .line 38
    return-void
.end method

.method public static a(I)Z
    .locals 2

    .prologue
    .line 303
    sget-object v0, Lcom/meizu/flyme/media/news/lite/NewsFlowView;->s:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    sget-object v0, Lcom/meizu/flyme/media/news/lite/NewsFlowView;->s:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 306
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b()Z
    .locals 1

    .prologue
    .line 323
    sget-boolean v0, Lcom/meizu/flyme/media/news/lite/NewsFlowView;->v:Z

    return v0
.end method

.method public static getImageWidthAndHeightMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 239
    sget-object v0, Lcom/meizu/flyme/media/news/lite/NewsFlowView;->c:Ljava/util/HashMap;

    return-object v0
.end method

.method public static getListItemDivider()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 251
    sget-object v0, Lcom/meizu/flyme/media/news/lite/NewsFlowView;->f:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public static getListItemDividerHeight()I
    .locals 1

    .prologue
    .line 247
    sget v0, Lcom/meizu/flyme/media/news/lite/NewsFlowView;->e:I

    return v0
.end method

.method public static getListItemHeightMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 235
    sget-object v0, Lcom/meizu/flyme/media/news/lite/NewsFlowView;->b:Ljava/util/HashMap;

    return-object v0
.end method

.method public static getListItemLayoutMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 243
    sget-object v0, Lcom/meizu/flyme/media/news/lite/NewsFlowView;->d:Ljava/util/HashMap;

    return-object v0
.end method

.method public static getListItemStartEndMargin()I
    .locals 1

    .prologue
    .line 255
    sget v0, Lcom/meizu/flyme/media/news/lite/NewsFlowView;->g:I

    return v0
.end method

.method public static getListItemWidth()I
    .locals 1

    .prologue
    .line 231
    sget v0, Lcom/meizu/flyme/media/news/lite/NewsFlowView;->a:I

    return v0
.end method

.method public static getLoadingColor()I
    .locals 1

    .prologue
    .line 315
    sget v0, Lcom/meizu/flyme/media/news/lite/NewsFlowView;->u:I

    return v0
.end method

.method public static getLoadingPaddingTop()I
    .locals 1

    .prologue
    .line 311
    sget v0, Lcom/meizu/flyme/media/news/lite/NewsFlowView;->t:I

    return v0
.end method

.method public static getSubTitleFontTypeface()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 287
    sget-object v0, Lcom/meizu/flyme/media/news/lite/NewsFlowView;->o:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public static getSubTitleLineSpacingExtra()F
    .locals 1

    .prologue
    .line 291
    sget v0, Lcom/meizu/flyme/media/news/lite/NewsFlowView;->p:F

    return v0
.end method

.method public static getSubTitleLineSpacingMultiplier()F
    .locals 1

    .prologue
    .line 295
    sget v0, Lcom/meizu/flyme/media/news/lite/NewsFlowView;->q:F

    return v0
.end method

.method public static getSubTitleTextColor()I
    .locals 1

    .prologue
    .line 283
    sget v0, Lcom/meizu/flyme/media/news/lite/NewsFlowView;->n:I

    return v0
.end method

.method public static getSubTitleTextSize()I
    .locals 1

    .prologue
    .line 279
    sget v0, Lcom/meizu/flyme/media/news/lite/NewsFlowView;->m:I

    return v0
.end method

.method public static getTimeDisplayType()I
    .locals 1

    .prologue
    .line 299
    sget v0, Lcom/meizu/flyme/media/news/lite/NewsFlowView;->r:I

    return v0
.end method

.method public static getTitleFontTypeface()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 267
    sget-object v0, Lcom/meizu/flyme/media/news/lite/NewsFlowView;->j:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public static getTitleLineSpacingExtra()F
    .locals 1

    .prologue
    .line 271
    sget v0, Lcom/meizu/flyme/media/news/lite/NewsFlowView;->k:F

    return v0
.end method

.method public static getTitleLineSpacingMultiplier()F
    .locals 1

    .prologue
    .line 275
    sget v0, Lcom/meizu/flyme/media/news/lite/NewsFlowView;->l:F

    return v0
.end method

.method public static getTitleTextColor()I
    .locals 1

    .prologue
    .line 263
    sget v0, Lcom/meizu/flyme/media/news/lite/NewsFlowView;->i:I

    return v0
.end method

.method public static getTitleTextSize()I
    .locals 1

    .prologue
    .line 259
    sget v0, Lcom/meizu/flyme/media/news/lite/NewsFlowView;->h:I

    return v0
.end method

.method public static setImageWidthAndHeight(III)V
    .locals 3

    .prologue
    .line 154
    new-instance v0, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 155
    sget-object v1, Lcom/meizu/flyme/media/news/lite/NewsFlowView;->c:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    return-void
.end method

.method public static setIsDisplayYear(IZ)V
    .locals 3

    .prologue
    .line 219
    sget-object v0, Lcom/meizu/flyme/media/news/lite/NewsFlowView;->s:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    return-void
.end method

.method public static setListItemDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 173
    sput-object p0, Lcom/meizu/flyme/media/news/lite/NewsFlowView;->f:Landroid/graphics/drawable/Drawable;

    .line 174
    return-void
.end method

.method public static setListItemDividerHeight(I)V
    .locals 0

    .prologue
    .line 163
    sput p0, Lcom/meizu/flyme/media/news/lite/NewsFlowView;->e:I

    .line 164
    return-void
.end method

.method public static setListItemHeight(II)V
    .locals 3

    .prologue
    .line 150
    sget-object v0, Lcom/meizu/flyme/media/news/lite/NewsFlowView;->b:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    return-void
.end method

.method public static setListItemLayout(II)V
    .locals 3

    .prologue
    .line 159
    sget-object v0, Lcom/meizu/flyme/media/news/lite/NewsFlowView;->d:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    return-void
.end method

.method public static setListItemStartEndMargin(I)V
    .locals 0

    .prologue
    .line 177
    sput p0, Lcom/meizu/flyme/media/news/lite/NewsFlowView;->g:I

    .line 178
    return-void
.end method

.method public static setListItemWidth(I)V
    .locals 0

    .prologue
    .line 146
    sput p0, Lcom/meizu/flyme/media/news/lite/NewsFlowView;->a:I

    .line 147
    return-void
.end method

.method public static setLoadingColor(I)V
    .locals 0

    .prologue
    .line 227
    sput p0, Lcom/meizu/flyme/media/news/lite/NewsFlowView;->u:I

    .line 228
    return-void
.end method

.method public static setLoadingPaddingTop(I)V
    .locals 0

    .prologue
    .line 223
    sput p0, Lcom/meizu/flyme/media/news/lite/NewsFlowView;->t:I

    .line 224
    return-void
.end method

.method public static setNgFeedBackOpen(Z)V
    .locals 0

    .prologue
    .line 319
    sput-boolean p0, Lcom/meizu/flyme/media/news/lite/NewsFlowView;->v:Z

    .line 320
    return-void
.end method

.method public static setSubTitleFontTypeface(Landroid/graphics/Typeface;)V
    .locals 0

    .prologue
    .line 206
    sput-object p0, Lcom/meizu/flyme/media/news/lite/NewsFlowView;->o:Landroid/graphics/Typeface;

    .line 207
    return-void
.end method

.method public static setSubTitleLineSpacing(FF)V
    .locals 0

    .prologue
    .line 210
    sput p0, Lcom/meizu/flyme/media/news/lite/NewsFlowView;->p:F

    .line 211
    sput p1, Lcom/meizu/flyme/media/news/lite/NewsFlowView;->q:F

    .line 212
    return-void
.end method

.method public static setSubTitleTextColor(I)V
    .locals 0

    .prologue
    .line 202
    sput p0, Lcom/meizu/flyme/media/news/lite/NewsFlowView;->n:I

    .line 203
    return-void
.end method

.method public static setSubTitleTextSize(I)V
    .locals 0

    .prologue
    .line 198
    sput p0, Lcom/meizu/flyme/media/news/lite/NewsFlowView;->m:I

    .line 199
    return-void
.end method

.method public static setTimeDisplayType(I)V
    .locals 0

    .prologue
    .line 215
    sput p0, Lcom/meizu/flyme/media/news/lite/NewsFlowView;->r:I

    .line 216
    return-void
.end method

.method public static setTitleFontTypeface(Landroid/graphics/Typeface;)V
    .locals 0

    .prologue
    .line 189
    sput-object p0, Lcom/meizu/flyme/media/news/lite/NewsFlowView;->j:Landroid/graphics/Typeface;

    .line 190
    return-void
.end method

.method public static setTitleLineSpacing(FF)V
    .locals 0

    .prologue
    .line 193
    sput p0, Lcom/meizu/flyme/media/news/lite/NewsFlowView;->k:F

    .line 194
    sput p1, Lcom/meizu/flyme/media/news/lite/NewsFlowView;->l:F

    .line 195
    return-void
.end method

.method public static setTitleTextColor(I)V
    .locals 0

    .prologue
    .line 185
    sput p0, Lcom/meizu/flyme/media/news/lite/NewsFlowView;->i:I

    .line 186
    return-void
.end method

.method public static setTitleTextSize(I)V
    .locals 0

    .prologue
    .line 181
    sput p0, Lcom/meizu/flyme/media/news/lite/NewsFlowView;->h:I

    .line 182
    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;Lcom/meizu/flyme/media/news/lite/i;I)Lcom/meizu/flyme/media/news/lite/a;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/meizu/flyme/media/news/lite/i;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 58
    new-instance v0, Lcom/meizu/flyme/media/news/lite/a;

    invoke-direct {v0, p1, p2, p3}, Lcom/meizu/flyme/media/news/lite/a;-><init>(Landroid/content/Context;Lcom/meizu/flyme/media/news/lite/i;I)V

    iput-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFlowView;->w:Lcom/meizu/flyme/media/news/lite/a;

    .line 59
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFlowView;->w:Lcom/meizu/flyme/media/news/lite/a;

    return-object v0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/meizu/flyme/media/news/lite/NewsFlowView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 93
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 94
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFlowView;->w:Lcom/meizu/flyme/media/news/lite/a;

    if-eqz v0, :cond_1

    .line 97
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFlowView;->w:Lcom/meizu/flyme/media/news/lite/a;

    invoke-virtual {v0}, Lcom/meizu/flyme/media/news/lite/a;->f()V

    .line 99
    :cond_1
    return-void
.end method

.method public a(Lcom/meizu/flyme/media/news/protocol/a;)V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFlowView;->w:Lcom/meizu/flyme/media/news/lite/a;

    if-nez v0, :cond_0

    .line 67
    :goto_0
    return-void

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFlowView;->w:Lcom/meizu/flyme/media/news/lite/a;

    invoke-virtual {v0, p1}, Lcom/meizu/flyme/media/news/lite/a;->a(Lcom/meizu/flyme/media/news/protocol/a;)V

    goto :goto_0
.end method

.method public bridge synthetic getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/meizu/flyme/media/news/lite/NewsFlowView;->getHandler()Lcom/meizu/flyme/media/news/lite/f$b;

    move-result-object v0

    return-object v0
.end method

.method public getHandler()Lcom/meizu/flyme/media/news/lite/f$b;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFlowView;->y:Lcom/meizu/flyme/media/news/lite/f$b;

    return-object v0
.end method

.method public getRecyclerView()Landroid/view/View;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFlowView;->w:Lcom/meizu/flyme/media/news/lite/a;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFlowView;->w:Lcom/meizu/flyme/media/news/lite/a;

    invoke-virtual {v0}, Lcom/meizu/flyme/media/news/lite/a;->g()Landroid/view/View;

    move-result-object v0

    .line 105
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRequestData()Lcom/meizu/flyme/media/news/lite/i;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFlowView;->z:Lcom/meizu/flyme/media/news/lite/i;

    return-object v0
.end method

.method public getViewId()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFlowView;->x:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v5, -0x1

    .line 71
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 72
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFlowView;->w:Lcom/meizu/flyme/media/news/lite/a;

    if-nez v0, :cond_1

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/NewsFlowView;->w:Lcom/meizu/flyme/media/news/lite/a;

    invoke-virtual {v0}, Lcom/meizu/flyme/media/news/lite/a;->c()Landroid/view/View;

    move-result-object v2

    .line 76
    invoke-virtual {p0}, Lcom/meizu/flyme/media/news/lite/NewsFlowView;->getChildCount()I

    move-result v3

    move v0, v1

    .line 77
    :goto_1
    if-ge v0, v3, :cond_2

    .line 78
    invoke-virtual {p0, v1}, Lcom/meizu/flyme/media/news/lite/NewsFlowView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eq v2, v4, :cond_0

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 82
    :cond_2
    invoke-virtual {p0, v2, v5, v5}, Lcom/meizu/flyme/media/news/lite/NewsFlowView;->addView(Landroid/view/View;II)V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 88
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 89
    return-void
.end method
