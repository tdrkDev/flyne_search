.class Lcom/inveno/transcode/a/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/inveno/transcode/a/h;


# direct methods
.method constructor <init>(Lcom/inveno/transcode/a/h;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/inveno/transcode/a/i;->a:Lcom/inveno/transcode/a/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/inveno/transcode/a/i;->a:Lcom/inveno/transcode/a/h;

    invoke-static {v0}, Lcom/inveno/transcode/a/h;->a(Lcom/inveno/transcode/a/h;)V

    .line 45
    return-void
.end method
