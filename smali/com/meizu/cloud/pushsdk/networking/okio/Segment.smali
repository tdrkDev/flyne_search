.class final Lcom/meizu/cloud/pushsdk/networking/okio/Segment;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final SIZE:I = 0x800


# instance fields
.field final data:[B

.field limit:I

.field next:Lcom/meizu/cloud/pushsdk/networking/okio/Segment;

.field owner:Z

.field pos:I

.field prev:Lcom/meizu/cloud/pushsdk/networking/okio/Segment;

.field shared:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/16 v0, 0x800

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/okio/Segment;->data:[B

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/cloud/pushsdk/networking/okio/Segment;->owner:Z

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/cloud/pushsdk/networking/okio/Segment;->shared:Z

    .line 60
    return-void
.end method

.method constructor <init>(Lcom/meizu/cloud/pushsdk/networking/okio/Segment;)V
    .locals 3

    .prologue
    .line 63
    iget-object v0, p1, Lcom/meizu/cloud/pushsdk/networking/okio/Segment;->data:[B

    iget v1, p1, Lcom/meizu/cloud/pushsdk/networking/okio/Segment;->pos:I

    iget v2, p1, Lcom/meizu/cloud/pushsdk/networking/okio/Segment;->limit:I

    invoke-direct {p0, v0, v1, v2}, Lcom/meizu/cloud/pushsdk/networking/okio/Segment;-><init>([BII)V

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/meizu/cloud/pushsdk/networking/okio/Segment;->shared:Z

    .line 65
    return-void
.end method

.method constructor <init>([BII)V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/networking/okio/Segment;->data:[B

    .line 69
    iput p2, p0, Lcom/meizu/cloud/pushsdk/networking/okio/Segment;->pos:I

    .line 70
    iput p3, p0, Lcom/meizu/cloud/pushsdk/networking/okio/Segment;->limit:I

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/cloud/pushsdk/networking/okio/Segment;->owner:Z

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/cloud/pushsdk/networking/okio/Segment;->shared:Z

    .line 73
    return-void
.end method


# virtual methods
.method public compact()V
    .locals 3

    .prologue
    .line 122
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/okio/Segment;->prev:Lcom/meizu/cloud/pushsdk/networking/okio/Segment;

    if-ne v0, p0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/okio/Segment;->prev:Lcom/meizu/cloud/pushsdk/networking/okio/Segment;

    iget-boolean v0, v0, Lcom/meizu/cloud/pushsdk/networking/okio/Segment;->owner:Z

    if-nez v0, :cond_2

    .line 130
    :cond_1
    :goto_0
    return-void

    .line 124
    :cond_2
    iget v0, p0, Lcom/meizu/cloud/pushsdk/networking/okio/Segment;->limit:I

    iget v1, p0, Lcom/meizu/cloud/pushsdk/networking/okio/Segment;->pos:I

    sub-int v1, v0, v1

    .line 125
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/okio/Segment;->prev:Lcom/meizu/cloud/pushsdk/networking/okio/Segment;

    iget v0, v0, Lcom/meizu/cloud/pushsdk/networking/okio/Segment;->limit:I

    rsub-int v2, v0, 0x800

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/okio/Segment;->prev:Lcom/meizu/cloud/pushsdk/networking/okio/Segment;

    iget-boolean v0, v0, Lcom/meizu/cloud/pushsdk/networking/okio/Segment;->shared:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_1
    add-int/2addr v0, v2

    .line 126
    if-gt v1, v0, :cond_1

    .line 127
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/okio/Segment;->prev:Lcom/meizu/cloud/pushsdk/networking/okio/Segment;

    invoke-virtual {p0, v0, v1}, Lcom/meizu/cloud/pushsdk/networking/okio/Segment;->writeTo(Lcom/meizu/cloud/pushsdk/networking/okio/Segment;I)V

    .line 128
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/networking/okio/Segment;->pop()Lcom/meizu/cloud/pushsdk/networking/okio/Segment;

    .line 129
    invoke-static {p0}, Lcom/meizu/cloud/pushsdk/networking/okio/SegmentPool;->recycle(Lcom/meizu/cloud/pushsdk/networking/okio/Segment;)V

    goto :goto_0

    .line 125
    :cond_3
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/okio/Segment;->prev:Lcom/meizu/cloud/pushsdk/networking/okio/Segment;

    iget v0, v0, Lcom/meizu/cloud/pushsdk/networking/okio/Segment;->pos:I

    goto :goto_1
.end method

.method public pop()Lcom/meizu/cloud/pushsdk/networking/okio/Segment;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 80
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/okio/Segment;->next:Lcom/meizu/cloud/pushsdk/networking/okio/Segment;

    if-eq v0, p0, :cond_0

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/okio/Segment;->next:Lcom/meizu/cloud/pushsdk/networking/okio/Segment;

    .line 81
    :goto_0
    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/networking/okio/Segment;->prev:Lcom/meizu/cloud/pushsdk/networking/okio/Segment;

    iget-object v3, p0, Lcom/meizu/cloud/pushsdk/networking/okio/Segment;->next:Lcom/meizu/cloud/pushsdk/networking/okio/Segment;

    iput-object v3, v2, Lcom/meizu/cloud/pushsdk/networking/okio/Segment;->next:Lcom/meizu/cloud/pushsdk/networking/okio/Segment;

    .line 82
    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/networking/okio/Segment;->next:Lcom/meizu/cloud/pushsdk/networking/okio/Segment;

    iget-object v3, p0, Lcom/meizu/cloud/pushsdk/networking/okio/Segment;->prev:Lcom/meizu/cloud/pushsdk/networking/okio/Segment;

    iput-object v3, v2, Lcom/meizu/cloud/pushsdk/networking/okio/Segment;->prev:Lcom/meizu/cloud/pushsdk/networking/okio/Segment;

    .line 83
    iput-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/okio/Segment;->next:Lcom/meizu/cloud/pushsdk/networking/okio/Segment;

    .line 84
    iput-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/okio/Segment;->prev:Lcom/meizu/cloud/pushsdk/networking/okio/Segment;

    .line 85
    return-object v0

    :cond_0
    move-object v0, v1

    .line 80
    goto :goto_0
.end method

.method public push(Lcom/meizu/cloud/pushsdk/networking/okio/Segment;)Lcom/meizu/cloud/pushsdk/networking/okio/Segment;
    .locals 1

    .prologue
    .line 93
    iput-object p0, p1, Lcom/meizu/cloud/pushsdk/networking/okio/Segment;->prev:Lcom/meizu/cloud/pushsdk/networking/okio/Segment;

    .line 94
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/okio/Segment;->next:Lcom/meizu/cloud/pushsdk/networking/okio/Segment;

    iput-object v0, p1, Lcom/meizu/cloud/pushsdk/networking/okio/Segment;->next:Lcom/meizu/cloud/pushsdk/networking/okio/Segment;

    .line 95
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/okio/Segment;->next:Lcom/meizu/cloud/pushsdk/networking/okio/Segment;

    iput-object p1, v0, Lcom/meizu/cloud/pushsdk/networking/okio/Segment;->prev:Lcom/meizu/cloud/pushsdk/networking/okio/Segment;

    .line 96
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/networking/okio/Segment;->next:Lcom/meizu/cloud/pushsdk/networking/okio/Segment;

    .line 97
    return-object p1
.end method

.method public split(I)Lcom/meizu/cloud/pushsdk/networking/okio/Segment;
    .locals 2

    .prologue
    .line 109
    if-lez p1, :cond_0

    iget v0, p0, Lcom/meizu/cloud/pushsdk/networking/okio/Segment;->limit:I

    iget v1, p0, Lcom/meizu/cloud/pushsdk/networking/okio/Segment;->pos:I

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 110
    :cond_1
    new-instance v0, Lcom/meizu/cloud/pushsdk/networking/okio/Segment;

    invoke-direct {v0, p0}, Lcom/meizu/cloud/pushsdk/networking/okio/Segment;-><init>(Lcom/meizu/cloud/pushsdk/networking/okio/Segment;)V

    .line 111
    iget v1, v0, Lcom/meizu/cloud/pushsdk/networking/okio/Segment;->pos:I

    add-int/2addr v1, p1

    iput v1, v0, Lcom/meizu/cloud/pushsdk/networking/okio/Segment;->limit:I

    .line 112
    iget v1, p0, Lcom/meizu/cloud/pushsdk/networking/okio/Segment;->pos:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/meizu/cloud/pushsdk/networking/okio/Segment;->pos:I

    .line 113
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/okio/Segment;->prev:Lcom/meizu/cloud/pushsdk/networking/okio/Segment;

    invoke-virtual {v1, v0}, Lcom/meizu/cloud/pushsdk/networking/okio/Segment;->push(Lcom/meizu/cloud/pushsdk/networking/okio/Segment;)Lcom/meizu/cloud/pushsdk/networking/okio/Segment;

    .line 114
    return-object v0
.end method

.method public writeTo(Lcom/meizu/cloud/pushsdk/networking/okio/Segment;I)V
    .locals 6

    .prologue
    const/16 v2, 0x800

    const/4 v5, 0x0

    .line 134
    iget-boolean v0, p1, Lcom/meizu/cloud/pushsdk/networking/okio/Segment;->owner:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 135
    :cond_0
    iget v0, p1, Lcom/meizu/cloud/pushsdk/networking/okio/Segment;->limit:I

    add-int/2addr v0, p2

    if-le v0, v2, :cond_3

    .line 137
    iget-boolean v0, p1, Lcom/meizu/cloud/pushsdk/networking/okio/Segment;->shared:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 138
    :cond_1
    iget v0, p1, Lcom/meizu/cloud/pushsdk/networking/okio/Segment;->limit:I

    add-int/2addr v0, p2

    iget v1, p1, Lcom/meizu/cloud/pushsdk/networking/okio/Segment;->pos:I

    sub-int/2addr v0, v1

    if-le v0, v2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 139
    :cond_2
    iget-object v0, p1, Lcom/meizu/cloud/pushsdk/networking/okio/Segment;->data:[B

    iget v1, p1, Lcom/meizu/cloud/pushsdk/networking/okio/Segment;->pos:I

    iget-object v2, p1, Lcom/meizu/cloud/pushsdk/networking/okio/Segment;->data:[B

    iget v3, p1, Lcom/meizu/cloud/pushsdk/networking/okio/Segment;->limit:I

    iget v4, p1, Lcom/meizu/cloud/pushsdk/networking/okio/Segment;->pos:I

    sub-int/2addr v3, v4

    invoke-static {v0, v1, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 140
    iget v0, p1, Lcom/meizu/cloud/pushsdk/networking/okio/Segment;->limit:I

    iget v1, p1, Lcom/meizu/cloud/pushsdk/networking/okio/Segment;->pos:I

    sub-int/2addr v0, v1

    iput v0, p1, Lcom/meizu/cloud/pushsdk/networking/okio/Segment;->limit:I

    .line 141
    iput v5, p1, Lcom/meizu/cloud/pushsdk/networking/okio/Segment;->pos:I

    .line 144
    :cond_3
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/okio/Segment;->data:[B

    iget v1, p0, Lcom/meizu/cloud/pushsdk/networking/okio/Segment;->pos:I

    iget-object v2, p1, Lcom/meizu/cloud/pushsdk/networking/okio/Segment;->data:[B

    iget v3, p1, Lcom/meizu/cloud/pushsdk/networking/okio/Segment;->limit:I

    invoke-static {v0, v1, v2, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 145
    iget v0, p1, Lcom/meizu/cloud/pushsdk/networking/okio/Segment;->limit:I

    add-int/2addr v0, p2

    iput v0, p1, Lcom/meizu/cloud/pushsdk/networking/okio/Segment;->limit:I

    .line 146
    iget v0, p0, Lcom/meizu/cloud/pushsdk/networking/okio/Segment;->pos:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/meizu/cloud/pushsdk/networking/okio/Segment;->pos:I

    .line 147
    return-void
.end method
