.class public final enum Lcom/android/billingclient/api/zzev;
.super Ljava/lang/Enum;
.source "com.android.billingclient:billing@@9.1.0"


# static fields
.field public static final enum zza:Lcom/android/billingclient/api/zzev;

.field public static final enum zzb:Lcom/android/billingclient/api/zzev;

.field public static final enum zzc:Lcom/android/billingclient/api/zzev;

.field public static final enum zzd:Lcom/android/billingclient/api/zzev;

.field public static final enum zze:Lcom/android/billingclient/api/zzev;

.field public static final enum zzf:Lcom/android/billingclient/api/zzev;

.field public static final enum zzg:Lcom/android/billingclient/api/zzev;

.field private static final synthetic zzh:[Lcom/android/billingclient/api/zzev;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 1
    new-instance v0, Lcom/android/billingclient/api/zzev;

    const-string v1, "CANCEL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/billingclient/api/zzev;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/billingclient/api/zzev;->zza:Lcom/android/billingclient/api/zzev;

    new-instance v1, Lcom/android/billingclient/api/zzev;

    const-string v3, "RESTORE"

    const/4 v4, 0x1

    .line 2
    invoke-direct {v1, v3, v4}, Lcom/android/billingclient/api/zzev;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/billingclient/api/zzev;->zzb:Lcom/android/billingclient/api/zzev;

    new-instance v3, Lcom/android/billingclient/api/zzev;

    const-string v5, "PAUSE"

    const/4 v6, 0x2

    .line 3
    invoke-direct {v3, v5, v6}, Lcom/android/billingclient/api/zzev;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/billingclient/api/zzev;->zzc:Lcom/android/billingclient/api/zzev;

    new-instance v5, Lcom/android/billingclient/api/zzev;

    const-string v7, "RESUME"

    const/4 v8, 0x3

    .line 4
    invoke-direct {v5, v7, v8}, Lcom/android/billingclient/api/zzev;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/billingclient/api/zzev;->zzd:Lcom/android/billingclient/api/zzev;

    new-instance v7, Lcom/android/billingclient/api/zzev;

    const-string v9, "FIX_PAYMENT"

    const/4 v10, 0x4

    .line 5
    invoke-direct {v7, v9, v10}, Lcom/android/billingclient/api/zzev;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/android/billingclient/api/zzev;->zze:Lcom/android/billingclient/api/zzev;

    new-instance v9, Lcom/android/billingclient/api/zzev;

    const-string v11, "CONFIRM_PRICE_CHANGE"

    const/4 v12, 0x5

    .line 6
    invoke-direct {v9, v11, v12}, Lcom/android/billingclient/api/zzev;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/android/billingclient/api/zzev;->zzf:Lcom/android/billingclient/api/zzev;

    new-instance v11, Lcom/android/billingclient/api/zzev;

    const-string v13, "CONFIRM_PRICE_STEP_UP"

    const/4 v14, 0x6

    .line 7
    invoke-direct {v11, v13, v14}, Lcom/android/billingclient/api/zzev;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/android/billingclient/api/zzev;->zzg:Lcom/android/billingclient/api/zzev;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/android/billingclient/api/zzev;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lcom/android/billingclient/api/zzev;->zzh:[Lcom/android/billingclient/api/zzev;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/android/billingclient/api/zzev;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/billingclient/api/zzev;->zzh:[Lcom/android/billingclient/api/zzev;

    invoke-virtual {v0}, [Lcom/android/billingclient/api/zzev;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/billingclient/api/zzev;

    return-object v0
.end method
