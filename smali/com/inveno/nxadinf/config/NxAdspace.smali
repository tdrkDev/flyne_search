.class public Lcom/inveno/nxadinf/config/NxAdspace;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/inveno/nxadinf/config/NxAdspace;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Ljava/lang/Boolean;

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private j:I

.field private k:I

.field private l:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 218
    new-instance v0, Lcom/inveno/nxadinf/config/NxAdspace$1;

    invoke-direct {v0}, Lcom/inveno/nxadinf/config/NxAdspace$1;-><init>()V

    sput-object v0, Lcom/inveno/nxadinf/config/NxAdspace;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/nxadinf/config/NxAdspace;->c:Ljava/lang/Boolean;

    .line 138
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/nxadinf/config/NxAdspace;->c:Ljava/lang/Boolean;

    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/nxadinf/config/NxAdspace;->a:Ljava/lang/String;

    .line 203
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/inveno/nxadinf/config/NxAdspace;->b:I

    .line 204
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/inveno/nxadinf/config/NxAdspace;->c:Ljava/lang/Boolean;

    .line 205
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/inveno/nxadinf/config/NxAdspace;->d:I

    .line 206
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/inveno/nxadinf/config/NxAdspace;->e:I

    .line 207
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/inveno/nxadinf/config/NxAdspace;->f:I

    .line 208
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/inveno/nxadinf/config/NxAdspace;->g:I

    .line 209
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/inveno/nxadinf/config/NxAdspace;->h:Ljava/util/List;

    .line 210
    iget-object v0, p0, Lcom/inveno/nxadinf/config/NxAdspace;->h:Ljava/util/List;

    const-class v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 211
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/inveno/nxadinf/config/NxAdspace;->i:Ljava/util/List;

    .line 212
    iget-object v0, p0, Lcom/inveno/nxadinf/config/NxAdspace;->i:Ljava/util/List;

    const-class v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 213
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/inveno/nxadinf/config/NxAdspace;->j:I

    .line 214
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/inveno/nxadinf/config/NxAdspace;->k:I

    .line 215
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/nxadinf/config/NxAdspace;->l:Ljava/lang/String;

    .line 216
    return-void
.end method

