.class Lcom/meizu/common/preference/ExpandableListPreference$PreferenceAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/preference/ExpandableListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreferenceAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/preference/ExpandableListPreference$PreferenceAdapter$Holder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mData:[Ljava/lang/CharSequence;

.field private mList:Landroid/widget/ListView;

.field private mSelectedPosition:I

.field final synthetic this$0:Lcom/meizu/common/preference/ExpandableListPreference;


# direct methods
.method public constructor <init>(Lcom/meizu/common/preference/ExpandableListPreference;Landroid/content/Context;[Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 223
    iput-object p1, p0, Lcom/meizu/common/preference/ExpandableListPreference$PreferenceAdapter;->this$0:Lcom/meizu/common/preference/ExpandableListPreference;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 220
    const/4 v0, -0x1

    iput v0, p0, Lcom/meizu/common/preference/ExpandableListPreference$PreferenceAdapter;->mSelectedPosition:I

    .line 224
    iput-object p2, p0, Lcom/meizu/common/preference/ExpandableListPreference$PreferenceAdapter;->mContext:Landroid/content/Context;

    .line 225
    iput-object p3, p0, Lcom/meizu/common/preference/ExpandableListPreference$PreferenceAdapter;->mData:[Ljava/lang/CharSequence;

    .line 226
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/meizu/common/preference/ExpandableListPreference$PreferenceAdapter;->mData:[Ljava/lang/CharSequence;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/meizu/common/preference/ExpandableListPreference$PreferenceAdapter;->mData:[Ljava/lang/CharSequence;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 243
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 248
    .line 249
    if-nez p2, :cond_1

    .line 250
    new-instance v2, Lcom/meizu/common/preference/ExpandableListPreference$PreferenceAdapter$Holder;

    invoke-direct {v2, p0, v3}, Lcom/meizu/common/preference/ExpandableListPreference$PreferenceAdapter$Holder;-><init>(Lcom/meizu/common/preference/ExpandableListPreference$PreferenceAdapter;Lcom/meizu/common/preference/ExpandableListPreference$1;)V

    .line 251
    iget-object v0, p0, Lcom/meizu/common/preference/ExpandableListPreference$PreferenceAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    .line 252
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 253
    sget v1, Lcom/meizu/common/R$layout;->mc_expandable_preference_list_item:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    .line 254
    check-cast v0, Landroid/widget/CheckedTextView;

    iput-object v0, v2, Lcom/meizu/common/preference/ExpandableListPreference$PreferenceAdapter$Holder;->checkedTextView:Landroid/widget/CheckedTextView;

    .line 255
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v3, -0x1

    iget-object v4, p0, Lcom/meizu/common/preference/ExpandableListPreference$PreferenceAdapter;->mContext:Landroid/content/Context;

    .line 256
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/meizu/common/R$dimen;->mc_expandable_preference_list_item_height:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    invoke-direct {v0, v3, v4}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 258
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 259
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v2

    .line 263
    :goto_0
    iget-object v0, v0, Lcom/meizu/common/preference/ExpandableListPreference$PreferenceAdapter$Holder;->checkedTextView:Landroid/widget/CheckedTextView;

    iget-object v2, p0, Lcom/meizu/common/preference/ExpandableListPreference$PreferenceAdapter;->mData:[Ljava/lang/CharSequence;

    aget-object v2, v2, p1

    invoke-virtual {v0, v2}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    iget v0, p0, Lcom/meizu/common/preference/ExpandableListPreference$PreferenceAdapter;->mSelectedPosition:I

    if-ne p1, v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/meizu/common/preference/ExpandableListPreference$PreferenceAdapter;->mList:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 267
    :cond_0
    return-object v1

    .line 261
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/preference/ExpandableListPreference$PreferenceAdapter$Holder;

    move-object v1, p2

    goto :goto_0
.end method

.method public setSelectedPosition(I)V
    .locals 0

    .prologue
    .line 275
    iput p1, p0, Lcom/meizu/common/preference/ExpandableListPreference$PreferenceAdapter;->mSelectedPosition:I

    .line 276
    return-void
.end method

.method public setTargetList(Landroid/widget/ListView;)V
    .locals 0

    .prologue
    .line 279
    iput-object p1, p0, Lcom/meizu/common/preference/ExpandableListPreference$PreferenceAdapter;->mList:Landroid/widget/ListView;

    .line 280
    return-void
.end method
