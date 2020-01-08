.class public Lcom/meizu/common/datetimepicker/date/MonthView$MonthViewTouchHelper;
.super Landroid/support/v4/widget/ExploreByTouchHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/datetimepicker/date/MonthView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MonthViewTouchHelper"
.end annotation


# static fields
.field private static final DATE_FORMAT:Ljava/lang/String; = "dd MMMM yyyy"


# instance fields
.field private final mTempCalendar:Ljava/util/Calendar;

.field private final mTempRect:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/meizu/common/datetimepicker/date/MonthView;


# direct methods
.method public constructor <init>(Lcom/meizu/common/datetimepicker/date/MonthView;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 748
    iput-object p1, p0, Lcom/meizu/common/datetimepicker/date/MonthView$MonthViewTouchHelper;->this$0:Lcom/meizu/common/datetimepicker/date/MonthView;

    .line 749
    invoke-direct {p0, p2}, Landroid/support/v4/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    .line 745
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/datetimepicker/date/MonthView$MonthViewTouchHelper;->mTempRect:Landroid/graphics/Rect;

    .line 746
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/datetimepicker/date/MonthView$MonthViewTouchHelper;->mTempCalendar:Ljava/util/Calendar;

    .line 750
    return-void
.end method


# virtual methods
.method public clearFocusedVirtualView()V
    .locals 4

    .prologue
    .line 758
    invoke-virtual {p0}, Lcom/meizu/common/datetimepicker/date/MonthView$MonthViewTouchHelper;->getFocusedVirtualView()I

    move-result v0

    .line 759
    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 760
    iget-object v1, p0, Lcom/meizu/common/datetimepicker/date/MonthView$MonthViewTouchHelper;->this$0:Lcom/meizu/common/datetimepicker/date/MonthView;

    invoke-virtual {p0, v1}, Lcom/meizu/common/datetimepicker/date/MonthView$MonthViewTouchHelper;->getAccessibilityNodeProvider(Landroid/view/View;)Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;

    move-result-object v1

    const/16 v2, 0x80

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;->performAction(IILandroid/os/Bundle;)Z

    .line 765
    :cond_0
    return-void
.end method

.method protected getItemBounds(ILandroid/graphics/Rect;)V
    .locals 7

    .prologue
    .line 822
    iget-object v0, p0, Lcom/meizu/common/datetimepicker/date/MonthView$MonthViewTouchHelper;->this$0:Lcom/meizu/common/datetimepicker/date/MonthView;

    iget v0, v0, Lcom/meizu/common/datetimepicker/date/MonthView;->mEdgePadding:I

    .line 823
    iget-object v1, p0, Lcom/meizu/common/datetimepicker/date/MonthView$MonthViewTouchHelper;->this$0:Lcom/meizu/common/datetimepicker/date/MonthView;

    invoke-virtual {v1}, Lcom/meizu/common/datetimepicker/date/MonthView;->getMonthHeaderSize()I

    move-result v1

    .line 824
    iget-object v2, p0, Lcom/meizu/common/datetimepicker/date/MonthView$MonthViewTouchHelper;->this$0:Lcom/meizu/common/datetimepicker/date/MonthView;

    iget v2, v2, Lcom/meizu/common/datetimepicker/date/MonthView;->mRowHeight:I

    .line 825
    iget-object v3, p0, Lcom/meizu/common/datetimepicker/date/MonthView$MonthViewTouchHelper;->this$0:Lcom/meizu/common/datetimepicker/date/MonthView;

    iget v3, v3, Lcom/meizu/common/datetimepicker/date/MonthView;->mWidth:I

    iget-object v4, p0, Lcom/meizu/common/datetimepicker/date/MonthView$MonthViewTouchHelper;->this$0:Lcom/meizu/common/datetimepicker/date/MonthView;

    iget v4, v4, Lcom/meizu/common/datetimepicker/date/MonthView;->mEdgePadding:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/meizu/common/datetimepicker/date/MonthView$MonthViewTouchHelper;->this$0:Lcom/meizu/common/datetimepicker/date/MonthView;

    iget v4, v4, Lcom/meizu/common/datetimepicker/date/MonthView;->mNumDays:I

    div-int/2addr v3, v4

    .line 826
    add-int/lit8 v4, p1, -0x1

    iget-object v5, p0, Lcom/meizu/common/datetimepicker/date/MonthView$MonthViewTouchHelper;->this$0:Lcom/meizu/common/datetimepicker/date/MonthView;

    invoke-virtual {v5}, Lcom/meizu/common/datetimepicker/date/MonthView;->findDayOffset()I

    move-result v5

    add-int/2addr v4, v5

    .line 827
    iget-object v5, p0, Lcom/meizu/common/datetimepicker/date/MonthView$MonthViewTouchHelper;->this$0:Lcom/meizu/common/datetimepicker/date/MonthView;

    iget v5, v5, Lcom/meizu/common/datetimepicker/date/MonthView;->mNumDays:I

    div-int v5, v4, v5

    .line 828
    iget-object v6, p0, Lcom/meizu/common/datetimepicker/date/MonthView$MonthViewTouchHelper;->this$0:Lcom/meizu/common/datetimepicker/date/MonthView;

    iget v6, v6, Lcom/meizu/common/datetimepicker/date/MonthView;->mNumDays:I

    rem-int/2addr v4, v6

    .line 829
    mul-int/2addr v4, v3

    add-int/2addr v0, v4

    .line 830
    mul-int v4, v5, v2

    add-int/2addr v1, v4

    .line 832
    add-int/2addr v3, v0

    add-int/2addr v2, v1

    invoke-virtual {p2, v0, v1, v3, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 833
    return-void
.end method

.method protected getItemDescription(I)Ljava/lang/CharSequence;
    .locals 5

    .prologue
    .line 844
    iget-object v0, p0, Lcom/meizu/common/datetimepicker/date/MonthView$MonthViewTouchHelper;->mTempCalendar:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/meizu/common/datetimepicker/date/MonthView$MonthViewTouchHelper;->this$0:Lcom/meizu/common/datetimepicker/date/MonthView;

    iget v1, v1, Lcom/meizu/common/datetimepicker/date/MonthView;->mYear:I

    iget-object v2, p0, Lcom/meizu/common/datetimepicker/date/MonthView$MonthViewTouchHelper;->this$0:Lcom/meizu/common/datetimepicker/date/MonthView;

    iget v2, v2, Lcom/meizu/common/datetimepicker/date/MonthView;->mMonth:I

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/Calendar;->set(III)V

    .line 845
    const-string v0, "dd MMMM yyyy"

    iget-object v1, p0, Lcom/meizu/common/datetimepicker/date/MonthView$MonthViewTouchHelper;->mTempCalendar:Ljava/util/Calendar;

    .line 846
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 845
    invoke-static {v0, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    .line 848
    iget-object v1, p0, Lcom/meizu/common/datetimepicker/date/MonthView$MonthViewTouchHelper;->this$0:Lcom/meizu/common/datetimepicker/date/MonthView;

    iget v1, v1, Lcom/meizu/common/datetimepicker/date/MonthView;->mSelectedDay:I

    if-ne p1, v1, :cond_0

    .line 849
    iget-object v1, p0, Lcom/meizu/common/datetimepicker/date/MonthView$MonthViewTouchHelper;->this$0:Lcom/meizu/common/datetimepicker/date/MonthView;

    invoke-virtual {v1}, Lcom/meizu/common/datetimepicker/date/MonthView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$string;->item_is_selected:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 852
    :cond_0
    return-object v0
.end method

.method protected getVirtualViewAt(FF)I
    .locals 1

    .prologue
    .line 769
    iget-object v0, p0, Lcom/meizu/common/datetimepicker/date/MonthView$MonthViewTouchHelper;->this$0:Lcom/meizu/common/datetimepicker/date/MonthView;

    invoke-virtual {v0, p1, p2}, Lcom/meizu/common/datetimepicker/date/MonthView;->getDayFromLocation(FF)I

    move-result v0

    .line 770
    if-ltz v0, :cond_0

    .line 773
    :goto_0
    return v0

    :cond_0
    const/high16 v0, -0x80000000

    goto :goto_0
.end method

.method protected getVisibleVirtualViews(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 778
    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/meizu/common/datetimepicker/date/MonthView$MonthViewTouchHelper;->this$0:Lcom/meizu/common/datetimepicker/date/MonthView;

    iget v1, v1, Lcom/meizu/common/datetimepicker/date/MonthView;->mNumCells:I

    if-gt v0, v1, :cond_0

    .line 779
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 778
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 781
    :cond_0
    return-void
.end method

.method protected onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .locals 1

    .prologue
    .line 806
    packed-switch p2, :pswitch_data_0

    .line 812
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 808
    :pswitch_0
    iget-object v0, p0, Lcom/meizu/common/datetimepicker/date/MonthView$MonthViewTouchHelper;->this$0:Lcom/meizu/common/datetimepicker/date/MonthView;

    invoke-static {v0, p1}, Lcom/meizu/common/datetimepicker/date/MonthView;->access$000(Lcom/meizu/common/datetimepicker/date/MonthView;I)V

    .line 809
    const/4 v0, 0x1

    goto :goto_0

    .line 806
    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
    .end packed-switch
.end method

.method protected onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 785
    invoke-virtual {p0, p1}, Lcom/meizu/common/datetimepicker/date/MonthView$MonthViewTouchHelper;->getItemDescription(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 786
    return-void
.end method

.method protected onPopulateNodeForVirtualView(ILandroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 1

    .prologue
    .line 791
    iget-object v0, p0, Lcom/meizu/common/datetimepicker/date/MonthView$MonthViewTouchHelper;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lcom/meizu/common/datetimepicker/date/MonthView$MonthViewTouchHelper;->getItemBounds(ILandroid/graphics/Rect;)V

    .line 793
    invoke-virtual {p0, p1}, Lcom/meizu/common/datetimepicker/date/MonthView$MonthViewTouchHelper;->getItemDescription(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 794
    iget-object v0, p0, Lcom/meizu/common/datetimepicker/date/MonthView$MonthViewTouchHelper;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 795
    const/16 v0, 0x10

    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 797
    iget-object v0, p0, Lcom/meizu/common/datetimepicker/date/MonthView$MonthViewTouchHelper;->this$0:Lcom/meizu/common/datetimepicker/date/MonthView;

    iget v0, v0, Lcom/meizu/common/datetimepicker/date/MonthView;->mSelectedDay:I

    if-ne p1, v0, :cond_0

    .line 798
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setSelected(Z)V

    .line 801
    :cond_0
    return-void
.end method

.method public setFocusedVirtualView(I)V
    .locals 3

    .prologue
    .line 753
    iget-object v0, p0, Lcom/meizu/common/datetimepicker/date/MonthView$MonthViewTouchHelper;->this$0:Lcom/meizu/common/datetimepicker/date/MonthView;

    invoke-virtual {p0, v0}, Lcom/meizu/common/datetimepicker/date/MonthView$MonthViewTouchHelper;->getAccessibilityNodeProvider(Landroid/view/View;)Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;

    move-result-object v0

    const/16 v1, 0x40

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;->performAction(IILandroid/os/Bundle;)Z

    .line 755
    return-void
.end method
