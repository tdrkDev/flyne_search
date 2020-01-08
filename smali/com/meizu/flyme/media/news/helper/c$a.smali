.class final Lcom/meizu/flyme/media/news/helper/c$a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/flyme/media/news/helper/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/content/SharedPreferences$Editor;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 193
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/flyme/media/news/helper/c$1;)V
    .locals 0

    .prologue
    .line 193
    invoke-direct {p0}, Lcom/meizu/flyme/media/news/helper/c$a;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Landroid/content/SharedPreferences$Editor;)Ljava/lang/Void;
    .locals 3

    .prologue
    .line 196
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 197
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 196
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 199
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 193
    check-cast p1, [Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p0, p1}, Lcom/meizu/flyme/media/news/helper/c$a;->a([Landroid/content/SharedPreferences$Editor;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
