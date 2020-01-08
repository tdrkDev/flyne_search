.class Lcom/meizu/common/widget/EnhanceGallery$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/EnhanceGallery;->setUpChild(Landroid/view/View;IIIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/EnhanceGallery;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/EnhanceGallery;)V
    .locals 0

    .prologue
    .line 1283
    iput-object p1, p0, Lcom/meizu/common/widget/EnhanceGallery$3;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 8

    .prologue
    const v7, 0x1020001

    const/4 v6, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    .line 1287
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery$3;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    iget v0, v0, Lcom/meizu/common/widget/EnhanceGallery;->mDragAndDropPosition:I

    if-ne v0, v6, :cond_0

    move v0, v2

    .line 1369
    :goto_0
    return v0

    .line 1290
    :cond_0
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_1
    :goto_1
    move v0, v3

    .line 1369
    goto :goto_0

    :sswitch_0
    move v0, v3

    .line 1293
    goto :goto_0

    :sswitch_1
    move v0, v3

    .line 1296
    goto :goto_0

    :sswitch_2
    move v0, v3

    .line 1299
    goto :goto_0

    :sswitch_3
    move v0, v3

    .line 1302
    goto :goto_0

    :sswitch_4
    move v0, v2

    .line 1305
    goto :goto_0

    .line 1308
    :sswitch_5
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery$3;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery$3;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    iget v1, v1, Lcom/meizu/common/widget/EnhanceGallery;->mDragAndDropPosition:I

    iget-object v4, p0, Lcom/meizu/common/widget/EnhanceGallery$3;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    iget v4, v4, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    sub-int/2addr v1, v4

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1309
    if-eqz v1, :cond_3

    .line 1310
    instance-of v0, v1, Lcom/meizu/common/widget/EnhanceGallery$DragShadowItem;

    if-eqz v0, :cond_5

    move-object v0, v1

    .line 1311
    check-cast v0, Lcom/meizu/common/widget/EnhanceGallery$DragShadowItem;

    invoke-interface {v0}, Lcom/meizu/common/widget/EnhanceGallery$DragShadowItem;->getDragView()Landroid/view/View;

    move-result-object v0

    .line 1312
    if-eqz v0, :cond_2

    .line 1313
    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    .line 1315
    :cond_2
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery$3;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-static {v0}, Lcom/meizu/common/widget/EnhanceGallery;->access$500(Lcom/meizu/common/widget/EnhanceGallery;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1316
    invoke-virtual {v1, v5}, Landroid/view/View;->setAlpha(F)V

    .line 1323
    :cond_3
    :goto_2
    invoke-virtual {p2}, Landroid/view/DragEvent;->getResult()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1324
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery$3;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery$3;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    iget v1, v1, Lcom/meizu/common/widget/EnhanceGallery;->mDragAndDropPosition:I

    invoke-virtual {v0, v1, v3}, Lcom/meizu/common/widget/EnhanceGallery;->setItemChecked(IZ)V

    .line 1333
    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery$3;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    iput v6, v0, Lcom/meizu/common/widget/EnhanceGallery;->mDragAndDropPosition:I

    .line 1336
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery$3;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-virtual {v0}, Lcom/meizu/common/widget/EnhanceGallery;->getCheckedItemCount()I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery$3;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-static {v0}, Lcom/meizu/common/widget/EnhanceGallery;->access$600(Lcom/meizu/common/widget/EnhanceGallery;)Landroid/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1337
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery$3;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-static {v0}, Lcom/meizu/common/widget/EnhanceGallery;->access$600(Lcom/meizu/common/widget/EnhanceGallery;)Landroid/view/ActionMode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    goto :goto_1

    .line 1319
    :cond_5
    invoke-virtual {v1, v5}, Landroid/view/View;->setAlpha(F)V

    goto :goto_2

    .line 1325
    :cond_6
    if-eqz v1, :cond_4

    .line 1326
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1327
    if-eqz v0, :cond_7

    instance-of v1, v0, Landroid/widget/Checkable;

    if-eqz v1, :cond_7

    .line 1328
    check-cast v0, Landroid/widget/Checkable;

    invoke-interface {v0, v2}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 1330
    :cond_7
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery$3;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-virtual {v0}, Lcom/meizu/common/widget/EnhanceGallery;->invalidateViews()V

    goto :goto_3

    .line 1342
    :sswitch_6
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery$3;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery$3;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    iget v1, v1, Lcom/meizu/common/widget/EnhanceGallery;->mDragAndDropPosition:I

    iget-object v4, p0, Lcom/meizu/common/widget/EnhanceGallery$3;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    iget v4, v4, Lcom/meizu/common/widget/EnhanceGallery;->mFirstPosition:I

    sub-int/2addr v1, v4

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1343
    if-eqz v1, :cond_a

    .line 1344
    instance-of v0, v1, Lcom/meizu/common/widget/EnhanceGallery$DragShadowItem;

    if-eqz v0, :cond_c

    move-object v0, v1

    .line 1345
    check-cast v0, Lcom/meizu/common/widget/EnhanceGallery$DragShadowItem;

    invoke-interface {v0}, Lcom/meizu/common/widget/EnhanceGallery$DragShadowItem;->getDragView()Landroid/view/View;

    move-result-object v0

    .line 1346
    if-eqz v0, :cond_8

    .line 1347
    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    .line 1349
    :cond_8
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery$3;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-static {v0}, Lcom/meizu/common/widget/EnhanceGallery;->access$500(Lcom/meizu/common/widget/EnhanceGallery;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1350
    invoke-virtual {v1, v5}, Landroid/view/View;->setAlpha(F)V

    .line 1356
    :cond_9
    :goto_4
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1357
    if-eqz v0, :cond_a

    instance-of v1, v0, Landroid/widget/Checkable;

    if-eqz v1, :cond_a

    .line 1358
    check-cast v0, Landroid/widget/Checkable;

    invoke-interface {v0, v2}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 1361
    :cond_a
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery$3;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-virtual {v0}, Lcom/meizu/common/widget/EnhanceGallery;->requestLayout()V

    .line 1364
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery$3;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-virtual {v0}, Lcom/meizu/common/widget/EnhanceGallery;->getCheckedItemCount()I

    move-result v0

    if-gtz v0, :cond_b

    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery$3;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-static {v0}, Lcom/meizu/common/widget/EnhanceGallery;->access$600(Lcom/meizu/common/widget/EnhanceGallery;)Landroid/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 1365
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery$3;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-static {v0}, Lcom/meizu/common/widget/EnhanceGallery;->access$600(Lcom/meizu/common/widget/EnhanceGallery;)Landroid/view/ActionMode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 1366
    :cond_b
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery$3;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    iput v6, v0, Lcom/meizu/common/widget/EnhanceGallery;->mDragAndDropPosition:I

    goto/16 :goto_1

    .line 1353
    :cond_c
    invoke-virtual {v1, v5}, Landroid/view/View;->setAlpha(F)V

    goto :goto_4

    .line 1290
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_4
        0x4 -> :sswitch_5
        0x5 -> :sswitch_2
        0x6 -> :sswitch_3
        0x64 -> :sswitch_6
    .end sparse-switch
.end method
