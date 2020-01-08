.class Lcom/meizu/advertise/api/AdView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/advertise/api/AdView;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/meizu/advertise/api/AdView;


# direct methods
.method constructor <init>(Lcom/meizu/advertise/api/AdView;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lcom/meizu/advertise/api/AdView$1;->a:Lcom/meizu/advertise/api/AdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/meizu/advertise/api/AdView$1;->a:Lcom/meizu/advertise/api/AdView;

    invoke-static {v0}, Lcom/meizu/advertise/api/AdView;->a(Lcom/meizu/advertise/api/AdView;)Lcom/meizu/advertise/api/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/meizu/advertise/api/AdView$1;->a:Lcom/meizu/advertise/api/AdView;

    invoke-static {v0}, Lcom/meizu/advertise/api/AdView;->a(Lcom/meizu/advertise/api/AdView;)Lcom/meizu/advertise/api/c;

    move-result-object v0

    const-string v1, "time out"

    invoke-interface {v0, v1}, Lcom/meizu/advertise/api/c;->a(Ljava/lang/String;)V

    .line 204
    :cond_0
    return-void
.end method
