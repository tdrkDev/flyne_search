.class public Lcom/inveno/basics/main/ui/ListFlowView$ConnectionChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inveno/basics/main/ui/ListFlowView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConnectionChangeReceiver"
.end annotation


# instance fields
.field final synthetic a:Lcom/inveno/basics/main/ui/ListFlowView;


# direct methods
.method public constructor <init>(Lcom/inveno/basics/main/ui/ListFlowView;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lcom/inveno/basics/main/ui/ListFlowView$ConnectionChangeReceiver;->a:Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/16 v4, 0xc

    .line 175
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 176
    const-string v1, "android.bluetooth.device.action.ACL_CONNECTED"

    if-ne v1, v0, :cond_0

    .line 177
    const-string v0, "\u7f51\u7edc\u8fde\u63a5\u6539\u53d8:\u84dd\u7259\u8fde\u63a5\u6210\u529f"

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLogA(Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$ConnectionChangeReceiver;->a:Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v0}, Lcom/inveno/basics/main/ui/ListFlowView;->a(Lcom/inveno/basics/main/ui/ListFlowView;)Lcom/inveno/basics/main/ui/ListFlowView$a;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v4, v2, v3}, Lcom/inveno/basics/main/ui/ListFlowView$a;->sendEmptyMessageDelayed(IJ)Z

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$ConnectionChangeReceiver;->a:Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v0}, Lcom/inveno/basics/main/ui/ListFlowView;->a(Lcom/inveno/basics/main/ui/ListFlowView;)Lcom/inveno/basics/main/ui/ListFlowView$a;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/inveno/basics/main/ui/ListFlowView$a;->sendEmptyMessage(I)Z

    .line 181
    return-void
.end method
