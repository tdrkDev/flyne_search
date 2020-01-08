.class public Lcom/meizu/cloud/pushsdk/base/reflect/ReflectConstructor;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mReflectClass:Lcom/meizu/cloud/pushsdk/base/reflect/ReflectClass;

.field private mTypes:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method varargs constructor <init>(Lcom/meizu/cloud/pushsdk/base/reflect/ReflectClass;[Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/meizu/cloud/pushsdk/base/reflect/ReflectClass;",
            "[",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, "ReflectConstructor"

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/base/reflect/ReflectConstructor;->TAG:Ljava/lang/String;

    .line 18
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/base/reflect/ReflectConstructor;->mReflectClass:Lcom/meizu/cloud/pushsdk/base/reflect/ReflectClass;

    .line 19
    iput-object p2, p0, Lcom/meizu/cloud/pushsdk/base/reflect/ReflectConstructor;->mTypes:[Ljava/lang/Class;

    .line 20
    return-void
.end method


# virtual methods
.method public varargs newInstance([Ljava/lang/Object;)Lcom/meizu/cloud/pushsdk/base/reflect/ReflectResult;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            ")",
            "Lcom/meizu/cloud/pushsdk/base/reflect/ReflectResult",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 23
    new-instance v1, Lcom/meizu/cloud/pushsdk/base/reflect/ReflectResult;

    invoke-direct {v1}, Lcom/meizu/cloud/pushsdk/base/reflect/ReflectResult;-><init>()V

    .line 25
    :try_start_0
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/base/reflect/ReflectConstructor;->mReflectClass:Lcom/meizu/cloud/pushsdk/base/reflect/ReflectClass;

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/base/reflect/ReflectClass;->getRealClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/base/reflect/ReflectConstructor;->mTypes:[Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 26
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 27
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v1, Lcom/meizu/cloud/pushsdk/base/reflect/ReflectResult;->value:Ljava/lang/Object;

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/meizu/cloud/pushsdk/base/reflect/ReflectResult;->ok:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :goto_0
    return-object v1

    .line 29
    :catch_0
    move-exception v0

    .line 30
    invoke-static {}, Lcom/meizu/cloud/pushsdk/base/Logger;->get()Lcom/meizu/cloud/pushsdk/base/Logger;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/cloud/pushsdk/base/reflect/ReflectConstructor;->TAG:Ljava/lang/String;

    const-string v4, "newInstance"

    invoke-virtual {v2, v3, v4, v0}, Lcom/meizu/cloud/pushsdk/base/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