.method public static a(Ljava/lang/String;IIIII[I[IILjava/lang/String;)Lcom/inveno/nxadinf/config/NxAdspace;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 154
    new-instance v2, Lcom/inveno/nxadinf/config/NxAdspace;

    invoke-direct {v2}, Lcom/inveno/nxadinf/config/NxAdspace;-><init>()V

    .line 156
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 157
    :goto_0
    array-length v4, p6

    if-ge v0, v4, :cond_0

    .line 158
    aget v4, p6, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 160
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 161
    :goto_1
    array-length v5, p7

    if-ge v0, v5, :cond_1

    .line 162
    aget v5, p7, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 165
    :cond_1
    invoke-virtual {v2, p0}, Lcom/inveno/nxadinf/config/NxAdspace;->a(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v2, p1}, Lcom/inveno/nxadinf/config/NxAdspace;->b(I)V

    .line 167
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/inveno/nxadinf/config/NxAdspace;->a(Ljava/lang/Boolean;)V

    .line 168
    invoke-virtual {v2, p2}, Lcom/inveno/nxadinf/config/NxAdspace;->c(I)V

    .line 169
    invoke-virtual {v2, p3}, Lcom/inveno/nxadinf/config/NxAdspace;->d(I)V

    .line 170
    invoke-virtual {v2, p4}, Lcom/inveno/nxadinf/config/NxAdspace;->e(I)V

    .line 171
    invoke-virtual {v2, p5}, Lcom/inveno/nxadinf/config/NxAdspace;->f(I)V

    .line 172
    invoke-virtual {v2, v3}, Lcom/inveno/nxadinf/config/NxAdspace;->a(Ljava/util/List;)V

    .line 173
    invoke-virtual {v2, v4}, Lcom/inveno/nxadinf/config/NxAdspace;->b(Ljava/util/List;)V

    .line 174
    invoke-virtual {v2, p8}, Lcom/inveno/nxadinf/config/NxAdspace;->a(I)V

    .line 175
    invoke-virtual {v2, p9}, Lcom/inveno/nxadinf/config/NxAdspace;->b(Ljava/lang/String;)V

    .line 177
    return-object v2
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/inveno/nxadinf/config/NxAdspace;->k:I

    return v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 38
    iput p1, p0, Lcom/inveno/nxadinf/config/NxAdspace;->k:I

    .line 39
    return-void
.end method

.method public a(Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/inveno/nxadinf/config/NxAdspace;->c:Ljava/lang/Boolean;

    .line 64
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/inveno/nxadinf/config/NxAdspace;->a:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 107
    iput-object p1, p0, Lcom/inveno/nxadinf/config/NxAdspace;->h:Ljava/util/List;

    .line 108
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/inveno/nxadinf/config/NxAdspace;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 51
    iput p1, p0, Lcom/inveno/nxadinf/config/NxAdspace;->b:I

    .line 52
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/inveno/nxadinf/config/NxAdspace;->l:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 114
    iput-object p1, p0, Lcom/inveno/nxadinf/config/NxAdspace;->i:Ljava/util/List;

    .line 115
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/inveno/nxadinf/config/NxAdspace;->b:I

    return v0
.end method

.method public c(I)V
    .locals 0

    .prologue
    .line 69
    iput p1, p0, Lcom/inveno/nxadinf/config/NxAdspace;->d:I

    .line 70
    return-void
.end method

.method public d()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/inveno/nxadinf/config/NxAdspace;->c:Ljava/lang/Boolean;

    return-object v0
.end method

.method public d(I)V
    .locals 0

    .prologue
    .line 75
    iput p1, p0, Lcom/inveno/nxadinf/config/NxAdspace;->e:I

    .line 76
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x0

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/inveno/nxadinf/config/NxAdspace;->d:I

    return v0
.end method

.method public e(I)V
    .locals 0

    .prologue
    .line 81
    iput p1, p0, Lcom/inveno/nxadinf/config/NxAdspace;->f:I

    .line 82
    return-void
.end method

.method public f()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/inveno/nxadinf/config/NxAdspace;->e:I

    return v0
.end method

.method public f(I)V
    .locals 0

    .prologue
    .line 99
    iput p1, p0, Lcom/inveno/nxadinf/config/NxAdspace;->g:I

    .line 100
    return-void
.end method

.method public g()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/inveno/nxadinf/config/NxAdspace;->f:I

    return v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/inveno/nxadinf/config/NxAdspace;->g:I

    return v0
.end method

.method public i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lcom/inveno/nxadinf/config/NxAdspace;->h:Ljava/util/List;

    return-object v0
.end method

.method public j()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Lcom/inveno/nxadinf/config/NxAdspace;->i:Ljava/util/List;

    return-object v0
.end method

.method public k()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/inveno/nxadinf/config/NxAdspace;->j:I

    return v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/inveno/nxadinf/config/NxAdspace;->l:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/inveno/nxadinf/config/NxAdspace;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 188
    iget v0, p0, Lcom/inveno/nxadinf/config/NxAdspace;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 189
    iget-object v0, p0, Lcom/inveno/nxadinf/config/NxAdspace;->c:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 190
    iget v0, p0, Lcom/inveno/nxadinf/config/NxAdspace;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 191
    iget v0, p0, Lcom/inveno/nxadinf/config/NxAdspace;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    iget v0, p0, Lcom/inveno/nxadinf/config/NxAdspace;->f:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    iget v0, p0, Lcom/inveno/nxadinf/config/NxAdspace;->g:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    iget-object v0, p0, Lcom/inveno/nxadinf/config/NxAdspace;->h:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 195
    iget-object v0, p0, Lcom/inveno/nxadinf/config/NxAdspace;->i:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 196
    iget v0, p0, Lcom/inveno/nxadinf/config/NxAdspace;->j:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    iget v0, p0, Lcom/inveno/nxadinf/config/NxAdspace;->k:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 198
    iget-object v0, p0, Lcom/inveno/nxadinf/config/NxAdspace;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 199
    return-void
.end method
