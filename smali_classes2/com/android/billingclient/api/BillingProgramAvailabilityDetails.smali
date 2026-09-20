.class public final Lcom/android/billingclient/api/BillingProgramAvailabilityDetails;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@9.1.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/billingclient/api/BillingProgramAvailabilityDetails$BillingChoiceAvailabilityDetails;
    }
.end annotation


# instance fields
.field private final zza:I

.field private final zzb:Lcom/android/billingclient/api/BillingProgramAvailabilityDetails$BillingChoiceAvailabilityDetails;


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/billingclient/api/BillingProgramAvailabilityDetails;->zza:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/billingclient/api/BillingProgramAvailabilityDetails;->zzb:Lcom/android/billingclient/api/BillingProgramAvailabilityDetails$BillingChoiceAvailabilityDetails;

    return-void
.end method

.method constructor <init>(ILcom/android/billingclient/api/BillingProgramAvailabilityDetails$BillingChoiceAvailabilityDetails;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x5

    iput p1, p0, Lcom/android/billingclient/api/BillingProgramAvailabilityDetails;->zza:I

    iput-object p2, p0, Lcom/android/billingclient/api/BillingProgramAvailabilityDetails;->zzb:Lcom/android/billingclient/api/BillingProgramAvailabilityDetails$BillingChoiceAvailabilityDetails;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/android/billingclient/api/BillingProgramAvailabilityDetails;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/billingclient/api/BillingProgramAvailabilityDetails;

    iget v1, p0, Lcom/android/billingclient/api/BillingProgramAvailabilityDetails;->zza:I

    .line 2
    iget v3, p1, Lcom/android/billingclient/api/BillingProgramAvailabilityDetails;->zza:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/android/billingclient/api/BillingProgramAvailabilityDetails;->zzb:Lcom/android/billingclient/api/BillingProgramAvailabilityDetails$BillingChoiceAvailabilityDetails;

    iget-object p1, p1, Lcom/android/billingclient/api/BillingProgramAvailabilityDetails;->zzb:Lcom/android/billingclient/api/BillingProgramAvailabilityDetails$BillingChoiceAvailabilityDetails;

    .line 3
    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public getBillingChoiceAvailabilityDetails()Lcom/android/billingclient/api/BillingProgramAvailabilityDetails$BillingChoiceAvailabilityDetails;
    .locals 1

    iget-object v0, p0, Lcom/android/billingclient/api/BillingProgramAvailabilityDetails;->zzb:Lcom/android/billingclient/api/BillingProgramAvailabilityDetails$BillingChoiceAvailabilityDetails;

    return-object v0
.end method

.method public getBillingProgram()I
    .locals 1

    iget v0, p0, Lcom/android/billingclient/api/BillingProgramAvailabilityDetails;->zza:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget v1, p0, Lcom/android/billingclient/api/BillingProgramAvailabilityDetails;->zza:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/billingclient/api/BillingProgramAvailabilityDetails;->zzb:Lcom/android/billingclient/api/BillingProgramAvailabilityDetails$BillingChoiceAvailabilityDetails;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
