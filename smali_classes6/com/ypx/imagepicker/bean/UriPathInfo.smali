.class public Lcom/ypx/imagepicker/bean/UriPathInfo;
.super Ljava/lang/Object;
.source "UriPathInfo.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ypx/imagepicker/bean/UriPathInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public absolutePath:Ljava/lang/String;

.field public uri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Lcom/ypx/imagepicker/bean/UriPathInfo$1;

    invoke-direct {v0}, Lcom/ypx/imagepicker/bean/UriPathInfo$1;-><init>()V

    sput-object v0, Lcom/ypx/imagepicker/bean/UriPathInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/ypx/imagepicker/bean/UriPathInfo;->uri:Landroid/net/Uri;

    .line 15
    iput-object p2, p0, Lcom/ypx/imagepicker/bean/UriPathInfo;->absolutePath:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/ypx/imagepicker/bean/UriPathInfo;->uri:Landroid/net/Uri;

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ypx/imagepicker/bean/UriPathInfo;->absolutePath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/ypx/imagepicker/bean/UriPathInfo;->uri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 60
    iget-object p2, p0, Lcom/ypx/imagepicker/bean/UriPathInfo;->absolutePath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
