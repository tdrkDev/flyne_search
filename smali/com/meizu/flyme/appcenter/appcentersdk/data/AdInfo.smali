.class public Lcom/meizu/flyme/appcenter/appcentersdk/data/AdInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/flyme/appcenter/appcentersdk/data/AdInfo$AdImage;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/meizu/flyme/appcenter/appcentersdk/data/AdInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public app_id:J

.field public app_name:Ljava/lang/String;

.field public bid_type:I

.field public click_notice_urls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public download_notice_urls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public downloaded_notice_urls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public exposure_notice_urls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public install_notice_urls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public installed_notice_urls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public main_image:Lcom/meizu/flyme/appcenter/appcentersdk/data/AdInfo$AdImage;

.field public multi_images:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/meizu/flyme/appcenter/appcentersdk/data/AdInfo$AdImage;",
            ">;"
        }
    .end annotation
.end field

.field public mzid:I

.field public pull_notice_urls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 130
    new-instance v0, Lcom/meizu/flyme/appcenter/appcentersdk/data/AdInfo$1;

    invoke-direct {v0}, Lcom/meizu/flyme/appcenter/appcentersdk/data/AdInfo$1;-><init>()V

    sput-object v0, Lcom/meizu/flyme/appcenter/appcentersdk/data/AdInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/data/AdInfo;->app_id:J

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/data/AdInfo;->app_name:Ljava/lang/String;

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/data/AdInfo;->mzid:I

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/data/AdInfo;->click_notice_urls:Ljava/util/List;

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/data/AdInfo;->download_notice_urls:Ljava/util/List;

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/data/AdInfo;->downloaded_notice_urls:Ljava/util/List;

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/data/AdInfo;->install_notice_urls:Ljava/util/List;

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/data/AdInfo;->installed_notice_urls:Ljava/util/List;

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/data/AdInfo;->exposure_notice_urls:Ljava/util/List;

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/data/AdInfo;->pull_notice_urls:Ljava/util/List;

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/data/AdInfo;->bid_type:I

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/data/AdInfo;->title:Ljava/lang/String;

    .line 125
    const-class v0, Lcom/meizu/flyme/appcenter/appcentersdk/data/AdInfo$AdImage;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/meizu/flyme/appcenter/appcentersdk/data/AdInfo$AdImage;

    iput-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/data/AdInfo;->main_image:Lcom/meizu/flyme/appcenter/appcentersdk/data/AdInfo$AdImage;

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/data/AdInfo;->multi_images:Ljava/util/List;

    .line 127
    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/data/AdInfo;->multi_images:Ljava/util/List;

    const-class v1, Lcom/meizu/flyme/appcenter/appcentersdk/data/AdInfo$AdImage;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 128
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 93
    iget-wide v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/data/AdInfo;->app_id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 94
    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/data/AdInfo;->app_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    iget v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/data/AdInfo;->mzid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/data/AdInfo;->click_notice_urls:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 97
    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/data/AdInfo;->download_notice_urls:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 98
    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/data/AdInfo;->downloaded_notice_urls:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 99
    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/data/AdInfo;->install_notice_urls:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 100
    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/data/AdInfo;->installed_notice_urls:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 101
    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/data/AdInfo;->exposure_notice_urls:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 102
    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/data/AdInfo;->pull_notice_urls:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 103
    iget v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/data/AdInfo;->bid_type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/data/AdInfo;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/data/AdInfo;->main_image:Lcom/meizu/flyme/appcenter/appcentersdk/data/AdInfo$AdImage;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 106
    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/data/AdInfo;->multi_images:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 107
    return-void
.end method
