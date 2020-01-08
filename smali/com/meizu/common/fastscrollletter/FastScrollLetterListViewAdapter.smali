.class public Lcom/meizu/common/fastscrollletter/FastScrollLetterListViewAdapter;
.super Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/fastscrollletter/FastScrollLetterListViewAdapter$FastScrollLetterListViewAdapterCallBack;
    }
.end annotation


# instance fields
.field private callBack:Lcom/meizu/common/fastscrollletter/FastScrollLetterListViewAdapter$FastScrollLetterListViewAdapterCallBack;

.field private context:Landroid/content/Context;

.field private inflater:Landroid/view/LayoutInflater;

.field private letters:[Ljava/lang/String;

.field private navigationLayout:Lcom/meizu/common/fastscrollletter/NavigationLayout;

.field private needSectionHeader:Z

.field private needSetRightPadding:Z

.field private rightPaddingForCheckBox:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/meizu/common/fastscrollletter/NavigationLayout;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/meizu/common/fastscrollletter/NavigationLayout;",
            ")V"
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;-><init>(Landroid/content/Context;)V

    .line 41
    iput-object p1, p0, Lcom/meizu/common/fastscrollletter/FastScrollLetterListViewAdapter;->context:Landroid/content/Context;

    .line 42
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/meizu/common/fastscrollletter/FastScrollLetterListViewAdapter;->letters:[Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lcom/meizu/common/fastscrollletter/FastScrollLetterListViewAdapter;->navigationLayout:Lcom/meizu/common/fastscrollletter/NavigationLayout;

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$dimen;->mc_fastscroll_letter_right_padding_for_checkbox:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/fastscrollletter/FastScrollLetterListViewAdapter;->rightPaddingForCheckBox:I

    .line 46
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 47
    iget-object v2, p0, Lcom/meizu/common/fastscrollletter/FastScrollLetterListViewAdapter;->letters:[Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v1

    .line 46
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 50
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/fastscrollletter/FastScrollLetterListViewAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 51
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/meizu/common/fastscrollletter/FastScrollLetterListViewAdapter;->setNeedSectionHeader(Z)V

    .line 52
    return-void
.end method

.method private setHeaderViewDrawableAndSectionLetter(Landroid/view/View;I)V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 141
    sget v0, Lcom/meizu/common/R$id;->mc_list_category_partition_contact_text1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 142
    if-eqz v0, :cond_0

    .line 143
    new-instance v2, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v2, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 144
    invoke-virtual {v2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    iget-object v1, p0, Lcom/meizu/common/fastscrollletter/FastScrollLetterListViewAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v1, p0, Lcom/meizu/common/fastscrollletter/FastScrollLetterListViewAdapter;->navigationLayout:Lcom/meizu/common/fastscrollletter/NavigationLayout;

    invoke-virtual {v1}, Lcom/meizu/common/fastscrollletter/NavigationLayout;->getOverlayLetterColors()Ljava/util/HashMap;

    move-result-object v1

    iget-object v5, p0, Lcom/meizu/common/fastscrollletter/FastScrollLetterListViewAdapter;->letters:[Ljava/lang/String;

    aget-object v5, v5, p2

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 145
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 146
    iget-object v1, p0, Lcom/meizu/common/fastscrollletter/FastScrollLetterListViewAdapter;->letters:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    :cond_0
    return-void
.end method


# virtual methods
.method protected bindSectionHeaderView(Landroid/view/View;Landroid/content/Context;II)V
    .locals 6

    .prologue
    .line 102
    invoke-direct {p0, p1, p4}, Lcom/meizu/common/fastscrollletter/FastScrollLetterListViewAdapter;->setHeaderViewDrawableAndSectionLetter(Landroid/view/View;I)V

    .line 103
    iget-object v0, p0, Lcom/meizu/common/fastscrollletter/FastScrollLetterListViewAdapter;->callBack:Lcom/meizu/common/fastscrollletter/FastScrollLetterListViewAdapter$FastScrollLetterListViewAdapterCallBack;

    iget-object v1, p0, Lcom/meizu/common/fastscrollletter/FastScrollLetterListViewAdapter;->letters:[Ljava/lang/String;

    aget-object v5, v1, p4

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/meizu/common/fastscrollletter/FastScrollLetterListViewAdapter$FastScrollLetterListViewAdapterCallBack;->bindScrollSectionHeaderView(Landroid/view/View;Landroid/content/Context;IILjava/lang/String;)V

    .line 104
    return-void
.end method

.method protected bindView(Landroid/view/View;Landroid/content/Context;IILandroid/database/Cursor;II)V
    .locals 8

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/meizu/common/fastscrollletter/FastScrollLetterListViewAdapter;->needSetRightPadding:Z

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iget v2, p0, Lcom/meizu/common/fastscrollletter/FastScrollLetterListViewAdapter;->rightPaddingForCheckBox:I

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/fastscrollletter/FastScrollLetterListViewAdapter;->callBack:Lcom/meizu/common/fastscrollletter/FastScrollLetterListViewAdapter$FastScrollLetterListViewAdapterCallBack;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    move v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/meizu/common/fastscrollletter/FastScrollLetterListViewAdapter$FastScrollLetterListViewAdapterCallBack;->bindItemView(Landroid/view/View;Landroid/content/Context;IILandroid/database/Cursor;II)V

    .line 132
    return-void
.end method

.method protected configureItemHeader(Landroid/widget/ListView;IIZ)V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/meizu/common/fastscrollletter/FastScrollLetterListViewAdapter;->callBack:Lcom/meizu/common/fastscrollletter/FastScrollLetterListViewAdapter$FastScrollLetterListViewAdapterCallBack;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/meizu/common/fastscrollletter/FastScrollLetterListViewAdapter$FastScrollLetterListViewAdapterCallBack;->disposeScrollSectionHeaderView(Landroid/widget/ListView;IIZ)V

    .line 137
    return-void
.end method

.method protected createPinnedSectionHeaderView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 108
    iget-object v0, p0, Lcom/meizu/common/fastscrollletter/FastScrollLetterListViewAdapter;->callBack:Lcom/meizu/common/fastscrollletter/FastScrollLetterListViewAdapter$FastScrollLetterListViewAdapterCallBack;

    invoke-interface {v0, p1, p2}, Lcom/meizu/common/fastscrollletter/FastScrollLetterListViewAdapter$FastScrollLetterListViewAdapterCallBack;->createPinnedSectionHeaderView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 109
    if-nez v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/meizu/common/fastscrollletter/FastScrollLetterListViewAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/meizu/common/R$layout;->mc_list_category_contact_partition_header:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 112
    :cond_0
    return-object v0
.end method

.method public getNeedSectionHeader()Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/meizu/common/fastscrollletter/FastScrollLetterListViewAdapter;->needSectionHeader:Z

    return v0
.end method

.method protected newSectionHeaderView(Landroid/content/Context;IILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 92
    iget-object v0, p0, Lcom/meizu/common/fastscrollletter/FastScrollLetterListViewAdapter;->callBack:Lcom/meizu/common/fastscrollletter/FastScrollLetterListViewAdapter$FastScrollLetterListViewAdapterCallBack;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/meizu/common/fastscrollletter/FastScrollLetterListViewAdapter$FastScrollLetterListViewAdapterCallBack;->createScrollSectionHeaderView(Landroid/content/Context;IILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 93
    if-nez v0, :cond_0

    .line 94
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/fastscrollletter/FastScrollLetterListViewAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 95
    iget-object v0, p0, Lcom/meizu/common/fastscrollletter/FastScrollLetterListViewAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/meizu/common/R$layout;->mc_list_category_contact_partition_header:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 97
    :cond_0
    return-object v0
.end method

.method protected newView(Landroid/content/Context;IILandroid/database/Cursor;IILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    .prologue
    .line 123
    iget-object v0, p0, Lcom/meizu/common/fastscrollletter/FastScrollLetterListViewAdapter;->callBack:Lcom/meizu/common/fastscrollletter/FastScrollLetterListViewAdapter$FastScrollLetterListViewAdapterCallBack;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/meizu/common/fastscrollletter/FastScrollLetterListViewAdapter$FastScrollLetterListViewAdapterCallBack;->createItemView(Landroid/content/Context;IILandroid/database/Cursor;IILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public setCallBack(Lcom/meizu/common/fastscrollletter/FastScrollLetterListViewAdapter$FastScrollLetterListViewAdapterCallBack;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/meizu/common/fastscrollletter/FastScrollLetterListViewAdapter;->callBack:Lcom/meizu/common/fastscrollletter/FastScrollLetterListViewAdapter$FastScrollLetterListViewAdapterCallBack;

    .line 152
    return-void
.end method

.method public setNeedSectionHeader(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 64
    iput-boolean p1, p0, Lcom/meizu/common/fastscrollletter/FastScrollLetterListViewAdapter;->needSectionHeader:Z

    .line 65
    if-eqz p1, :cond_0

    .line 67
    invoke-virtual {p0, v1}, Lcom/meizu/common/fastscrollletter/FastScrollLetterListViewAdapter;->showSectionHeaders(Z)V

    .line 70
    invoke-virtual {p0, v1}, Lcom/meizu/common/fastscrollletter/FastScrollLetterListViewAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 71
    invoke-virtual {p0, v1}, Lcom/meizu/common/fastscrollletter/FastScrollLetterListViewAdapter;->setPinnedPartitionHeadersEnabled(Z)V

    .line 80
    :goto_0
    return-void

    .line 74
    :cond_0
    invoke-virtual {p0, v0}, Lcom/meizu/common/fastscrollletter/FastScrollLetterListViewAdapter;->showSectionHeaders(Z)V

    .line 77
    invoke-virtual {p0, v0}, Lcom/meizu/common/fastscrollletter/FastScrollLetterListViewAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 78
    invoke-virtual {p0, v0}, Lcom/meizu/common/fastscrollletter/FastScrollLetterListViewAdapter;->setPinnedPartitionHeadersEnabled(Z)V

    goto :goto_0
.end method

.method public setNeedSetNormativeRightPaddingForItem(Z)V
    .locals 0

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/meizu/common/fastscrollletter/FastScrollLetterListViewAdapter;->needSetRightPadding:Z

    .line 84
    return-void
.end method

.method protected setPinnedSectionHeaderView(Landroid/view/View;I)V
    .locals 2

    .prologue
    .line 117
    invoke-direct {p0, p1, p2}, Lcom/meizu/common/fastscrollletter/FastScrollLetterListViewAdapter;->setHeaderViewDrawableAndSectionLetter(Landroid/view/View;I)V

    .line 118
    iget-object v0, p0, Lcom/meizu/common/fastscrollletter/FastScrollLetterListViewAdapter;->callBack:Lcom/meizu/common/fastscrollletter/FastScrollLetterListViewAdapter$FastScrollLetterListViewAdapterCallBack;

    iget-object v1, p0, Lcom/meizu/common/fastscrollletter/FastScrollLetterListViewAdapter;->letters:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-interface {v0, p1, p2, v1}, Lcom/meizu/common/fastscrollletter/FastScrollLetterListViewAdapter$FastScrollLetterListViewAdapterCallBack;->bindPinnedSectionHeaderView(Landroid/view/View;ILjava/lang/String;)V

    .line 119
    return-void
.end method

.method public updateLetters(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/meizu/common/fastscrollletter/FastScrollLetterListViewAdapter;->letters:[Ljava/lang/String;

    .line 57
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 58
    iget-object v2, p0, Lcom/meizu/common/fastscrollletter/FastScrollLetterListViewAdapter;->letters:[Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v1

    .line 57
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/fastscrollletter/FastScrollLetterListViewAdapter;->invalidate()V

    .line 61
    return-void
.end method
