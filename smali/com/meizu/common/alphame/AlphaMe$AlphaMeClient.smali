.class Lcom/meizu/common/alphame/AlphaMe$AlphaMeClient;
.super Lcom/meizu/common/alphame/AlphaMeClientNative;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/alphame/AlphaMe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlphaMeClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/alphame/AlphaMe;


# direct methods
.method private constructor <init>(Lcom/meizu/common/alphame/AlphaMe;)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lcom/meizu/common/alphame/AlphaMe$AlphaMeClient;->this$0:Lcom/meizu/common/alphame/AlphaMe;

    invoke-direct {p0}, Lcom/meizu/common/alphame/AlphaMeClientNative;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/common/alphame/AlphaMe;Lcom/meizu/common/alphame/AlphaMe$1;)V
    .locals 0

    .prologue
    .line 217
    invoke-direct {p0, p1}, Lcom/meizu/common/alphame/AlphaMe$AlphaMeClient;-><init>(Lcom/meizu/common/alphame/AlphaMe;)V

    return-void
.end method


# virtual methods
.method public onReceiver(Lcom/meizu/common/alphame/Args;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 235
    invoke-virtual {p1}, Lcom/meizu/common/alphame/Args;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 236
    const-string v0, "AlphaMe"

    const-string v1, "onReceiver return empty value"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    invoke-virtual {p1}, Lcom/meizu/common/alphame/Args;->getObjects()[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/String;

    .line 241
    invoke-virtual {p1}, Lcom/meizu/common/alphame/Args;->getObjects()[Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v2, v1, v2

    .line 242
    invoke-virtual {p1}, Lcom/meizu/common/alphame/Args;->getObjects()[Ljava/lang/Object;

    move-result-object v1

    const/4 v3, 0x2

    aget-object v1, v1, v3

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 243
    iget-object v3, p0, Lcom/meizu/common/alphame/AlphaMe$AlphaMeClient;->this$0:Lcom/meizu/common/alphame/AlphaMe;

    invoke-static {v3, v1}, Lcom/meizu/common/alphame/AlphaMe;->access$1200(Lcom/meizu/common/alphame/AlphaMe;I)Lcom/meizu/common/alphame/AlphaMe$ActionReceiver;

    move-result-object v1

    .line 244
    if-eqz v1, :cond_0

    .line 245
    invoke-virtual {v1, v0, v2}, Lcom/meizu/common/alphame/AlphaMe$ActionReceiver;->onReceiver(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onResult(Lcom/meizu/common/alphame/Args;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 220
    invoke-virtual {p1}, Lcom/meizu/common/alphame/Args;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 221
    const-string v0, "AlphaMe"

    const-string v1, "onResult return empty value"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    invoke-virtual {p1}, Lcom/meizu/common/alphame/Args;->getObjects()[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    .line 225
    invoke-virtual {p1}, Lcom/meizu/common/alphame/Args;->getObjects()[Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 226
    iget-object v2, p0, Lcom/meizu/common/alphame/AlphaMe$AlphaMeClient;->this$0:Lcom/meizu/common/alphame/AlphaMe;

    invoke-static {v2, v0}, Lcom/meizu/common/alphame/AlphaMe;->access$1000(Lcom/meizu/common/alphame/AlphaMe;I)Lcom/meizu/common/alphame/AlphaMe$ResultReceiver;

    move-result-object v2

    .line 227
    if-eqz v2, :cond_0

    .line 228
    invoke-virtual {v2, v1}, Lcom/meizu/common/alphame/AlphaMe$ResultReceiver;->onResult(Ljava/lang/Object;)V

    .line 229
    iget-object v1, p0, Lcom/meizu/common/alphame/AlphaMe$AlphaMeClient;->this$0:Lcom/meizu/common/alphame/AlphaMe;

    invoke-static {v1, v0}, Lcom/meizu/common/alphame/AlphaMe;->access$1100(Lcom/meizu/common/alphame/AlphaMe;I)V

    goto :goto_0
.end method
