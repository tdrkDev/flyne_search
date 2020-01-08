.class Lcom/inveno/reportsdk/c;
.super Lcom/inveno/reportsdk/t;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/inveno/reportsdk/t;-><init>()V

    return-void
.end method


# virtual methods
.method a()V
    .locals 3

    const-string v0, "DataSDK"

    const-string v1, "\u67e5\u8be2\u4e0a\u62a5\u5931\u8d25\u7f13\u5b58"

    invoke-static {v0, v1}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/inveno/reportsdk/e;->a()Lcom/inveno/reportsdk/e;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/inveno/reportsdk/e;->a(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "DataSDK"

    const-string v2, "\u91cd\u4f20\u6700\u8fd1\u5931\u8d25\u7684\u4e00\u6b21\u4e0a\u62a5"

    invoke-static {v1, v2}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/inveno/reportsdk/y;->a()Lcom/inveno/reportsdk/y;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/reportsdk/x;

    invoke-virtual {v1, v0}, Lcom/inveno/reportsdk/y;->a(Lcom/inveno/reportsdk/x;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "DataSDK"

    const-string v1, "\u4e0a\u62a5\u5931\u8d25\u7f13\u5b58\u4e3a\u7a7a"

    invoke-static {v0, v1}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
