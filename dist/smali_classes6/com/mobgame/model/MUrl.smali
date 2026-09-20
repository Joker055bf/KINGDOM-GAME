.class public Lcom/mobgame/model/MUrl;
.super Ljava/lang/Object;
.source "MUrl.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/mobgame/model/MUrl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private isEcrypted:Z

.field private path:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 62
    new-instance v0, Lcom/mobgame/model/MUrl$1;

    invoke-direct {v0}, Lcom/mobgame/model/MUrl$1;-><init>()V

    sput-object v0, Lcom/mobgame/model/MUrl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mobgame/model/MUrl;->path:Ljava/lang/String;

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/mobgame/model/MUrl;->isEcrypted:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/mobgame/model/MUrl;->path:Ljava/lang/String;

    const/4 p1, 0x0

    .line 14
    iput-boolean p1, p0, Lcom/mobgame/model/MUrl;->isEcrypted:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/mobgame/model/MUrl;->path:Ljava/lang/String;

    .line 19
    iput-boolean p2, p0, Lcom/mobgame/model/MUrl;->isEcrypted:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/mobgame/model/MUrl;->path:Ljava/lang/String;

    return-object v0
.end method

.method public isEcrypted()Z
    .locals 1

    .line 36
    iget-boolean v0, p0, Lcom/mobgame/model/MUrl;->isEcrypted:Z

    return v0
.end method

.method public setEcrypted(Z)V
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcom/mobgame/model/MUrl;->isEcrypted:Z

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/mobgame/model/MUrl;->path:Ljava/lang/String;

    return-void
.end method

.method public toUri()Landroid/net/Uri;
    .locals 1

    .line 45
    :try_start_0
    iget-object v0, p0, Lcom/mobgame/model/MUrl;->path:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 58
    iget-object p2, p0, Lcom/mobgame/model/MUrl;->path:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    iget-boolean p2, p0, Lcom/mobgame/model/MUrl;->isEcrypted:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
