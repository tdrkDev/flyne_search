.class public Lcom/alibaba/fastjson/c/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/alibaba/fastjson/c/c;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/reflect/Method;

.field private final c:Ljava/lang/reflect/Field;

.field private final d:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final e:Ljava/lang/reflect/Type;

.field private final f:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Field;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/alibaba/fastjson/c/c;->a:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/alibaba/fastjson/c/c;->f:Ljava/lang/Class;

    .line 26
    iput-object p3, p0, Lcom/alibaba/fastjson/c/c;->d:Ljava/lang/Class;

    .line 27
    iput-object p4, p0, Lcom/alibaba/fastjson/c/c;->e:Ljava/lang/reflect/Type;

    .line 28
    iput-object p5, p0, Lcom/alibaba/fastjson/c/c;->b:Ljava/lang/reflect/Method;

    .line 29
    iput-object p6, p0, Lcom/alibaba/fastjson/c/c;->c:Ljava/lang/reflect/Field;

    .line 31
    if-eqz p5, :cond_0

    .line 32
    invoke-virtual {p5, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 35
    :cond_0
    if-eqz p6, :cond_1

    .line 36
    invoke-virtual {p6, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 38
    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 41
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/fastjson/c/c;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/alibaba/fastjson/c/c;->a:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lcom/alibaba/fastjson/c/c;->b:Ljava/lang/reflect/Method;

    .line 47
    iput-object p3, p0, Lcom/alibaba/fastjson/c/c;->c:Ljava/lang/reflect/Field;

    .line 49
    if-eqz p2, :cond_0

    .line 50
    invoke-virtual {p2, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 53
    :cond_0
    if-eqz p3, :cond_1

    .line 54
    invoke-virtual {p3, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 59
    :cond_1
    if-eqz p2, :cond_3

    .line 60
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    array-length v0, v0

    if-ne v0, v1, :cond_2

    .line 61
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    aget-object v0, v0, v2

    .line 62
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v1

    aget-object v1, v1, v2

    .line 67
    :goto_0
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/fastjson/c/c;->f:Ljava/lang/Class;

    move-object v2, v0

    .line 74
    :goto_1
    if-eqz p4, :cond_4

    const-class v0, Ljava/lang/Object;

    if-ne v2, v0, :cond_4

    instance-of v0, v1, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_4

    move-object v0, v1

    .line 75
    check-cast v0, Ljava/lang/reflect/TypeVariable;

    .line 76
    invoke-static {p4, v0}, Lcom/alibaba/fastjson/c/c;->a(Ljava/lang/Class;Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 77
    if-eqz v0, :cond_4

    .line 78
    invoke-static {v0}, Lcom/alibaba/fastjson/c/g;->a(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/fastjson/c/c;->d:Ljava/lang/Class;

    .line 79
    iput-object v0, p0, Lcom/alibaba/fastjson/c/c;->e:Ljava/lang/reflect/Type;

    .line 96
    :goto_2
    return-void

    .line 64
    :cond_2
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    .line 65
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v1

    goto :goto_0

    .line 69
    :cond_3
    invoke-virtual {p3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    .line 70
    invoke-virtual {p3}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 71
    invoke-virtual {p3}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/fastjson/c/c;->f:Ljava/lang/Class;

    goto :goto_1

    .line 84
    :cond_4
    invoke-static {p4, p5, v1}, Lcom/alibaba/fastjson/c/c;->a(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v3

    .line 86
    if-eq v3, v1, :cond_6

    .line 87
    instance-of v0, v3, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_5

    .line 88
    invoke-static {v3}, Lcom/alibaba/fastjson/c/g;->a(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    .line 94
    :goto_3
    iput-object v3, p0, Lcom/alibaba/fastjson/c/c;->e:Ljava/lang/reflect/Type;

    .line 95
    iput-object v0, p0, Lcom/alibaba/fastjson/c/c;->d:Ljava/lang/Class;

    goto :goto_2

    .line 89
    :cond_5
    instance-of v0, v3, Ljava/lang/Class;

    if-eqz v0, :cond_6

    .line 90
    invoke-static {v3}, Lcom/alibaba/fastjson/c/g;->a(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_3

    :cond_6
    move-object v0, v2

    goto :goto_3
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .prologue
    .line 99
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 119
    :cond_0
    :goto_0
    return-object p2

    .line 103
    :cond_1
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_0

    .line 107
    instance-of v0, p2, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_0

    .line 108
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    move-object v0, p2

    .line 109
    check-cast v0, Ljava/lang/reflect/TypeVariable;

    .line 111
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 112
    invoke-virtual {p0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-interface {v2}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 113
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object p2, v0, v1

    goto :goto_0

    .line 111
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/Type;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 123
    .line 124
    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v3

    .line 126
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 127
    if-nez v1, :cond_1

    move-object v0, v2

    .line 144
    :goto_0
    return-object v0

    .line 130
    :cond_1
    instance-of v0, v1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_4

    move-object v0, v1

    .line 131
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 132
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v4

    if-ne v4, v3, :cond_4

    .line 133
    invoke-interface {v3}, Ljava/lang/reflect/GenericDeclaration;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v1

    .line 134
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    .line 135
    const/4 v0, 0x0

    :goto_1
    array-length v4, v1

    if-ge v0, v4, :cond_3

    .line 136
    aget-object v4, v1, v0

    if-ne v4, p1, :cond_2

    .line 137
    aget-object v0, v3, v0

    goto :goto_0

    .line 135
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move-object v0, v2

    .line 139
    goto :goto_0

    .line 142
    :cond_4
    invoke-static {v1}, Lcom/alibaba/fastjson/c/g;->a(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p0

    .line 143
    if-nez v1, :cond_0

    move-object v0, v2

    .line 144
    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson/c/c;)I
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/alibaba/fastjson/c/c;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/alibaba/fastjson/c/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public a()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 156
    iget-object v0, p0, Lcom/alibaba/fastjson/c/c;->d:Ljava/lang/Class;

    return-object v0
.end method

.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 195
    iget-object v0, p0, Lcom/alibaba/fastjson/c/c;->b:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/alibaba/fastjson/c/c;->b:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 200
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/c/c;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 180
    const/4 v0, 0x0

    .line 181
    iget-object v1, p0, Lcom/alibaba/fastjson/c/c;->b:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 182
    iget-object v0, p0, Lcom/alibaba/fastjson/c/c;->b:Ljava/lang/reflect/Method;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 185
    :cond_0
    if-nez v0, :cond_1

    .line 186
    iget-object v1, p0, Lcom/alibaba/fastjson/c/c;->c:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_1

    .line 187
    iget-object v0, p0, Lcom/alibaba/fastjson/c/c;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 191
    :cond_1
    return-object v0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 204
    iget-object v0, p0, Lcom/alibaba/fastjson/c/c;->b:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/alibaba/fastjson/c/c;->b:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    :goto_0
    return-void

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/c/c;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 213
    iget-object v0, p0, Lcom/alibaba/fastjson/c/c;->b:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/alibaba/fastjson/c/c;->b:Ljava/lang/reflect/Method;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 219
    :goto_0
    return-void

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/c/c;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    goto :goto_0
.end method

.method public b()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/alibaba/fastjson/c/c;->e:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/alibaba/fastjson/c/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 12
    check-cast p1, Lcom/alibaba/fastjson/c/c;

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/c/c;->a(Lcom/alibaba/fastjson/c/c;)I

    move-result v0

    return v0
.end method

.method public d()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/alibaba/fastjson/c/c;->b:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public e()Ljava/lang/reflect/Field;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/alibaba/fastjson/c/c;->c:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/alibaba/fastjson/c/c;->a:Ljava/lang/String;

    return-object v0
.end method
