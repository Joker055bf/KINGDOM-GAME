.class public final Lcom/openmediation/sdk/utils/device/AdvertisingIdClient$AdInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openmediation/sdk/utils/device/AdvertisingIdClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AdInfo"
.end annotation


# instance fields
.field private final advertisingId:Ljava/lang/String;

.field private final limitAdTrackingEnabled:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/openmediation/sdk/utils/device/AdvertisingIdClient$AdInfo;->advertisingId:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/openmediation/sdk/utils/device/AdvertisingIdClient$AdInfo;->limitAdTrackingEnabled:Z

    return-void
.end method

.method static synthetic access$000(Lcom/openmediation/sdk/utils/device/AdvertisingIdClient$AdInfo;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/openmediation/sdk/utils/device/AdvertisingIdClient$AdInfo;->advertisingId:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/utils/device/AdvertisingIdClient$AdInfo;->advertisingId:Ljava/lang/String;

    return-object v0
.end method

.method public isLimitAdTrackingEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/openmediation/sdk/utils/device/AdvertisingIdClient$AdInfo;->limitAdTrackingEnabled:Z

    return v0
.end method
