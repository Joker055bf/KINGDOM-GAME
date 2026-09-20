.class public Lcom/openmediation/sdk/utils/model/AdNetwork;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/openmediation/sdk/utils/model/AdNetwork;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private adapterV:Ljava/lang/String;

.field private mSdkV:Ljava/lang/String;

.field private mid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/openmediation/sdk/utils/model/AdNetwork$1;

    invoke-direct {v0}, Lcom/openmediation/sdk/utils/model/AdNetwork$1;-><init>()V

    sput-object v0, Lcom/openmediation/sdk/utils/model/AdNetwork;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/openmediation/sdk/utils/model/AdNetwork;->mid:I

    iput-object p2, p0, Lcom/openmediation/sdk/utils/model/AdNetwork;->adapterV:Ljava/lang/String;

    iput-object p3, p0, Lcom/openmediation/sdk/utils/model/AdNetwork;->mSdkV:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/openmediation/sdk/utils/model/AdNetwork;->mid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/openmediation/sdk/utils/model/AdNetwork;->adapterV:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/openmediation/sdk/utils/model/AdNetwork;->mSdkV:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "mid"

    iget v2, p0, Lcom/openmediation/sdk/utils/model/AdNetwork;->mid:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "adapterv"

    iget-object v2, p0, Lcom/openmediation/sdk/utils/model/AdNetwork;->adapterV:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "msdkv"

    iget-object v2, p0, Lcom/openmediation/sdk/utils/model/AdNetwork;->mSdkV:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->getSingleton()Lcom/openmediation/sdk/utils/crash/CrashUtil;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/openmediation/sdk/utils/crash/CrashUtil;->saveException(Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lcom/openmediation/sdk/utils/model/AdNetwork;->mid:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/openmediation/sdk/utils/model/AdNetwork;->adapterV:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/openmediation/sdk/utils/model/AdNetwork;->mSdkV:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
