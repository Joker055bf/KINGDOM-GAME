.class public Lcom/flexionmobile/sdk/parcel/ItemType;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/flexionmobile/sdk/parcel/ItemType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:Lcom/flexionmobile/sdk/billing/ItemType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/flexionmobile/sdk/parcel/ItemType$1;

    invoke-direct {v0}, Lcom/flexionmobile/sdk/parcel/ItemType$1;-><init>()V

    sput-object v0, Lcom/flexionmobile/sdk/parcel/ItemType;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/flexionmobile/sdk/billing/ItemType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/flexionmobile/sdk/parcel/ItemType;->value:Lcom/flexionmobile/sdk/billing/ItemType;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getValue()Lcom/flexionmobile/sdk/billing/ItemType;
    .locals 1

    iget-object v0, p0, Lcom/flexionmobile/sdk/parcel/ItemType;->value:Lcom/flexionmobile/sdk/billing/ItemType;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-virtual {p0}, Lcom/flexionmobile/sdk/parcel/ItemType;->getValue()Lcom/flexionmobile/sdk/billing/ItemType;

    move-result-object p2

    invoke-virtual {p2}, Lcom/flexionmobile/sdk/billing/ItemType;->ordinal()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
