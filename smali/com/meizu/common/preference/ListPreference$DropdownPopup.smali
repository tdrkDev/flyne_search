.class Lcom/meizu/common/preference/ListPreference$DropdownPopup;
.super Landroid/widget/ListPopupWindow;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/preference/ListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DropdownPopup"
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field final synthetic this$0:Lcom/meizu/common/preference/ListPreference;


# direct methods
.method public constructor <init>(Lcom/meizu/common/preference/ListPreference;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 172
    iput-object p1, p0, Lcom/meizu/common/preference/ListPreference$DropdownPopup;->this$0:Lcom/meizu/common/preference/ListPreference;

    .line 173
    invoke-direct {p0, p2}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    .line 175
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/meizu/common/preference/ListPreference$DropdownPopup;->setModal(Z)V

    .line 176
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/meizu/common/preference/ListPreference$DropdownPopup;->setPromptPosition(I)V

    .line 177
    new-instance v0, Lcom/meizu/common/preference/ListPreference$DropdownPopup$1;

    invoke-direct {v0, p0, p1}, Lcom/meizu/common/preference/ListPreference$DropdownPopup$1;-><init>(Lcom/meizu/common/preference/ListPreference$DropdownPopup;Lcom/meizu/common/preference/ListPreference;)V

    invoke-virtual {p0, v0}, Lcom/meizu/common/preference/ListPreference$DropdownPopup;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 185
    return-void
.end method


# virtual methods
.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0

    .prologue
    .line 189
    invoke-super {p0, p1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 190
    iput-object p1, p0, Lcom/meizu/common/preference/ListPreference$DropdownPopup;->mAdapter:Landroid/widget/ListAdapter;

    .line 191
    return-void
.end method

.method public show()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 195
    iget-object v0, p0, Lcom/meizu/common/preference/ListPreference$DropdownPopup;->this$0:Lcom/meizu/common/preference/ListPreference;

    invoke-static {v0}, Lcom/meizu/common/preference/ListPreference;->access$100(Lcom/meizu/common/preference/ListPreference;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    .line 196
    iget-object v2, p0, Lcom/meizu/common/preference/ListPreference$DropdownPopup;->this$0:Lcom/meizu/common/preference/ListPreference;

    invoke-static {v2}, Lcom/meizu/common/preference/ListPreference;->access$100(Lcom/meizu/common/preference/ListPreference;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    .line 197
    iget-object v3, p0, Lcom/meizu/common/preference/ListPreference$DropdownPopup;->this$0:Lcom/meizu/common/preference/ListPreference;

    invoke-static {v3}, Lcom/meizu/common/preference/ListPreference;->access$100(Lcom/meizu/common/preference/ListPreference;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 200
    iget-object v4, p0, Lcom/meizu/common/preference/ListPreference$DropdownPopup;->this$0:Lcom/meizu/common/preference/ListPreference;

    invoke-static {v4}, Lcom/meizu/common/preference/ListPreference;->access$200(Lcom/meizu/common/preference/ListPreference;)I

    move-result v4

    if-lez v4, :cond_0

    iget-object v4, p0, Lcom/meizu/common/preference/ListPreference$DropdownPopup;->this$0:Lcom/meizu/common/preference/ListPreference;

    .line 201
    invoke-static {v4}, Lcom/meizu/common/preference/ListPreference;->access$200(Lcom/meizu/common/preference/ListPreference;)I

    move-result v4

    sub-int v5, v3, v0

    sub-int/2addr v5, v2

    if-le v4, v5, :cond_1

    .line 203
    :cond_0
    iget-object v4, p0, Lcom/meizu/common/preference/ListPreference$DropdownPopup;->this$0:Lcom/meizu/common/preference/ListPreference;

    sub-int v0, v3, v0

    sub-int/2addr v0, v2

    invoke-static {v4, v0}, Lcom/meizu/common/preference/ListPreference;->access$202(Lcom/meizu/common/preference/ListPreference;I)I

    .line 206
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/preference/ListPreference$DropdownPopup;->this$0:Lcom/meizu/common/preference/ListPreference;

    invoke-static {v0}, Lcom/meizu/common/preference/ListPreference;->access$200(Lcom/meizu/common/preference/ListPreference;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/meizu/common/preference/ListPreference$DropdownPopup;->setContentWidth(I)V

    .line 210
    :try_start_0
    invoke-static {}, Lcom/meizu/common/preference/ListPreference;->access$300()Ljava/lang/reflect/Method;

    move-result-object v0

    if-nez v0, :cond_2

    .line 211
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "setLayoutMode"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/common/preference/ListPreference;->access$302(Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    .line 213
    :cond_2
    invoke-static {}, Lcom/meizu/common/preference/ListPreference;->access$300()Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :goto_0
    iget-object v0, p0, Lcom/meizu/common/preference/ListPreference$DropdownPopup;->this$0:Lcom/meizu/common/preference/ListPreference;

    invoke-static {v0}, Lcom/meizu/common/preference/ListPreference;->access$400(Lcom/meizu/common/preference/ListPreference;)I

    move-result v0

    if-lez v0, :cond_6

    .line 221
    iget-object v0, p0, Lcom/meizu/common/preference/ListPreference$DropdownPopup;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/meizu/common/preference/ListPreference$DropdownPopup;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_5

    move v0, v1

    move v2, v1

    .line 224
    :cond_3
    iget-object v3, p0, Lcom/meizu/common/preference/ListPreference$DropdownPopup;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v4, 0x0

    .line 225
    invoke-virtual {p0}, Lcom/meizu/common/preference/ListPreference$DropdownPopup;->getListView()Landroid/widget/ListView;

    move-result-object v5

    .line 224
    invoke-interface {v3, v0, v4, v5}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 226
    if-eqz v3, :cond_4

    .line 227
    invoke-virtual {v3, v1, v1}, Landroid/view/View;->measure(II)V

    .line 229
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v2, v3

    .line 231
    :cond_4
    add-int/lit8 v0, v0, 0x1

    .line 232
    iget-object v3, p0, Lcom/meizu/common/preference/ListPreference$DropdownPopup;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    if-lt v0, v3, :cond_3

    move v1, v2

    .line 238
    :cond_5
    iget-object v0, p0, Lcom/meizu/common/preference/ListPreference$DropdownPopup;->this$0:Lcom/meizu/common/preference/ListPreference;

    invoke-static {v0}, Lcom/meizu/common/preference/ListPreference;->access$400(Lcom/meizu/common/preference/ListPreference;)I

    move-result v0

    if-le v1, v0, :cond_6

    .line 239
    iget-object v0, p0, Lcom/meizu/common/preference/ListPreference$DropdownPopup;->this$0:Lcom/meizu/common/preference/ListPreference;

    invoke-static {v0}, Lcom/meizu/common/preference/ListPreference;->access$400(Lcom/meizu/common/preference/ListPreference;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/meizu/common/preference/ListPreference$DropdownPopup;->setHeight(I)V

    .line 243
    :cond_6
    iget-object v0, p0, Lcom/meizu/common/preference/ListPreference$DropdownPopup;->this$0:Lcom/meizu/common/preference/ListPreference;

    iget-object v1, p0, Lcom/meizu/common/preference/ListPreference$DropdownPopup;->this$0:Lcom/meizu/common/preference/ListPreference;

    iget-object v2, p0, Lcom/meizu/common/preference/ListPreference$DropdownPopup;->this$0:Lcom/meizu/common/preference/ListPreference;

    invoke-virtual {v2}, Lcom/meizu/common/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/meizu/common/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/meizu/common/preference/ListPreference;->access$002(Lcom/meizu/common/preference/ListPreference;I)I

    .line 244
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/meizu/common/preference/ListPreference$DropdownPopup;->setInputMethodMode(I)V

    .line 245
    invoke-super {p0}, Landroid/widget/ListPopupWindow;->show()V

    .line 246
    invoke-virtual {p0}, Lcom/meizu/common/preference/ListPreference$DropdownPopup;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 249
    iget-object v0, p0, Lcom/meizu/common/preference/ListPreference$DropdownPopup;->this$0:Lcom/meizu/common/preference/ListPreference;

    invoke-static {v0}, Lcom/meizu/common/preference/ListPreference;->access$000(Lcom/meizu/common/preference/ListPreference;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/meizu/common/preference/ListPreference$DropdownPopup;->setSelection(I)V

    .line 250
    iget-object v0, p0, Lcom/meizu/common/preference/ListPreference$DropdownPopup;->this$0:Lcom/meizu/common/preference/ListPreference;

    invoke-virtual {p0, v0}, Lcom/meizu/common/preference/ListPreference$DropdownPopup;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 251
    return-void

    .line 214
    :catch_0
    move-exception v0

    .line 215
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
