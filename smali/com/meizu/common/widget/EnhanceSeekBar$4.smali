.class Lcom/meizu/common/widget/EnhanceSeekBar$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/EnhanceSeekBar;->startAuraHideAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/EnhanceSeekBar;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/EnhanceSeekBar;)V
    .locals 0

    .prologue
    .line 1123
    iput-object p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar$4;->this$0:Lcom/meizu/common/widget/EnhanceSeekBar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 1126
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 1127
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar$4;->this$0:Lcom/meizu/common/widget/EnhanceSeekBar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/meizu/common/widget/EnhanceSeekBar;->access$402(Lcom/meizu/common/widget/EnhanceSeekBar;Z)Z

    .line 1128
    return-void
.end method
