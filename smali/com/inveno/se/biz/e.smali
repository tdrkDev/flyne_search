.class Lcom/inveno/se/biz/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/inveno/se/callback/UidLisener;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/inveno/se/biz/UiConfigBiz;


# direct methods
.method constructor <init>(Lcom/inveno/se/biz/UiConfigBiz;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/biz/e;->b:Lcom/inveno/se/biz/UiConfigBiz;

    iput-object p2, p0, Lcom/inveno/se/biz/e;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uidFail()V
    .locals 1

    const-string v0, "get user id response is error"

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLogM(Ljava/lang/String;)V

    return-void
.end method

.method public uidSucces()V
    .locals 2

    iget-object v0, p0, Lcom/inveno/se/biz/e;->b:Lcom/inveno/se/biz/UiConfigBiz;

    iget-object v1, p0, Lcom/inveno/se/biz/e;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/inveno/se/biz/UiConfigBiz;->getListStyleConfig(Landroid/content/Context;)V

    return-void
.end method
