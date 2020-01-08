.class public Landroid/arch/persistence/room/h;
.super Landroid/arch/persistence/a/c$a;
.source "SourceFile"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/arch/persistence/room/h$a;
    }
.end annotation


# instance fields
.field private b:Landroid/arch/persistence/room/a;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final c:Landroid/arch/persistence/room/h$a;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final d:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final e:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/arch/persistence/room/a;Landroid/arch/persistence/room/h$a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroid/arch/persistence/room/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/arch/persistence/room/h$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 53
    iget v0, p2, Landroid/arch/persistence/room/h$a;->version:I

    invoke-direct {p0, v0}, Landroid/arch/persistence/a/c$a;-><init>(I)V

    .line 54
    iput-object p1, p0, Landroid/arch/persistence/room/h;->b:Landroid/arch/persistence/room/a;

    .line 55
    iput-object p2, p0, Landroid/arch/persistence/room/h;->c:Landroid/arch/persistence/room/h$a;

    .line 56
    iput-object p3, p0, Landroid/arch/persistence/room/h;->d:Ljava/lang/String;

    .line 57
    iput-object p4, p0, Landroid/arch/persistence/room/h;->e:Ljava/lang/String;

    .line 58
    return-void
.end method

.method private e(Landroid/arch/persistence/a/b;)V
    .locals 3

    .prologue
    .line 122
    const/4 v0, 0x0

    .line 123
    invoke-static {p1}, Landroid/arch/persistence/room/h;->h(Landroid/arch/persistence/a/b;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 124
    new-instance v1, Landroid/arch/persistence/a/a;

    const-string v2, "SELECT identity_hash FROM room_master_table WHERE id = 42 LIMIT 1"

    invoke-direct {v1, v2}, Landroid/arch/persistence/a/a;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1}, Landroid/arch/persistence/a/b;->a(Landroid/arch/persistence/a/e;)Landroid/database/Cursor;

    move-result-object v1

    .line 127
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 128
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 131
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 134
    :cond_1
    iget-object v1, p0, Landroid/arch/persistence/room/h;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/arch/persistence/room/h;->e:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 135
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Room cannot verify the data integrity. Looks like you\'ve changed schema but forgot to update the version number. You can simply fix this by increasing the version number."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 139
    :cond_2
    return-void
.end method

