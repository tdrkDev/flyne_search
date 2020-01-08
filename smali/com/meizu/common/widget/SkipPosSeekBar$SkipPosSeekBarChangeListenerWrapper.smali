.class Lcom/meizu/common/widget/SkipPosSeekBar$SkipPosSeekBarChangeListenerWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/SkipPosSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SkipPosSeekBarChangeListenerWrapper"
.end annotation


# instance fields
.field private listener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field final synthetic this$0:Lcom/meizu/common/widget/SkipPosSeekBar;


# direct methods
.method public constructor <init>(Lcom/meizu/common/widget/SkipPosSeekBar;Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/meizu/common/widget/SkipPosSeekBar$SkipPosSeekBarChangeListenerWrapper;->this$0:Lcom/meizu/common/widget/SkipPosSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p2, p0, Lcom/meizu/common/widget/SkipPosSeekBar$SkipPosSeekBarChangeListenerWrapper;->listener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 66
    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4

    .prologue
    .line 70
    iget-object v0, p0, Lcom/meizu/common/widget/SkipPosSeekBar$SkipPosSeekBarChangeListenerWrapper;->this$0:Lcom/meizu/common/widget/SkipPosSeekBar;

    iget v0, v0, Lcom/meizu/common/widget/SkipPosSeekBar;->rate:I

    if-eqz v0, :cond_2

    .line 71
    iget-object v1, p0, Lcom/meizu/common/widget/SkipPosSeekBar$SkipPosSeekBarChangeListenerWrapper;->this$0:Lcom/meizu/common/widget/SkipPosSeekBar;

    iget-object v0, p0, Lcom/meizu/common/widget/SkipPosSeekBar$SkipPosSeekBarChangeListenerWrapper;->this$0:Lcom/meizu/common/widget/SkipPosSeekBar;

    iget v0, v0, Lcom/meizu/common/widget/SkipPosSeekBar;->rate:I

    div-int v2, p2, v0

    iget-object v0, p0, Lcom/meizu/common/widget/SkipPosSeekBar$SkipPosSeekBarChangeListenerWrapper;->this$0:Lcom/meizu/common/widget/SkipPosSeekBar;

    iget v0, v0, Lcom/meizu/common/widget/SkipPosSeekBar;->rate:I

    rem-int v0, p2, v0

    iget-object v3, p0, Lcom/meizu/common/widget/SkipPosSeekBar$SkipPosSeekBarChangeListenerWrapper;->this$0:Lcom/meizu/common/widget/SkipPosSeekBar;

    iget v3, v3, Lcom/meizu/common/widget/SkipPosSeekBar;->rate:I

    div-int/lit8 v3, v3, 0x2

    if-le v0, v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v2

    iput v0, v1, Lcom/meizu/common/widget/SkipPosSeekBar;->realProgress:I

    .line 76
    :goto_1
    iget-object v0, p0, Lcom/meizu/common/widget/SkipPosSeekBar$SkipPosSeekBarChangeListenerWrapper;->listener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/meizu/common/widget/SkipPosSeekBar$SkipPosSeekBarChangeListenerWrapper;->listener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 79
    :cond_0
    return-void

    .line 71
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 73
    :cond_2
    iget-object v0, p0, Lcom/meizu/common/widget/SkipPosSeekBar$SkipPosSeekBarChangeListenerWrapper;->this$0:Lcom/meizu/common/widget/SkipPosSeekBar;

    iput p2, v0, Lcom/meizu/common/widget/SkipPosSeekBar;->realProgress:I

    goto :goto_1
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/meizu/common/widget/SkipPosSeekBar$SkipPosSeekBarChangeListenerWrapper;->listener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/meizu/common/widget/SkipPosSeekBar$SkipPosSeekBarChangeListenerWrapper;->listener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-interface {v0, p1}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    .line 86
    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3

    .prologue
    .line 90
    iget-object v0, p0, Lcom/meizu/common/widget/SkipPosSeekBar$SkipPosSeekBarChangeListenerWrapper;->this$0:Lcom/meizu/common/widget/SkipPosSeekBar;

    iget v0, v0, Lcom/meizu/common/widget/SkipPosSeekBar;->rate:I

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/meizu/common/widget/SkipPosSeekBar$SkipPosSeekBarChangeListenerWrapper;->this$0:Lcom/meizu/common/widget/SkipPosSeekBar;

    invoke-virtual {v0}, Lcom/meizu/common/widget/SkipPosSeekBar;->getProgress()I

    move-result v1

    .line 92
    iget-object v0, p0, Lcom/meizu/common/widget/SkipPosSeekBar$SkipPosSeekBarChangeListenerWrapper;->this$0:Lcom/meizu/common/widget/SkipPosSeekBar;

    iget v0, v0, Lcom/meizu/common/widget/SkipPosSeekBar;->rate:I

    rem-int v0, v1, v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/meizu/common/widget/SkipPosSeekBar$SkipPosSeekBarChangeListenerWrapper;->this$0:Lcom/meizu/common/widget/SkipPosSeekBar;

    iget v0, v0, Lcom/meizu/common/widget/SkipPosSeekBar;->rate:I

    rem-int v0, v1, v0

    iget-object v2, p0, Lcom/meizu/common/widget/SkipPosSeekBar$SkipPosSeekBarChangeListenerWrapper;->this$0:Lcom/meizu/common/widget/SkipPosSeekBar;

    iget v2, v2, Lcom/meizu/common/widget/SkipPosSeekBar;->rate:I

    div-int/lit8 v2, v2, 0x2

    if-le v0, v2, :cond_2

    iget-object v0, p0, Lcom/meizu/common/widget/SkipPosSeekBar$SkipPosSeekBarChangeListenerWrapper;->this$0:Lcom/meizu/common/widget/SkipPosSeekBar;

    iget v0, v0, Lcom/meizu/common/widget/SkipPosSeekBar;->rate:I

    iget-object v2, p0, Lcom/meizu/common/widget/SkipPosSeekBar$SkipPosSeekBarChangeListenerWrapper;->this$0:Lcom/meizu/common/widget/SkipPosSeekBar;

    iget v2, v2, Lcom/meizu/common/widget/SkipPosSeekBar;->rate:I

    rem-int v2, v1, v2

    sub-int/2addr v0, v2

    :goto_0
    add-int/2addr v0, v1

    .line 94
    iget-object v1, p0, Lcom/meizu/common/widget/SkipPosSeekBar$SkipPosSeekBarChangeListenerWrapper;->this$0:Lcom/meizu/common/widget/SkipPosSeekBar;

    iget-object v2, p0, Lcom/meizu/common/widget/SkipPosSeekBar$SkipPosSeekBarChangeListenerWrapper;->this$0:Lcom/meizu/common/widget/SkipPosSeekBar;

    iget v2, v2, Lcom/meizu/common/widget/SkipPosSeekBar;->rate:I

    div-int/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/meizu/common/widget/SkipPosSeekBar;->setSkipProgress(I)V

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/SkipPosSeekBar$SkipPosSeekBarChangeListenerWrapper;->listener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/meizu/common/widget/SkipPosSeekBar$SkipPosSeekBarChangeListenerWrapper;->listener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-interface {v0, p1}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    .line 101
    :cond_1
    return-void

    .line 93
    :cond_2
    neg-int v0, v1

    iget-object v2, p0, Lcom/meizu/common/widget/SkipPosSeekBar$SkipPosSeekBarChangeListenerWrapper;->this$0:Lcom/meizu/common/widget/SkipPosSeekBar;

    iget v2, v2, Lcom/meizu/common/widget/SkipPosSeekBar;->rate:I

    rem-int/2addr v0, v2

    goto :goto_0
.end method
