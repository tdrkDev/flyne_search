.class Lcom/meizu/advertise/c/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/advertise/c/b;->a(Lcom/meizu/advertise/api/e;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/meizu/advertise/api/e;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/meizu/advertise/c/b;


# direct methods
.method constructor <init>(Lcom/meizu/advertise/c/b;Lcom/meizu/advertise/api/e;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/meizu/advertise/c/b$1;->c:Lcom/meizu/advertise/c/b;

    iput-object p2, p0, Lcom/meizu/advertise/c/b$1;->a:Lcom/meizu/advertise/api/e;

    iput-object p3, p0, Lcom/meizu/advertise/c/b$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/meizu/advertise/c/b$1;->a:Lcom/meizu/advertise/api/e;

    iget-object v1, p0, Lcom/meizu/advertise/c/b$1;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/meizu/advertise/api/e;->a(Ljava/lang/String;)V

    .line 73
    return-void
.end method
