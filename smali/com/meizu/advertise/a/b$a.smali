.class public Lcom/meizu/advertise/a/b$a;
.super Lcom/meizu/advertise/a/c$a;
.source "SourceFile"

# interfaces
.implements Lcom/meizu/advertise/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/advertise/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/meizu/advertise/a/c$a;-><init>(Ljava/lang/Object;)V

    .line 11
    return-void
.end method
