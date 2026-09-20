.class final enum Lcom/android/billingclient/api/zzdk;
.super Ljava/lang/Enum;
.source "com.android.billingclient:billing@@9.1.0"


# static fields
.field public static final enum zza:Lcom/android/billingclient/api/zzdk;

.field public static final enum zzb:Lcom/android/billingclient/api/zzdk;

.field public static final enum zzc:Lcom/android/billingclient/api/zzdk;

.field public static final enum zzd:Lcom/android/billingclient/api/zzdk;

.field private static final synthetic zze:[Lcom/android/billingclient/api/zzdk;


# instance fields
.field private final zzf:Ljava/lang/String;

.field private final zzg:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lcom/android/billingclient/api/zzdk;

    const/16 v1, 0x1d

    const-string v2, "GET_BILLING_CONFIG"

    const/4 v3, 0x0

    const-string v4, "getBillingConfig"

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/android/billingclient/api/zzdk;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/android/billingclient/api/zzdk;->zza:Lcom/android/billingclient/api/zzdk;

    new-instance v1, Lcom/android/billingclient/api/zzdk;

    const/16 v2, 0x21

    const-string v4, "IS_BILLING_PROGRAM_AVAILABLE_ASYNC"

    const/4 v5, 0x1

    const-string v6, "isIndirectBillingProgramAvailable"

    .line 2
    invoke-direct {v1, v4, v5, v6, v2}, Lcom/android/billingclient/api/zzdk;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v1, Lcom/android/billingclient/api/zzdk;->zzb:Lcom/android/billingclient/api/zzdk;

    new-instance v2, Lcom/android/billingclient/api/zzdk;

    const/16 v4, 0x23

    const-string v6, "CREATE_BILLING_PROGRAM_REPORTING_DETAILS_ASYNC"

    const/4 v7, 0x2

    const-string v8, "createIndirectBillingReportingDetails"

    .line 3
    invoke-direct {v2, v6, v7, v8, v4}, Lcom/android/billingclient/api/zzdk;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v2, Lcom/android/billingclient/api/zzdk;->zzc:Lcom/android/billingclient/api/zzdk;

    new-instance v4, Lcom/android/billingclient/api/zzdk;

    const/16 v6, 0x28

    const-string v8, "GET_BILLING_CHOICE_INFO_ASYNC"

    const/4 v9, 0x3

    const-string v10, "getBillingChoiceInfo"

    .line 4
    invoke-direct {v4, v8, v9, v10, v6}, Lcom/android/billingclient/api/zzdk;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v4, Lcom/android/billingclient/api/zzdk;->zzd:Lcom/android/billingclient/api/zzdk;

    const/4 v6, 0x4

    new-array v6, v6, [Lcom/android/billingclient/api/zzdk;

    aput-object v0, v6, v3

    aput-object v1, v6, v5

    aput-object v2, v6, v7

    aput-object v4, v6, v9

    sput-object v6, Lcom/android/billingclient/api/zzdk;->zze:[Lcom/android/billingclient/api/zzdk;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/android/billingclient/api/zzdk;->zzf:Ljava/lang/String;

    iput p4, p0, Lcom/android/billingclient/api/zzdk;->zzg:I

    return-void
.end method

.method public static values()[Lcom/android/billingclient/api/zzdk;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/billingclient/api/zzdk;->zze:[Lcom/android/billingclient/api/zzdk;

    invoke-virtual {v0}, [Lcom/android/billingclient/api/zzdk;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/billingclient/api/zzdk;

    return-object v0
.end method


# virtual methods
.method final zza()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/billingclient/api/zzdk;->zzf:Ljava/lang/String;

    return-object v0
.end method

.method final zzb()I
    .locals 1

    iget v0, p0, Lcom/android/billingclient/api/zzdk;->zzg:I

    return v0
.end method
