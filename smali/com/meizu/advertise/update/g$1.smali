.class Lcom/meizu/advertise/update/g$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/advertise/update/g;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/meizu/advertise/update/g;


# direct methods
.method constructor <init>(Lcom/meizu/advertise/update/g;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/meizu/advertise/update/g$1;->a:Lcom/meizu/advertise/update/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/meizu/advertise/update/g$1;->a:Lcom/meizu/advertise/update/g;

    invoke-static {v0}, Lcom/meizu/advertise/update/g;->a(Lcom/meizu/advertise/update/g;)Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->onCreate()V

    .line 193
    return-void
.end method
