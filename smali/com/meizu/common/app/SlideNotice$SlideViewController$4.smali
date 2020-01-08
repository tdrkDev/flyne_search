.class Lcom/meizu/common/app/SlideNotice$SlideViewController$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/app/SlideNotice$SlideViewController;->setWindowInsetsListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/common/app/SlideNotice$SlideViewController;


# direct methods
.method constructor <init>(Lcom/meizu/common/app/SlideNotice$SlideViewController;)V
    .locals 0

    .prologue
    .line 1140
    iput-object p1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController$4;->this$1:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1145
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController$4;->this$1:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    iget-object v0, v0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->this$0:Lcom/meizu/common/app/SlideNotice;

    invoke-static {v0}, Lcom/meizu/common/app/SlideNotice;->access$200(Lcom/meizu/common/app/SlideNotice;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/common/util/NavigationBarUtils;->getBottomNavigationBarWidth(Landroid/content/Context;)I

    move-result v0

    .line 1147
    iget-object v1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController$4;->this$1:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    iget-object v1, v1, Lcom/meizu/common/app/SlideNotice$SlideViewController;->this$0:Lcom/meizu/common/app/SlideNotice;

    invoke-static {v1}, Lcom/meizu/common/app/SlideNotice;->access$1200(Lcom/meizu/common/app/SlideNotice;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController$4;->this$1:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    iget v1, v1, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mGravity:I

    const/16 v2, 0x50

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController$4;->this$1:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    iget v1, v1, Lcom/meizu/common/app/SlideNotice$SlideViewController;->mYOffset:I

    if-nez v1, :cond_1

    .line 1149
    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 1151
    if-lez v0, :cond_2

    .line 1152
    iget-object v2, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController$4;->this$1:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    iget-object v2, v2, Lcom/meizu/common/app/SlideNotice$SlideViewController;->this$0:Lcom/meizu/common/app/SlideNotice;

    .line 1153
    invoke-static {v2}, Lcom/meizu/common/app/SlideNotice;->access$200(Lcom/meizu/common/app/SlideNotice;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/meizu/common/R$dimen;->mc_content_toast_content_margin_bottom_navigationBar:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v0, v2

    aput v0, v1, v4

    .line 1158
    :goto_0
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController$4;->this$1:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    invoke-static {v0, v1}, Lcom/meizu/common/app/SlideNotice$SlideViewController;->access$800(Lcom/meizu/common/app/SlideNotice$SlideViewController;[I)V

    .line 1159
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController$4;->this$1:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    iget-object v0, v0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->this$0:Lcom/meizu/common/app/SlideNotice;

    invoke-static {v0, v4}, Lcom/meizu/common/app/SlideNotice;->access$1202(Lcom/meizu/common/app/SlideNotice;Z)Z

    .line 1162
    :cond_1
    return-object p2

    .line 1155
    :cond_2
    iget-object v0, p0, Lcom/meizu/common/app/SlideNotice$SlideViewController$4;->this$1:Lcom/meizu/common/app/SlideNotice$SlideViewController;

    iget-object v0, v0, Lcom/meizu/common/app/SlideNotice$SlideViewController;->this$0:Lcom/meizu/common/app/SlideNotice;

    invoke-static {v0}, Lcom/meizu/common/app/SlideNotice;->access$200(Lcom/meizu/common/app/SlideNotice;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/meizu/common/R$dimen;->mc_content_toast_content_margin_bottom_default:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    aput v0, v1, v4

    goto :goto_0
.end method
