.class final Lc/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:[B

.field b:I

.field c:I

.field d:Z

.field e:Z

.field f:Lc/o;

.field g:Lc/o;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lc/o;->a:[B

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc/o;->e:Z

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/o;->d:Z

    .line 66
    return-void
.end method

.method constructor <init>([BIIZZ)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lc/o;->a:[B

    .line 70
    iput p2, p0, Lc/o;->b:I

    .line 71
    iput p3, p0, Lc/o;->c:I

    .line 72
    iput-boolean p4, p0, Lc/o;->d:Z

    .line 73
    iput-boolean p5, p0, Lc/o;->e:Z

    .line 74
    return-void
.end method


# virtual methods
.method a()Lc/o;
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 82
    iput-boolean v4, p0, Lc/o;->d:Z

    .line 83
    new-instance v0, Lc/o;

    iget-object v1, p0, Lc/o;->a:[B

    iget v2, p0, Lc/o;->b:I

    iget v3, p0, Lc/o;->c:I

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lc/o;-><init>([BIIZZ)V

    return-object v0
.end method

.method public a(I)Lc/o;
    .locals 5

    .prologue
    .line 125
    if-lez p1, :cond_0

    iget v0, p0, Lc/o;->c:I

    iget v1, p0, Lc/o;->b:I

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 133
    :cond_1
    const/16 v0, 0x400

    if-lt p1, v0, :cond_2

    .line 134
    invoke-virtual {p0}, Lc/o;->a()Lc/o;

    move-result-object v0

    .line 140
    :goto_0
    iget v1, v0, Lc/o;->b:I

    add-int/2addr v1, p1

    iput v1, v0, Lc/o;->c:I

    .line 141
    iget v1, p0, Lc/o;->b:I

    add-int/2addr v1, p1

    iput v1, p0, Lc/o;->b:I

    .line 142
    iget-object v1, p0, Lc/o;->g:Lc/o;

    invoke-virtual {v1, v0}, Lc/o;->a(Lc/o;)Lc/o;

    .line 143
    return-object v0

    .line 136
    :cond_2
    invoke-static {}, Lc/p;->a()Lc/o;

    move-result-object v0

    .line 137
    iget-object v1, p0, Lc/o;->a:[B

    iget v2, p0, Lc/o;->b:I

    iget-object v3, v0, Lc/o;->a:[B

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public a(Lc/o;)Lc/o;
    .locals 1

    .prologue
    .line 109
    iput-object p0, p1, Lc/o;->g:Lc/o;

    .line 110
    iget-object v0, p0, Lc/o;->f:Lc/o;

    iput-object v0, p1, Lc/o;->f:Lc/o;

    .line 111
    iget-object v0, p0, Lc/o;->f:Lc/o;

    iput-object p1, v0, Lc/o;->g:Lc/o;

    .line 112
    iput-object p1, p0, Lc/o;->f:Lc/o;

    .line 113
    return-object p1
.end method

.method public a(Lc/o;I)V
    .locals 6

    .prologue
    const/16 v2, 0x2000

    const/4 v5, 0x0

    .line 163
    iget-boolean v0, p1, Lc/o;->e:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 164
    :cond_0
    iget v0, p1, Lc/o;->c:I

    add-int/2addr v0, p2

    if-le v0, v2, :cond_3

    .line 166
    iget-boolean v0, p1, Lc/o;->d:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 167
    :cond_1
    iget v0, p1, Lc/o;->c:I

    add-int/2addr v0, p2

    iget v1, p1, Lc/o;->b:I

    sub-int/2addr v0, v1

    if-le v0, v2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 168
    :cond_2
    iget-object v0, p1, Lc/o;->a:[B

    iget v1, p1, Lc/o;->b:I

    iget-object v2, p1, Lc/o;->a:[B

    iget v3, p1, Lc/o;->c:I

    iget v4, p1, Lc/o;->b:I

    sub-int/2addr v3, v4

    invoke-static {v0, v1, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 169
    iget v0, p1, Lc/o;->c:I

    iget v1, p1, Lc/o;->b:I

    sub-int/2addr v0, v1

    iput v0, p1, Lc/o;->c:I

    .line 170
    iput v5, p1, Lc/o;->b:I

    .line 173
    :cond_3
    iget-object v0, p0, Lc/o;->a:[B

    iget v1, p0, Lc/o;->b:I

    iget-object v2, p1, Lc/o;->a:[B

    iget v3, p1, Lc/o;->c:I

    invoke-static {v0, v1, v2, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 174
    iget v0, p1, Lc/o;->c:I

    add-int/2addr v0, p2

    iput v0, p1, Lc/o;->c:I

    .line 175
    iget v0, p0, Lc/o;->b:I

    add-int/2addr v0, p2

    iput v0, p0, Lc/o;->b:I

    .line 176
    return-void
.end method

.method public b()Lc/o;
    .locals 4
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 96
    iget-object v0, p0, Lc/o;->f:Lc/o;

    if-eq v0, p0, :cond_0

    iget-object v0, p0, Lc/o;->f:Lc/o;

    .line 97
    :goto_0
    iget-object v2, p0, Lc/o;->g:Lc/o;

    iget-object v3, p0, Lc/o;->f:Lc/o;

    iput-object v3, v2, Lc/o;->f:Lc/o;

    .line 98
    iget-object v2, p0, Lc/o;->f:Lc/o;

    iget-object v3, p0, Lc/o;->g:Lc/o;

    iput-object v3, v2, Lc/o;->g:Lc/o;

    .line 99
    iput-object v1, p0, Lc/o;->f:Lc/o;

    .line 100
    iput-object v1, p0, Lc/o;->g:Lc/o;

    .line 101
    return-object v0

    :cond_0
    move-object v0, v1

    .line 96
    goto :goto_0
.end method

.method public c()V
    .locals 3

    .prologue
    .line 151
    iget-object v0, p0, Lc/o;->g:Lc/o;

    if-ne v0, p0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 152
    :cond_0
    iget-object v0, p0, Lc/o;->g:Lc/o;

    iget-boolean v0, v0, Lc/o;->e:Z

    if-nez v0, :cond_2

    .line 159
    :cond_1
    :goto_0
    return-void

    .line 153
    :cond_2
    iget v0, p0, Lc/o;->c:I

    iget v1, p0, Lc/o;->b:I

    sub-int v1, v0, v1

    .line 154
    iget-object v0, p0, Lc/o;->g:Lc/o;

    iget v0, v0, Lc/o;->c:I

    rsub-int v2, v0, 0x2000

    iget-object v0, p0, Lc/o;->g:Lc/o;

    iget-boolean v0, v0, Lc/o;->d:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_1
    add-int/2addr v0, v2

    .line 155
    if-gt v1, v0, :cond_1

    .line 156
    iget-object v0, p0, Lc/o;->g:Lc/o;

    invoke-virtual {p0, v0, v1}, Lc/o;->a(Lc/o;I)V

    .line 157
    invoke-virtual {p0}, Lc/o;->b()Lc/o;

    .line 158
    invoke-static {p0}, Lc/p;->a(Lc/o;)V

    goto :goto_0

    .line 154
    :cond_3
    iget-object v0, p0, Lc/o;->g:Lc/o;

    iget v0, v0, Lc/o;->b:I

    goto :goto_1
.end method
