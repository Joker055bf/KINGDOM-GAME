.class public Lcom/flexionmobile/sdk/parcel/StartupData;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/flexionmobile/sdk/parcel/StartupData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final authIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/flexionmobile/sdk/parcel/StartupData$1;

    invoke-direct {v0}, Lcom/flexionmobile/sdk/parcel/StartupData$1;-><init>()V

    sput-object v0, Lcom/flexionmobile/sdk/parcel/StartupData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/flexionmobile/sdk/parcel/StartupData;->authIntent:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAuthIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/flexionmobile/sdk/parcel/StartupData;->authIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object p2, p0, Lcom/flexionmobile/sdk/parcel/StartupData;->authIntent:Landroid/content/Intent;

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
