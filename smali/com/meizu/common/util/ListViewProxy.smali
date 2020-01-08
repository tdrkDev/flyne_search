.class public Lcom/meizu/common/util/ListViewProxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# static fields
.field public static final ACTION_DRAG_FLAG_NFC_SHARE:I = 0x1

.field public static final ACTION_DRAG_FLAG_NONE:I = 0x0

.field public static final ACTION_TYPE_NORMAL:I = 0x0

.field public static final ACTION_TYPE_WARNING:I = 0x1

.field private static mApplyMeizuPartitionStyle:Ljava/lang/reflect/Method; = null

.field private static mCheckedAll:Ljava/lang/reflect/Method; = null

.field private static mChoiceActionMode:Ljava/lang/reflect/Field; = null

.field private static mEnableOverScroll:Ljava/lang/reflect/Method; = null

.field private static mGetDragPosition:Ljava/lang/reflect/Method; = null

.field private static mNotifyDragDropAnimType:Ljava/lang/reflect/Method; = null

.field private static mNotifyStatusBarNfcShareStateChanged:Ljava/lang/reflect/Method; = null

.field private static mSetDelayTopOverScrollEnabled:Ljava/lang/reflect/Method; = null

.field private static mSetDelayTopOverScrollOffset:Ljava/lang/reflect/Method; = null

.field private static mSetDividerFilterListenerMethod:Ljava/lang/reflect/Method; = null

.field private static mSetDividerPaddingListenerMethod:Ljava/lang/reflect/Method; = null

.field private static mSetDragListenerMethod:Ljava/lang/reflect/Method; = null

.field private static mSetDragSelectionListenerMethod:Ljava/lang/reflect/Method; = null

.field private static mSetEnableDragSelectionMethod:Ljava/lang/reflect/Method; = null

.field private static mSetEnableHoldPress:Ljava/lang/reflect/Method; = null

.field private static mStartDragMz:Ljava/lang/reflect/Method; = null

.field private static mUnCheckedAll:Ljava/lang/reflect/Method; = null

.field private static final tag:Ljava/lang/String; = "AbsListViewProxy"


# instance fields
.field protected mAbsList:Landroid/widget/AbsListView;

.field private mIsFlyOS:Z


# direct methods
.method public constructor <init>(Landroid/widget/AbsListView;)V
    .locals 1

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput-object p1, p0, Lcom/meizu/common/util/ListViewProxy;->mAbsList:Landroid/widget/AbsListView;

    .line 151
    invoke-static {}, Lcom/meizu/common/util/CommonUtils;->isFlymeOS()Z

    move-result v0

    iput-boolean v0, p0, Lcom/meizu/common/util/ListViewProxy;->mIsFlyOS:Z

    .line 152
    return-void
.end method

