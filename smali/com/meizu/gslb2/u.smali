.class Lcom/meizu/gslb2/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 14
    invoke-static {p1}, Lcom/meizu/flyme/internet/async/a;->a(Ljava/lang/Runnable;)V

    .line 15
    return-void
.end method
