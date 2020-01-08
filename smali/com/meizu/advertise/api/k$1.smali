.class Lcom/meizu/advertise/api/k$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/advertise/api/k;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/meizu/advertise/api/k;


# direct methods
.method constructor <init>(Lcom/meizu/advertise/api/k;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/meizu/advertise/api/k$1;->a:Lcom/meizu/advertise/api/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 47
    iget-object v0, p0, Lcom/meizu/advertise/api/k$1;->a:Lcom/meizu/advertise/api/k;

    invoke-static {v0}, Lcom/meizu/advertise/api/k;->a(Lcom/meizu/advertise/api/k;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.WIFI_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 48
    return-void
.end method