.method private createListenerInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 787
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1, p0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private getDragPostionAndId([J)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 797
    iget-object v0, p0, Lcom/meizu/common/util/ListViewProxy;->mAbsList:Landroid/widget/AbsListView;

    if-eqz v0, :cond_1

    .line 799
    :try_start_0
    sget-object v0, Lcom/meizu/common/util/ListViewProxy;->mGetDragPosition:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 800
    const-class v0, Landroid/widget/AbsListView;

    const-string v2, "getDragPosition"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/meizu/common/util/ListViewProxy;->mGetDragPosition:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 807
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/meizu/common/util/ListViewProxy;->mAbsList:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    .line 808
    sget-object v2, Lcom/meizu/common/util/ListViewProxy;->mGetDragPosition:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    .line 812
    :try_start_1
    sget-object v0, Lcom/meizu/common/util/ListViewProxy;->mGetDragPosition:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/meizu/common/util/ListViewProxy;->mAbsList:Landroid/widget/AbsListView;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v0

    .line 821
    :goto_1
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 822
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 823
    iget-object v0, p0, Lcom/meizu/common/util/ListViewProxy;->mAbsList:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    .line 825
    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    .line 827
    int-to-long v0, v1

    aput-wide v0, p1, v4

    .line 828
    const/4 v0, 0x1

    aput-wide v2, p1, v0

    .line 832
    :cond_1
    return-void

    .line 802
    :catch_0
    move-exception v0

    .line 803
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 804
    sput-object v1, Lcom/meizu/common/util/ListViewProxy;->mGetDragPosition:Ljava/lang/reflect/Method;

    goto :goto_0

    .line 813
    :catch_1
    move-exception v0

    .line 814
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    move-object v0, v1

    .line 819
    goto :goto_1

    .line 815
    :catch_2
    move-exception v0

    .line 816
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    move-object v0, v1

    .line 819
    goto :goto_1

    .line 817
    :catch_3
    move-exception v0

    .line 818
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    move-object v0, v1

    goto :goto_1
.end method

.method public static notifyDragDropAnimType(Landroid/view/View;I)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 709
    invoke-static {}, Lcom/meizu/common/util/CommonUtils;->isFlymeOS()Z

    move-result v2

    if-nez v2, :cond_0

    .line 723
    :goto_0
    return v0

    .line 713
    :cond_0
    :try_start_0
    const-class v2, Landroid/view/View;

    .line 714
    sget-object v3, Lcom/meizu/common/util/ListViewProxy;->mNotifyDragDropAnimType:Ljava/lang/reflect/Method;

    if-nez v3, :cond_1

    .line 715
    const-string v3, "notifyDragDropAnimType"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/meizu/common/util/ListViewProxy;->mNotifyDragDropAnimType:Ljava/lang/reflect/Method;

    .line 717
    :cond_1
    sget-object v2, Lcom/meizu/common/util/ListViewProxy;->mNotifyDragDropAnimType:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 718
    sget-object v2, Lcom/meizu/common/util/ListViewProxy;->mNotifyDragDropAnimType:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 719
    goto :goto_0

    .line 720
    :catch_0
    move-exception v1

    .line 721
    const-string v1, "AbsListViewProxy"

    const-string v2, "notifyDragDropAnimType fail to be invoked"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    const/4 v1, 0x0

    sput-object v1, Lcom/meizu/common/util/ListViewProxy;->mNotifyDragDropAnimType:Ljava/lang/reflect/Method;

    goto :goto_0
.end method

.method public static notifyStatusBarNfcShareStateChanged(Landroid/view/View;Z)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 735
    invoke-static {}, Lcom/meizu/common/util/CommonUtils;->isFlymeOS()Z

    move-result v2

    if-nez v2, :cond_0

    .line 750
    :goto_0
    return v0

    .line 739
    :cond_0
    :try_start_0
    const-class v2, Landroid/view/View;

    .line 740
    sget-object v3, Lcom/meizu/common/util/ListViewProxy;->mNotifyStatusBarNfcShareStateChanged:Ljava/lang/reflect/Method;

    if-nez v3, :cond_1

    .line 741
    const-string v3, "notifyStatusBarNfcShareStateChanged"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/meizu/common/util/ListViewProxy;->mNotifyStatusBarNfcShareStateChanged:Ljava/lang/reflect/Method;

    .line 744
    :cond_1
    sget-object v2, Lcom/meizu/common/util/ListViewProxy;->mNotifyStatusBarNfcShareStateChanged:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 745
    sget-object v2, Lcom/meizu/common/util/ListViewProxy;->mNotifyStatusBarNfcShareStateChanged:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 746
    goto :goto_0

    .line 747
    :catch_0
    move-exception v1

    .line 748
    const-string v1, "AbsListViewProxy"

    const-string v2, "notifyStatusBarNfcShareStateChanged fail to be invoked"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    const/4 v1, 0x0

    sput-object v1, Lcom/meizu/common/util/ListViewProxy;->mNotifyStatusBarNfcShareStateChanged:Ljava/lang/reflect/Method;

    goto :goto_0
.end method

.method public static setItemForChecked(Landroid/widget/AbsListView;Landroid/view/View;)Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 764
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    move v0, v2

    .line 765
    :goto_0
    if-eqz p1, :cond_0

    invoke-static {}, Lcom/meizu/common/util/CommonUtils;->isFlymeOS()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    :cond_0
    move v0, v3

    .line 782
    :goto_1
    return v0

    :cond_1
    move v0, v3

    .line 764
    goto :goto_0

    .line 768
    :cond_2
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChoiceMode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    .line 769
    const v0, 0x1020001

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 770
    if-eqz v1, :cond_5

    instance-of v0, v1, Landroid/widget/Checkable;

    if-eqz v0, :cond_5

    .line 771
    instance-of v0, v1, Lcom/meizu/common/widget/AnimCheckBox;

    if-eqz v0, :cond_3

    move-object v0, v1

    .line 772
    check-cast v0, Lcom/meizu/common/widget/AnimCheckBox;

    invoke-virtual {v0, v2}, Lcom/meizu/common/widget/AnimCheckBox;->setIsAnimation(Z)V

    .line 774
    :cond_3
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getCheckedItemCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 775
    check-cast v1, Landroid/widget/Checkable;

    invoke-interface {v1, v2}, Landroid/widget/Checkable;->setChecked(Z)V

    :goto_2
    move v0, v2

    .line 779
    goto :goto_1

    .line 777
    :cond_4
    check-cast v1, Landroid/widget/Checkable;

    invoke-interface {v1, v3}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_2

    :cond_5
    move v0, v3

    .line 782
    goto :goto_1
.end method

.method public static startDragMz(Landroid/view/View;Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 682
    invoke-static {}, Lcom/meizu/common/util/CommonUtils;->isFlymeOS()Z

    move-result v2

    if-nez v2, :cond_0

    .line 697
    :goto_0
    return v0

    .line 686
    :cond_0
    :try_start_0
    const-class v2, Landroid/view/View;

    .line 687
    sget-object v3, Lcom/meizu/common/util/ListViewProxy;->mStartDragMz:Ljava/lang/reflect/Method;

    if-nez v3, :cond_1

    .line 688
    const-string v3, "startDragMz"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/ClipData;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Landroid/view/View$DragShadowBuilder;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-class v6, Ljava/lang/Object;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/meizu/common/util/ListViewProxy;->mStartDragMz:Ljava/lang/reflect/Method;

    .line 691
    :cond_1
    sget-object v2, Lcom/meizu/common/util/ListViewProxy;->mStartDragMz:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 692
    sget-object v2, Lcom/meizu/common/util/ListViewProxy;->mStartDragMz:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 693
    goto :goto_0

    .line 694
    :catch_0
    move-exception v1

    .line 695
    const-string v1, "AbsListViewProxy"

    const-string v2, "startDragMz fail to be invoked"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    const/4 v1, 0x0

    sput-object v1, Lcom/meizu/common/util/ListViewProxy;->mStartDragMz:Ljava/lang/reflect/Method;

    goto :goto_0
.end method


# virtual methods
.method public applyMeizuPartitionStyle()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 283
    iget-boolean v2, p0, Lcom/meizu/common/util/ListViewProxy;->mIsFlyOS:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/meizu/common/util/ListViewProxy;->mAbsList:Landroid/widget/AbsListView;

    instance-of v2, v2, Landroid/widget/ListView;

    if-eqz v2, :cond_1

    .line 285
    :try_start_0
    const-class v2, Landroid/widget/ListView;

    .line 286
    sget-object v3, Lcom/meizu/common/util/ListViewProxy;->mApplyMeizuPartitionStyle:Ljava/lang/reflect/Method;

    if-nez v3, :cond_0

    .line 287
    const-string v3, "applyMeizuPartitionStyle"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/meizu/common/util/ListViewProxy;->mApplyMeizuPartitionStyle:Ljava/lang/reflect/Method;

    .line 289
    :cond_0
    sget-object v2, Lcom/meizu/common/util/ListViewProxy;->mApplyMeizuPartitionStyle:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 290
    sget-object v2, Lcom/meizu/common/util/ListViewProxy;->mApplyMeizuPartitionStyle:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/meizu/common/util/ListViewProxy;->mAbsList:Landroid/widget/AbsListView;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    :goto_0
    return v0

    .line 292
    :catch_0
    move-exception v0

    .line 293
    const-string v0, "AbsListViewProxy"

    const-string v2, "setCenterListContent fail to be invoked"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    const/4 v0, 0x0

    sput-object v0, Lcom/meizu/common/util/ListViewProxy;->mApplyMeizuPartitionStyle:Ljava/lang/reflect/Method;

    move v0, v1

    .line 295
    goto :goto_0

    :cond_1
    move v0, v1

    .line 298
    goto :goto_0
.end method

.method protected bottomDeviderEnabled()Z
    .locals 1

    .prologue
    .line 861
    const/4 v0, 0x1

    return v0
.end method

.method public checkedAll()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 538
    iget-boolean v2, p0, Lcom/meizu/common/util/ListViewProxy;->mIsFlyOS:Z

    if-nez v2, :cond_1

    .line 539
    :goto_0
    iget-object v2, p0, Lcom/meizu/common/util/ListViewProxy;->mAbsList:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 540
    iget-object v2, p0, Lcom/meizu/common/util/ListViewProxy;->mAbsList:Landroid/widget/AbsListView;

    invoke-virtual {v2, v0, v1}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 539
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 559
    :goto_1
    return v0

    .line 544
    :cond_1
    iget-object v2, p0, Lcom/meizu/common/util/ListViewProxy;->mAbsList:Landroid/widget/AbsListView;

    instance-of v2, v2, Landroid/widget/ListView;

    if-nez v2, :cond_2

    .line 545
    const-string v1, "tag"

    const-string v2, "the Target is not a ListView"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 549
    :cond_2
    :try_start_0
    const-class v2, Landroid/widget/ListView;

    .line 550
    sget-object v3, Lcom/meizu/common/util/ListViewProxy;->mCheckedAll:Ljava/lang/reflect/Method;

    if-nez v3, :cond_3

    .line 551
    const-string v3, "checkedAll"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/meizu/common/util/ListViewProxy;->mCheckedAll:Ljava/lang/reflect/Method;

    .line 553
    :cond_3
    sget-object v2, Lcom/meizu/common/util/ListViewProxy;->mCheckedAll:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 554
    sget-object v2, Lcom/meizu/common/util/ListViewProxy;->mCheckedAll:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/meizu/common/util/ListViewProxy;->mAbsList:Landroid/widget/AbsListView;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 555
    goto :goto_1

    .line 556
    :catch_0
    move-exception v1

    .line 557
    const/4 v1, 0x0

    sput-object v1, Lcom/meizu/common/util/ListViewProxy;->mCheckedAll:Ljava/lang/reflect/Method;

    .line 558
    const-string v1, "AbsListViewProxy"

    const-string v2, "checkedAll fail to be invoked"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected dividerEnabled(I)Z
    .locals 1

    .prologue
    .line 857
    const/4 v0, 0x1

    return v0
.end method

.method public finishMultiChoice()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 601
    iget-boolean v0, p0, Lcom/meizu/common/util/ListViewProxy;->mIsFlyOS:Z

    if-nez v0, :cond_0

    move v0, v2

    .line 623
    :goto_0
    return v0

    .line 606
    :cond_0
    :try_start_0
    const-class v0, Landroid/widget/AbsListView;

    .line 607
    sget-object v4, Lcom/meizu/common/util/ListViewProxy;->mChoiceActionMode:Ljava/lang/reflect/Field;

    if-nez v4, :cond_1

    .line 608
    const-string v4, "mChoiceActionMode"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/meizu/common/util/ListViewProxy;->mChoiceActionMode:Ljava/lang/reflect/Field;

    .line 610
    :cond_1
    sget-object v0, Lcom/meizu/common/util/ListViewProxy;->mChoiceActionMode:Ljava/lang/reflect/Field;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 611
    sget-object v0, Lcom/meizu/common/util/ListViewProxy;->mChoiceActionMode:Ljava/lang/reflect/Field;

    iget-object v4, p0, Lcom/meizu/common/util/ListViewProxy;->mAbsList:Landroid/widget/AbsListView;

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ActionMode;

    if-eqz v0, :cond_3

    .line 612
    sget-object v0, Lcom/meizu/common/util/ListViewProxy;->mChoiceActionMode:Ljava/lang/reflect/Field;

    iget-object v4, p0, Lcom/meizu/common/util/ListViewProxy;->mAbsList:Landroid/widget/AbsListView;

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ActionMode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 619
    :goto_1
    if-eqz v0, :cond_2

    .line 620
    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    move v0, v3

    .line 621
    goto :goto_0

    .line 614
    :catch_0
    move-exception v0

    .line 615
    const-string v0, "AbsListViewProxy"

    const-string v3, "finishMultiChoice fail to be invoked"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    sput-object v1, Lcom/meizu/common/util/ListViewProxy;->mChoiceActionMode:Ljava/lang/reflect/Field;

    move v0, v2

    .line 617
    goto :goto_0

    :cond_2
    move v0, v2

    .line 623
    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method protected getActionItemType(Landroid/view/MenuItem;)I
    .locals 1

    .prologue
    .line 845
    const/4 v0, 0x0

    return v0
.end method

.method public getDividerPadding(I)[I
    .locals 1

    .prologue
    .line 865
    const/4 v0, 0x0

    return-object v0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 156
    const/4 v2, 0x0

    .line 161
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 162
    const-string v1, "onActionItemDragStart"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 164
    array-length v0, p3

    if-lez v0, :cond_0

    .line 165
    const/4 v0, 0x0

    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v0, 0x1

    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, v1, v4, v5}, Lcom/meizu/common/util/ListViewProxy;->onActionItemDragStart(IJ)I

    move-result v0

    .line 171
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 199
    :goto_1
    return-object v0

    .line 167
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [J

    .line 168
    invoke-direct {p0, v0}, Lcom/meizu/common/util/ListViewProxy;->getDragPostionAndId([J)V

    .line 169
    const/4 v1, 0x0

    aget-wide v4, v0, v1

    long-to-int v1, v4

    const/4 v3, 0x1

    aget-wide v4, v0, v3

    invoke-virtual {p0, v1, v4, v5}, Lcom/meizu/common/util/ListViewProxy;->onActionItemDragStart(IJ)I

    move-result v0

    goto :goto_0

    .line 172
    :cond_1
    const-string v1, "onActionItemDrop"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 173
    const/4 v0, 0x0

    aget-object v0, p3, v0

    check-cast v0, Landroid/view/MenuItem;

    const/4 v1, 0x1

    aget-object v1, p3, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v1, 0x2

    aget-object v1, p3, v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, v0, v3, v4, v5}, Lcom/meizu/common/util/ListViewProxy;->onActionItemDrop(Landroid/view/MenuItem;IJ)V

    move-object v0, v2

    goto :goto_1

    .line 174
    :cond_2
    const-string v1, "onActionItemDragEnd"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 175
    array-length v0, p3

    if-lez v0, :cond_3

    .line 176
    const/4 v0, 0x0

    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v0, 0x1

    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, v1, v4, v5}, Lcom/meizu/common/util/ListViewProxy;->onActionItemDragEnd(IJ)V

    move-object v0, v2

    goto :goto_1

    .line 178
    :cond_3
    const/4 v0, 0x2

    new-array v0, v0, [J

    .line 179
    invoke-direct {p0, v0}, Lcom/meizu/common/util/ListViewProxy;->getDragPostionAndId([J)V

    .line 180
    const/4 v1, 0x0

    aget-wide v4, v0, v1

    long-to-int v1, v4

    const/4 v3, 0x1

    aget-wide v4, v0, v3

    invoke-virtual {p0, v1, v4, v5}, Lcom/meizu/common/util/ListViewProxy;->onActionItemDragEnd(IJ)V

    move-object v0, v2

    .line 181
    goto :goto_1

    .line 182
    :cond_4
    const-string v1, "getActionItemType"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 183
    const/4 v0, 0x0

    aget-object v0, p3, v0

    check-cast v0, Landroid/view/MenuItem;

    invoke-virtual {p0, v0}, Lcom/meizu/common/util/ListViewProxy;->getActionItemType(Landroid/view/MenuItem;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    .line 184
    :cond_5
    const-string v1, "onDragSelection"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 185
    const/4 v0, 0x0

    aget-object v0, p3, v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x1

    aget-object v1, p3, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v1, 0x2

    aget-object v1, p3, v1

    check-cast v1, Ljava/lang/Long;

    .line 186
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 185
    invoke-virtual {p0, v0, v3, v4, v5}, Lcom/meizu/common/util/ListViewProxy;->onDragSelection(Landroid/view/View;IJ)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_1

    .line 187
    :cond_6
    const-string v1, "topDividerEnabled"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 188
    invoke-virtual {p0}, Lcom/meizu/common/util/ListViewProxy;->topDividerEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_1

    .line 189
    :cond_7
    const-string v1, "dividerEnabled"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 190
    const/4 v0, 0x0

    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/meizu/common/util/ListViewProxy;->dividerEnabled(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_1

    .line 191
    :cond_8
    const-string v1, "bottomDeviderEnabled"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 192
    invoke-virtual {p0}, Lcom/meizu/common/util/ListViewProxy;->bottomDeviderEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_1

    .line 193
    :cond_9
    const-string v1, "getDividerPadding"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 194
    const/4 v0, 0x0

    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/meizu/common/util/ListViewProxy;->getDividerPadding(I)[I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto/16 :goto_1

    .line 196
    :catch_0
    move-exception v0

    .line 197
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_a
    move-object v0, v2

    goto/16 :goto_1
.end method

.method protected onActionItemDragEnd(IJ)V
    .locals 0

    .prologue
    .line 842
    return-void
.end method

.method protected onActionItemDragStart(IJ)I
    .locals 1

    .prologue
    .line 835
    const/4 v0, 0x0

    return v0
.end method

.method protected onActionItemDrop(Landroid/view/MenuItem;IJ)V
    .locals 0

    .prologue
    .line 839
    return-void
.end method

.method protected onDragSelection(Landroid/view/View;IJ)Z
    .locals 1

    .prologue
    .line 849
    const/4 v0, 0x0

    return v0
.end method

.method public setCenterListContent(Z)Z
    .locals 1

    .prologue
    .line 274
    const/4 v0, 0x0

    return v0
.end method

.method public setDelayTopOverScrollEnabled(Z)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 209
    iget-boolean v2, p0, Lcom/meizu/common/util/ListViewProxy;->mIsFlyOS:Z

    if-eqz v2, :cond_1

    .line 211
    :try_start_0
    const-class v2, Landroid/widget/AbsListView;

    .line 212
    sget-object v3, Lcom/meizu/common/util/ListViewProxy;->mSetDelayTopOverScrollEnabled:Ljava/lang/reflect/Method;

    if-nez v3, :cond_0

    .line 213
    const-string v3, "setDelayTopOverScrollEnabled"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/meizu/common/util/ListViewProxy;->mSetDelayTopOverScrollEnabled:Ljava/lang/reflect/Method;

    .line 216
    :cond_0
    sget-object v2, Lcom/meizu/common/util/ListViewProxy;->mSetDelayTopOverScrollEnabled:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 217
    sget-object v2, Lcom/meizu/common/util/ListViewProxy;->mSetDelayTopOverScrollEnabled:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/meizu/common/util/ListViewProxy;->mAbsList:Landroid/widget/AbsListView;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    :goto_0
    return v0

    .line 219
    :catch_0
    move-exception v0

    .line 220
    const-string v0, "AbsListViewProxy"

    const-string v2, "setDelayTopOverScrollEnabled fail to be invoked"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    const/4 v0, 0x0

    sput-object v0, Lcom/meizu/common/util/ListViewProxy;->mSetDelayTopOverScrollEnabled:Ljava/lang/reflect/Method;

    move v0, v1

    .line 222
    goto :goto_0

    :cond_1
    move v0, v1

    .line 225
    goto :goto_0
.end method

.method public setDelayTopOverScrollOffset(I)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 235
    iget-boolean v2, p0, Lcom/meizu/common/util/ListViewProxy;->mIsFlyOS:Z

    if-eqz v2, :cond_1

    .line 237
    :try_start_0
    const-class v2, Landroid/widget/AbsListView;

    .line 238
    sget-object v3, Lcom/meizu/common/util/ListViewProxy;->mSetDelayTopOverScrollOffset:Ljava/lang/reflect/Method;

    if-nez v3, :cond_0

    .line 239
    const-string v3, "setDelayTopOverScrollOffset"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/meizu/common/util/ListViewProxy;->mSetDelayTopOverScrollOffset:Ljava/lang/reflect/Method;

    .line 242
    :cond_0
    sget-object v2, Lcom/meizu/common/util/ListViewProxy;->mSetDelayTopOverScrollOffset:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 243
    sget-object v2, Lcom/meizu/common/util/ListViewProxy;->mSetDelayTopOverScrollOffset:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/meizu/common/util/ListViewProxy;->mAbsList:Landroid/widget/AbsListView;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    :goto_0
    return v0

    .line 245
    :catch_0
    move-exception v0

    .line 246
    const-string v0, "AbsListViewProxy"

    const-string v2, "setDelayTopOverScrollOffset fail to be invoked"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    const/4 v0, 0x0

    sput-object v0, Lcom/meizu/common/util/ListViewProxy;->mSetDelayTopOverScrollOffset:Ljava/lang/reflect/Method;

    move v0, v1

    .line 248
    goto :goto_0

    :cond_1
    move v0, v1

    .line 251
    goto :goto_0
.end method

.method public setDividerFilterListener()Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 458
    iget-boolean v2, p0, Lcom/meizu/common/util/ListViewProxy;->mIsFlyOS:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/meizu/common/util/ListViewProxy;->mAbsList:Landroid/widget/AbsListView;

    instance-of v2, v2, Landroid/widget/ListView;

    if-nez v2, :cond_1

    .line 489
    :cond_0
    :goto_0
    return v1

    .line 464
    :cond_1
    :try_start_0
    const-string v2, "android.widget.ListView$DividerFilter"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 465
    sget-object v3, Lcom/meizu/common/util/ListViewProxy;->mSetDividerFilterListenerMethod:Ljava/lang/reflect/Method;

    if-nez v3, :cond_2

    .line 466
    const-class v3, Landroid/widget/ListView;

    const-string v4, "setDividerFilterListener"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/meizu/common/util/ListViewProxy;->mSetDividerFilterListenerMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 477
    :cond_2
    :try_start_1
    invoke-direct {p0, v2}, Lcom/meizu/common/util/ListViewProxy;->createListenerInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    .line 478
    if-eqz v2, :cond_3

    .line 479
    sget-object v3, Lcom/meizu/common/util/ListViewProxy;->mSetDividerFilterListenerMethod:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lcom/meizu/common/util/ListViewProxy;->mAbsList:Landroid/widget/AbsListView;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    move v1, v0

    .line 488
    goto :goto_0

    .line 469
    :catch_0
    move-exception v0

    .line 470
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 472
    const/4 v0, 0x0

    sput-object v0, Lcom/meizu/common/util/ListViewProxy;->mSetDividerFilterListenerMethod:Ljava/lang/reflect/Method;

    goto :goto_0

    .line 482
    :catch_1
    move-exception v0

    .line 483
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 484
    :catch_2
    move-exception v0

    .line 485
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 486
    :catch_3
    move-exception v0

    .line 487
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public setDividerPaddingsListener()Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 498
    iget-boolean v2, p0, Lcom/meizu/common/util/ListViewProxy;->mIsFlyOS:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/meizu/common/util/ListViewProxy;->mAbsList:Landroid/widget/AbsListView;

    instance-of v2, v2, Landroid/widget/ListView;

    if-nez v2, :cond_1

    .line 529
    :cond_0
    :goto_0
    return v1

    .line 504
    :cond_1
    :try_start_0
    const-string v2, "android.widget.ListView$DividerPadding"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 505
    sget-object v3, Lcom/meizu/common/util/ListViewProxy;->mSetDividerPaddingListenerMethod:Ljava/lang/reflect/Method;

    if-nez v3, :cond_2

    .line 506
    const-class v3, Landroid/widget/ListView;

    const-string v4, "setDividerPadding"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/meizu/common/util/ListViewProxy;->mSetDividerPaddingListenerMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 517
    :cond_2
    :try_start_1
    invoke-direct {p0, v2}, Lcom/meizu/common/util/ListViewProxy;->createListenerInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    .line 518
    if-eqz v2, :cond_3

    .line 519
    sget-object v3, Lcom/meizu/common/util/ListViewProxy;->mSetDividerPaddingListenerMethod:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lcom/meizu/common/util/ListViewProxy;->mAbsList:Landroid/widget/AbsListView;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    move v1, v0

    .line 528
    goto :goto_0

    .line 509
    :catch_0
    move-exception v0

    .line 510
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 512
    const/4 v0, 0x0

    sput-object v0, Lcom/meizu/common/util/ListViewProxy;->mSetDividerPaddingListenerMethod:Ljava/lang/reflect/Method;

    goto :goto_0

    .line 522
    :catch_1
    move-exception v0

    .line 523
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 524
    :catch_2
    move-exception v0

    .line 525
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 526
    :catch_3
    move-exception v0

    .line 527
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public setEnableDragSelection(Z)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 367
    iget-boolean v2, p0, Lcom/meizu/common/util/ListViewProxy;->mIsFlyOS:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/meizu/common/util/ListViewProxy;->mAbsList:Landroid/widget/AbsListView;

    instance-of v2, v2, Landroid/widget/ListView;

    if-nez v2, :cond_1

    .line 395
    :cond_0
    :goto_0
    return v1

    .line 372
    :cond_1
    :try_start_0
    sget-object v2, Lcom/meizu/common/util/ListViewProxy;->mSetEnableDragSelectionMethod:Ljava/lang/reflect/Method;

    if-nez v2, :cond_2

    .line 373
    const-class v2, Landroid/widget/ListView;

    const-string v3, "setEnableDragSelection"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/meizu/common/util/ListViewProxy;->mSetEnableDragSelectionMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 385
    :cond_2
    :try_start_1
    sget-object v2, Lcom/meizu/common/util/ListViewProxy;->mSetEnableDragSelectionMethod:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/meizu/common/util/ListViewProxy;->mAbsList:Landroid/widget/AbsListView;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    move v1, v0

    .line 395
    goto :goto_0

    .line 376
    :catch_0
    move-exception v0

    .line 377
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 378
    const/4 v0, 0x0

    sput-object v0, Lcom/meizu/common/util/ListViewProxy;->mSetEnableDragSelectionMethod:Ljava/lang/reflect/Method;

    goto :goto_0

    .line 387
    :catch_1
    move-exception v0

    .line 388
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    move v0, v1

    .line 393
    goto :goto_1

    .line 389
    :catch_2
    move-exception v0

    .line 390
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    move v0, v1

    .line 393
    goto :goto_1

    .line 391
    :catch_3
    move-exception v0

    .line 392
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    move v0, v1

    goto :goto_1
.end method

.method public setEnableDragSelectionListener()Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 406
    iget-boolean v2, p0, Lcom/meizu/common/util/ListViewProxy;->mIsFlyOS:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/meizu/common/util/ListViewProxy;->mAbsList:Landroid/widget/AbsListView;

    instance-of v2, v2, Landroid/widget/ListView;

    if-nez v2, :cond_1

    .line 448
    :cond_0
    :goto_0
    return v1

    .line 415
    :cond_1
    :try_start_0
    const-string v2, "android.widget.ListView$OnDragSelectListener"

    .line 416
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 417
    sget-object v3, Lcom/meizu/common/util/ListViewProxy;->mSetDragSelectionListenerMethod:Ljava/lang/reflect/Method;

    if-nez v3, :cond_2

    .line 418
    const-class v3, Landroid/widget/ListView;

    const-string v4, "setEnableDragSelection"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/meizu/common/util/ListViewProxy;->mSetDragSelectionListenerMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 431
    :cond_2
    :try_start_1
    invoke-direct {p0, v2}, Lcom/meizu/common/util/ListViewProxy;->createListenerInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    .line 432
    if-eqz v2, :cond_3

    .line 437
    sget-object v3, Lcom/meizu/common/util/ListViewProxy;->mSetDragSelectionListenerMethod:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lcom/meizu/common/util/ListViewProxy;->mAbsList:Landroid/widget/AbsListView;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    move v1, v0

    .line 446
    goto :goto_0

    .line 421
    :catch_0
    move-exception v0

    .line 422
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 424
    const/4 v0, 0x0

    sput-object v0, Lcom/meizu/common/util/ListViewProxy;->mSetDragSelectionListenerMethod:Ljava/lang/reflect/Method;

    goto :goto_0

    .line 440
    :catch_1
    move-exception v0

    .line 441
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 442
    :catch_2
    move-exception v0

    .line 443
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 444
    :catch_3
    move-exception v0

    .line 445
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public setEnableHoldPress(Z)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 632
    iget-boolean v2, p0, Lcom/meizu/common/util/ListViewProxy;->mIsFlyOS:Z

    if-nez v2, :cond_0

    .line 644
    :goto_0
    return v0

    .line 636
    :cond_0
    :try_start_0
    sget-object v2, Lcom/meizu/common/util/ListViewProxy;->mSetEnableHoldPress:Ljava/lang/reflect/Method;

    if-nez v2, :cond_1

    .line 637
    const-class v2, Landroid/widget/AbsListView;

    const-string v3, "setEnableHoldPress"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/meizu/common/util/ListViewProxy;->mSetEnableHoldPress:Ljava/lang/reflect/Method;

    .line 639
    :cond_1
    sget-object v2, Lcom/meizu/common/util/ListViewProxy;->mSetEnableHoldPress:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/meizu/common/util/ListViewProxy;->mAbsList:Landroid/widget/AbsListView;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 640
    goto :goto_0

    .line 641
    :catch_0
    move-exception v1

    .line 642
    const/4 v1, 0x0

    sput-object v1, Lcom/meizu/common/util/ListViewProxy;->mSetEnableHoldPress:Ljava/lang/reflect/Method;

    .line 643
    const-string v1, "AbsListViewProxy"

    const-string v2, "mSetEnableHoldPress fail to be invoked"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setEnableOverScroll(Z)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 654
    iget-boolean v2, p0, Lcom/meizu/common/util/ListViewProxy;->mIsFlyOS:Z

    if-nez v2, :cond_0

    .line 666
    :goto_0
    return v0

    .line 658
    :cond_0
    :try_start_0
    sget-object v2, Lcom/meizu/common/util/ListViewProxy;->mEnableOverScroll:Ljava/lang/reflect/Method;

    if-nez v2, :cond_1

    .line 659
    const-class v2, Landroid/widget/AbsListView;

    const-string v3, "setEnableOverScroll"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/meizu/common/util/ListViewProxy;->mEnableOverScroll:Ljava/lang/reflect/Method;

    .line 661
    :cond_1
    sget-object v2, Lcom/meizu/common/util/ListViewProxy;->mEnableOverScroll:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/meizu/common/util/ListViewProxy;->mAbsList:Landroid/widget/AbsListView;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 662
    goto :goto_0

    .line 663
    :catch_0
    move-exception v1

    .line 664
    const/4 v1, 0x0

    sput-object v1, Lcom/meizu/common/util/ListViewProxy;->mEnableOverScroll:Ljava/lang/reflect/Method;

    .line 665
    const-string v1, "AbsListViewProxy"

    const-string v2, "mEnableOverScroll fail to be invoked"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setEnabledMultiChoice()Z
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 312
    iget-boolean v2, p0, Lcom/meizu/common/util/ListViewProxy;->mIsFlyOS:Z

    if-nez v2, :cond_0

    .line 313
    iget-object v1, p0, Lcom/meizu/common/util/ListViewProxy;->mAbsList:Landroid/widget/AbsListView;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 355
    :goto_0
    return v0

    .line 318
    :cond_0
    const/4 v2, 0x4

    .line 320
    :try_start_0
    const-string v3, "android.widget.AbsListView$OnItemDragListener"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 321
    sget-object v4, Lcom/meizu/common/util/ListViewProxy;->mSetDragListenerMethod:Ljava/lang/reflect/Method;

    if-nez v4, :cond_1

    .line 322
    const-class v4, Landroid/widget/AbsListView;

    const-string v5, "setItemDragListener"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lcom/meizu/common/util/ListViewProxy;->mSetDragListenerMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 336
    :cond_1
    invoke-direct {p0, v3}, Lcom/meizu/common/util/ListViewProxy;->createListenerInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    .line 339
    if-eqz v3, :cond_2

    .line 342
    :try_start_1
    sget-object v4, Lcom/meizu/common/util/ListViewProxy;->mSetDragListenerMethod:Ljava/lang/reflect/Method;

    iget-object v5, p0, Lcom/meizu/common/util/ListViewProxy;->mAbsList:Landroid/widget/AbsListView;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    iget-object v3, p0, Lcom/meizu/common/util/ListViewProxy;->mAbsList:Landroid/widget/AbsListView;

    invoke-virtual {v3, v2}, Landroid/widget/AbsListView;->setChoiceMode(I)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 346
    :catch_0
    move-exception v0

    .line 347
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    move v0, v1

    .line 352
    goto :goto_0

    .line 328
    :catch_1
    move-exception v0

    .line 329
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 331
    const/4 v0, 0x0

    sput-object v0, Lcom/meizu/common/util/ListViewProxy;->mSetDragListenerMethod:Ljava/lang/reflect/Method;

    move v0, v1

    .line 332
    goto :goto_0

    .line 348
    :catch_2
    move-exception v0

    .line 349
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    move v0, v1

    .line 352
    goto :goto_0

    .line 350
    :catch_3
    move-exception v0

    .line 351
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method protected topDividerEnabled()Z
    .locals 1

    .prologue
    .line 853
    const/4 v0, 0x1

    return v0
.end method

.method public unCheckedAll()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 569
    iget-object v2, p0, Lcom/meizu/common/util/ListViewProxy;->mAbsList:Landroid/widget/AbsListView;

    instance-of v2, v2, Landroid/widget/ListView;

    if-nez v2, :cond_0

    .line 570
    const-string v1, "tag"

    const-string v2, "unchecked error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    :goto_0
    return v0

    .line 573
    :cond_0
    iget-boolean v2, p0, Lcom/meizu/common/util/ListViewProxy;->mIsFlyOS:Z

    if-nez v2, :cond_1

    .line 574
    iget-object v2, p0, Lcom/meizu/common/util/ListViewProxy;->mAbsList:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->clearChoices()V

    .line 575
    iget-object v2, p0, Lcom/meizu/common/util/ListViewProxy;->mAbsList:Landroid/widget/AbsListView;

    invoke-virtual {v2, v0, v0}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 576
    iget-object v0, p0, Lcom/meizu/common/util/ListViewProxy;->mAbsList:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->requestLayout()V

    move v0, v1

    .line 577
    goto :goto_0

    .line 581
    :cond_1
    :try_start_0
    const-class v2, Landroid/widget/ListView;

    .line 582
    sget-object v3, Lcom/meizu/common/util/ListViewProxy;->mUnCheckedAll:Ljava/lang/reflect/Method;

    if-nez v3, :cond_2

    .line 583
    const-string v3, "unCheckedAll"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/meizu/common/util/ListViewProxy;->mUnCheckedAll:Ljava/lang/reflect/Method;

    .line 585
    :cond_2
    sget-object v2, Lcom/meizu/common/util/ListViewProxy;->mUnCheckedAll:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 586
    sget-object v2, Lcom/meizu/common/util/ListViewProxy;->mUnCheckedAll:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/meizu/common/util/ListViewProxy;->mAbsList:Landroid/widget/AbsListView;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 587
    goto :goto_0

    .line 588
    :catch_0
    move-exception v1

    .line 589
    const-string v1, "AbsListViewProxy"

    const-string v2, "unCheckedAll fail to be invoked"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    const/4 v1, 0x0

    sput-object v1, Lcom/meizu/common/util/ListViewProxy;->mUnCheckedAll:Ljava/lang/reflect/Method;

    goto :goto_0
.end method
