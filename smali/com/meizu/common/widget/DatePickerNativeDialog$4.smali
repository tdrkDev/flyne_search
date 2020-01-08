.class Lcom/meizu/common/widget/DatePickerNativeDialog$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/DatePickerNativeDialog;->initView(Landroid/content/Context;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/DatePickerNativeDialog;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/DatePickerNativeDialog;)V
    .locals 0

    .prologue
    .line 373
    iput-object p1, p0, Lcom/meizu/common/widget/DatePickerNativeDialog$4;->this$0:Lcom/meizu/common/widget/DatePickerNativeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    .prologue
    .line 422
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 7

    .prologue
    .line 377
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog$4;->this$0:Lcom/meizu/common/widget/DatePickerNativeDialog;

    invoke-static {v0}, Lcom/meizu/common/widget/DatePickerNativeDialog;->access$000(Lcom/meizu/common/widget/DatePickerNativeDialog;)Lcom/meizu/common/widget/DatePickerNativeDialog$MonthAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/common/widget/DatePickerNativeDialog$MonthAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_1

    .line 404
    :cond_0
    :goto_0
    return-void

    .line 381
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog$4;->this$0:Lcom/meizu/common/widget/DatePickerNativeDialog;

    invoke-static {v0}, Lcom/meizu/common/widget/DatePickerNativeDialog;->access$200(Lcom/meizu/common/widget/DatePickerNativeDialog;)[I

    move-result-object v0

    aget v0, v0, p1

    iget-object v1, p0, Lcom/meizu/common/widget/DatePickerNativeDialog$4;->this$0:Lcom/meizu/common/widget/DatePickerNativeDialog;

    invoke-static {v1}, Lcom/meizu/common/widget/DatePickerNativeDialog;->access$200(Lcom/meizu/common/widget/DatePickerNativeDialog;)[I

    move-result-object v1

    add-int/lit8 v2, p1, 0x1

    aget v1, v1, v2

    if-eq v0, v1, :cond_0

    .line 385
    iget-object v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog$4;->this$0:Lcom/meizu/common/widget/DatePickerNativeDialog;

    invoke-static {v0}, Lcom/meizu/common/widget/DatePickerNativeDialog;->access$200(Lcom/meizu/common/widget/DatePickerNativeDialog;)[I

    move-result-object v0

    aget v0, v0, p1

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p2

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/meizu/common/widget/DatePickerNativeDialog$4;->this$0:Lcom/meizu/common/widget/DatePickerNativeDialog;

    .line 387
    invoke-static {v1}, Lcom/meizu/common/widget/DatePickerNativeDialog;->access$200(Lcom/meizu/common/widget/DatePickerNativeDialog;)[I

    move-result-object v1

    add-int/lit8 v2, p1, 0x1

    aget v1, v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 390
    iget-object v1, p0, Lcom/meizu/common/widget/DatePickerNativeDialog$4;->this$0:Lcom/meizu/common/widget/DatePickerNativeDialog;

    invoke-static {v1}, Lcom/meizu/common/widget/DatePickerNativeDialog;->access$200(Lcom/meizu/common/widget/DatePickerNativeDialog;)[I

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/common/widget/DatePickerNativeDialog$4;->this$0:Lcom/meizu/common/widget/DatePickerNativeDialog;

    invoke-static {v2}, Lcom/meizu/common/widget/DatePickerNativeDialog;->access$300(Lcom/meizu/common/widget/DatePickerNativeDialog;)I

    move-result v2

    aget v1, v1, v2

    sub-int/2addr v0, v1

    .line 391
    if-eqz v0, :cond_0

    .line 396
    if-lez v0, :cond_2

    .line 397
    int-to-float v0, v0

    iget-object v1, p0, Lcom/meizu/common/widget/DatePickerNativeDialog$4;->this$0:Lcom/meizu/common/widget/DatePickerNativeDialog;

    invoke-static {v1}, Lcom/meizu/common/widget/DatePickerNativeDialog;->access$400(Lcom/meizu/common/widget/DatePickerNativeDialog;)F

    move-result v1

    iget-object v2, p0, Lcom/meizu/common/widget/DatePickerNativeDialog$4;->this$0:Lcom/meizu/common/widget/DatePickerNativeDialog;

    invoke-static {v2}, Lcom/meizu/common/widget/DatePickerNativeDialog;->access$500(Lcom/meizu/common/widget/DatePickerNativeDialog;)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 401
    :goto_1
    iget-object v1, p0, Lcom/meizu/common/widget/DatePickerNativeDialog$4;->this$0:Lcom/meizu/common/widget/DatePickerNativeDialog;

    invoke-static {v1}, Lcom/meizu/common/widget/DatePickerNativeDialog;->access$600(Lcom/meizu/common/widget/DatePickerNativeDialog;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 402
    iget-object v1, p0, Lcom/meizu/common/widget/DatePickerNativeDialog$4;->this$0:Lcom/meizu/common/widget/DatePickerNativeDialog;

    iget-object v2, p0, Lcom/meizu/common/widget/DatePickerNativeDialog$4;->this$0:Lcom/meizu/common/widget/DatePickerNativeDialog;

    invoke-static {v2}, Lcom/meizu/common/widget/DatePickerNativeDialog;->access$600(Lcom/meizu/common/widget/DatePickerNativeDialog;)Landroid/view/View;

    move-result-object v2

    int-to-float v3, v0

    iget-object v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog$4;->this$0:Lcom/meizu/common/widget/DatePickerNativeDialog;

    invoke-static {v0}, Lcom/meizu/common/widget/DatePickerNativeDialog;->access$700(Lcom/meizu/common/widget/DatePickerNativeDialog;)I

    move-result v0

    int-to-long v4, v0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/meizu/common/widget/DatePickerNativeDialog;->access$800(Lcom/meizu/common/widget/DatePickerNativeDialog;Landroid/view/View;FJZ)V

    goto :goto_0

    .line 399
    :cond_2
    int-to-float v0, v0

    iget-object v1, p0, Lcom/meizu/common/widget/DatePickerNativeDialog$4;->this$0:Lcom/meizu/common/widget/DatePickerNativeDialog;

    invoke-static {v1}, Lcom/meizu/common/widget/DatePickerNativeDialog;->access$400(Lcom/meizu/common/widget/DatePickerNativeDialog;)F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_1
.end method

.method public onPageSelected(I)V
    .locals 4

    .prologue
    .line 409
    iget-object v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog$4;->this$0:Lcom/meizu/common/widget/DatePickerNativeDialog;

    invoke-static {v0, p1}, Lcom/meizu/common/widget/DatePickerNativeDialog;->access$302(Lcom/meizu/common/widget/DatePickerNativeDialog;I)I

    .line 410
    iget-object v0, p0, Lcom/meizu/common/widget/DatePickerNativeDialog$4;->this$0:Lcom/meizu/common/widget/DatePickerNativeDialog;

    invoke-static {v0}, Lcom/meizu/common/widget/DatePickerNativeDialog;->access$1200(Lcom/meizu/common/widget/DatePickerNativeDialog;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    new-instance v1, Lcom/meizu/common/widget/DatePickerNativeDialog$4$1;

    invoke-direct {v1, p0}, Lcom/meizu/common/widget/DatePickerNativeDialog$4$1;-><init>(Lcom/meizu/common/widget/DatePickerNativeDialog$4;)V

    iget-object v2, p0, Lcom/meizu/common/widget/DatePickerNativeDialog$4;->this$0:Lcom/meizu/common/widget/DatePickerNativeDialog;

    .line 416
    invoke-static {v2}, Lcom/meizu/common/widget/DatePickerNativeDialog;->access$1100(Lcom/meizu/common/widget/DatePickerNativeDialog;)I

    move-result v2

    int-to-long v2, v2

    .line 410
    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/view/ViewPager;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 417
    return-void
.end method
