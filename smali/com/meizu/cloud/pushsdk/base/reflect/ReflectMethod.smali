.class public Lcom/meizu/cloud/pushsdk/base/reflect/ReflectMethod;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/cloud/pushsdk/base/reflect/ReflectMethod$NULL;
    }
.end annotation


# static fields
.field private static mCachedMethods:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private TAG:Ljava/lang/String;

.field private mMethodName:Ljava/lang/String;

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
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/meizu/cloud/pushsdk/base/reflect/ReflectMethod;->mCachedMethods:Ljava/util/HashMap;

    return-void
.end method

.method varargs constructor <init>(Lcom/meizu/cloud/pushsdk/base/reflect/ReflectClass;Ljava/lang/String;[Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/meizu/cloud/pushsdk/base/reflect/ReflectClass;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, "ReflectMethod"

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/base/reflect/ReflectMethod;->TAG:Ljava/lang/String;

    .line 22
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/base/reflect/ReflectMethod;->mReflectClass:Lcom/meizu/cloud/pushsdk/base/reflect/ReflectClass;

    .line 23
    iput-object p2, p0, Lcom/meizu/cloud/pushsdk/base/reflect/ReflectMethod;->mMethodName:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lcom/meizu/cloud/pushsdk/base/reflect/ReflectMethod;->mTypes:[Ljava/lang/Class;

    .line 25
    return-void
.end method

.method private getKey()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 66
    new-instance v1, Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/base/reflect/ReflectMethod;->mReflectClass:Lcom/meizu/cloud/pushsdk/base/reflect/ReflectClass;

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/base/reflect/ReflectClass;->getRealClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/base/reflect/ReflectMethod;->mMethodName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/base/reflect/ReflectMethod;->mTypes:[Ljava/lang/Class;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 69
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isSimilarSignature(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 44
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/meizu/cloud/pushsdk/base/reflect/ReflectMethod;->match([Ljava/lang/Class;[Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 44
    :goto_0
    return v0

    .line 45
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private match([Ljava/lang/Class;[Ljava/lang/Class;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 28
    array-length v0, p1

    array-length v2, p2

    if-ne v0, v2, :cond_2

    move v0, v1

    .line 29
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_3

    .line 30
    aget-object v2, p2, v0

    const-class v3, Lcom/meizu/cloud/pushsdk/base/reflect/ReflectMethod$NULL;

    if-ne v2, v3, :cond_1

    .line 29
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 32
    :cond_1
    aget-object v2, p1, v0

    invoke-direct {p0, v2}, Lcom/meizu/cloud/pushsdk/base/reflect/ReflectMethod;->wrapper(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    aget-object v3, p2, v0

    invoke-direct {p0, v3}, Lcom/meizu/cloud/pushsdk/base/reflect/ReflectMethod;->wrapper(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 38
    :cond_2
    :goto_1
    return v1

    .line 36
    :cond_3
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private similarMethod()Ljava/lang/reflect/Method;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 50
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/base/reflect/ReflectMethod;->mReflectClass:Lcom/meizu/cloud/pushsdk/base/reflect/ReflectClass;

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/base/reflect/ReflectClass;->getRealClass()Ljava/lang/Class;

    move-result-object v3

    .line 51
    invoke-virtual {v3}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    array-length v5, v4

    move v2, v1

    :goto_0
    if-ge v2, v5, :cond_2

    aget-object v0, v4, v2

    .line 52
    iget-object v6, p0, Lcom/meizu/cloud/pushsdk/base/reflect/ReflectMethod;->mMethodName:Ljava/lang/String;

    iget-object v7, p0, Lcom/meizu/cloud/pushsdk/base/reflect/ReflectMethod;->mTypes:[Ljava/lang/Class;

    invoke-direct {p0, v0, v6, v7}, Lcom/meizu/cloud/pushsdk/base/reflect/ReflectMethod;->isSimilarSignature(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 58
    :cond_0
    return-object v0

    .line 51
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 56
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    array-length v4, v2

    :goto_1
    if-ge v1, v4, :cond_3

    aget-object v0, v2, v1

    .line 57
    iget-object v5, p0, Lcom/meizu/cloud/pushsdk/base/reflect/ReflectMethod;->mMethodName:Ljava/lang/String;

    iget-object v6, p0, Lcom/meizu/cloud/pushsdk/base/reflect/ReflectMethod;->mTypes:[Ljava/lang/Class;

    invoke-direct {p0, v0, v5, v6}, Lcom/meizu/cloud/pushsdk/base/reflect/ReflectMethod;->isSimilarSignature(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 56
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 61
    :cond_3
    new-instance v0, Ljava/lang/NoSuchMethodException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No similar method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/base/reflect/ReflectMethod;->mMethodName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with params "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/base/reflect/ReflectMethod;->mTypes:[Ljava/lang/Class;

    .line 62
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " could be found on type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private wrapper(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 124
    if-nez p1, :cond_1

    .line 125
    const/4 p1, 0x0

    .line 147
    :cond_0
    :goto_0
    return-object p1

    .line 126
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, p1, :cond_2

    .line 128
    const-class p1, Ljava/lang/Boolean;

    goto :goto_0

    .line 129
    :cond_2
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, p1, :cond_3

    .line 130
    const-class p1, Ljava/lang/Integer;

    goto :goto_0

    .line 131
    :cond_3
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, p1, :cond_4

    .line 132
    const-class p1, Ljava/lang/Long;

    goto :goto_0

    .line 133
    :cond_4
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v0, p1, :cond_5

    .line 134
    const-class p1, Ljava/lang/Short;

    goto :goto_0

    .line 135
    :cond_5
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, p1, :cond_6

    .line 136
    const-class p1, Ljava/lang/Byte;

    goto :goto_0

    .line 137
    :cond_6
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, p1, :cond_7

    .line 138
    const-class p1, Ljava/lang/Double;

    goto :goto_0

    .line 139
    :cond_7
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, p1, :cond_8

    .line 140
    const-class p1, Ljava/lang/Float;

    goto :goto_0

    .line 141
    :cond_8
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v0, p1, :cond_9

    .line 142
    const-class p1, Ljava/lang/Character;

    goto :goto_0

    .line 143
    :cond_9
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v0, p1, :cond_0

    .line 144
    const-class p1, Ljava/lang/Void;

    goto :goto_0
.end method


# virtual methods
.method public varargs invoke(Ljava/lang/Object;[Ljava/lang/Object;)Lcom/meizu/cloud/pushsdk/base/reflect/ReflectResult;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/meizu/cloud/pushsdk/base/reflect/ReflectResult",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 82
    new-instance v1, Lcom/meizu/cloud/pushsdk/base/reflect/ReflectResult;

    invoke-direct {v1}, Lcom/meizu/cloud/pushsdk/base/reflect/ReflectResult;-><init>()V

    .line 84
    :try_start_0
    invoke-direct {p0}, Lcom/meizu/cloud/pushsdk/base/reflect/ReflectMethod;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 85
    sget-object v0, Lcom/meizu/cloud/pushsdk/base/reflect/ReflectMethod;->mCachedMethods:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    .line 86
    if-nez v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/base/reflect/ReflectMethod;->mTypes:[Ljava/lang/Class;

    array-length v0, v0

    array-length v3, p2

    if-ne v0, v3, :cond_1

    .line 88
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/base/reflect/ReflectMethod;->mReflectClass:Lcom/meizu/cloud/pushsdk/base/reflect/ReflectClass;

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/base/reflect/ReflectClass;->getRealClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v3, p0, Lcom/meizu/cloud/pushsdk/base/reflect/ReflectMethod;->mMethodName:Ljava/lang/String;

    iget-object v4, p0, Lcom/meizu/cloud/pushsdk/base/reflect/ReflectMethod;->mTypes:[Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 98
    :goto_0
    sget-object v3, Lcom/meizu/cloud/pushsdk/base/reflect/ReflectMethod;->mCachedMethods:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 101
    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v1, Lcom/meizu/cloud/pushsdk/base/reflect/ReflectResult;->value:Ljava/lang/Object;

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/meizu/cloud/pushsdk/base/reflect/ReflectResult;->ok:Z

    .line 106
    :goto_1
    return-object v1

    .line 90
    :cond_1
    array-length v0, p2

    if-lez v0, :cond_2

    .line 91
    array-length v0, p2

    new-array v0, v0, [Ljava/lang/Class;

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/base/reflect/ReflectMethod;->mTypes:[Ljava/lang/Class;

    .line 92
    const/4 v0, 0x0

    :goto_2
    array-length v3, p2

    if-ge v0, v3, :cond_2

    .line 93
    iget-object v3, p0, Lcom/meizu/cloud/pushsdk/base/reflect/ReflectMethod;->mTypes:[Ljava/lang/Class;

    aget-object v4, p2, v0

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v0

    .line 92
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 96
    :cond_2
    invoke-direct {p0}, Lcom/meizu/cloud/pushsdk/base/reflect/ReflectMethod;->similarMethod()Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 103
    :catch_0
    move-exception v0

    .line 104
    invoke-static {}, Lcom/meizu/cloud/pushsdk/base/Logger;->get()Lcom/meizu/cloud/pushsdk/base/Logger;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/cloud/pushsdk/base/reflect/ReflectMethod;->TAG:Ljava/lang/String;

    const-string v4, "invoke"

    invoke-virtual {v2, v3, v4, v0}, Lcom/meizu/cloud/pushsdk/base/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public varargs invokeStatic([Ljava/lang/Object;)Lcom/meizu/cloud/pushsdk/base/reflect/ReflectResult;
    .locals 1
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
    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/base/reflect/ReflectMethod;->mReflectClass:Lcom/meizu/cloud/pushsdk/base/reflect/ReflectClass;

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/base/reflect/ReflectClass;->getRealClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/meizu/cloud/pushsdk/base/reflect/ReflectMethod;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Lcom/meizu/cloud/pushsdk/base/reflect/ReflectResult;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 119
    :goto_0
    return-object v0

    .line 118
    :catch_0
    move-exception v0

    .line 119
    new-instance v0, Lcom/meizu/cloud/pushsdk/base/reflect/ReflectResult;

    invoke-direct {v0}, Lcom/meizu/cloud/pushsdk/base/reflect/ReflectResult;-><init>()V

    goto :goto_0
.end method
