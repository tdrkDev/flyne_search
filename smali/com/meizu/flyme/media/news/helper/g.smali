.class public final Lcom/meizu/flyme/media/news/helper/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/meizu/flyme/media/news/helper/g;


# instance fields
.field private final b:Ljava/util/Random;

.field private final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-static {v0}, Lcom/meizu/flyme/media/news/helper/g;->a(Ljava/util/Random;)Lcom/meizu/flyme/media/news/helper/g;

    move-result-object v0

    sput-object v0, Lcom/meizu/flyme/media/news/helper/g;->a:Lcom/meizu/flyme/media/news/helper/g;

    return-void
.end method

.method private constructor <init>(Ljava/util/Random;)V
    .locals 1
    .param p1    # Ljava/util/Random;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/meizu/flyme/media/news/helper/g;->b:Ljava/util/Random;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/flyme/media/news/helper/g;->c:Ljava/util/ArrayList;

    .line 20
    return-void
.end method

.method public static a(Ljava/util/Random;)Lcom/meizu/flyme/media/news/helper/g;
    .locals 1
    .param p0    # Ljava/util/Random;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 59
    new-instance v0, Lcom/meizu/flyme/media/news/helper/g;

    invoke-direct {v0, p0}, Lcom/meizu/flyme/media/news/helper/g;-><init>(Ljava/util/Random;)V

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/meizu/flyme/media/news/helper/g;->b:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    return v0
.end method
