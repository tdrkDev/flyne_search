.class public Lcom/meizu/common/widget/LabelLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/LabelLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public gravity:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .prologue
    .line 691
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 684
    const/4 v0, -0x1

    iput v0, p0, Lcom/meizu/common/widget/LabelLayout$LayoutParams;->gravity:I

    .line 692
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 687
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 684
    const/4 v0, -0x1

    iput v0, p0, Lcom/meizu/common/widget/LabelLayout$LayoutParams;->gravity:I

    .line 688
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 695
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 684
    const/4 v0, -0x1

    iput v0, p0, Lcom/meizu/common/widget/LabelLayout$LayoutParams;->gravity:I

    .line 696
    return-void
.end method