.method private f(Landroid/arch/persistence/a/b;)V
    .locals 1

    .prologue
    .line 142
    invoke-direct {p0, p1}, Landroid/arch/persistence/room/h;->g(Landroid/arch/persistence/a/b;)V

    .line 143
    iget-object v0, p0, Landroid/arch/persistence/room/h;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/arch/persistence/room/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/arch/persistence/a/b;->c(Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method private g(Landroid/arch/persistence/a/b;)V
    .locals 1

    .prologue
    .line 147
    const-string v0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    invoke-interface {p1, v0}, Landroid/arch/persistence/a/b;->c(Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method private static h(Landroid/arch/persistence/a/b;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 151
    const-string v1, "SELECT 1 FROM sqlite_master WHERE type = \'table\' AND name=\'room_master_table\'"

    invoke-interface {p0, v1}, Landroid/arch/persistence/a/b;->b(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 155
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 157
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return v0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method


# virtual methods
.method public a(Landroid/arch/persistence/a/b;)V
    .locals 0

    .prologue
    .line 67
    invoke-super {p0, p1}, Landroid/arch/persistence/a/c$a;->a(Landroid/arch/persistence/a/b;)V

    .line 68
    return-void
.end method

.method public a(Landroid/arch/persistence/a/b;II)V
    .locals 3

    .prologue
    .line 79
    const/4 v0, 0x0

    .line 80
    iget-object v1, p0, Landroid/arch/persistence/room/h;->b:Landroid/arch/persistence/room/a;

    if-eqz v1, :cond_1

    .line 81
    iget-object v1, p0, Landroid/arch/persistence/room/h;->b:Landroid/arch/persistence/room/a;

    iget-object v1, v1, Landroid/arch/persistence/room/a;->d:Landroid/arch/persistence/room/f$d;

    invoke-virtual {v1, p2, p3}, Landroid/arch/persistence/room/f$d;->a(II)Ljava/util/List;

    move-result-object v1

    .line 83
    if-eqz v1, :cond_1

    .line 84
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/arch/persistence/room/a/a;

    .line 85
    invoke-virtual {v0, p1}, Landroid/arch/persistence/room/a/a;->a(Landroid/arch/persistence/a/b;)V

    goto :goto_0

    .line 87
    :cond_0
    iget-object v0, p0, Landroid/arch/persistence/room/h;->c:Landroid/arch/persistence/room/h$a;

    invoke-virtual {v0, p1}, Landroid/arch/persistence/room/h$a;->validateMigration(Landroid/arch/persistence/a/b;)V

    .line 88
    invoke-direct {p0, p1}, Landroid/arch/persistence/room/h;->f(Landroid/arch/persistence/a/b;)V

    .line 89
    const/4 v0, 0x1

    .line 92
    :cond_1
    if-nez v0, :cond_2

    .line 93
    iget-object v0, p0, Landroid/arch/persistence/room/h;->b:Landroid/arch/persistence/room/a;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/arch/persistence/room/h;->b:Landroid/arch/persistence/room/a;

    invoke-virtual {v0, p2}, Landroid/arch/persistence/room/a;->a(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 94
    iget-object v0, p0, Landroid/arch/persistence/room/h;->c:Landroid/arch/persistence/room/h$a;

    invoke-virtual {v0, p1}, Landroid/arch/persistence/room/h$a;->dropAllTables(Landroid/arch/persistence/a/b;)V

    .line 95
    iget-object v0, p0, Landroid/arch/persistence/room/h;->c:Landroid/arch/persistence/room/h$a;

    invoke-virtual {v0, p1}, Landroid/arch/persistence/room/h$a;->createAllTables(Landroid/arch/persistence/a/b;)V

    .line 105
    :cond_2
    return-void

    .line 97
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A migration from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was required but not found. Please provide the "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "necessary Migration path via "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "RoomDatabase.Builder.addMigration(Migration ...) or allow for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "destructive migrations via one of the "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "RoomDatabase.Builder.fallbackToDestructiveMigration* methods."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Landroid/arch/persistence/a/b;)V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0, p1}, Landroid/arch/persistence/room/h;->f(Landroid/arch/persistence/a/b;)V

    .line 73
    iget-object v0, p0, Landroid/arch/persistence/room/h;->c:Landroid/arch/persistence/room/h$a;

    invoke-virtual {v0, p1}, Landroid/arch/persistence/room/h$a;->createAllTables(Landroid/arch/persistence/a/b;)V

    .line 74
    iget-object v0, p0, Landroid/arch/persistence/room/h;->c:Landroid/arch/persistence/room/h$a;

    invoke-virtual {v0, p1}, Landroid/arch/persistence/room/h$a;->onCreate(Landroid/arch/persistence/a/b;)V

    .line 75
    return-void
.end method

.method public b(Landroid/arch/persistence/a/b;II)V
    .locals 0

    .prologue
    .line 109
    invoke-virtual {p0, p1, p2, p3}, Landroid/arch/persistence/room/h;->a(Landroid/arch/persistence/a/b;II)V

    .line 110
    return-void
.end method

.method public c(Landroid/arch/persistence/a/b;)V
    .locals 1

    .prologue
    .line 114
    invoke-super {p0, p1}, Landroid/arch/persistence/a/c$a;->c(Landroid/arch/persistence/a/b;)V

    .line 115
    invoke-direct {p0, p1}, Landroid/arch/persistence/room/h;->e(Landroid/arch/persistence/a/b;)V

    .line 116
    iget-object v0, p0, Landroid/arch/persistence/room/h;->c:Landroid/arch/persistence/room/h$a;

    invoke-virtual {v0, p1}, Landroid/arch/persistence/room/h$a;->onOpen(Landroid/arch/persistence/a/b;)V

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/arch/persistence/room/h;->b:Landroid/arch/persistence/room/a;

    .line 119
    return-void
.end method
