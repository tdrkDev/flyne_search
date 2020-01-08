.class public Lcom/meizu/commonwidget/avastar/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/commonwidget/avastar/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/commonwidget/avastar/a$a$a;
    }
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:[Lcom/meizu/commonwidget/avastar/a$a$a;

.field public d:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object v0, p0, Lcom/meizu/commonwidget/avastar/a$a;->b:Ljava/lang/String;

    .line 59
    iput-object v0, p0, Lcom/meizu/commonwidget/avastar/a$a;->c:[Lcom/meizu/commonwidget/avastar/a$a$a;

    .line 61
    iput-object v0, p0, Lcom/meizu/commonwidget/avastar/a$a;->d:[Ljava/lang/String;

    return-void
.end method
