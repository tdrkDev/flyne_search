.class Lcom/meizu/common/util/ReflectUtils$DefaultReflectClass;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meizu/common/util/ReflectUtils$IReflectClass;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/util/ReflectUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultReflectClass"
.end annotation


# instance fields
.field private mClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private mConstructors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/meizu/common/util/ReflectUtils$IReflectConstructor;",
            ">;"
        }
    .end annotation
.end field

.field private mFields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/meizu/common/util/ReflectUtils$IReflectField;",
            ">;"
        }
    .end annotation
.end field

.field private mMethods:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/meizu/common/util/ReflectUtils$IReflectMethod;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/util/ReflectUtils$DefaultReflectClass;->mConstructors:Ljava/util/Map;

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/util/ReflectUtils$DefaultReflectClass;->mMethods:Ljava/util/Map;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/util/ReflectUtils$DefaultReflectClass;->mFields:Ljava/util/Map;

    .line 85
    iput-object p1, p0, Lcom/meizu/common/util/ReflectUtils$DefaultReflectClass;->mClass:Ljava/lang/Class;

    .line 86
    return-void
.end method


# virtual methods
.method public clazz()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lcom/meizu/common/util/ReflectUtils$DefaultReflectClass;->mClass:Ljava/lang/Class;

    return-object v0
.end method

.method public varargs constructor([Ljava/lang/Class;)Lcom/meizu/common/util/ReflectUtils$IReflectConstructor;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 97
    array-length v2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p1, v0

    .line 98
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 101
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 102
    iget-object v0, p0, Lcom/meizu/common/util/ReflectUtils$DefaultReflectClass;->mConstructors:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/util/ReflectUtils$IReflectConstructor;

    .line 103
    if-nez v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/meizu/common/util/ReflectUtils$DefaultReflectClass;->mClass:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 105
    new-instance v0, Lcom/meizu/common/util/ReflectUtils$DefaultReflectConstructor;

    invoke-direct {v0, v2}, Lcom/meizu/common/util/ReflectUtils$DefaultReflectConstructor;-><init>(Ljava/lang/reflect/Constructor;)V

    .line 106
    iget-object v2, p0, Lcom/meizu/common/util/ReflectUtils$DefaultReflectClass;->mConstructors:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    :cond_1
    return-object v0
.end method

.method public field(Ljava/lang/String;)Lcom/meizu/common/util/ReflectUtils$IReflectField;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lcom/meizu/common/util/ReflectUtils$DefaultReflectClass;->mFields:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/util/ReflectUtils$IReflectField;

    .line 142
    if-nez v0, :cond_1

    .line 143
    const/4 v0, 0x0

    .line 144
    iget-object v1, p0, Lcom/meizu/common/util/ReflectUtils$DefaultReflectClass;->mClass:Ljava/lang/Class;

    :goto_0
    if-eqz v1, :cond_2

    .line 146
    :try_start_0
    invoke-virtual {v1, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    .line 151
    :goto_1
    if-nez v1, :cond_0

    .line 152
    new-instance v0, Ljava/lang/NoSuchFieldException;

    invoke-direct {v0, p1}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :catch_0
    move-exception v2

    .line 144
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    .line 154
    :cond_0
    new-instance v0, Lcom/meizu/common/util/ReflectUtils$DefaultReflectField;

    invoke-direct {v0, v1}, Lcom/meizu/common/util/ReflectUtils$DefaultReflectField;-><init>(Ljava/lang/reflect/Field;)V

    .line 155
    iget-object v1, p0, Lcom/meizu/common/util/ReflectUtils$DefaultReflectClass;->mFields:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    :cond_1
    return-object v0

    :cond_2
    move-object v1, v0

    goto :goto_1
.end method

.method public varargs method(Ljava/lang/String;[Ljava/lang/Class;)Lcom/meizu/common/util/ReflectUtils$IReflectMethod;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    if-eqz p2, :cond_0

    array-length v0, p2

    if-lez v0, :cond_0

    .line 115
    array-length v2, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p2, v0

    .line 116
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 119
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 120
    iget-object v0, p0, Lcom/meizu/common/util/ReflectUtils$DefaultReflectClass;->mMethods:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/util/ReflectUtils$IReflectMethod;

    .line 121
    if-nez v0, :cond_2

    .line 122
    const/4 v0, 0x0

    .line 123
    iget-object v1, p0, Lcom/meizu/common/util/ReflectUtils$DefaultReflectClass;->mClass:Ljava/lang/Class;

    :goto_1
    if-eqz v1, :cond_3

    .line 125
    :try_start_0
    invoke-virtual {v1, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    .line 130
    :goto_2
    if-nez v1, :cond_1

    .line 131
    new-instance v0, Ljava/lang/NoSuchMethodException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :catch_0
    move-exception v3

    .line 123
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_1

    .line 133
    :cond_1
    new-instance v0, Lcom/meizu/common/util/ReflectUtils$DefaultReflectMethod;

    invoke-direct {v0, v1}, Lcom/meizu/common/util/ReflectUtils$DefaultReflectMethod;-><init>(Ljava/lang/reflect/Method;)V

    .line 134
    iget-object v1, p0, Lcom/meizu/common/util/ReflectUtils$DefaultReflectClass;->mMethods:Ljava/util/Map;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    :cond_2
    return-object v0

    :cond_3
    move-object v1, v0

    goto :goto_2
.end method
