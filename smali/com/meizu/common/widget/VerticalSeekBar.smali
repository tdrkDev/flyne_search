.class public Lcom/meizu/common/widget/VerticalSeekBar;
.super Lcom/meizu/common/widget/AbsSeekBar;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/VerticalSeekBar$OnVerSeekBarChangeListener;
    }
.end annotation


# instance fields
.field private mOnSeekBarChangeListener:Lcom/meizu/common/widget/VerticalSeekBar$OnVerSeekBarChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/VerticalSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 81
    sget v0, Lcom/meizu/common/R$attr;->MeizuCommon_VerticalSeekBarStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/VerticalSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 85
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/common/widget/AbsSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 86
    sget-object v0, Lcom/meizu/common/R$styleable;->SeekBar:[I

    .line 87
    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 88
    sget v1, Lcom/meizu/common/R$styleable;->SeekBar_mcBreakPoint:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/VerticalSeekBar;->setBreakPoint(I)V

    .line 89
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 91
    invoke-virtual {p0, v3}, Lcom/meizu/common/widget/VerticalSeekBar;->setIsVertical(Z)V

    .line 92
    invoke-virtual {p0, v3}, Lcom/meizu/common/widget/VerticalSeekBar;->setTouchMode(I)V

    .line 93
    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .prologue
    .line 134
    invoke-super {p0, p1}, Lcom/meizu/common/widget/AbsSeekBar;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 135
    const-class v0, Lcom/meizu/common/widget/VerticalSeekBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 136
    return-void
.end method

.method onProgressRefresh(FZ)V
    .locals 2

    .prologue
    .line 97
    invoke-super {p0, p1, p2}, Lcom/meizu/common/widget/AbsSeekBar;->onProgressRefresh(FZ)V

    .line 99
    iget-object v0, p0, Lcom/meizu/common/widget/VerticalSeekBar;->mOnSeekBarChangeListener:Lcom/meizu/common/widget/VerticalSeekBar$OnVerSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/meizu/common/widget/VerticalSeekBar;->mOnSeekBarChangeListener:Lcom/meizu/common/widget/VerticalSeekBar$OnVerSeekBarChangeListener;

    invoke-virtual {p0}, Lcom/meizu/common/widget/VerticalSeekBar;->getProgress()I

    move-result v1

    invoke-interface {v0, p0, v1, p2}, Lcom/meizu/common/widget/VerticalSeekBar$OnVerSeekBarChangeListener;->onProgressChanged(Lcom/meizu/common/widget/VerticalSeekBar;IZ)V

    .line 102
    :cond_0
    return-void
.end method

.method onStartTrackingTouch()V
    .locals 1

    .prologue
    .line 118
    invoke-super {p0}, Lcom/meizu/common/widget/AbsSeekBar;->onStartTrackingTouch()V

    .line 119
    iget-object v0, p0, Lcom/meizu/common/widget/VerticalSeekBar;->mOnSeekBarChangeListener:Lcom/meizu/common/widget/VerticalSeekBar$OnVerSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/meizu/common/widget/VerticalSeekBar;->mOnSeekBarChangeListener:Lcom/meizu/common/widget/VerticalSeekBar$OnVerSeekBarChangeListener;

    invoke-interface {v0, p0}, Lcom/meizu/common/widget/VerticalSeekBar$OnVerSeekBarChangeListener;->onStartTrackingTouch(Lcom/meizu/common/widget/VerticalSeekBar;)V

    .line 122
    :cond_0
    return-void
.end method

.method onStopTrackingTouch()V
    .locals 1

    .prologue
    .line 126
    invoke-super {p0}, Lcom/meizu/common/widget/AbsSeekBar;->onStopTrackingTouch()V

    .line 127
    iget-object v0, p0, Lcom/meizu/common/widget/VerticalSeekBar;->mOnSeekBarChangeListener:Lcom/meizu/common/widget/VerticalSeekBar$OnVerSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/meizu/common/widget/VerticalSeekBar;->mOnSeekBarChangeListener:Lcom/meizu/common/widget/VerticalSeekBar$OnVerSeekBarChangeListener;

    invoke-interface {v0, p0}, Lcom/meizu/common/widget/VerticalSeekBar$OnVerSeekBarChangeListener;->onStopTrackingTouch(Lcom/meizu/common/widget/VerticalSeekBar;)V

    .line 130
    :cond_0
    return-void
.end method

.method public setOnSeekBarChangeListener(Lcom/meizu/common/widget/VerticalSeekBar$OnVerSeekBarChangeListener;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/meizu/common/widget/VerticalSeekBar;->mOnSeekBarChangeListener:Lcom/meizu/common/widget/VerticalSeekBar$OnVerSeekBarChangeListener;

    .line 114
    return-void
.end method
