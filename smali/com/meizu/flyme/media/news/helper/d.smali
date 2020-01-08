.class public final Lcom/meizu/flyme/media/news/helper/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/Object;

.field private static final b:[Ljava/lang/Class;

.field private static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private d:Ljava/lang/Object;

.field private e:Ljava/lang/Class;

.field private f:Z

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/meizu/flyme/media/news/helper/d;->a:Ljava/lang/Object;

    .line 24
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Class;

    sput-object v0, Lcom/meizu/flyme/media/news/helper/d;->b:[Ljava/lang/Class;

    .line 26
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/meizu/flyme/media/news/helper/d;->c:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/meizu/flyme/media/news/helper/d;->e:Ljava/lang/Class;

    .line 36
    return-void
.end method

.method private static a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 189
    sget-object v0, Lcom/meizu/flyme/media/news/helper/d;->c:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 190
    sget-object v1, Lcom/meizu/flyme/media/news/helper/d;->a:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    .line 191
    const/4 v0, 0x0

    .line 204
    :cond_0
    :goto_0
    return-object v0

    .line 193
    :cond_1
    check-cast v0, Ljava/lang/reflect/Field;

    .line 194
    if-nez v0, :cond_0

    .line 196
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 197
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 198
    sget-object v1, Lcom/meizu/flyme/media/news/helper/d;->c:Ljava/util/Map;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 199
    :catch_0
    move-exception v1

    .line 200
    sget-object v3, Lcom/meizu/flyme/media/news/helper/d;->c:Ljava/util/Map;

    sget-object v4, Lcom/meizu/flyme/media/news/helper/d;->a:Ljava/lang/Object;

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    const-string v2, "NewsReflectHelper"

    const-string v3, "getClassField e=%s"

    new-array v4, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Lcom/meizu/flyme/media/news/helper/a;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class;",
            ")",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 229
    sget-object v0, Lcom/meizu/flyme/media/news/helper/d;->c:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 230
    sget-object v1, Lcom/meizu/flyme/media/news/helper/d;->a:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    .line 231
    const/4 v0, 0x0

    .line 244
    :cond_0
    :goto_0
    return-object v0

    .line 233
    :cond_1
    check-cast v0, Ljava/lang/reflect/Method;

    .line 234
    if-nez v0, :cond_0

    .line 236
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 237
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 238
    sget-object v1, Lcom/meizu/flyme/media/news/helper/d;->c:Ljava/util/Map;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 239
    :catch_0
    move-exception v1

    .line 240
    sget-object v3, Lcom/meizu/flyme/media/news/helper/d;->c:Ljava/util/Map;

    sget-object v4, Lcom/meizu/flyme/media/news/helper/d;->a:Ljava/lang/Object;

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    const-string v2, "NewsReflectHelper"

    const-string v3, "getClassMethod e=%s"

    new-array v4, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Lcom/meizu/flyme/media/news/helper/a;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/meizu/flyme/media/news/helper/d;->f:Z

    if-eqz v0, :cond_0

    .line 48
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setCalled only once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/flyme/media/news/helper/d;->f:Z

    .line 52
    return-void
.end method

.method private static a([Ljava/lang/Object;)[Ljava/lang/Class;
    .locals 4
    .param p0    # [Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 143
    array-length v0, p0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 144
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_0
    array-length v0, p0

    div-int/lit8 v2, v0, 0x2

    .line 147
    new-array v3, v2, [Ljava/lang/Class;

    .line 148
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 149
    mul-int/lit8 v0, v1, 0x2

    aget-object v0, p0, v0

    check-cast v0, Ljava/lang/Class;

    aput-object v0, v3, v1

    .line 148
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 151
    :cond_1
    return-object v3
.end method

.method public static b(Ljava/lang/Object;)Lcom/meizu/flyme/media/news/helper/d;
    .locals 2

    .prologue
    .line 274
    new-instance v0, Lcom/meizu/flyme/media/news/helper/d;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/meizu/flyme/media/news/helper/d;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, p0}, Lcom/meizu/flyme/media/news/helper/d;->a(Ljava/lang/Object;)Lcom/meizu/flyme/media/news/helper/d;

    move-result-object v0

    return-object v0
.end method

.method private static b([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .param p0    # [Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 155
    array-length v0, p0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 156
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_0
    array-length v0, p0

    div-int/lit8 v1, v0, 0x2

    .line 159
    new-array v2, v1, [Ljava/lang/Object;

    .line 160
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 161
    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    aget-object v3, p0, v3

    aput-object v3, v2, v0

    .line 160
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 163
    :cond_1
    return-object v2
.end method

.method public static c(Ljava/lang/String;)Lcom/meizu/flyme/media/news/helper/d;
    .locals 2

    .prologue
    .line 270
    new-instance v0, Lcom/meizu/flyme/media/news/helper/d;

    invoke-static {p0}, Lcom/meizu/flyme/media/news/helper/d;->d(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/meizu/flyme/media/news/helper/d;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/Class;
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 248
    sget-object v0, Lcom/meizu/flyme/media/news/helper/d;->c:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 249
    sget-object v1, Lcom/meizu/flyme/media/news/helper/d;->a:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    .line 250
    const-string v0, "NewsReflectHelper"

    const-string v1, "getClassForName Not found class=%s"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p0, v2, v5

    invoke-static {v0, v1, v2}, Lcom/meizu/flyme/media/news/helper/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 251
    const/4 v0, 0x0

    .line 262
    :goto_0
    return-object v0

    .line 254
    :cond_0
    check-cast v0, Ljava/lang/Class;

    .line 256
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 257
    sget-object v1, Lcom/meizu/flyme/media/news/helper/d;->c:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 258
    :catch_0
    move-exception v1

    .line 259
    const-string v2, "NewsReflectHelper"

    const-string v3, "getClassForName e=%s"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Lcom/meizu/flyme/media/news/helper/a;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 260
    sget-object v1, Lcom/meizu/flyme/media/news/helper/d;->c:Ljava/util/Map;

    sget-object v2, Lcom/meizu/flyme/media/news/helper/d;->a:Ljava/lang/Object;

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/Class;Ljava/lang/Object;)Lcom/meizu/flyme/media/news/helper/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;TT;)",
            "Lcom/meizu/flyme/media/news/helper/d;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x4

    .line 55
    iget-object v0, p0, Lcom/meizu/flyme/media/news/helper/d;->g:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/meizu/flyme/media/news/helper/d;->g:Ljava/util/ArrayList;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/meizu/flyme/media/news/helper/d;->h:Ljava/util/ArrayList;

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/meizu/flyme/media/news/helper/d;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object v0, p0, Lcom/meizu/flyme/media/news/helper/d;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    return-object p0
.end method

.method public a(Ljava/lang/Object;)Lcom/meizu/flyme/media/news/helper/d;
    .locals 1

    .prologue
    .line 39
    iput-object p1, p0, Lcom/meizu/flyme/media/news/helper/d;->d:Ljava/lang/Object;

    .line 40
    iget-object v0, p0, Lcom/meizu/flyme/media/news/helper/d;->e:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 41
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/flyme/media/news/helper/d;->e:Ljava/lang/Class;

    .line 43
    :cond_0
    return-object p0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-direct {p0}, Lcom/meizu/flyme/media/news/helper/d;->a()V

    .line 66
    iget-object v1, p0, Lcom/meizu/flyme/media/news/helper/d;->e:Ljava/lang/Class;

    if-nez v1, :cond_1

    .line 78
    :cond_0
    :goto_0
    return-object v0

    .line 69
    :cond_1
    iget-object v1, p0, Lcom/meizu/flyme/media/news/helper/d;->e:Ljava/lang/Class;

    invoke-static {v1, p1}, Lcom/meizu/flyme/media/news/helper/d;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 70
    if-eqz v1, :cond_0

    .line 74
    :try_start_0
    iget-object v2, p0, Lcom/meizu/flyme/media/news/helper/d;->d:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 75
    :catch_0
    move-exception v1

    .line 76
    const-string v2, "NewsReflectHelper"

    const-string v3, "getFiled error=%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Lcom/meizu/flyme/media/news/helper/a;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public varargs a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 119
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 120
    invoke-virtual {p0, v0, p1, p2}, Lcom/meizu/flyme/media/news/helper/d;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 123
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;[Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 127
    iget-object v2, p0, Lcom/meizu/flyme/media/news/helper/d;->e:Ljava/lang/Class;

    invoke-static {p3}, Lcom/meizu/flyme/media/news/helper/d;->a([Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object v3

    invoke-static {v2, p2, v3}, Lcom/meizu/flyme/media/news/helper/d;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 128
    if-eqz v2, :cond_1

    .line 130
    :try_start_0
    iget-object v3, p0, Lcom/meizu/flyme/media/news/helper/d;->d:Ljava/lang/Object;

    invoke-static {p3}, Lcom/meizu/flyme/media/news/helper/d;->b([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 131
    if-eqz p1, :cond_0

    .line 132
    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :cond_0
    :goto_0
    return v0

    .line 135
    :catch_0
    move-exception v2

    .line 136
    const-string v3, "NewsReflectHelper"

    const-string v4, "invoke error=%s"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v1

    invoke-static {v3, v4, v0}, Lcom/meizu/flyme/media/news/helper/a;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    move v0, v1

    .line 139
    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/Object;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 98
    invoke-direct {p0}, Lcom/meizu/flyme/media/news/helper/d;->a()V

    .line 100
    iget-object v0, p0, Lcom/meizu/flyme/media/news/helper/d;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 101
    iget-object v0, p0, Lcom/meizu/flyme/media/news/helper/d;->g:Ljava/util/ArrayList;

    sget-object v2, Lcom/meizu/flyme/media/news/helper/d;->b:[Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Class;

    .line 103
    :goto_0
    iget-object v2, p0, Lcom/meizu/flyme/media/news/helper/d;->e:Ljava/lang/Class;

    invoke-static {v2, p1, v0}, Lcom/meizu/flyme/media/news/helper/d;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 104
    if-nez v0, :cond_0

    .line 115
    :goto_1
    return-object v1

    .line 108
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/meizu/flyme/media/news/helper/d;->h:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 109
    iget-object v2, p0, Lcom/meizu/flyme/media/news/helper/d;->d:Ljava/lang/Object;

    iget-object v3, p0, Lcom/meizu/flyme/media/news/helper/d;->h:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    .line 111
    :cond_1
    iget-object v2, p0, Lcom/meizu/flyme/media/news/helper/d;->d:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_1

    .line 112
    :catch_0
    move-exception v0

    .line 113
    const-string v2, "NewsReflectHelper"

    const-string v3, "invoke error=%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/meizu/flyme/media/news/helper/a;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method
