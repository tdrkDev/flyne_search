.class Lcom/meizu/common/widget/AuraSeekBar$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/AuraSeekBar;->startAuraHideAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/AuraSeekBar;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/AuraSeekBar;)V
    .locals 0

    .prologue
    .line 262
    iput-object p1, p0, Lcom/meizu/common/widget/AuraSeekBar$3;->this$0:Lcom/meizu/common/widget/AuraSeekBar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 265
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 266
    iget-object v0, p0, Lcom/meizu/common/widget/AuraSeekBar$3;->this$0:Lcom/meizu/common/widget/AuraSeekBar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/meizu/common/widget/AuraSeekBar;->access$302(Lcom/meizu/common/widget/AuraSeekBar;Z)Z

    .line 267
    return-void
.end method
