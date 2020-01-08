.class public Lcom/meizu/common/preference/PreferenceCategory;
.super Landroid/preference/PreferenceCategory;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "PreferenceCategory"


# instance fields
.field private mNoTitleLayoutResId:I

.field private mTopPadding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 20
    sget v0, Lcom/meizu/common/R$layout;->mz_preference_category_no_title:I

    iput v0, p0, Lcom/meizu/common/preference/PreferenceCategory;->mNoTitleLayoutResId:I

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/common/preference/PreferenceCategory;->mTopPadding:I

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    sget v0, Lcom/meizu/common/R$layout;->mz_preference_category_no_title:I

    iput v0, p0, Lcom/meizu/common/preference/PreferenceCategory;->mNoTitleLayoutResId:I

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/common/preference/PreferenceCategory;->mTopPadding:I

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/meizu/common/preference/PreferenceCategory;->initAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    sget v0, Lcom/meizu/common/R$layout;->mz_preference_category_no_title:I

    iput v0, p0, Lcom/meizu/common/preference/PreferenceCategory;->mNoTitleLayoutResId:I

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/common/preference/PreferenceCategory;->mTopPadding:I

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/meizu/common/preference/PreferenceCategory;->initAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 20
    sget v0, Lcom/meizu/common/R$layout;->mz_preference_category_no_title:I

    iput v0, p0, Lcom/meizu/common/preference/PreferenceCategory;->mNoTitleLayoutResId:I

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/common/preference/PreferenceCategory;->mTopPadding:I

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/meizu/common/preference/PreferenceCategory;->initAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method

.method private initAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 44
    sget-object v0, Lcom/meizu/common/R$styleable;->PreferenceCategory:[I

    invoke-virtual {p1, p2, v0, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 46
    sget v1, Lcom/meizu/common/R$styleable;->PreferenceCategory_mzNoTitleLayout:I

    iget v2, p0, Lcom/meizu/common/preference/PreferenceCategory;->mNoTitleLayoutResId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/preference/PreferenceCategory;->mNoTitleLayoutResId:I

    .line 47
    sget v1, Lcom/meizu/common/R$styleable;->PreferenceCategory_mzTopPadding:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/preference/PreferenceCategory;->mTopPadding:I

    .line 48
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 49
    return-void
.end method


# virtual methods
.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-super {p0, v0, p2}, Landroid/preference/PreferenceCategory;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/meizu/common/preference/PreferenceCategory;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/meizu/common/preference/PreferenceCategory;->getTitleRes()I

    move-result v0

    if-nez v0, :cond_3

    .line 64
    invoke-virtual {p0}, Lcom/meizu/common/preference/PreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 66
    iget v1, p0, Lcom/meizu/common/preference/PreferenceCategory;->mNoTitleLayoutResId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 68
    const v1, 0x1020018

    .line 69
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 70
    if-eqz v1, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/meizu/common/preference/PreferenceCategory;->getWidgetLayoutResource()I

    move-result v3

    if-eqz v3, :cond_2

    .line 72
    invoke-virtual {p0}, Lcom/meizu/common/preference/PreferenceCategory;->getWidgetLayoutResource()I

    move-result v3

    invoke-virtual {v0, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    :cond_0
    :goto_0
    move-object v0, v2

    .line 81
    :goto_1
    iget v1, p0, Lcom/meizu/common/preference/PreferenceCategory;->mTopPadding:I

    if-eqz v1, :cond_1

    .line 82
    invoke-virtual {v0}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    iget v2, p0, Lcom/meizu/common/preference/PreferenceCategory;->mTopPadding:I

    invoke-virtual {v0}, Landroid/view/View;->getPaddingEnd()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 85
    :cond_1
    return-object v0

    .line 74
    :cond_2
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 78
    :cond_3
    invoke-super {p0, p1}, Landroid/preference/PreferenceCategory;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_1
.end method
