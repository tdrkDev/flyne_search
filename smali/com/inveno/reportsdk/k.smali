.class public Lcom/inveno/reportsdk/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/inveno/reportsdk/ab;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public sendRequest(Ljava/lang/String;Ljava/util/Map;Lcom/inveno/reportsdk/q;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/inveno/reportsdk/q;",
            ")V"
        }
    .end annotation

    const-string v0, "DataSDK"

    const-string v1, "\u6ca1\u6709\u7f51\u7edc\u8bf7\u6c42\u5de5\u5177\uff0c\u8bf7\u901a\u8fc7XZSDKManager.setRequestTool(RequestTool)\u6307\u5b9a"

    invoke-static {v0, v1}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
